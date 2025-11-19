uint64_t sub_1D7B68BF0(uint64_t a1, uint64_t a2)
{
  sub_1D7B69F70(0, &qword_1EE0C04E0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v13 - v5);
  __swift_project_boxed_opaque_existential_1((a2 + 32), *(a2 + 56));
  sub_1D7D3095C();
  *v6 = v7;
  v8 = *MEMORY[0x1E69D63E0];
  v9 = sub_1D7D28B8C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = sub_1D7D2F65C();
  sub_1D79EB04C(v6);
  return v11;
}

char *sub_1D7B68D88(id *a1, unint64_t a2)
{
  v38 = a2;
  v4 = type metadata accessor for EndOfArticleFeedConfigFetchResult();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for EndOfArticleFeedContentConfig();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7D2824C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v34 - v23;
  v25 = [*a1 fileURL];
  if (v25)
  {
    v26 = v25;
    sub_1D7D281EC();

    (*(v16 + 32))(v24, v19, v15);
    v27 = sub_1D7D2825C();
    if (!v2)
    {
      v35 = v10;
      v30 = v28;
      v31 = v27;
      sub_1D7B69DD0();
      v36 = v31;
      v38 = v30;
      sub_1D7D28A7C();
      v33 = v35;
      sub_1D7B69F08(v14, v35, type metadata accessor for EndOfArticleFeedContentConfig);
      sub_1D7B69F08(v33, v37, type metadata accessor for EndOfArticleFeedConfigFetchResult);
      sub_1D7B69F70(0, &unk_1EE0C02B0, type metadata accessor for EndOfArticleFeedConfigFetchResult, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v19 = sub_1D7D2940C();
      sub_1D79EA2E4(v36, v38);
      sub_1D7B69FD4(v33, type metadata accessor for EndOfArticleFeedConfigFetchResult);
      sub_1D7B69FD4(v14, type metadata accessor for EndOfArticleFeedContentConfig);
    }

    (*(v16 + 8))(v24, v15);
  }

  else
  {
    sub_1D7B69EB4();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_1D7B69148()
{
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7D3B4D0;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D79D6AE0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D7D29AAC();
}

uint64_t sub_1D7B69274()
{
  v0 = [objc_opt_self() sharedSession];
  v1 = sub_1D7D2933C();

  return v1;
}

uint64_t sub_1D7B692E0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EndOfArticleFeedContentConfig();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B69DD0();
  result = sub_1D7D28A7C();
  if (!v1)
  {
    return sub_1D7B69E28(v6, a1);
  }

  return result;
}

uint64_t sub_1D7B693B8(void *a1, void *a2)
{
  v3 = a1[12];
  v4 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v3);
  if ([a2 respondsToSelector_])
  {
    v5 = [a2 parentIssue];
    if (v5)
    {

      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return (*(v4 + 8))(v5, v3, v4);
}

uint64_t sub_1D7B69464@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v6 = sub_1D7D3039C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D3038C();
  v11 = sub_1D7D3035C();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (v13 >> 60 == 15)
  {
    goto LABEL_6;
  }

  sub_1D7D28A9C();
  swift_allocObject();
  sub_1D7D28A8C();
  sub_1D7B6A06C();
  v49 = v11;
  sub_1D7D28A7C();
  if (v3)
  {
    v50 = a3;

    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    v48 = qword_1EE0CA138;
    v47[3] = sub_1D7D30C4C();
    sub_1D79F3AB0();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7D3B4E0;
    v15 = [v53 identifier];
    v16 = sub_1D7D3034C();
    v18 = v17;

    v19 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1D79D6AE0();
    *(v14 + 64) = v20;
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    v51[0] = v3;
    sub_1D798F168(0, &qword_1EE0BE7E0);
    sub_1D7D315DC();
    v21 = v52[0];
    v22 = v52[1];
    *(v14 + 96) = v19;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    sub_1D7D29AAC();
    sub_1D79EA2D0(v49, v13);

    a3 = v50;
LABEL_6:
    v23 = [*(a1 + 24) appConfiguration];
    if ([v23 respondsToSelector_])
    {
      v24 = [v23 endOfArticleFeedConfigurationResourceId];
      swift_unknownObjectRelease();
      if (v24)
      {
        v50 = a3;
        v25 = sub_1D7D3034C();
        v27 = v26;

        if (qword_1EE0CA130 != -1)
        {
          swift_once();
        }

        v49 = qword_1EE0CA138;
        sub_1D79F3AB0();
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D7D3B4E0;
        *(v28 + 56) = MEMORY[0x1E69E6158];
        v29 = sub_1D79D6AE0();
        *(v28 + 64) = v29;
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;

        v30 = [v53 identifier];
        v31 = sub_1D7D3034C();
        v33 = v32;

        *(v28 + 96) = MEMORY[0x1E69E6158];
        *(v28 + 104) = v29;
        *(v28 + 72) = v31;
        *(v28 + 80) = v33;
        sub_1D7D30C6C();
        sub_1D7D29AAC();

        v35 = v50;
        *v50 = v25;
        v35[1] = v27;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1D7B69EB4();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }

  memcpy(v51, v52, sizeof(v51));
  v37 = v51[137];
  if (!v51[137])
  {
    sub_1D79EA2D0(v49, v13);
    sub_1D7B6A0C0(v51);
    goto LABEL_6;
  }

  v38 = v51[136];

  sub_1D7B6A0C0(v51);
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v50 = qword_1EE0CA138;
  sub_1D79F3AB0();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D7D3B4E0;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  v40 = sub_1D79D6AE0();
  *(v39 + 64) = v40;
  *(v39 + 32) = v38;
  *(v39 + 40) = v37;

  v41 = [v53 identifier];
  v42 = sub_1D7D3034C();
  v48 = v38;
  v43 = v42;
  v53 = v37;
  v45 = v44;

  *(v39 + 96) = MEMORY[0x1E69E6158];
  *(v39 + 104) = v40;
  *(v39 + 72) = v43;
  *(v39 + 80) = v45;
  sub_1D7D30C6C();
  sub_1D7D29AAC();
  sub_1D79EA2D0(v49, v13);

  v46 = v53;
  *a3 = v48;
  a3[1] = v46;
  return result;
}

uint64_t sub_1D7B69A70()
{
  sub_1D7D294BC();
  v0 = sub_1D7D2934C();
  sub_1D79EAEB0();
  sub_1D7D293BC();

  v1 = sub_1D7D2934C();
  type metadata accessor for EndOfArticleFeedConfigFetchResult();
  sub_1D7D293BC();

  v2 = sub_1D7D2934C();
  v3 = sub_1D7D293DC();

  return v3;
}

uint64_t sub_1D7B69BAC(uint64_t a1)
{
  v2 = sub_1D7D2824C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D7D27F2C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v6, a1, v2, v10);
  sub_1D7D27F1C();
  v17 = v12;
  sub_1D7D294BC();
  v13 = sub_1D7D2934C();
  type metadata accessor for EndOfArticleFeedConfigFetchResult();
  v14 = sub_1D7D293CC();

  (*(v8 + 8))(v12, v7);
  return v14;
}

unint64_t sub_1D7B69DD0()
{
  result = qword_1EE0C4868;
  if (!qword_1EE0C4868)
  {
    type metadata accessor for EndOfArticleFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4868);
  }

  return result;
}

uint64_t sub_1D7B69E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7B69EB4()
{
  result = qword_1EC9E58E8;
  if (!qword_1EC9E58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E58E8);
  }

  return result;
}

uint64_t sub_1D7B69F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7B69F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B69FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7B6A06C()
{
  result = qword_1EE0C5BD0;
  if (!qword_1EE0C5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5BD0);
  }

  return result;
}

unint64_t sub_1D7B6A128()
{
  result = qword_1EC9E58F0;
  if (!qword_1EC9E58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E58F0);
  }

  return result;
}

uint64_t sub_1D7B6A17C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 articles];
  sub_1D799621C();
  v4 = sub_1D7D3063C();

  if (v4 >> 62)
  {
    result = sub_1D7D3167C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v17 = sub_1D7D27D9C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA70EF00](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  v7 = [v6 identifier];
  swift_unknownObjectRelease();
  v8 = sub_1D7D3034C();
  v10 = v9;

  *a2 = v8;
  a2[1] = v10;
  v11 = *MEMORY[0x1E6997330];
  v12 = sub_1D7D27D9C();
  v18 = *(v12 - 8);
  (*(v18 + 104))(a2, v11, v12);
  v13 = *(v18 + 56);
  v14 = a2;
  v15 = 0;
  v16 = v12;
LABEL_9:

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1D7B6A354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_1D7D27E2C();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v9 = sub_1D7D27E1C();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v10 = sub_1D7D27EEC();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  v11 = sub_1D7D27D2C();
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  sub_1D7D3084C();
  v7[25] = sub_1D7D3083C();
  v13 = sub_1D7D307DC();
  v7[26] = v13;
  v7[27] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D7B6A584, v13, v12);
}

uint64_t sub_1D7B6A584()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1D7B6A648;
  v5 = v0[24];
  v6 = v0[7];

  return MEMORY[0x1EEE22618](v5, v6, v2, v3);
}

uint64_t sub_1D7B6A648()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_1D7B6AD7C;
  }

  else
  {
    v5 = sub_1D7B6A784;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D7B6A784()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[6];
  sub_1D7D27EDC();
  v5 = sub_1D7D27ECC();
  v0[30] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 176);
  v0[31] = v6;
  v7 = *(v4 + 184);
  v0[32] = v7;
  if (v6)
  {
    v8 = v0[7];
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(v8, ObjectType, v7);
  }

  v10 = v0[7];
  v11 = [v10 identifier];
  v12 = sub_1D7D3034C();
  v14 = v13;

  v0[33] = v14;
  v15 = [v10 title];
  v16 = sub_1D7D3034C();
  v18 = v17;

  v0[34] = v18;
  v19 = swift_task_alloc();
  v0[35] = v19;
  *v19 = v0;
  v19[1] = sub_1D7B6A92C;
  v20 = v0[18];
  v21 = v0[8];
  v22 = v0[9];

  return MEMORY[0x1EEDF8468](v20, v21, v5, v22, v12, v14, v16, v18);
}

uint64_t sub_1D7B6A92C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_1D7B6B014;
  }

  else
  {
    v5 = sub_1D7B6AABC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D7B6AABC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  (*(v4 + 104))(v2, *MEMORY[0x1E6997380], v3);
  if (v1)
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    (*(v5 + 72))(v8, v7, v6, ObjectType, v5);
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
  (*(v12 + 104))(v10, *MEMORY[0x1E6997360], v11);
  sub_1D7B6BDFC();
  sub_1D7D305EC();
  sub_1D7D305EC();
  if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D7D3197C();
  }

  v14 = *(*(v0 + 120) + 8);
  v14(*(v0 + 136), *(v0 + 112));

  if (v13)
  {
    v15 = [*(v0 + 56) identifier];
    sub_1D7D3034C();

    sub_1D7D27E0C();

    v16 = [objc_opt_self() defaultCenter];
    v17 = sub_1D7D30E7C();
    [v16 postNotificationName:v17 object:0];
  }

  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v20 = *(v0 + 176);
  v14(*(v0 + 144), *(v0 + 112));
  (*(v19 + 8))(v18, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D7B6AD7C()
{

  v1 = v0[29];
  sub_1D7992EFC(0, &qword_1EE0BEC80);
  v2 = v1;
  v3 = sub_1D7D312CC();
  v4 = sub_1D7D30C6C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1D7987000, v3, v4, "Failed to add ingredients to grocery list in export to grocery list command handler with error: %@", v5, 0xCu);
    sub_1D7A72BA8(v6);
    MEMORY[0x1DA7102E0](v6, -1, -1);
    MEMORY[0x1DA7102E0](v5, -1, -1);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v15 = v0[6];

  (*(v13 + 104))(v12, *MEMORY[0x1E6997380], v14);
  (*(v10 + 104))(v9, *MEMORY[0x1E6997358], v11);
  if (*(v15 + 176))
  {
    v16 = v0[16];
    v17 = v0[12];
    v18 = v0[7];
    v19 = *(v0[6] + 184);
    ObjectType = swift_getObjectType();
    (*(v19 + 72))(v18, v17, v16, ObjectType, v19);
  }

  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[14];
  v25 = v0[11];
  v24 = v0[12];
  v26 = v0[10];

  (*(v22 + 8))(v21, v23);
  (*(v25 + 8))(v24, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D7B6B014()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];

  (*(v3 + 8))(v1, v2);
  v4 = v0[36];
  sub_1D7992EFC(0, &qword_1EE0BEC80);
  v5 = v4;
  v6 = sub_1D7D312CC();
  v7 = sub_1D7D30C6C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D7987000, v6, v7, "Failed to add ingredients to grocery list in export to grocery list command handler with error: %@", v8, 0xCu);
    sub_1D7A72BA8(v9);
    MEMORY[0x1DA7102E0](v9, -1, -1);
    MEMORY[0x1DA7102E0](v8, -1, -1);
  }

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  v18 = v0[6];

  (*(v16 + 104))(v15, *MEMORY[0x1E6997380], v17);
  (*(v13 + 104))(v12, *MEMORY[0x1E6997358], v14);
  if (*(v18 + 176))
  {
    v19 = v0[16];
    v20 = v0[12];
    v21 = v0[7];
    v22 = *(v0[6] + 184);
    ObjectType = swift_getObjectType();
    (*(v22 + 72))(v21, v20, v19, ObjectType, v22);
  }

  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  v28 = v0[11];
  v27 = v0[12];
  v29 = v0[10];

  (*(v25 + 8))(v24, v26);
  (*(v28 + 8))(v27, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1D7B6B2C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  sub_1D7B6BDA0(v0 + 136, &unk_1EC9E5908, sub_1D7B6BB50);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7B6B340()
{
  result = qword_1EC9E5900;
  if (!qword_1EC9E5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5900);
  }

  return result;
}

uint64_t sub_1D7B6B3C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7B6B9A8();
  *a1 = result & 1;
  return result;
}

void sub_1D7B6B41C(uint64_t a1, char a2)
{
  sub_1D7B6BBB4(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v39 - v6;
  sub_1D7B6BBB4(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - v15;
  sub_1D7B6BBB4(0, &qword_1EC9E5918, MEMORY[0x1E6997338]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (&v39 - v19);
  if (a2)
  {
    sub_1D7B6BC08(v2 + 136, &v45, &unk_1EC9E5908, sub_1D7B6BB50);
    if (v46)
    {
      sub_1D799D69C(&v45, v47);
      v21 = *(v2 + 120);
      v44 = v2;
      __swift_project_boxed_opaque_existential_1((v2 + 96), v21);
      v22 = sub_1D7D2A88C();
      if (v22 && (v23 = v22, v24 = [v22 rootViewController], v23, v24))
      {
        v43 = sub_1D7D30D4C();

        v25 = sub_1D7D2FBEC();
        v41 = v25;
        sub_1D7B6A17C(v25, v20);
        v42 = v47[4];
        __swift_project_boxed_opaque_existential_1(v47, v47[3]);
        v26 = [v25 identifier];
        sub_1D7D3034C();
        v40 = v9;

        sub_1D7D27D6C();

        v27 = sub_1D7D3087C();
        (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
        v42 = MEMORY[0x1E6968FB0];
        sub_1D7B6BC08(v16, v12, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
        sub_1D7D3084C();
        v28 = v44;

        v29 = v41;
        v30 = v43;
        v31 = sub_1D7D3083C();
        v32 = (*(v40 + 80) + 56) & ~*(v40 + 80);
        v33 = swift_allocObject();
        v34 = MEMORY[0x1E69E85E0];
        v33[2] = v31;
        v33[3] = v34;
        v33[4] = v28;
        v33[5] = v29;
        v33[6] = v30;
        sub_1D79A8B40(v12, v33 + v32);
        sub_1D7AF94C0(0, 0, v7, &unk_1D7D50A70, v33);

        sub_1D7B6BDA0(v16, &qword_1EE0CB770, v42);
        sub_1D7B6BDA0(v20, &qword_1EC9E5918, MEMORY[0x1E6997338]);
      }

      else
      {
        sub_1D7992EFC(0, &qword_1EE0BEC80);
        v37 = sub_1D7D312CC();
        sub_1D7D30C6C();
        sub_1D7D29AAC();
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    else
    {
      sub_1D7B6BDA0(&v45, &unk_1EC9E5908, sub_1D7B6BB50);
      sub_1D7992EFC(0, &qword_1EE0BEC80);
      v38 = sub_1D7D312CC();
      sub_1D7D30C6C();
      sub_1D7D29AAC();
    }
  }

  else
  {
    v35 = sub_1D7D2FBEC();
    v36 = [v35 identifier];

    sub_1D7D3034C();
    sub_1D7D27DEC();
  }
}

uint64_t sub_1D7B6B9A8()
{
  v0 = sub_1D7D2FBEC();
  v1 = [v0 identifier];

  sub_1D7D3034C();
  LOBYTE(v0) = sub_1D7D27DCC();

  if (v0)
  {
    v2 = sub_1D7D2FBEC();
    v3 = [v2 identifier];

    sub_1D7D3034C();
    LOBYTE(v2) = sub_1D7D27DFC();

    v4 = v2 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1D7B6BA88()
{
  sub_1D7B6BC08(v0 + 136, v4, &unk_1EC9E5908, sub_1D7B6BB50);
  v1 = v5;
  sub_1D7B6BDA0(v4, &unk_1EC9E5908, sub_1D7B6BB50);
  if (v1 && (__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80)), (sub_1D7D2F94C() & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v2 = sub_1D7D2FA0C();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1D7B6BB50()
{
  result = qword_1EE0CB780;
  if (!qword_1EE0CB780)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CB780);
  }

  return result;
}

void sub_1D7B6BBB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7B6BC08(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7B6BBB4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7B6BC74(uint64_t a1)
{
  v3 = v2;
  sub_1D7B6BBB4(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D7A4E2D8;

  return sub_1D7B6A354(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_1D7B6BDA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7B6BBB4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D7B6BDFC()
{
  result = qword_1EC9E4EF8;
  if (!qword_1EC9E4EF8)
  {
    sub_1D7D27E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4EF8);
  }

  return result;
}

uint64_t sub_1D7B6BE54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v42 = sub_1D7D2ACCC();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v3);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B6C5EC(0, &unk_1EC9E5920, type metadata accessor for UIBarStyle);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v36 = &v36 - v7;
  sub_1D7B6C5EC(0, &qword_1EE0C0110, type metadata accessor for UIStatusBarStyle);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for PDFReplicaViewerColorPalette();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v36 - v21;
  v23 = v1[5];
  v24 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v23);
  (*(v24 + 24))(v23, v24);
  (*(v10 + 16))(v13, &v22[*(v15 + 36)], v9);
  sub_1D7B6C640(v22);
  v25 = v1[5];
  v26 = v1[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  (*(v26 + 24))(v25, v26);
  v27 = *v18;
  sub_1D7B6C640(v18);
  sub_1D7D29DFC();

  (*(v10 + 8))(v13, v9);
  v28 = v43;
  v29 = v1[5];
  v30 = v1[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  (*(v30 + 24))(v29, v30);
  v32 = v36;
  v31 = v37;
  v33 = v38;
  (*(v37 + 16))(v36, &v22[*(v15 + 32)], v38);
  sub_1D7B6C640(v22);
  sub_1D7D29DCC();
  v34 = v39;
  (*(v31 + 8))(v32, v33);
  sub_1D7B6C278(v43, v2, v28, v34);
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    return (*(v40 + 32))(v41, v34, v42);
  }

  sub_1D7D2ACBC();
  return (*(v40 + 8))(v34, v42);
}

uint64_t sub_1D7B6C278@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a1;
  v42 = a4;
  v5 = type metadata accessor for PDFReplicaViewerColorPalette();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v41 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v38 - v10);
  v40 = sub_1D7D2AC3C();
  v12 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v13);
  v15 = (v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v38 - v18);
  v20 = a2[5];
  v21 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v20);
  (*(v21 + 24))(v20, v21);
  v22 = v11[1];
  sub_1D7B6C640(v11);
  v39 = objc_opt_self();
  v23 = [v39 secondarySystemFillColor];
  v24 = objc_opt_self();
  v25 = [v24 traitCollectionWithUserInterfaceStyle_];
  v26 = [v23 resolvedColorWithTraitCollection_];

  *v19 = v44;
  v19[1] = 18;
  v19[2] = v22;
  v19[3] = v26;
  v27 = *MEMORY[0x1E69D7C40];
  v28 = *(v12 + 104);
  v38[1] = v12 + 104;
  v29 = v40;
  v28(v19, v27, v40);
  v30 = a2[5];
  v31 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v30);
  v32 = v41;
  (*(v31 + 24))(v30, v31);
  v33 = *(v32 + 8);
  sub_1D7B6C640(v32);
  v34 = [v39 secondarySystemFillColor];
  v35 = [v24 traitCollectionWithUserInterfaceStyle_];
  v36 = [v34 resolvedColorWithTraitCollection_];

  *v15 = v44;
  v15[1] = 18;
  v15[2] = v33;
  v15[3] = v36;
  v28(v15, v27, v29);
  return MEMORY[0x1DA7086D0](v19, v15, v43, v43, 0, 0);
}

void sub_1D7B6C5EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D29E0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7B6C640(uint64_t a1)
{
  v2 = type metadata accessor for PDFReplicaViewerColorPalette();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HeadlineThumbnail.init(headline:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7B6CF60([a1 thumbnailLQ], a2);
  sub_1D7B6CF60([a1 thumbnail], a2 + 56);
  sub_1D7B6CF60([a1 thumbnailMedium], a2 + 112);
  sub_1D7B6CF60([a1 thumbnailHQ], a2 + 168);
  sub_1D7B6CF60([a1 thumbnailUltraHQ], a2 + 224);

  return swift_unknownObjectRelease();
}

uint64_t HeadlineThumbnail.assetHandle(with:scale:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D7D3101C();
  v4 = v3;
  v6 = v5;
  sub_1D7B6D034(v1, &v8);
  if (*(&v9 + 1))
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (v4 <= *(&v10 + 1) && v6 <= v15)
    {
      return sub_1D79E14FC(&v12, a1);
    }

    sub_1D7B6D144(&v12);
  }

  else
  {
    sub_1D7B6D0E8(&v8);
  }

  sub_1D7B6D034(v1 + 56, &v8);
  if (*(&v9 + 1))
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (v4 <= *(&v10 + 1) && v6 <= v15)
    {
      return sub_1D79E14FC(&v12, a1);
    }

    sub_1D7B6D144(&v12);
  }

  else
  {
    sub_1D7B6D0E8(&v8);
  }

  sub_1D7B6D034(v1 + 112, &v8);
  if (*(&v9 + 1))
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (v4 <= *(&v10 + 1) && v6 <= v15)
    {
      return sub_1D79E14FC(&v12, a1);
    }

    sub_1D7B6D144(&v12);
  }

  else
  {
    sub_1D7B6D0E8(&v8);
  }

  sub_1D7B6D034(v1 + 168, &v8);
  if (*(&v9 + 1))
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (v4 <= *(&v10 + 1) && v6 <= v15)
    {
      return sub_1D79E14FC(&v12, a1);
    }

    sub_1D7B6D144(&v12);
  }

  else
  {
    sub_1D7B6D0E8(&v8);
  }

  sub_1D7B6D034(v1 + 224, &v8);
  if (*(&v9 + 1))
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (v4 <= *(&v10 + 1) && v6 <= v15)
    {
      return sub_1D79E14FC(&v12, a1);
    }

    sub_1D7B6D144(&v12);
  }

  else
  {
    sub_1D7B6D0E8(&v8);
  }

  sub_1D7B6D034(v1 + 224, &v8);
  if (*(&v9 + 1) || (sub_1D7B6D0E8(&v8), sub_1D7B6D034(v1 + 168, &v8), *(&v9 + 1)) || (sub_1D7B6D0E8(&v8), sub_1D7B6D034(v1 + 112, &v8), *(&v9 + 1)) || (sub_1D7B6D0E8(&v8), sub_1D7B6D034(v1 + 56, &v8), *(&v9 + 1)) || (sub_1D7B6D0E8(&v8), sub_1D7B6D034(v1, &v8), *(&v9 + 1)))
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    return sub_1D79E14FC(&v12, a1);
  }

  result = sub_1D7B6D0E8(&v8);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t HeadlineThumbnail.onDiskAssetHandle(with:scale:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D7D3101C();
  v4 = v3;
  v6 = v5;
  sub_1D7B6D034(v1, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v7)
    {

      if (v4 <= *(&v24 + 1) && v6 <= v25)
      {
        return sub_1D79E14FC(&v22, a1);
      }
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 56, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v8)
    {

      if (v4 <= *(&v24 + 1) && v6 <= v25)
      {
        return sub_1D79E14FC(&v22, a1);
      }
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 112, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v9)
    {

      if (v4 <= *(&v24 + 1) && v6 <= v25)
      {
        return sub_1D79E14FC(&v22, a1);
      }
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 168, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v10)
    {

      if (v4 <= *(&v24 + 1) && v6 <= v25)
      {
        return sub_1D79E14FC(&v22, a1);
      }
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 224, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v11)
    {

      if (v4 <= *(&v24 + 1) && v6 <= v25)
      {
        return sub_1D79E14FC(&v22, a1);
      }
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 224, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v12)
    {
      goto LABEL_49;
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 168, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v13)
    {
      goto LABEL_49;
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 112, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v14)
    {
      goto LABEL_49;
    }

    sub_1D7B6D144(&v22);
  }

  else
  {
    sub_1D7B6D0E8(&v18);
  }

  sub_1D7B6D034(v1 + 56, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (!v15)
    {
      sub_1D7B6D144(&v22);
      goto LABEL_47;
    }

LABEL_49:

    return sub_1D79E14FC(&v22, a1);
  }

  sub_1D7B6D0E8(&v18);
LABEL_47:
  sub_1D7B6D034(v1, &v18);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v22 = v18;
    v25 = v21;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v19 + 1));
    sub_1D7D2A1FC();
    if (v16)
    {
      goto LABEL_49;
    }

    result = sub_1D7B6D144(&v22);
  }

  else
  {
    result = sub_1D7B6D0E8(&v18);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1D7B6CF60(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = [a1 thumbnailAssetHandle];
    if (v4)
    {
      v5 = v4;
      v12 = sub_1D7B6D340();
      v13 = sub_1D7B6D38C();
      *&v11 = v5;
      sub_1D79E14FC(&v11, v14);
      [a1 thumbnailSize];
      v7 = v6;
      v9 = v8;

      *(&v15 + 1) = v7;
      v16 = v9;
      v10 = v14[1];
      *a2 = v14[0];
      *(a2 + 16) = v10;
      *(a2 + 32) = v15;
      *(a2 + 48) = v16;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

uint64_t sub_1D7B6D034(uint64_t a1, uint64_t a2)
{
  sub_1D7B6D098();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7B6D098()
{
  if (!qword_1EE0BDAA0[0])
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0BDAA0);
    }
  }
}

uint64_t sub_1D7B6D0E8(uint64_t a1)
{
  sub_1D7B6D098();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles17HeadlineThumbnailV5Model33_5B9F28DC211094A1782E14306D872C08LLVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7B6D194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D7B6D1F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7B6D29C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7B6D2E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7B6D340()
{
  result = qword_1EE0BF0D8;
  if (!qword_1EE0BF0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF0D8);
  }

  return result;
}

unint64_t sub_1D7B6D38C()
{
  result = qword_1EE0BF0E0;
  if (!qword_1EE0BF0E0)
  {
    sub_1D7B6D340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF0E0);
  }

  return result;
}

uint64_t RecipeViewerRecipePage.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;

  v6 = v4;
}

uint64_t dispatch thunk of StocksFeedServiceType.fetchFeedIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t ReportConcernModule.createViewController(for:tracker:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
  }

  v4 = sub_1D7D28A1C();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for ReportConcernViewController();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  swift_unknownObjectRetain();

  v6 = sub_1D7D28CFC();

  if (v6)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B6D5F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799621C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t ReportConcernModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ReportConcernModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B6D778(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a3;
  v88 = a2;
  sub_1D7A3B538();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v7, v11);
  v90 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B6ED40(0, &qword_1EC9E5948, MEMORY[0x1E69D7ED8]);
  v86 = v13;
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v84 = &v72 - v15;
  sub_1D7B6EB20();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v80 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B6EC4C();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1D7B6ED40(0, &qword_1EC9E2630, MEMORY[0x1E69D87F8]);
  v83 = v24;
  v82 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v81 = &v72 - v26;
  sub_1D7B6EDC4();
  sub_1D7B6ED40(0, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
  v78 = v27;
  v28 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
  v76 = *(*(v27 - 8) + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7D3B4E0;
  v77 = v29;
  v30 = v29 + v28;
  LOBYTE(v108) = 0;
  sub_1D7A60424();
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v94 = *(v9 + 72);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7D3B4D0;
  v118 = 0;
  v110 = a4;
  v117 = 0;
  v33 = sub_1D7A26E88();
  swift_unknownObjectRetain();
  v93 = v31;
  sub_1D7D29EDC();
  v34 = sub_1D7B6ECFC(&qword_1EC9E5978);
  v35 = sub_1D7B6ECFC(&unk_1EC9E5980);
  v96 = v8;
  v73 = v34;
  v72 = v35;
  MEMORY[0x1DA706A80](v32, v8, v34);
  v36 = sub_1D7A26D5C();
  v75 = v30;
  v74 = v36;
  v95 = v33;
  sub_1D7D2A42C();
  v109 = 1;
  v37 = *(a5 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v108 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C63C(0, v37, 0);
    v39 = 0;
    v40 = v108;
    v92 = a5 + 32;
    v91 = (v10 + 32);
    v41 = v90;
    v89 = v37;
    do
    {
      v105 = v40;
      v42 = (v92 + 56 * v39);
      v43 = *v42;
      v44 = v42[1];
      v45 = v42[3];
      v102 = v42[2];
      v103 = v43;
      v46 = v42[5];
      v104 = v42[4];
      v47 = v42[6];
      v48 = *(v47 + 16);
      if (v48)
      {
        v100 = v44;
        v101 = v39;
        v110 = v38;
        swift_bridgeObjectRetain_n();
        v99 = v45;
        swift_bridgeObjectRetain_n();
        v98 = v46;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1D7A5C694(0, v48, 0);
        v49 = v110;
        v97 = v47;
        v50 = (v47 + 72);
        do
        {
          v51 = *(v50 - 4);
          v106 = *(v50 - 5);
          if (*v50)
          {
            v52 = *(v50 - 1);
            v53 = *v50;
          }

          else
          {
            v52 = *(v50 - 3);
            v53 = *(v50 - 2);
          }

          v110 = v49;
          v55 = *(v49 + 16);
          v54 = *(v49 + 24);

          if (v55 >= v54 >> 1)
          {
            sub_1D7A5C694((v54 > 1), v55 + 1, 1);
            v49 = v110;
          }

          v50 += 6;
          *(v49 + 16) = v55 + 1;
          v56 = (v49 + 48 * v55);
          v56[4] = v106;
          v56[5] = v51;
          v56[6] = v52;
          v56[7] = v53;
          v56[8] = 0;
          v56[9] = 0;
          --v48;
        }

        while (v48);

        v41 = v90;
        v38 = MEMORY[0x1E69E7CC0];
        v37 = v89;
        v44 = v100;
        v39 = v101;
        v46 = v98;
        v45 = v99;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v49 = v38;
      }

      v107 = 1;
      v110 = v103;
      v111 = v44;
      v112 = v102;
      v113 = v45;
      v114 = v49;
      v115 = v104;
      v116 = v46;
      v117 = 1;
      sub_1D7D29EDC();

      v40 = v105;
      v108 = v105;
      v58 = *(v105 + 16);
      v57 = *(v105 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1D7A5C63C(v57 > 1, v58 + 1, 1);
        v40 = v108;
      }

      ++v39;
      *(v40 + 16) = v58 + 1;
      (*v91)(v40 + v93 + v58 * v94, v41, v96);
    }

    while (v39 != v37);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1DA706A80](v40, v96, v73, v72);
  sub_1D7D2A42C();
  v59 = sub_1D7B6EBEC(&qword_1EC9E5960);
  v60 = sub_1D7B6EBEC(&qword_1EC9E5968);
  MEMORY[0x1DA706A70](v77, v78, v59, v60);
  v61 = v81;
  sub_1D7D2C7FC();
  sub_1D7B6EE38();
  v63 = *(v62 + 48);
  v64 = v82;
  v65 = v84;
  v66 = v83;
  (*(v82 + 16))(v84, v61, v83);
  v67 = *MEMORY[0x1E69D7A40];
  v68 = sub_1D7D2A68C();
  (*(*(v68 - 8) + 104))(&v65[v63], v67, v68);
  v69 = v85;
  v70 = v86;
  (*(v85 + 104))(v65, *MEMORY[0x1E69D7EC8], v86);
  v88(v65);
  (*(v69 + 8))(v65, v70);
  return (*(v64 + 8))(v61, v66);
}

uint64_t sub_1D7B6E154(uint64_t a1)
{
  v2 = sub_1D7B6EEC8();

  return MEMORY[0x1EEE46F70](a1, v2);
}

uint64_t sub_1D7B6E190(uint64_t a1, void (*a2)(char *), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v88 = a3;
  v89 = a2;
  sub_1D7A3B538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v97 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B6ED40(0, &qword_1EC9E5948, MEMORY[0x1E69D7ED8]);
  v87 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v86 = &v72 - v15;
  sub_1D7B6EB20();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v82 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B6EC4C();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v81 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1D7B6ED40(0, &qword_1EC9E2630, MEMORY[0x1E69D87F8]);
  v85 = v24;
  v84 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v83 = &v72 - v26;
  sub_1D7B6EDC4();
  sub_1D7B6ED40(0, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
  v80 = v27;
  v28 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
  v78 = *(*(v27 - 8) + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7D3B4E0;
  v79 = v29;
  v30 = v29 + v28;
  LOBYTE(v102) = 0;
  sub_1D7A60424();
  v31 = a5;
  v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v96 = *(v9 + 72);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D7D3B4D0;
  v112 = 0;
  v104 = a4;
  v111 = 0;
  v34 = sub_1D7A26E88();
  swift_unknownObjectRetain();
  v95 = v32;
  sub_1D7D29EDC();
  v35 = sub_1D7B6ECFC(&qword_1EC9E5978);
  v36 = sub_1D7B6ECFC(&unk_1EC9E5980);
  v99 = v8;
  v75 = v35;
  v74 = v36;
  MEMORY[0x1DA706A80](v33, v8, v35);
  v37 = sub_1D7A26D5C();
  v77 = v30;
  v76 = v37;
  v98 = v34;
  sub_1D7D2A42C();
  v103 = 1;
  v38 = *(v31 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v73 = v13;
    v102 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C63C(0, v38, 0);
    v39 = v102;
    v40 = (v31 + 32);
    v93 = "PHIC_CONTENT_REASON";
    v94 = (v9 + 32);
    v92 = "DONT_LIKE_REASON";
    v91 = "r article content url broken";
    v90 = "R_DISINFORMATION_REASON";
    do
    {
      v42 = *v40++;
      v41 = v42;
      v43 = 0xD000000000000015;
      v44 = 0xD000000000000027;
      v45 = v42 == 2;
      if (v42 != 2)
      {
        v44 = 0xD000000000000010;
      }

      v46 = v92;
      if (!v45)
      {
        v46 = v91;
      }

      if (v41)
      {
        v43 = 0xD000000000000023;
      }

      v47 = v93;
      if (v41)
      {
        v47 = v90;
      }

      if (v41 <= 1)
      {
        v48 = v43;
      }

      else
      {
        v48 = v44;
      }

      if (v41 <= 1)
      {
        v49 = v47;
      }

      else
      {
        v49 = v46;
      }

      v50 = v49 | 0x8000000000000000;
      LOBYTE(v104) = v41;
      v51 = DefaultConcernModel.title.getter();
      v53 = v52;
      v101 = v41;
      v54 = DefaultConcernModel.subConcerns.getter();
      v100 = v41;
      v55 = DefaultConcernModel.subConcernsSectionHeader.getter();
      v101 = 1;
      v104 = v48;
      v105 = v50;
      v106 = v51;
      v107 = v53;
      v108 = v54;
      v109 = v55;
      v110 = v56;
      v111 = 1;
      v57 = v97;
      sub_1D7D29EDC();
      v102 = v39;
      v59 = *(v39 + 16);
      v58 = *(v39 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1D7A5C63C(v58 > 1, v59 + 1, 1);
        v39 = v102;
      }

      *(v39 + 16) = v59 + 1;
      (*v94)(v39 + v95 + v59 * v96, v57, v99);
      --v38;
    }

    while (v38);
    v60 = v87;
    v13 = v73;
  }

  else
  {
    v60 = v87;
  }

  MEMORY[0x1DA706A80](v39, v99, v75, v74);
  sub_1D7D2A42C();
  v61 = sub_1D7B6EBEC(&qword_1EC9E5960);
  v62 = sub_1D7B6EBEC(&qword_1EC9E5968);
  MEMORY[0x1DA706A70](v79, v80, v61, v62);
  v63 = v83;
  sub_1D7D2C7FC();
  sub_1D7B6EE38();
  v65 = *(v64 + 48);
  v66 = v84;
  v67 = v86;
  v68 = v85;
  (*(v84 + 16))(v86, v63, v85);
  v69 = *MEMORY[0x1E69D7A40];
  v70 = sub_1D7D2A68C();
  (*(*(v70 - 8) + 104))(&v67[v65], v69, v70);
  (*(v13 + 104))(v67, *MEMORY[0x1E69D7EC8], v60);
  v89(v67);
  (*(v13 + 8))(v67, v60);
  return (*(v66 + 8))(v63, v68);
}

uint64_t sub_1D7B6EA34(uint64_t a1)
{
  v2 = sub_1D7B6EF1C();

  return MEMORY[0x1EEE46F70](a1, v2);
}

unint64_t sub_1D7B6EA74()
{
  result = qword_1EC9E5930;
  if (!qword_1EC9E5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5930);
  }

  return result;
}

unint64_t sub_1D7B6EACC()
{
  result = qword_1EC9E5938;
  if (!qword_1EC9E5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5938);
  }

  return result;
}

void sub_1D7B6EB20()
{
  if (!qword_1EC9E5950)
  {
    sub_1D7B6ED40(255, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
    sub_1D7B6EBEC(&qword_1EC9E5960);
    sub_1D7B6EBEC(&qword_1EC9E5968);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5950);
    }
  }
}

uint64_t sub_1D7B6EBEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7B6ED40(255, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7B6EC4C()
{
  if (!qword_1EC9E5970)
  {
    sub_1D7A3B538();
    sub_1D7B6ECFC(&qword_1EC9E5978);
    sub_1D7B6ECFC(&unk_1EC9E5980);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5970);
    }
  }
}

uint64_t sub_1D7B6ECFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7A3B538();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7B6ED40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ReportConcernSectionDescriptor;
    v8[1] = &type metadata for ReportConcernModel;
    v8[2] = sub_1D7A26D5C();
    v8[3] = sub_1D7A26E88();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7B6EDC4()
{
  if (!qword_1EC9E5990)
  {
    sub_1D7B6ED40(255, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5990);
    }
  }
}

void sub_1D7B6EE38()
{
  if (!qword_1EC9E59A0)
  {
    sub_1D7B6ED40(255, &qword_1EC9E2630, MEMORY[0x1E69D87F8]);
    sub_1D7D2A68C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E59A0);
    }
  }
}

unint64_t sub_1D7B6EEC8()
{
  result = qword_1EC9E59A8;
  if (!qword_1EC9E59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E59A8);
  }

  return result;
}

unint64_t sub_1D7B6EF1C()
{
  result = qword_1EC9E59B0[0];
  if (!qword_1EC9E59B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9E59B0);
  }

  return result;
}

unint64_t sub_1D7B6EF7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D7B70868();
    v2 = sub_1D7D316BC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1D7A5FF18(*(a1 + 48) + 40 * v12, v24);
        sub_1D79FBED0(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1D7A5FF18(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1D7B707A4(v21);

          goto LABEL_23;
        }

        sub_1D79FBED0(v22 + 8, v20);
        sub_1D7B707A4(v21);
        sub_1D7A869EC();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1D7A18FFC(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D7B6F220(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D7B70740();
    v2 = sub_1D7D316BC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1D7A5FF18(*(a1 + 48) + 40 * v12, v27);
        sub_1D79FBED0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1D7A5FF18(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1D79FBED0(v25 + 8, v20);
        sub_1D7B707A4(v24);
        v21 = v18;
        sub_1D7A51B58(v20, v22);
        v13 = v21;
        sub_1D7A51B58(v22, v23);
        sub_1D7A51B58(v23, &v21);
        result = sub_1D7A18FFC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1D7A51B58(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1D7A51B58(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1D7B707A4(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_1D7B6F4D0(void *a1, uint64_t a2)
{
  v48 = a2;
  sub_1D7B7043C(0, &unk_1EC9E59C8, MEMORY[0x1E69B3F80]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v46 - v5;
  sub_1D7B70500(0, &qword_1EC9E59D8, &qword_1EC9E59E0, MEMORY[0x1E69B3F28]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v46 - v8;
  sub_1D7B70500(0, &qword_1EC9E59E8, &qword_1EC9E59F0, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v46 - v12;
  if (qword_1EC9DFD48 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC9E3338;
  sub_1D79A040C(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v51 = v15;
  v16 = swift_allocObject();
  v52 = xmmword_1D7D3B4D0;
  *(v16 + 16) = xmmword_1D7D3B4D0;
  result = [a1 prerollPlacementIdentifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = result;
  v19 = sub_1D7D3034C();
  v21 = v20;

  *(v16 + 56) = MEMORY[0x1E69E6158];
  v22 = sub_1D79D6AE0();
  *(v16 + 64) = v22;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  sub_1D7D30C6C();
  v49 = v14;
  sub_1D7D29AAC();

  v50 = a1;
  result = [a1 prerollPlacementIdentifier];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  sub_1D7D3034C();

  v24 = MEMORY[0x1E69B3F28];
  sub_1D7B7043C(0, &qword_1EC9E59E0, MEMORY[0x1E69B3F28]);
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  sub_1D7D2CBEC();

  sub_1D7B70558(v9, &qword_1EC9E59D8, &qword_1EC9E59E0, v24, sub_1D7B70500);
  v26 = MEMORY[0x1E69B4438];
  sub_1D7B7043C(0, &qword_1EC9E59F0, MEMORY[0x1E69B4438]);
  v28 = (*(*(v27 - 8) + 48))(v13, 1, v27);
  sub_1D7B70558(v13, &qword_1EC9E59E8, &qword_1EC9E59F0, v26, sub_1D7B70500);
  v29 = swift_allocObject();
  *(v29 + 16) = v52;
  if (v28 == 1)
  {
    v30 = v48;
    v31 = sub_1D7D2CEFC();
    v32 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = v22;
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    sub_1D7D30C6C();
    sub_1D7D29AAC();

    v34 = v53;
    sub_1D7D2CEFC();
    sub_1D7D2D4CC();

    v35 = swift_allocObject();
    *(v35 + 16) = v52;
    v36 = sub_1D7D2CEFC();
    *(v35 + 56) = v32;
    *(v35 + 64) = v22;
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    sub_1D7D30C6C();
    sub_1D7D29AAC();

    v38 = sub_1D7D2CA4C();
    MEMORY[0x1EEE9AC00](v38, v39);
    v40 = v50;
    *(&v46 - 4) = v30;
    *(&v46 - 3) = v40;
    *(&v46 - 2) = v34;
    v41 = v47;
    sub_1D7D2CD4C();

    return sub_1D7B705D8(v41);
  }

  result = [v50 prerollPlacementIdentifier];
  if (result)
  {
    v42 = result;
    v43 = sub_1D7D3034C();
    v45 = v44;

    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = v22;
    *(v29 + 32) = v43;
    *(v29 + 40) = v45;
    sub_1D7D30C6C();
    sub_1D7D29AAC();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7B6FAC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v21 = a4;
  v25 = a5;
  v7 = sub_1D7D2CF0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v22 = sub_1D7D2CA4C();
  (*(v8 + 16))(v11, a2, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v13, v11, v7);
  v17 = v20;
  v16 = v21;
  *(v15 + v14) = v20;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_1D7D2D0CC();
  sub_1D7D2CE5C();
  sub_1D7B706F8(&unk_1EE0CBDB0, MEMORY[0x1E69B4260]);
  v18 = v17;

  sub_1D7D2CF8C();
}

uint64_t sub_1D7B6FD04(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v5 = sub_1D7D2CCFC();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2CD1C();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79A040C(0, &qword_1EE0BFB20, MEMORY[0x1E69B4058], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v39 - v13;
  v15 = sub_1D7D2CDCC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v42 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2CE8C();
  v40 = *(v19 - 8);
  v41 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D7D2CAAC();
  v45 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2CEDC();
  sub_1D7D2CEDC();
  sub_1D7D2CA9C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B706F8(&qword_1EC9E59F8, MEMORY[0x1E69B3E00]);
  v46 = v23;
  sub_1D7D2CFDC();
  v27 = [v43 advertising];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 JSONRepresentation];

    if (v29)
    {
      v30 = sub_1D7D3028C();

      v31 = sub_1D7B6F220(v30);

      if (v31)
      {
        sub_1D7D2CE7C();
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_1D7B706F8(&unk_1EC9E5A00, MEMORY[0x1E69B40E8]);
        v32 = v41;
        sub_1D7D2CFDC();
        (*(v40 + 8))(v22, v32);
      }
    }
  }

  v33 = [*(v44 + 40) documentController];
  v34 = [v33 metadata];

  sub_1D7AE5EA0(v34, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D7B70558(v14, &qword_1EE0BFB20, MEMORY[0x1E69B4058], MEMORY[0x1E69E6720], sub_1D79A040C);
  }

  else
  {
    v35 = v42;
    (*(v16 + 32))(v42, v14, v15);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7B706F8(&unk_1EE0BFB30, MEMORY[0x1E69B4058]);
    sub_1D7D2CFDC();
    (*(v16 + 8))(v35, v15);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v49 + 104))(v47, *MEMORY[0x1E69B4000], v50);
  v36 = v48;
  sub_1D7D2CD0C();
  sub_1D7B706F8(&qword_1EE0BFB50, MEMORY[0x1E69B4028]);
  v37 = v52;
  sub_1D7D2CFDC();
  (*(v51 + 8))(v36, v37);
  return (*(v45 + 8))(v26, v46);
}

uint64_t sub_1D7B703EC()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7B7043C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D0CC();
    v8[1] = sub_1D7D2CF0C();
    v8[2] = sub_1D7B706F8(&unk_1EE0CBDB0, MEMORY[0x1E69B4260]);
    v8[3] = MEMORY[0x1E69B4108];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7B70500(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D7B7043C(255, a3, a4);
    v5 = sub_1D7D3130C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7B70558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7B705D8(uint64_t a1)
{
  sub_1D7B7043C(0, &unk_1EC9E59C8, MEMORY[0x1E69B3F80]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7B70650(void *a1)
{
  v3 = *(sub_1D7D2CF0C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7B6FD04(a1, v1 + v4, v6, v7);
}

uint64_t sub_1D7B706F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7B70740()
{
  if (!qword_1EE0BEB98)
  {
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEB98);
    }
  }
}

uint64_t sub_1D7B707A4(uint64_t a1)
{
  sub_1D7B70800();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7B70800()
{
  if (!qword_1EE0BEC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BEC60);
    }
  }
}

void sub_1D7B70868()
{
  if (!qword_1EE0BEBA8)
  {
    sub_1D7A869EC();
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEBA8);
    }
  }
}

uint64_t sub_1D7B708F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7D2D57C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D7B70960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2D57C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id ChromeControl.__allocating_init(toolbarManager:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12NewsArticles13ChromeControl_toolbarManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ChromeControl.init(toolbarManager:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12NewsArticles13ChromeControl_toolbarManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall ChromeControl.prefersChromeHidden(_:from:)(Swift::Bool _, UIViewController *from)
{
  swift_getObjectType();
  v4 = !_;
  sub_1D7D2AAEC();
  v5 = [(UIViewController *)from splitViewController];
  if (!v5)
  {
    v6 = [(UIViewController *)from presentingViewController];
    v7 = [(UIViewController *)v6 splitViewController];

    v5 = v7;
  }

  v8 = v5;
  [(UISplitViewController *)v5 ts_columnSeparatorsExtendToTitlebar:v4];
}

id ChromeControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChromeControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AnalyticsMediaData.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D7B70DE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D7B70E30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7B70F78(uint64_t a1, uint64_t a2, char a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  sub_1D798F168(0, &qword_1EE0CDBC8);
  sub_1D7D28D2C();
  v6 = v16;
  if (v16)
  {
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = [v8 popoverPresentationController];
    [v9 setSourceItem_];

    if (_UISolariumFeatureFlagEnabled())
    {
      v10 = [v8 popoverPresentationController];
      if (v10)
      {
        v11 = v10;
        [v10 _setPrefersZoomTransitions_];
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [Strong navigationController];

      if (v14)
      {
        [v14 presentViewController:v8 animated:a3 & 1 completion:0];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7B710FC(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      if (a2)
      {
        swift_allocObject();
        swift_weakInit();

        sub_1D7D2C16C();
      }

      sub_1D7D2C14C();
    }
  }
}

void sub_1D7B71204()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v1 = sub_1D7D30D5C();

      if (v1)
      {
        v2 = [v1 popViewControllerAnimated_];
      }
    }
  }
}

uint64_t sub_1D7B712A0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1D7C9CB50(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 8))(a1, a2, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      return sub_1D7B73D0C(v8, &qword_1EC9E4520, &qword_1EC9E4528, &protocol descriptor for PageViewer, sub_1D7AF44B8);
    }
  }

  return result;
}

void sub_1D7B71378(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for RouteModel();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v10 = Strong, v23 = [Strong parentViewController], v10, !v23))
  {
LABEL_11:
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = a2;
    v17 = swift_unknownObjectWeakLoadStrong();

    if (v17 && (v18 = [v17 presentedViewController], v17, v18))
    {
      aBlock[4] = sub_1D7B73CE8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D79FE25C;
      aBlock[3] = &block_descriptor_23;
      v19 = _Block_copy(aBlock);

      [v18 dismissViewControllerAnimated:1 completion:v19];

      _Block_release(v19);
    }

    else
    {
      v20 = v2[12];
      v21 = v2[13];
      __swift_project_boxed_opaque_existential_1(v2 + 9, v20);
      *v8 = a1;
      v8[1] = a2;
      swift_storeEnumTagMultiPayload();

      RouterType.route(to:)(v8, v20, v21);

      sub_1D7B73DD4(v8, type metadata accessor for RouteModel);
    }

    return;
  }

  type metadata accessor for IssueViewerViewController();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_11;
  }

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  IssueViewerViewController.navigateToPage(with:)(v11);
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 presentedViewController];

    if (v14)
    {
      [v14 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v15 = v23;
}

uint64_t sub_1D7B71660(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RouteModel();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[12];
  v11 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v10);
  *v9 = a2;
  v9[1] = a3;
  swift_storeEnumTagMultiPayload();

  RouterType.route(to:)(v9, v10, v11);
  return sub_1D7B73DD4(v9, type metadata accessor for RouteModel);
}

uint64_t sub_1D7B71750(void *a1)
{
  v2 = v1;
  v34 = a1;
  v33 = *v1;
  v3 = sub_1D7D2F7BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_1D7D2F53C();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  sub_1D798F168(0, &unk_1EE0CCF70);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_1D7D28D0C();

  result = swift_unownedRelease();
  if (v41)
  {
    sub_1D799D69C(&v40, v42);
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    sub_1D798F168(0, &qword_1EE0CBE40);
    result = sub_1D7D28D2C();
    if (v38)
    {
      sub_1D799D69C(&v37, &v40);
      __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
      sub_1D798F168(0, &qword_1EC9E3888);
      sub_1D7D28D2C();
      v12 = v34;
      if (v36)
      {
        sub_1D799D69C(&v35, &v37);
        __swift_project_boxed_opaque_existential_1(&v37, v38);
        *v7 = v12;
        (*(v4 + 104))(v7, *MEMORY[0x1E69B63F0], v3);
        v13 = v12;
        sub_1D7D2FEDC();
        (*(v4 + 8))(v7, v3);
        v14 = sub_1D7D2F52C();
        (*(v31 + 8))(v10, v32);
        if ((v14 & 1) == 0)
        {
          sub_1D7B73B2C();
          v15 = swift_allocError();
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(&v37);
          v38 = &type metadata for AlertIssueUnavailable;
          v39 = sub_1D7B73C40();
          v16 = v15;
          v17 = sub_1D7D2814C();
          v18 = [v17 fc_isUnknownItemError];

          *&v37 = v18;
          BYTE8(v37) = 1;
          sub_1D7D2C18C();
          swift_allocObject();
          sub_1D7D2C13C();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong && (v20 = Strong, v21 = [Strong navigationController], v20, v21))
          {
            sub_1D7D2C14C();
          }

          else
          {
          }

LABEL_21:
          __swift_destroy_boxed_opaque_existential_1(&v40);
          return __swift_destroy_boxed_opaque_existential_1(v42);
        }

        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      else
      {
        sub_1D7B73D0C(&v35, &unk_1EC9E5A90, &qword_1EC9E3888, MEMORY[0x1E69B67C0], sub_1D7AF44B8);
      }

      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      v38 = v33;
      v39 = &off_1F52A73F8;
      *&v37 = v2;

      v22 = sub_1D7AAA654(v12, &v37);
      __swift_destroy_boxed_opaque_existential_1(&v37);
      __swift_project_boxed_opaque_existential_1(&v40, v41);
      v23 = sub_1D7D2BE4C();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v26 = [v24 traitCollection];

        v27 = [v26 horizontalSizeClass];
        if (v27 >= 2)
        {
          if (v27 == 2)
          {
            [v23 setModalPresentationStyle_];
          }

          else
          {
            *&v37 = v27;
            BYTE8(v37) = 0;
            sub_1D7B73C94(0, &qword_1EC9E5AA8, type metadata accessor for UIUserInterfaceSizeClass);
            sub_1D7D303AC();
          }
        }
      }

      v28 = swift_unknownObjectWeakLoadStrong();
      if (v28)
      {
        v29 = v28;
        v30 = [v28 navigationController];

        if (v30)
        {
          [v30 presentViewController:v23 animated:1 completion:0];
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B71DBC(void *a1)
{
  v2 = sub_1D7D289CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();

  *v6 = 0x636F546C61646F6DLL;
  v6[1] = 0xE800000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x1E698AAC0], v2);
  sub_1D7D28A0C();

  (*(v3 + 8))(v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_1D7D28A3C();
  sub_1D7D28BEC();
}

void sub_1D7B71F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D7D2EFAC();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B73A80();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v90 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v89 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v86 - v18;
  v20 = sub_1D7D28A5C();
  v102 = *(v20 - 8);
  v103 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D7D2F7BC();
  v98 = *(v23 - 8);
  v99 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v95 = (&v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_1D7D2F53C();
  v96 = *(v26 - 8);
  v97 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = (&v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = a2;
  sub_1D7B73D6C(a2, v33, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D7B73DD4(v33, type metadata accessor for ArticleViewerPage);
      return;
    }

    v88 = v9;
    if (EnumCaseMultiPayload == 3)
    {
      v93 = a1;
      v39 = *(v33 + 9);
      v123 = *(v33 + 8);
      v124 = v39;
      v125 = *(v33 + 20);
      v40 = *(v33 + 5);
      v119 = *(v33 + 4);
      v120 = v40;
      v41 = *(v33 + 7);
      v121 = *(v33 + 6);
      v122 = v41;
      v42 = *(v33 + 1);
      v118[0] = *v33;
      v118[1] = v42;
      v43 = *(v33 + 3);
      v118[2] = *(v33 + 2);
      v118[3] = v43;
      sub_1D79F5B54(&v120 + 8, &v114);
      sub_1D79F949C(v118);
      v44 = v122;
      v45 = v123;
      v46 = v124;
      v47 = *(&v120 + 1);
      v48 = v121;
      goto LABEL_11;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v33[*(v52 + 48)], *&v33[*(v52 + 48) + 8], *&v33[*(v52 + 48) + 16]);
    goto LABEL_9;
  }

  v88 = v9;
  if (!EnumCaseMultiPayload)
  {
LABEL_9:
    v93 = a1;
    sub_1D7B73B80(v33, v37, type metadata accessor for ArticleViewerArticlePage);
    v53 = v37[1];
    v118[0] = *v37;
    v118[1] = v53;
    v54 = v37[3];
    v118[2] = v37[2];
    v118[3] = v54;
    sub_1D79F5B54(v118, &v114);
    sub_1D7B73DD4(v37, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_10;
  }

  v93 = a1;
  v49 = *(v33 + 3);
  v118[2] = *(v33 + 2);
  v118[3] = v49;
  v50 = *(v33 + 5);
  v119 = *(v33 + 4);
  v120 = v50;
  v51 = *(v33 + 1);
  v118[0] = *v33;
  v118[1] = v51;
  sub_1D79F5B54(v118, &v114);
  sub_1D7A1EF80(v118);
LABEL_10:
  v45 = *(&v118[2] + 8);
  v44 = *(&v118[1] + 8);
  v46 = *(&v118[3] + 1);
  v47 = *&v118[0];
  v48 = *(v118 + 8);
LABEL_11:
  v104 = v48;
  *(v118 + 8) = v48;
  *(&v118[1] + 8) = v44;
  v94 = v45;
  *(&v118[2] + 8) = v45;
  *&v118[0] = v47;
  *(&v118[3] + 1) = v46;
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  sub_1D798F168(0, &qword_1EC9E3888);
  sub_1D7D28D2C();
  v55 = *(&v104 + 1);
  if (!*(&v106 + 1))
  {
    sub_1D7B73D0C(&v105, &unk_1EC9E5A90, &qword_1EC9E3888, MEMORY[0x1E69B67C0], sub_1D7AF44B8);
    goto LABEL_18;
  }

  v87 = v19;
  *&v104 = v3;
  sub_1D799D69C(&v105, &v114);
  __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
  v56 = [v55 recipeIDs];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1D7D3063C();
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  v59 = v95;
  *v95 = v58;
  v61 = v98;
  v60 = v99;
  (*(v98 + 104))(v59, *MEMORY[0x1E69B63E8], v99);
  sub_1D7D2FEDC();
  (*(v61 + 8))(v59, v60);
  v62 = sub_1D7D2F52C();
  (*(v96 + 8))(v29, v97);
  if (v62)
  {
    __swift_destroy_boxed_opaque_existential_1(&v114);
    v3 = v104;
LABEL_18:
    ArticleViewerPage.tracker.getter();

    sub_1D7D289EC();

    swift_getObjectType();
    v63 = v100;
    sub_1D7D30EEC();
    sub_1D7B73BE8(&qword_1EC9E5A80, MEMORY[0x1E69B49F8]);
    v64 = v103;
    sub_1D7D289FC();
    (*(v102 + 8))(v63, v64);
    __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
    sub_1D798F168(0, qword_1EE0CCFA8);

    sub_1D7D28D0C();

    if (v110)
    {
      sub_1D799D69C(&v109, v111);
      v65 = v112;
      v66 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v105 = v118[0];
      v106 = v118[1];
      v107 = v118[2];
      v108 = v118[3];
      v67 = *(v66 + 8);
      sub_1D79F5B54(v118, &v114);
      v68 = v67(v93, &v105, v65, v66);
      v114 = v105;
      v115 = v106;
      v116 = v107;
      v117 = v108;
      sub_1D7B73D0C(&v114, &qword_1EE0C0600, &type metadata for Article, MEMORY[0x1E69E6720], sub_1D7B73ADC);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v70 = Strong, v71 = [Strong navigationController], v70, v71))
      {
        [v71 presentViewController:v68 animated:1 completion:0];

        sub_1D7A0AD5C(v118);
      }

      else
      {

        sub_1D7A0AD5C(v118);
      }

      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  sub_1D7B73B2C();
  v72 = swift_allocError();
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v114);
  if (*(v104 + 112))
  {
    v73 = v72;
    v74 = v89;
    sub_1D7D2F11C();
    v75 = v87;
    sub_1D7B73B80(v74, v87, sub_1D7B73A80);
    v76 = v90;
    sub_1D7B73D6C(v75, v90, sub_1D7B73A80);
    v78 = v91;
    v77 = v92;
    if ((*(v91 + 48))(v76, 1, v92) == 1)
    {
      v79 = v88;
      if (qword_1EC9DFE48 != -1)
      {
        swift_once();
      }

      v80 = __swift_project_value_buffer(v77, qword_1EC9E6718);
      (*(v78 + 16))(v79, v80, v77);
    }

    else
    {
      v79 = v88;
      (*(v78 + 32))(v88, v76, v77);
    }

    *(&v115 + 1) = type metadata accessor for AlertRecipeUnavailable();
    *&v116 = sub_1D7B73BE8(&unk_1EC9E71A0, type metadata accessor for AlertRecipeUnavailable);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
    v82 = v72;
    AlertRecipeUnavailable.init(error:offlineModel:)(v72, v79, boxed_opaque_existential_1);
    sub_1D7D2C18C();
    swift_allocObject();
    sub_1D7D2C13C();
    v83 = swift_unknownObjectWeakLoadStrong();
    if (v83 && (v84 = v83, v85 = [v83 navigationController], v84, v85))
    {
      sub_1D7D2C14C();
    }

    else
    {
    }

    sub_1D7A0AD5C(v118);
    sub_1D7B73DD4(v75, sub_1D7B73A80);
  }

  else
  {
    sub_1D7A0AD5C(v118);
  }
}

uint64_t sub_1D7B72AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v84 = a3;
  *&v86 = a2;
  *&v85 = a1;
  v87 = type metadata accessor for RouteModel();
  MEMORY[0x1EEE9AC00](v87, v5);
  v88 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v82 = &v74 - v13;
  v14 = sub_1D7D28A5C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v81, v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B73D6C(a4, v25, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v75 = v10;
    v76 = v15;
    v77 = v7;
    if (EnumCaseMultiPayload)
    {
      v40 = *(v25 + 1);
      v90 = *v25;
      v91 = v40;
      v41 = *(v25 + 3);
      v92 = *(v25 + 2);
      v93 = v41;
      v42 = *(v25 + 5);
      v94 = *(v25 + 4);
      v95 = v42;
      v43 = *(&v90 + 1);
      v44 = v91;
      v39 = *(&v93 + 1);
      v38 = v93;
      v78 = *(&v92 + 1);

      v80 = v43;

      v89 = v44;
      swift_unknownObjectRetain();
      v79 = *(&v44 + 1);
      swift_unknownObjectRetain();
      sub_1D7A1EF80(&v90);
      goto LABEL_10;
    }

LABEL_9:
    sub_1D7B73B80(v25, v29, type metadata accessor for ArticleViewerArticlePage);
    v48 = v14;
    v50 = v29[1];
    v49 = v29[2];
    v51 = v29[3];
    v38 = v29[6];
    v39 = v29[7];
    v78 = v29[5];

    v80 = v50;

    v89 = v49;
    v14 = v48;
    swift_unknownObjectRetain();
    v79 = v51;
    swift_unknownObjectRetain();
    sub_1D7B73DD4(v29, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v45 = type metadata accessor for ArticleViewerPage;
    v46 = v25;
    return sub_1D7B73DD4(v46, v45);
  }

  v77 = v7;
  v76 = v15;
  v75 = v10;
  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v25[*(v47 + 48)], *&v25[*(v47 + 48) + 8], *&v25[*(v47 + 48) + 16]);
    goto LABEL_9;
  }

  v31 = *(v25 + 9);
  v98 = *(v25 + 8);
  v99 = v31;
  v100 = *(v25 + 20);
  v32 = *(v25 + 5);
  v94 = *(v25 + 4);
  v95 = v32;
  v33 = *(v25 + 7);
  v96 = *(v25 + 6);
  v97 = v33;
  v34 = *(v25 + 1);
  v90 = *v25;
  v91 = v34;
  v35 = *(v25 + 3);
  v92 = *(v25 + 2);
  v93 = v35;
  v36 = v96;
  v37 = v97;
  v38 = *(&v98 + 1);
  v39 = v99;
  v78 = v98;

  v80 = v36;

  v89 = *(&v36 + 1);
  swift_unknownObjectRetain();
  v79 = v37;
  swift_unknownObjectRetain();
  sub_1D79F949C(&v90);
LABEL_10:
  v52 = v82;
  v53 = v75;
  *v21 = v38;
  *(v21 + 1) = v39;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v21[32] = 0;
  v54 = *(v81 + 20);
  v55 = type metadata accessor for ArticleRouteModel();
  (*(*(v55 - 8) + 56))(&v21[v54], 1, 1, v55);
  v81 = v39;

  ArticleViewerPage.tracker.getter();
  if (v21[32] <= 1u)
  {
  }

  v56 = sub_1D7D289EC();

  swift_getObjectType();
  sub_1D7D30EEC();
  sub_1D7B73BE8(&qword_1EC9E5A80, MEMORY[0x1E69B49F8]);
  sub_1D7D289FC();
  (*(v76 + 8))(v18, v14);
  sub_1D79AC548();
  v58 = *(v57 + 64);
  v59 = v85;
  v60 = v52;
  *v52 = v85;
  v61 = v86;
  v62 = v84;
  *(v60 + 8) = v86;
  *(v60 + 16) = v62;
  sub_1D7B73D6C(v21, v60 + v58, type metadata accessor for RecipeRouteContext);
  swift_storeEnumTagMultiPayload();
  v77 = v83[12];
  v76 = v83[13];
  v83 = __swift_project_boxed_opaque_existential_1(v83 + 9, v77);
  sub_1D7B73D6C(v60, v53, type metadata accessor for RecipeRouteModel);
  type metadata accessor for RecipeBlueprintRouteModel();
  v63 = swift_allocObject();
  v64 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  sub_1D7B73C94(0, &qword_1EE0BB250, MEMORY[0x1E69D83F0]);
  (*(*(v65 - 8) + 56))(v63 + v64, 1, 1, v65);
  v66 = v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer;
  *(v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v63 + 16) = v59;
  *(v63 + 24) = v61;
  sub_1D7B73D6C(v53, v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel, type metadata accessor for RecipeRouteModel);
  sub_1D7B73D6C(v53, v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  *(v66 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintTraits) = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRetain_n();

  sub_1D7BEF87C(v59, v61, &v90);
  v67 = v94 & 0xCFFFFFFFFFFFFFF8;
  v68 = type metadata accessor for RecipeViewerBlueprintProvider();
  v86 = v90;
  v84 = v91;
  v85 = v92;
  v74 = v93;
  v69 = swift_allocObject();
  v90 = v86;
  v91 = v84;
  v92 = v85;
  v93 = v74;
  *&v94 = v67;
  sub_1D7B73ADC(0, &qword_1EC9E53F0, &type metadata for RecipeViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v69 + 16) = sub_1D7D28ECC();
  *(&v91 + 1) = v68;
  *&v92 = &protocol witness table for RecipeViewerBlueprintProvider;
  *&v90 = v69;
  sub_1D7B73DD4(v53, type metadata accessor for RecipeRouteModel);
  sub_1D799D69C(&v90, v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider);
  v70 = v88;
  *v88 = v63;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v90) = 0;
  v71 = v76;
  v72 = *(v76 + 8);

  v72(v70, &v90, v56, v77, v71);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1D7B73DD4(v70, type metadata accessor for RouteModel);
  sub_1D7B73DD4(v60, type metadata accessor for RecipeRouteModel);
  v45 = type metadata accessor for RecipeRouteContext;
  v46 = v21;
  return sub_1D7B73DD4(v46, v45);
}

uint64_t sub_1D7B73530()
{
  MEMORY[0x1DA7103D0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B73588@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 112))
  {
    sub_1D7D2F11C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  sub_1D7B73A80();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

void sub_1D7B73638(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      [v6 presentViewController:a1 animated:a2 & 1 completion:0];
    }
  }
}

uint64_t sub_1D7B7370C(uint64_t a1)
{
  v3 = type metadata accessor for RouteModel();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = *(*v1 + 96);
  v9 = *(v7 + 104);
  __swift_project_boxed_opaque_existential_1((v7 + 72), v8);
  *v6 = a1;
  swift_storeEnumTagMultiPayload();

  RouterType.route(to:)(v6, v8, v9);
  return sub_1D7B73DD4(v6, type metadata accessor for RouteModel);
}

uint64_t sub_1D7B73838(uint64_t a1)
{
  v3 = type metadata accessor for RouteModel();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = *(*v1 + 96);
  v9 = *(v7 + 104);
  __swift_project_boxed_opaque_existential_1((v7 + 72), v8);
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  RouterType.route(to:)(v6, v8, v9);
  return sub_1D7B73DD4(v6, type metadata accessor for RouteModel);
}

uint64_t sub_1D7B73988@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for IssueTableOfContentsAction();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B73D6C(a1, v7, type metadata accessor for IssueTableOfContentsAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1D7B73DD4(v7, type metadata accessor for IssueTableOfContentsAction);
  }

  else
  {
    sub_1D7B71378(*v7, v7[1]);
  }

  *a2 = 1;
  return result;
}

void sub_1D7B73A80()
{
  if (!qword_1EC9E5A88)
  {
    sub_1D7B683A0();
    v0 = sub_1D7D2F10C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5A88);
    }
  }
}

void sub_1D7B73ADC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D7B73B2C()
{
  result = qword_1EC9E5A98;
  if (!qword_1EC9E5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5A98);
  }

  return result;
}

uint64_t sub_1D7B73B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B73BE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7B73C40()
{
  result = qword_1EC9E5AA0;
  if (!qword_1EC9E5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5AA0);
  }

  return result;
}

void sub_1D7B73C94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7B73D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7B73D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B73DD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7B73E48()
{
  result = qword_1EC9E5AB0;
  if (!qword_1EC9E5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5AB0);
  }

  return result;
}

void sub_1D7B73E9C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = sub_1D7D3039C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2833C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v76 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    sub_1D7B747E8();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    return;
  }

  v18 = v17;
  v84 = v7;
  v86 = v16;
  v87 = v9;
  v19 = a1;
  v20 = sub_1D7B74524(v18);
  v22 = v21;
  v23 = v19;
  v24 = [v18 mediaType];
  v25 = v24 - 1;
  if ((v24 - 1) >= 5 || (v85 = v8, (v26 = [v18 mediaId]) == 0))
  {

LABEL_10:
    sub_1D7B747E8();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();

    return;
  }

  v27 = v26;
  v82 = a2;
  v83 = v23;
  v28 = 0x502040103uLL >> (8 * v25);
  v29 = sub_1D7D3034C();
  v31 = v30;

  if (v22)
  {

    v29 = v20;
    v31 = v22;
  }

  v32 = v85;
  v33 = v87;
  LOBYTE(v88[0]) = 1;
  LOBYTE(v89) = v28;
  *(&v89 + 1) = v29;
  v90 = v31;
  v91 = 1;
  v23 = v83;
  v34 = [v83 endDate];
  if (!v34)
  {

    sub_1D7A045A8(&v89);
    goto LABEL_10;
  }

  v35 = v34;
  sub_1D7D2830C();

  v36 = v86;
  (*(v33 + 32))(v86, v12, v32);
  sub_1D7B74650(v18, &v89, v88);
  sub_1D7A045FC(0, v37);
  v39 = v38;
  v80 = v88[1];
  v81 = v88[0];
  v40 = v82;
  v41 = v82 + *(v38 + 48);
  v42 = (v82 + *(v38 + 64));
  v43 = v90;
  *v82 = v89;
  v40[1] = v43;
  *(v40 + 32) = v91;
  v44 = [v18 startDate];
  sub_1D7D2830C();

  v45 = v85;
  v46 = type metadata accessor for AnalyticsTimedData();
  (*(v33 + 16))(&v41[*(v46 + 20)], v36, v45);
  v47 = v80;
  *v42 = v81;
  v42[1] = v47;
  v48 = [v18 componentIdentifier];
  if (v48)
  {
    v49 = v48;
    *&v81 = sub_1D7D3034C();
    *&v80 = v50;
  }

  else
  {
    *&v81 = 0;
    *&v80 = 0;
  }

  v53 = [v18 componentType];
  v54 = v83;
  if (v53)
  {
    v55 = v53;
    v79 = sub_1D7D3034C();
    v78 = v56;
  }

  else
  {
    v79 = 0;
    v78 = 0;
  }

  v57 = [v18 componentRole];
  if (v57)
  {
    v58 = v57;
    v77 = sub_1D7D3034C();
    v60 = v59;
  }

  else
  {
    v77 = 0;
    v60 = 0;
  }

  v61 = [v18 metaData];

  if (v61)
  {
    sub_1D7D3028C();

    v62 = objc_opt_self();
    v63 = sub_1D7D3027C();

    *&v88[0] = 0;
    v64 = [v62 dataWithJSONObject:v63 options:0 error:v88];

    v65 = *&v88[0];
    if (v64)
    {
      v66 = sub_1D7D2827C();
      v68 = v67;

      sub_1D7D3038C();
      v61 = sub_1D7D3036C();
      v70 = v69;
      sub_1D79EA2E4(v66, v68);

      (*(v87 + 8))(v86, v85);
    }

    else
    {
      v71 = v65;
      v72 = sub_1D7D2815C();

      swift_willThrow();
      (*(v87 + 8))(v86, v85);

      v61 = 0;
      v70 = 0;
    }

    v40 = v82;
  }

  else
  {

    (*(v33 + 8))(v86, v45);
    v70 = 0;
  }

  v73 = (v40 + *(v39 + 80));
  v74 = v80;
  *v73 = v81;
  v73[1] = v74;
  v75 = v78;
  v73[2] = v79;
  v73[3] = v75;
  v73[4] = v77;
  v73[5] = v60;
  v73[6] = v61;
  v73[7] = v70;
  type metadata accessor for AnalyticsEvent();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7B74524(void *a1)
{
  v2 = [a1 mediaId];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = [a1 galleryImageIds];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7D3063C();

    if (*(v9 + 16))
    {
      sub_1D79FBED0(v9 + 32, v11);

      if (swift_dynamicCast())
      {
        v11[0] = v4;
        v11[1] = v6;

        MEMORY[0x1DA70DE90]();

        return v11[0];
      }
    }

    else
    {
    }
  }

  return v4;
}

unint64_t sub_1D7B74650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = [a1 galleryType];
  if (result - 1 >= 2)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    result = [a1 galleryType];
    if (result < 3)
    {
      v7 = qword_1D7D51220[result];
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      sub_1D7A04768(a2, v11);
      result = [a1 galleryImageCount];
      if ((result & 0x8000000000000000) == 0)
      {
        *a3 = v7;
        *(a3 + 8) = v8;
        *(a3 + 16) = v9;
        *(a3 + 24) = result;
        return result;
      }

      __break(1u);
    }

    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    v10 = result;
    sub_1D7D3145C();
    MEMORY[0x1DA70DE90](0xD000000000000010, 0x80000001D7D69D30);
    v11[5] = v10;
    type metadata accessor for SXAnalyticsEventGalleryType(0);
    sub_1D7D315DC();
    MEMORY[0x1DA70DE90](0xD000000000000038, 0x80000001D7D69D50);
    result = sub_1D7D3160C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7B747E8()
{
  result = qword_1EC9E5AB8;
  if (!qword_1EC9E5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5AB8);
  }

  return result;
}

unint64_t sub_1D7B74850()
{
  result = qword_1EC9E5AC0;
  if (!qword_1EC9E5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5AC0);
  }

  return result;
}

void TableOfContentsHeaderViewModel.init(issue:issueCoverPageIdentifier:isSubscribed:)(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for TableOfContentsHeaderViewModel();
  v11 = (a5 + v10[11]);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v14 = sub_1D7D303CC();
  v16 = v15;

  *v11 = v14;
  v11[1] = v16;
  v17 = [v9 identifier];
  v18 = sub_1D7D3034C();
  v20 = v19;

  *a5 = v18;
  a5[1] = v20;
  a5[2] = a2;
  a5[3] = a3;
  v21 = [v9 coverDate];
  v22 = sub_1D7D3034C();
  v24 = v23;

  v25 = (a5 + v10[7]);
  *v25 = v22;
  v25[1] = v24;
  v26 = [v9 issueDescription];
  v27 = sub_1D7D3034C();
  v29 = v28;

  v30 = (a5 + v10[8]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [objc_msgSend(v9 sourceChannel)];
  swift_unknownObjectRelease();
  v32 = sub_1D7D3034C();
  v34 = v33;

  v35 = (a5 + v10[9]);
  *v35 = v32;
  v35[1] = v34;
  *(a5 + v10[10]) = a4;
  v36 = v9;
  sub_1D79ECEE4(v9);
  sub_1D7D3111C();
}

uint64_t type metadata accessor for TableOfContentsHeaderViewModel()
{
  result = qword_1EC9E5AC8;
  if (!qword_1EC9E5AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TableOfContentsHeaderViewModel.init(identifier:issueCoverPageIdentifier:issueCoverModel:issueCoverDateText:issueDescriptionText:sourceChannelID:isSubscribed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, char *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  v15 = type metadata accessor for TableOfContentsHeaderViewModel();
  v16 = &a7[v15[11]];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v19 = sub_1D7D303CC();
  v21 = v20;

  *v16 = v19;
  v16[1] = v21;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v22 = v15[6];
  v23 = sub_1D7D2EEBC();
  (*(*(v23 - 8) + 32))(&a7[v22], a5, v23);
  v24 = &a7[v15[7]];
  *v24 = a6;
  *(v24 + 1) = a8;
  v25 = &a7[v15[8]];
  *v25 = a6;
  *(v25 + 1) = a8;
  v26 = &a7[v15[9]];
  *v26 = a9;
  *(v26 + 1) = a10;
  a7[v15[10]] = a11;
}

uint64_t _s12NewsArticles30TableOfContentsHeaderViewModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D7D3197C()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_1D7D3197C()) && ((v6 = type metadata accessor for TableOfContentsHeaderViewModel(), v7 = v6[7], v8 = *(a1 + v7), v9 = *(a1 + v7 + 8), v10 = (a2 + v7), v8 == *v10) ? (v11 = v9 == v10[1]) : (v11 = 0), (v11 || (sub_1D7D3197C()) && ((v12 = v6[8], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) ? (v16 = v14 == v15[1]) : (v16 = 0), (v16 || (sub_1D7D3197C()) && ((v17 = v6[9], v18 = *(a1 + v17), v19 = *(a1 + v17 + 8), v20 = (a2 + v17), v18 == *v20) && v19 == v20[1] || (sub_1D7D3197C())))))
  {
    v21 = *(a1 + v6[10]) ^ *(a2 + v6[10]) ^ 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1D7B74E84()
{
  result = sub_1D7D2EEBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7B74F14(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 48); ; i += 3)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a2;
    v23 = *a2;
    *a2 = 0x8000000000000000;
    v10 = sub_1D7A18FFC(v6, v5);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_1D7B91FF4(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_1D7A18FFC(v6, v5);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v18 = v23;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v22 = v10;
    sub_1D7B9741C();
    v10 = v22;
    v18 = v23;
    if (v16)
    {
LABEL_3:
      *(v18[7] + 8 * v10) = v7;
      goto LABEL_4;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v6;
    v19[1] = v5;
    *(v18[7] + 8 * v10) = v7;
    v20 = v18[2];
    v14 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v21;

LABEL_4:
    *a2 = v18;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

uint64_t sub_1D7B750C4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  if (!v27)
  {
    return v1;
  }

  v2 = 0;
  v26 = a1 + 32;
  while (1)
  {
    v4 = v26 + 16 * v2;
    v5 = *v4;
    if (*(v4 + 8))
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        v29[0] = MEMORY[0x1E69E7CC0];

        sub_1D7D3156C();
        v7 = 32;
        do
        {

          sub_1D7D3153C();
          sub_1D7D3157C();
          sub_1D7D3158C();
          sub_1D7D3154C();
          v7 += 16;
          --v6;
        }

        while (v6);

        v5 = v29[0];
      }

      else
      {
        v5 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
    }

    v8 = v5 >> 62;
    if (v5 >> 62)
    {
      v9 = sub_1D7D3167C();
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v1 >> 62;
    if (v1 >> 62)
    {
      v25 = sub_1D7D3167C();
      v12 = v25 + v9;
      if (__OFADD__(v25, v9))
      {
LABEL_39:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v10)
      {
        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_21:
      sub_1D7D3167C();
      goto LABEL_22;
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_22:
    result = sub_1D7D314AC();
    v1 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (((v15 >> 1) - v14) < v9)
    {
      goto LABEL_42;
    }

    v17 = v13 + 8 * v14 + 32;
    v28 = v9;
    if (v8)
    {
      if (v16 < 1)
      {
        goto LABEL_44;
      }

      sub_1D7B812D4(0, &qword_1EE0BF3B0, type metadata accessor for EndOfArticleHeadlineModel, MEMORY[0x1E69E62F8]);
      sub_1D7B7ECEC();
      for (i = 0; i != v16; ++i)
      {
        v19 = sub_1D7A67690(v29, i, v5);
        v21 = *v20;

        (v19)(v29, 0);
        *(v17 + 8 * i) = v21;
      }
    }

    else
    {
      type metadata accessor for EndOfArticleHeadlineModel();
      swift_arrayInitWithCopy();
    }

    if (v28 > 0)
    {
      v22 = *(v13 + 16);
      v23 = __OFADD__(v22, v28);
      v24 = v22 + v28;
      if (v23)
      {
        goto LABEL_43;
      }

      *(v13 + 16) = v24;
    }

LABEL_4:
    if (++v2 == v27)
    {
      return v1;
    }
  }

  result = sub_1D7D3167C();
  v16 = result;
  if (result)
  {
    goto LABEL_27;
  }

LABEL_3:

  if (v9 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1D7B75410(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v6 = MEMORY[0x1E69E7CC0];
      sub_1D7D3156C();
      v4 = v2 + 32;
      do
      {
        v4 += 16;

        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
        --v3;
      }

      while (v3);
      return v6;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1D7B754D4(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = 0;
  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC8];
  v7 = &off_1E84EC000;
  v75 = a3 + 32;
  v76 = *(a3 + 16);
  while (1)
  {
    v8 = (v5 + 16 * v4);
    v9 = *v8;
    if ((v8[1] & 1) == 0)
    {
      break;
    }

    v10 = *(v9 + 16);
    if (v10)
    {
      v78 = v4;

      v11 = 0;
      v12 = (v9 + 40);
      while (1)
      {
        if (v11 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_66;
        }

        v13 = *(v12 - 1);
        v14 = *v12;
        v15 = *(v13 + 16);
        swift_retain_n();
        v16 = [v15 v7[338]];
        v17 = sub_1D7D3034C();
        v19 = v18;

        if (v6[2])
        {
          v20 = sub_1D7A18FFC(v17, v19);
          v22 = v21;

          if ((v22 & 1) != 0 && *(v6[7] + 8 * v20) != 0.0)
          {
            v23 = *(v13 + 16);

            v24 = [v23 v7[338]];
            v25 = sub_1D7D3034C();
            v27 = v26;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = sub_1D7A18FFC(v25, v27);
            v31 = v6[2];
            v32 = (v30 & 1) == 0;
            v33 = __OFADD__(v31, v32);
            v34 = v31 + v32;
            if (v33)
            {
              goto LABEL_70;
            }

            v35 = v30;
            if (v6[3] >= v34)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_20;
              }

              v38 = v29;
              sub_1D7B9741C();
              v29 = v38;
              if ((v35 & 1) == 0)
              {
                goto LABEL_23;
              }

LABEL_21:
              v37 = v29;

              *(v6[7] + 8 * v37) = v14;
            }

            else
            {
              sub_1D7B91FF4(v34, isUniquelyReferenced_nonNull_native);
              v29 = sub_1D7A18FFC(v25, v27);
              if ((v35 & 1) != (v36 & 1))
              {
                goto LABEL_72;
              }

LABEL_20:
              if (v35)
              {
                goto LABEL_21;
              }

LABEL_23:
              v6[(v29 >> 6) + 8] |= 1 << v29;
              v39 = (v6[6] + 16 * v29);
              *v39 = v25;
              v39[1] = v27;
              *(v6[7] + 8 * v29) = v14;

              v40 = v6[2];
              v33 = __OFADD__(v40, 1);
              v41 = v40 + 1;
              if (v33)
              {
                goto LABEL_71;
              }

              v6[2] = v41;
            }

            v7 = &off_1E84EC000;
            goto LABEL_10;
          }
        }

        else
        {
        }

LABEL_10:
        ++v11;
        v12 += 2;
        if (v10 == v11)
        {

          v5 = v75;
          v3 = v76;
          v4 = v78;
          break;
        }
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return v6;
    }
  }

  if (a2)
  {
    if (v9 >> 62)
    {
      v70 = v4;
      v71 = sub_1D7D3167C();
      v5 = v75;
      v3 = v76;
      v4 = v70;
      if (v71)
      {
LABEL_62:

        return MEMORY[0x1E69E7CC8];
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

    goto LABEL_4;
  }

  if (!(v9 >> 62))
  {
    v42 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

  v72 = v4;
  v73 = sub_1D7D3167C();
  v5 = v75;
  v3 = v76;
  v4 = v72;
  v42 = v73;
  if (!v73)
  {
LABEL_57:
    v7 = &off_1E84EC000;
    goto LABEL_4;
  }

LABEL_32:
  v79 = v4;

  v43 = 0;
  while (2)
  {
    if ((v9 & 0xC000000000000001) == 0)
    {
      v46 = &off_1E84EC000;
      if (v43 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v45 = *(v9 + 8 * v43 + 32);

      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_66;
      }

LABEL_42:
      v48 = [*(v45 + 16) v46[338]];
      v49 = sub_1D7D3034C();
      v51 = v50;

      if (v6[2])
      {
        sub_1D7A18FFC(v49, v51);
        v53 = v52;

        if (v53)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      v54 = [*(v45 + 16) identifier];
      v55 = sub_1D7D3034C();
      v57 = v56;

      v58 = swift_isUniquelyReferenced_nonNull_native();
      v59 = sub_1D7A18FFC(v55, v57);
      v61 = v6[2];
      v62 = (v60 & 1) == 0;
      v33 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v33)
      {
        goto LABEL_67;
      }

      v64 = v60;
      if (v6[3] >= v63)
      {
        if ((v58 & 1) == 0)
        {
          v69 = v59;
          sub_1D7B9741C();
          v59 = v69;
          if ((v64 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_33:
          v44 = v59;

          *(v6[7] + 8 * v44) = a1;
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        sub_1D7B91FF4(v63, v58);
        v59 = sub_1D7A18FFC(v55, v57);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_72;
        }
      }

      if ((v64 & 1) == 0)
      {
LABEL_52:
        v6[(v59 >> 6) + 8] |= 1 << v59;
        v66 = (v6[6] + 16 * v59);
        *v66 = v55;
        v66[1] = v57;
        *(v6[7] + 8 * v59) = a1;

        v67 = v6[2];
        v33 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v33)
        {
          goto LABEL_69;
        }

        v6[2] = v68;
LABEL_35:
        ++v43;
        if (v47 == v42)
        {

          v5 = v75;
          v3 = v76;
          v4 = v79;
          goto LABEL_57;
        }

        continue;
      }

      goto LABEL_33;
    }

    break;
  }

  v45 = MEMORY[0x1DA70EF00](v43, v9);
  v46 = &off_1E84EC000;
  v47 = v43 + 1;
  if (!__OFADD__(v43, 1))
  {
    goto LABEL_42;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

uint64_t sub_1D7B75A74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v6 = _s15ArticleProviderOMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v34 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    v43 = v13;
    v44 = OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_cache;
    v16 = *(v7 + 80);
    v17 = a1 + ((v16 + 32) & ~v16);
    v35 = (v16 + 24) & ~v16;
    v36 = v16;
    v18 = *(v7 + 72);
    v34 = v18;
    do
    {
      sub_1D7B7ED74(v17, v13);

      v45 = sub_1D7A864A8();
      v46 = v28;
      sub_1D7D2930C();

      v29 = v48;
      if (HIBYTE(v48) > 0xFEu)
      {
        v41 = sub_1D7B75F08(v13, v4, v39, v40);
        sub_1D7D294BC();
        v19 = v4;
        v20 = v37;
        sub_1D7B7ED74(v13, v37);
        v21 = v35;
        v42 = v14;
        v22 = swift_allocObject();
        *(v22 + 16) = v19;
        sub_1D7B7EDF4(v20, v22 + v21);

        v23 = sub_1D7D2934C();
        sub_1D7D293AC();

        sub_1D7B7ED74(v43, v20);
        v14 = v42;
        v24 = swift_allocObject();
        *(v24 + 16) = v19;
        v25 = v24 + v21;
        v18 = v34;
        v26 = v20;
        v4 = v19;
        sub_1D7B7EDF4(v26, v25);

        v27 = sub_1D7D2934C();
        sub_1D7D2944C();

        v13 = v43;
      }

      else
      {
        v30 = v47;
        if ((v48 & 0x100) != 0)
        {
          v45 = MEMORY[0x1E69E7CC0];
          LOBYTE(v46) = 0;
          sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          sub_1D7D2940C();
          sub_1D7B7F178(v30, v29);
        }

        else
        {
          v45 = v47;
          LOBYTE(v46) = v48 & 1;
          sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          sub_1D7D2940C();
        }
      }

      sub_1D7B7F0A0(v13);
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      v17 += v18;
      --v14;
    }

    while (v14);
    v15 = v49;
  }

  sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
  v45 = v15;
  v31 = sub_1D7D2934C();
  sub_1D7B7F0FC();
  sub_1D7B7F3D0(&qword_1EE0BF2A0, sub_1D7B7F0FC);
  v32 = sub_1D7D2937C();

  return v32;
}

uint64_t sub_1D7B75F08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v64 = a2;
  v7 = sub_1D7D2DFAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  v16 = _s15ArticleProviderOMa();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B7ED74(a1, v19);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v49 = *v19;
      if (v19[8])
      {
        v50 = swift_allocObject();
        *(v50 + 16) = MEMORY[0x1E69E7CC8];
        v51 = sub_1D7B74F14(v49, (v50 + 16));
        MEMORY[0x1EEE9AC00](v51, v52);
        v53 = v64;
        *(&v61 - 2) = v64;
        *(&v61 - 1) = v49;
        sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
        sub_1D7D294BC();
        v54 = swift_allocObject();
        v54[2] = v53;
        v54[3] = 1;
        v54[4] = v50;

        v55 = sub_1D7D2934C();
        v34 = sub_1D7D293AC();
      }

      else
      {
        MEMORY[0x1EEE9AC00](result, v21);
        v58 = v64;
        *(&v61 - 2) = v64;
        *(&v61 - 1) = v49;
        sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
        sub_1D7D294BC();
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        *(v59 + 24) = 1;

        v60 = sub_1D7D2934C();
        v34 = sub_1D7D293AC();
      }

      return v34;
    }

    v35 = *v19;
    v36 = *(v19 + 1);
    MEMORY[0x1EEE9AC00](result, v21);
    v37 = v64;
    *(&v61 - 4) = v64;
    *(&v61 - 3) = v35;
    *(&v61 - 2) = v36;
    sub_1D7B7F1D4();
    sub_1D7D294BC();
    v38 = swift_allocObject();
    v38[2] = v35;
    v38[3] = v36;
    v38[4] = v37;
    v38[5] = 1;

    v39 = sub_1D7D2934C();
    goto LABEL_18;
  }

  if (result == 2)
  {
    return sub_1D7B767F0(*v19, a3, a4);
  }

  if (result == 3)
  {
    v22 = *v19;
    v23 = *(v19 + 1);
    sub_1D7A60644();
    v25 = *(v24 + 48);
    v62 = *(v8 + 32);
    v26 = v62(v15, &v19[v25], v7);
    v61 = &v61;
    MEMORY[0x1EEE9AC00](v26, v27);
    v28 = v64;
    *(&v61 - 4) = v64;
    *(&v61 - 3) = v22;
    *(&v61 - 2) = v23;
    *(&v61 - 1) = v15;
    sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    sub_1D7D294BC();
    v63 = v8;
    (*(v8 + 16))(v11, v15, v7);
    v29 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = v28;
    *(v30 + 3) = v22;
    *(v30 + 4) = v23;
    v62(&v30[v29], v11, v7);

    v31 = sub_1D7D2934C();
    sub_1D7D2943C();

    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    *(v32 + 24) = 1;

    v33 = sub_1D7D2934C();
    v34 = sub_1D7D293AC();

    (*(v63 + 8))(v15, v7);
    return v34;
  }

  v40 = *v19;
  v41 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v42 = *(v40 + 16);
  if (!v42)
  {
LABEL_17:

    sub_1D7B7F2FC(0, &qword_1EE0C0270, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    v65 = v41;
    v56 = sub_1D7D2934C();
    sub_1D7B7F358();
    sub_1D7B7F3D0(&unk_1EC9E5AE0, sub_1D7B7F358);
    sub_1D7D2937C();

    v57 = swift_allocObject();
    *(v57 + 16) = v64;
    *(v57 + 24) = 1;

    v39 = sub_1D7D2934C();
LABEL_18:
    v34 = sub_1D7D293AC();

    return v34;
  }

  v43 = 0;
  v44 = (v40 + 40);
  while (v43 < *(v40 + 16))
  {
    v45 = *(v44 - 1);
    v46 = *v44;
    MEMORY[0x1EEE9AC00](result, v21);
    *(&v61 - 4) = v64;
    *(&v61 - 3) = v45;
    *(&v61 - 2) = v46;
    sub_1D7B7F1D4();

    sub_1D7D294BC();
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    *(v47 + 24) = v46;

    v48 = sub_1D7D2934C();
    sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    sub_1D7D2939C();

    MEMORY[0x1DA70E080]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    ++v43;
    result = sub_1D7D3072C();
    v44 += 2;
    if (v42 == v43)
    {
      v41 = v65;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B767F0(char a1, uint64_t a2, void *a3)
{
  v139 = sub_1D7D2DFAC();
  v6 = *(v139 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v139, v8);
  v138 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v136 - v11;
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7B7F4F0(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7D3B4D0;
  v141 = 0;
  v142 = 0xE000000000000000;
  v145 = a1;
  sub_1D7D315DC();
  v14 = v141;
  v15 = v142;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D79D6AE0();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  switch(a1)
  {
    case 1:
      v16 = [a3 surfacedByChannelID];
      if (!v16)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    case 2:
      v16 = [a3 surfacedByTopicID];
      if (v16)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    case 3:
      v16 = [a3 publisherID];
      if (v16)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    case 4:
      v82 = [a3 relatedArticleIDs];
      if (!v82)
      {
        goto LABEL_41;
      }

      v83 = v82;
      v84 = sub_1D7D3063C();

      v85 = sub_1D7B7D6F0(v84);

      if (!v85)
      {
        goto LABEL_41;
      }

      MEMORY[0x1EEE9AC00](v86, v87);
      v88 = v140;
      *(&v136 - 2) = v140;
      *(&v136 - 1) = v85;
      sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
      sub_1D7D294BC();
      v89 = swift_allocObject();
      *(v89 + 16) = v88;
      *(v89 + 24) = 1;

      v90 = sub_1D7D2934C();
      goto LABEL_37;
    case 5:
      v16 = [a3 publisherSpecifiedArticleIDs];
      if (!v16)
      {
        goto LABEL_45;
      }

      v94 = v16;
      v95 = sub_1D7D3063C();

      MEMORY[0x1EEE9AC00](v96, v97);
      v98 = v140;
      *(&v136 - 2) = v140;
      *(&v136 - 1) = v95;
      sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
      sub_1D7D294BC();
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      *(v99 + 24) = 2;

      v90 = sub_1D7D2934C();
LABEL_37:
      v100 = sub_1D7D293AC();

      return v100;
    case 6:
      v52 = a3;
      v16 = [a3 surfacedBySectionID];
      if (!v16)
      {
        goto LABEL_45;
      }

      v53 = v16;
      v54 = sub_1D7D3034C();
      v56 = v55;

      MEMORY[0x1EEE9AC00](v57, v58);
      v59 = v140;
      *(&v136 - 4) = v140;
      *(&v136 - 3) = v54;
      *(&v136 - 2) = v56;
      sub_1D7B80F8C(0, &qword_1EE0BF200, &qword_1EE0BF070);
      sub_1D7D294BC();

      v60 = swift_allocObject();
      v61 = *(a2 + 32);
      *(v60 + 72) = *(a2 + 48);
      v62 = *(a2 + 80);
      *(v60 + 88) = *(a2 + 64);
      *(v60 + 104) = v62;
      v63 = *(a2 + 16);
      *(v60 + 24) = *a2;
      *(v60 + 40) = v63;
      *(v60 + 16) = v59;
      *(v60 + 120) = *(a2 + 96);
      *(v60 + 56) = v61;
      *(v60 + 128) = v52;

      sub_1D7B81054(a2, &v141);
      swift_unknownObjectRetain();
      v64 = sub_1D7D2934C();
      v65 = sub_1D7D2939C();

      return v65;
    case 7:
      v114 = a3;
      v16 = [a3 publisherID];
      if (!v16)
      {
        goto LABEL_45;
      }

      v115 = v16;
      v116 = sub_1D7D3034C();
      v118 = v117;

      MEMORY[0x1EEE9AC00](v119, v120);
      v121 = v140;
      *(&v136 - 4) = v140;
      *(&v136 - 3) = v116;
      *(&v136 - 2) = v118;
      sub_1D7B80F8C(0, &qword_1EE0BF200, &qword_1EE0BF070);
      sub_1D7D294BC();

      v122 = sub_1D7D2934C();
      sub_1D7D2939C();

      v123 = swift_allocObject();
      v124 = *(a2 + 32);
      *(v123 + 72) = *(a2 + 48);
      v125 = *(a2 + 80);
      *(v123 + 88) = *(a2 + 64);
      *(v123 + 104) = v125;
      v126 = *(a2 + 16);
      *(v123 + 24) = *a2;
      *(v123 + 40) = v126;
      *(v123 + 16) = v121;
      *(v123 + 120) = *(a2 + 96);
      *(v123 + 56) = v124;
      *(v123 + 128) = v114;

      sub_1D7B81054(a2, &v141);
      swift_unknownObjectRetain();
      v127 = sub_1D7D2934C();
      v128 = sub_1D7D2939C();

      return v128;
    case 8:
      v16 = [a3 publisherID];
      if (!v16)
      {
        goto LABEL_45;
      }

      v35 = v16;
      v36 = sub_1D7D3034C();
      v38 = v37;

      v39 = v6;
      v40 = v12;
      v41 = v139;
      v42 = (*(v6 + 104))(v12, *MEMORY[0x1E69B5978], v139);
      MEMORY[0x1EEE9AC00](v42, v43);
      v44 = v140;
      *(&v136 - 4) = v140;
      *(&v136 - 3) = v36;
      *(&v136 - 2) = v38;
      *(&v136 - 1) = v40;
      v137 = v40;
      sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
      sub_1D7D294BC();
      v45 = *(v6 + 16);
      v46 = v138;
      v45(v138, v40, v41);
      v47 = (*(v39 + 80) + 40) & ~*(v39 + 80);
      v48 = swift_allocObject();
      *(v48 + 2) = v44;
      *(v48 + 3) = v36;
      *(v48 + 4) = v38;
      (*(v39 + 32))(&v48[v47], v46, v41);

      v49 = sub_1D7D2934C();
      sub_1D7D2943C();

      v50 = swift_allocObject();
      *(v50 + 16) = v44;
      *(v50 + 24) = 1;

      v51 = sub_1D7D2934C();
      goto LABEL_28;
    case 9:
      if (([a3 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_41;
      }

      v101 = [a3 parentIssue];
      if (!v101)
      {
        goto LABEL_41;
      }

      v102 = v101;
      v103 = [v102 identifier];
      v104 = sub_1D7D3034C();
      v106 = v105;

      MEMORY[0x1EEE9AC00](v107, v108);
      v109 = v140;
      *(&v136 - 4) = v140;
      *(&v136 - 3) = v104;
      *(&v136 - 2) = v106;
      sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
      sub_1D7D294BC();

      v110 = swift_allocObject();
      *(v110 + 16) = v109;
      *(v110 + 24) = 2;

      v111 = sub_1D7D2934C();
      v112 = sub_1D7D293AC();

      return v112;
    case 10:
      v23 = a3;
      if (([a3 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_41;
      }

      v24 = [a3 stocksFields];
      swift_unknownObjectRelease();
      v25 = [objc_opt_self() mainBundle];
      v26 = [v25 bundleIdentifier];

      if (!v26)
      {
        goto LABEL_52;
      }

      v27 = sub_1D7D3034C();
      v29 = v28;

      if (v27 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v29)
      {

        return sub_1D7B80A34(v23, 2);
      }

      v134 = sub_1D7D3197C();

      if (v134)
      {
        return sub_1D7B80A34(v23, 2);
      }

LABEL_52:
      sub_1D7D30C6C();
      v135 = MEMORY[0x1E69E7CC0];
      sub_1D7D29AAC();
      v141 = v135;
LABEL_42:
      LOBYTE(v142) = 0;
      v113 = MEMORY[0x1E69D6B18];
      v16 = 0;
LABEL_46:
      sub_1D7B814F4(v16, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, v113);
      swift_allocObject();
      return sub_1D7D2940C();
    case 11:
      v16 = [a3 sourceChannel];
      if (!v16)
      {
        goto LABEL_45;
      }

      v30 = [objc_opt_self() mainBundle];
      v31 = [v30 bundleIdentifier];

      if (!v31)
      {
        goto LABEL_49;
      }

      v32 = sub_1D7D3034C();
      v34 = v33;

      if (v32 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v34)
      {

LABEL_48:
        swift_getObjectType();
        v130 = swift_unknownObjectRetain();
        v131 = sub_1D7B80C88(v130, 2, v140);
        swift_unknownObjectRelease_n();
        return v131;
      }

      v129 = sub_1D7D3197C();

      if (v129)
      {
        goto LABEL_48;
      }

LABEL_49:
      sub_1D7D30C6C();
      v132 = MEMORY[0x1E69E7CC0];
      sub_1D7D29AAC();
      v141 = v132;
      LOBYTE(v142) = 0;
      sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v133 = sub_1D7D2940C();
      swift_unknownObjectRelease();
      return v133;
    case 12:
      goto LABEL_41;
    case 13:
      v91 = (v140 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData);
      v18 = *(v140 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData + 16);
      if (v18 >> 1 == 0xFFFFFFFF)
      {
        goto LABEL_41;
      }

      v92 = v91[3];
      v20 = v91[1];
      v141 = *v91;
      v21 = v141;
      v142 = v20;
      v143 = v18;
      v144 = v92;
      sub_1D7A03D0C(v141, v20, v18);
      v22 = sub_1D7B801B0(a3, &v141);
      goto LABEL_34;
    case 14:
      v17 = (v140 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData);
      v18 = *(v140 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData + 16);
      if (v18 >> 1 == 0xFFFFFFFF)
      {
LABEL_41:
        v141 = MEMORY[0x1E69E7CC0];
        goto LABEL_42;
      }

      v19 = v17[3];
      v20 = v17[1];
      v141 = *v17;
      v21 = v141;
      v142 = v20;
      v143 = v18;
      v144 = v19;
      sub_1D7A03D0C(v141, v20, v18);
      v22 = sub_1D7B7F70C(a3, &v141);
LABEL_34:
      v93 = v22;
      sub_1D7A3B3F0(v21, v20, v18);
      return v93;
    default:
      v16 = [a3 surfacedBySectionID];
      if (!v16)
      {
LABEL_45:
        v141 = MEMORY[0x1E69E7CC0];
        LOBYTE(v142) = 0;
        v113 = MEMORY[0x1E69D6B18];
        goto LABEL_46;
      }

LABEL_27:
      v67 = v16;
      v68 = sub_1D7D3034C();
      v70 = v69;

      v39 = v6;
      v71 = v12;
      v41 = v139;
      v72 = (*(v6 + 104))(v12, *MEMORY[0x1E69B5980], v139);
      MEMORY[0x1EEE9AC00](v72, v73);
      v74 = v140;
      *(&v136 - 4) = v140;
      *(&v136 - 3) = v68;
      *(&v136 - 2) = v70;
      *(&v136 - 1) = v71;
      v137 = v71;
      sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
      sub_1D7D294BC();
      v75 = *(v6 + 16);
      v76 = v138;
      v75(v138, v71, v41);
      v77 = (*(v39 + 80) + 40) & ~*(v39 + 80);
      v78 = swift_allocObject();
      *(v78 + 2) = v74;
      *(v78 + 3) = v68;
      *(v78 + 4) = v70;
      (*(v39 + 32))(&v78[v77], v76, v41);

      v79 = sub_1D7D2934C();
      sub_1D7D2943C();

      v80 = swift_allocObject();
      *(v80 + 16) = v74;
      *(v80 + 24) = 1;

      v51 = sub_1D7D2934C();
LABEL_28:
      v81 = sub_1D7D293AC();

      (*(v39 + 8))(v137, v41);
      return v81;
  }
}

uint64_t sub_1D7B77ED4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *a1;
  v45 = *(a1 + 8);
  v4 = sub_1D7B75410(*a1, v45);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v7 = a2;
    a2 = 0;
    v52 = *(v7 + 136);
    v53 = v5 & 0xC000000000000001;
    v48 = v5 + 32;
    v49 = v5 & 0xFFFFFFFFFFFFFF8;
    v8 = &off_1E84EC000;
    v50 = v5;
    v51 = i;
    while (v53)
    {
      v9 = MEMORY[0x1DA70EF00](a2, v5);
      v10 = __OFADD__(a2++, 1);
      if (v10)
      {
        goto LABEL_60;
      }

LABEL_11:
      v11 = *(v9 + 16);
      v12 = [v11 isPaid];
      if ([v11 respondsToSelector_])
      {
        v13 = [v11 v8[407]];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v11 sourceChannel];
      if (v14)
      {
        v15 = [v14 identifier];
        swift_unknownObjectRelease();
        v16 = sub_1D7D3034C();
        v18 = v17;

        if (!v12)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v16 = 0;
        v18 = 0;
        if (!v12)
        {
LABEL_30:
          if ((v13 & 1) == 0)
          {

            v28 = 0;
            goto LABEL_57;
          }

          goto LABEL_31;
        }
      }

      v19 = [v52 purchaseProvider];
      if (v18)
      {
        v20 = [v19 purchasedTagIDs];
        v21 = sub_1D7D309AC();

        if (*(v21 + 16))
        {
          sub_1D7D31A8C();
          sub_1D7D303FC();
          v22 = sub_1D7D31ABC();
          v23 = -1 << *(v21 + 32);
          v24 = v22 & ~v23;
          if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v25 = ~v23;
            while (1)
            {
              v26 = (*(v21 + 48) + 16 * v24);
              v27 = *v26 == v16 && v18 == v26[1];
              if (v27 || (sub_1D7D3197C() & 1) != 0)
              {
                break;
              }

              v24 = (v24 + 1) & v25;
              if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            swift_unknownObjectRelease();

            v28 = 0;
            v5 = v50;
            goto LABEL_56;
          }
        }

LABEL_26:

        v5 = v50;
        i = v51;
      }

      swift_unknownObjectRelease();
      if (!v13)
      {

        v28 = 1;
        goto LABEL_57;
      }

LABEL_31:
      if (v18)
      {
        v29 = [objc_msgSend(v52 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v29, v29 + 1))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0u;
          v57 = 0u;
        }

        v54 = v56;
        v55 = v57;
        if (*(&v57 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v30 = v58;
            v31 = [v58 integerValue];
            if (v31 != -1)
            {
              v32 = v31;
              goto LABEL_43;
            }

LABEL_55:
            v36 = [objc_msgSend(v52 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            v37 = [v36 bundleChannelIDs];

            v38 = sub_1D7D3031C();
            v39 = [v37 containsObject_];

            v28 = v39 ^ 1;
LABEL_56:
            i = v51;
            goto LABEL_57;
          }
        }

        else
        {
          sub_1D79F0014(&v54);
        }

        v30 = 0;
        v32 = 0;
LABEL_43:
        if (objc_getAssociatedObject(v29, ~v32))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0u;
          v57 = 0u;
        }

        v54 = v56;
        v55 = v57;
        if (*(&v57 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v33 = v58;
            v34 = [v33 integerValue];

            v35 = v34 ^ v32;
            v5 = v50;
            if (v35)
            {
              goto LABEL_55;
            }

            goto LABEL_52;
          }
        }

        else
        {
          sub_1D79F0014(&v54);
        }

        if (v32)
        {
          goto LABEL_55;
        }

LABEL_52:

        v28 = 1;
        goto LABEL_56;
      }

      v28 = 1;
LABEL_57:
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        swift_unknownObjectRetain();
        [v41 setShowSubscriptionRequiredText_];
        swift_unknownObjectRelease();
      }

      v8 = &off_1E84EC000;
      if (a2 == i)
      {
        goto LABEL_63;
      }
    }

    if (a2 >= *(v49 + 16))
    {
      goto LABEL_61;
    }

    v9 = *(v48 + 8 * a2);

    v10 = __OFADD__(a2++, 1);
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v42 = sub_1D7A864A8();
  *&v56 = v47;
  WORD4(v56) = v45;
  *&v54 = v42;
  *(&v54 + 1) = v43;

  sub_1D7D2931C();

  *a3 = v47;
  *(a3 + 8) = v45;
}

uint64_t sub_1D7B7856C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  sub_1D7A864A8();
  v4 = a1;
  sub_1D7D2931C();

  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  return result;
}

void sub_1D7B7860C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v72 = a3;
  v58 = a4;
  v66 = sub_1D7D2EB1C();
  v7 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v64 = v57 - v12;
  v13 = *a1;
  v14 = *a1 >> 62;
  v67 = *a1;
  if (v14)
  {
    v15 = sub_1D7D3167C();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v79 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v57[1] = v4;
      v17 = 0;
      v70 = v67 & 0xC000000000000001;
      v60 = v67 + 32;
      v63 = *MEMORY[0x1E69B5DE8];
      v62 = (v7 + 104);
      v61 = (v7 + 8);
      v59 = a2;
      v71 = v15;
      while (1)
      {
        if (v70)
        {
          v26 = MEMORY[0x1DA70EF00](v17, v67);
        }

        else
        {
          v26 = *(v60 + 8 * v17);
          swift_unknownObjectRetain();
        }

        sub_1D7B8139C(a2 + 144, &v74, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
        if (!*(&v75 + 1))
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        v18 = swift_unknownObjectRetain();
        v19 = v64;
        sub_1D79EFA60(v18, v64);
        v20 = v65;
        v21 = v66;
        (*v62)(v65, v63, v66);
        v22 = sub_1D7D2EB0C();
        v23 = *v61;
        (*v61)(v20, v21);
        v23(v19, v21);
        type metadata accessor for EndOfArticleHeadlineModel();
        v24 = swift_allocObject();
        v25 = v72;
        *(v24 + 16) = v26;
        *(v24 + 24) = v25;
        *(v24 + 32) = v22 & 1;
        __swift_destroy_boxed_opaque_existential_1(&v74);
LABEL_7:
        swift_unknownObjectRelease();
        ++v17;
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
        if (v17 == v71)
        {
          v16 = v79;
          goto LABEL_59;
        }
      }

      sub_1D7B81420(&v74, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
      ObjectType = swift_getObjectType();
      v68 = *(a2 + 136);
      v69 = ObjectType;
      v28 = [v26 isPaid];
      if ([v26 respondsToSelector_])
      {
        v29 = [v26 isBundlePaid];
      }

      else
      {
        v29 = 0;
      }

      v30 = [v26 sourceChannel];
      if (v30)
      {
        v31 = [v30 identifier];
        swift_unknownObjectRelease();
        v73 = sub_1D7D3034C();
        v33 = v32;

        if (v28)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v73 = 0;
        v33 = 0;
        if (v28)
        {
LABEL_17:
          v34 = [v68 purchaseProvider];
          if (v33)
          {
            v35 = [v34 purchasedTagIDs];
            v36 = sub_1D7D309AC();

            if (*(v36 + 16))
            {
              sub_1D7D31A8C();
              sub_1D7D303FC();
              v37 = sub_1D7D31ABC();
              v38 = v73;
              v39 = -1 << *(v36 + 32);
              v40 = v37 & ~v39;
              if ((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
              {
                v41 = ~v39;
                while (1)
                {
                  v42 = (*(v36 + 48) + 16 * v40);
                  if (*v42 == v38 && v33 == v42[1])
                  {
                    break;
                  }

                  v44 = sub_1D7D3197C();
                  v38 = v73;
                  if (v44)
                  {
                    break;
                  }

                  v40 = (v40 + 1) & v41;
                  if (((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                swift_unknownObjectRelease();

                v46 = 1;
                a2 = v59;
                goto LABEL_57;
              }
            }

LABEL_27:

            a2 = v59;
          }

          swift_unknownObjectRelease();
          if (!v29)
          {
            goto LABEL_53;
          }

          goto LABEL_32;
        }
      }

      if ((v29 & 1) == 0)
      {

        v46 = 1;
        goto LABEL_57;
      }

LABEL_32:
      if (v33)
      {
        v45 = [objc_msgSend(v68 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v45, v45 + 1))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v77 = 0u;
          v78 = 0u;
        }

        v74 = v77;
        v75 = v78;
        if (*(&v78 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v47 = v76;
            v48 = [v76 integerValue];
            if (v48 == -1)
            {

              goto LABEL_56;
            }

            v49 = v48;
LABEL_44:
            if (objc_getAssociatedObject(v45, ~v49))
            {
              sub_1D7D3138C();
              swift_unknownObjectRelease();
            }

            else
            {
              v77 = 0u;
              v78 = 0u;
            }

            v74 = v77;
            v75 = v78;
            if (*(&v78 + 1))
            {
              sub_1D7992EFC(0, &qword_1EE0BECA0);
              if (swift_dynamicCast())
              {
                v50 = v76;
                v51 = [v50 integerValue];

                v52 = v51 ^ v49;
                a2 = v59;
                if (v52)
                {
                  goto LABEL_56;
                }

LABEL_53:

                v46 = 0;
                goto LABEL_57;
              }
            }

            else
            {
              sub_1D79F0014(&v74);
            }

            if ((v49 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_56:
            v53 = [objc_msgSend(v68 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            v54 = [v53 bundleChannelIDs];

            v55 = sub_1D7D3031C();
            LOBYTE(v53) = [v54 containsObject_];

            v46 = v53;
            goto LABEL_57;
          }
        }

        else
        {
          sub_1D79F0014(&v74);
        }

        v47 = 0;
        v49 = 0;
        goto LABEL_44;
      }

      v46 = 0;
LABEL_57:
      sub_1D7CB99FC(v72, v46);
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
LABEL_59:
    v56 = v58;
    *v58 = v16;
    *(v56 + 8) = 0;
  }
}

uint64_t sub_1D7B78E6C(uint64_t a1, uint64_t a2)
{
  sub_1D799CC84(a1 + 56, v15);
  v4 = v16;
  v3 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v5, 0);
    v6 = v18;
    v7 = (a2 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_1D7A5BDC8((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 3;
      --v5;
    }

    while (v5);
  }

  v13 = MEMORY[0x1DA70D090](v6, *MEMORY[0x1E69B5080], v4, v3);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v13;
}

uint64_t sub_1D7B78FB0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;

  v10 = sub_1D7B7F558(v9, a2, a3, (a4 + 16));

  *a5 = v10;
  *(a5 + 8) = 1;
  return result;
}

uint64_t sub_1D7B7902C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1D7D2EB1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v53 - v17;
  v19 = *a1;
  sub_1D7B8139C(a2 + 144, &v60, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
  if (*(&v61 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
    sub_1D79EFA60(v19, v18);
    (*(v11 + 104))(v14, *MEMORY[0x1E69B5DE8], v10);
    LODWORD(v56) = sub_1D7D2EB0C();
    v20 = *(v11 + 8);
    v20(v14, v10);
    v20(v18, v10);
    type metadata accessor for EndOfArticleHeadlineModel();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = a3;
    *(v21 + 32) = v56 & 1;
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1(&v60);
    goto LABEL_41;
  }

  sub_1D7B81420(&v60, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
  ObjectType = swift_getObjectType();
  v55 = *(a2 + 136);
  v56 = ObjectType;
  v23 = [v19 isPaid];
  if ([v19 respondsToSelector_])
  {
    v24 = [v19 isBundlePaid];
  }

  else
  {
    v24 = 0;
  }

  v25 = [v19 sourceChannel];
  if (v25)
  {
    v26 = [v25 identifier];
    swift_unknownObjectRelease();
    v54 = sub_1D7D3034C();
    v28 = v27;

    if (v23)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (v24)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v54 = 0;
  v28 = 0;
  if (!v23)
  {
    goto LABEL_13;
  }

LABEL_8:
  v29 = [v55 purchaseProvider];
  if (v28)
  {
    v30 = [v29 purchasedTagIDs];
    v31 = sub_1D7D309AC();

    LOBYTE(v30) = sub_1D7D053C8(v54, v28, v31);

    swift_unknownObjectRelease();
    if ((v30 & 1) == 0)
    {
      if (!v24)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

LABEL_14:

    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (!v28)
  {
LABEL_39:
    v32 = 0;
    goto LABEL_40;
  }

  v33 = [objc_msgSend(v55 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v33, v33 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  if (!*(&v59 + 1))
  {
    sub_1D79F0014(&v60);
    goto LABEL_26;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v34 = 0;
    v36 = 0;
    goto LABEL_27;
  }

  v34 = v57;
  v35 = [v57 integerValue];
  if (v35 == -1)
  {

    goto LABEL_38;
  }

  v36 = v35;
LABEL_27:
  if (objc_getAssociatedObject(v33, ~v36))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  v37 = v34;
  if (!*(&v59 + 1))
  {
    sub_1D79F0014(&v60);
LABEL_35:

    if (v36)
    {
      goto LABEL_38;
    }

LABEL_36:

    goto LABEL_39;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v38 = v57;
  v53 = [v38 integerValue];

  if (((v53 ^ v36) & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_38:
  v39 = [objc_msgSend(v55 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v40 = [v39 bundleChannelIDs];

  v41 = sub_1D7D3031C();
  v42 = [v40 containsObject_];

  if ((v42 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v32 = 1;
LABEL_40:
  v21 = sub_1D7CB99FC(a3, v32);
LABEL_41:
  *a5 = v21;

  v43 = [v19 identifier];
  v44 = sub_1D7D3034C();
  v46 = v45;

  swift_beginAccess();
  v47 = *a4;
  if (!*(*a4 + 16))
  {

    goto LABEL_45;
  }

  v48 = sub_1D7A18FFC(v44, v46);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_45:
    swift_endAccess();
    v51 = 0;
    goto LABEL_46;
  }

  v51 = *(*(v47 + 56) + 8 * v48);
  swift_endAccess();
LABEL_46:

  a5[1] = v51;
  return result;
}

void sub_1D7B796E8(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v88 = a4;
  v86 = a5;
  v87 = a6;
  v89 = a3;
  v85 = sub_1D7D2EB1C();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v10);
  v84 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v83 = &v72[-v14];
  v15 = *a1;
  v18 = *(*a1 + 64);
  v17 = *a1 + 64;
  v16 = v18;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  while (2)
  {
    if (v21)
    {
      goto LABEL_10;
    }

    do
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v24 >= v22)
      {

        goto LABEL_18;
      }

      v21 = *(v17 + 8 * v24);
      ++v23;
    }

    while (!v21);
    v23 = v24;
LABEL_10:
    v6 = *(*(v15 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v21)))));
    v25 = [v6 identifier];
    if (!v25)
    {
      goto LABEL_4;
    }

    v7 = v25;
    v90 = v6;
    v26 = sub_1D7D3034C();
    v28 = v27;

    if (v26 == a2 && v28 == v89)
    {

      v6 = v90;
      goto LABEL_21;
    }

    v30 = sub_1D7D3197C();

    v6 = v90;
    if ((v30 & 1) == 0)
    {
LABEL_4:
      v21 &= v21 - 1;

      continue;
    }

    break;
  }

LABEL_21:
  v7 = v88;
  if (!*(v15 + 16))
  {
    goto LABEL_82;
  }

  v33 = sub_1D7A5B904(v6);
  if ((v34 & 1) == 0)
  {
    goto LABEL_82;
  }

  v81 = *(*(v15 + 56) + 8 * v33);
  if (!(v81 >> 62))
  {
    v35 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_25;
    }

LABEL_82:

LABEL_18:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

LABEL_81:
  v35 = sub_1D7D3167C();
  if (!v35)
  {
    goto LABEL_82;
  }

LABEL_25:
  v96 = MEMORY[0x1E69E7CC0];

  sub_1D7D3156C();
  if (v35 < 0)
  {
    __break(1u);
    return;
  }

  v36 = 0;
  v89 = v81 & 0xC000000000000001;
  v75 = v81 + 32;
  v78 = *MEMORY[0x1E69B5DE8];
  v77 = (v82 + 104);
  v76 = (v82 + 8);
  v82 = v35;
  do
  {
    if (v89)
    {
      v45 = MEMORY[0x1DA70EF00](v36, v81);
    }

    else
    {
      v45 = *(v75 + 8 * v36);
      swift_unknownObjectRetain();
    }

    sub_1D7B8139C((v7 + 18), &v91, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
    if (*(&v92 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
      v37 = v83;
      sub_1D79EFA60(v45, v83);
      v38 = v84;
      v39 = v85;
      (*v77)(v84, v78, v85);
      v40 = sub_1D7D2EB0C();
      v41 = *v76;
      (*v76)(v38, v39);
      v35 = v82;
      v42 = v39;
      v43 = v90;
      v41(v37, v42);
      type metadata accessor for EndOfArticleHeadlineModel();
      v44 = swift_allocObject();
      *(v44 + 16) = v45;
      *(v44 + 24) = v86;
      *(v44 + 32) = v40 & 1;
      __swift_destroy_boxed_opaque_existential_1(&v91);
      goto LABEL_28;
    }

    sub_1D7B81420(&v91, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
    ObjectType = swift_getObjectType();
    v79 = v7[17];
    v46 = [v45 isPaid];
    if ([v45 respondsToSelector_])
    {
      v47 = [v45 isBundlePaid];
    }

    else
    {
      v47 = 0;
    }

    v48 = [v45 sourceChannel];
    if (v48)
    {
      v49 = [v48 identifier];
      swift_unknownObjectRelease();
      v50 = sub_1D7D3034C();
      v52 = v51;

      if (v46)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v50 = 0;
      v52 = 0;
      if (v46)
      {
LABEL_38:
        v53 = [v79 purchaseProvider];
        if (v52)
        {
          v73 = v47;
          v74 = v53;
          v54 = [v53 purchasedTagIDs];
          v55 = sub_1D7D309AC();

          if (*(v55 + 16))
          {
            sub_1D7D31A8C();
            sub_1D7D303FC();
            v56 = sub_1D7D31ABC();
            v57 = -1 << *(v55 + 32);
            v58 = v56 & ~v57;
            if ((*(v55 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
            {
              v59 = ~v57;
              while (1)
              {
                v60 = (*(v55 + 48) + 16 * v58);
                v61 = *v60 == v50 && v52 == v60[1];
                if (v61 || (sub_1D7D3197C() & 1) != 0)
                {
                  break;
                }

                v58 = (v58 + 1) & v59;
                if (((*(v55 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              swift_unknownObjectRelease();

              v63 = 1;
              v35 = v82;
              goto LABEL_78;
            }
          }

LABEL_48:

          v35 = v82;
          v47 = v73;
        }

        swift_unknownObjectRelease();
        if (!v47)
        {
          goto LABEL_74;
        }

        goto LABEL_53;
      }
    }

    if ((v47 & 1) == 0)
    {

      v63 = 1;
      goto LABEL_78;
    }

LABEL_53:
    if (v52)
    {
      v62 = [objc_msgSend(v79 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v62, v62 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v94 = 0u;
        v95 = 0u;
      }

      v91 = v94;
      v92 = v95;
      if (*(&v95 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0);
        if (swift_dynamicCast())
        {
          v64 = v93;
          v65 = [v93 integerValue];
          if (v65 == -1)
          {

LABEL_77:
            v68 = [objc_msgSend(v79 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            v69 = [v68 bundleChannelIDs];

            v70 = sub_1D7D3031C();
            v71 = [v69 containsObject_];

            v63 = v71;
            goto LABEL_78;
          }

          v66 = v65;
LABEL_65:
          if (objc_getAssociatedObject(v62, ~v66))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v94 = 0u;
            v95 = 0u;
          }

          v91 = v94;
          v92 = v95;
          if (*(&v95 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0);
            if (swift_dynamicCast())
            {
              v67 = v93;
              v74 = [v67 integerValue];

              if ((v74 ^ v66))
              {
                goto LABEL_77;
              }

LABEL_74:

              v63 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            sub_1D79F0014(&v91);
          }

          if (v66)
          {
            goto LABEL_77;
          }

          goto LABEL_74;
        }
      }

      else
      {
        sub_1D79F0014(&v91);
      }

      v64 = 0;
      v66 = 0;
      goto LABEL_65;
    }

    v63 = 0;
LABEL_78:
    sub_1D7CB99FC(v86, v63);
    swift_unknownObjectRelease();
    v43 = v90;
LABEL_28:
    ++v36;
    sub_1D7D3153C();
    sub_1D7D3157C();
    sub_1D7D3158C();
    sub_1D7D3154C();
    v7 = v88;
  }

  while (v36 != v35);

  v31 = v96;
LABEL_19:
  v32 = v87;
  *v87 = v31;
  *(v32 + 8) = 0;
}

uint64_t sub_1D7B7A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  sub_1D7B814F4(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  v6 = sub_1D7D2F5CC();

  return v6;
}

void sub_1D7B7A1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = *(v3[6] + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v12 = [v11 identifier];
    if (v12)
    {
      v22 = v11;
      v13 = v12;
      v14 = sub_1D7D3034C();
      v16 = v15;

      if (v14 == a2 && v16 == a3)
      {

        v11 = v22;
        goto LABEL_21;
      }

      v18 = sub_1D7D3197C();

      v11 = v22;
      if (v18)
      {

LABEL_21:
        if (v3[2] && (v19 = sub_1D7A5B904(v11), (v20 & 1) != 0))
        {
          v24 = *(v3[7] + 8 * v19);

          sub_1D7B7A438(&v24);
          sub_1D7B7F2FC(0, &qword_1EE0C0270, &unk_1EE0BF1D0, &qword_1EE0CBA60);
          swift_allocObject();
          sub_1D7D2940C();
        }

        else
        {

LABEL_18:
          v24 = MEMORY[0x1E69E7CC0];
          sub_1D7B7F2FC(0, &qword_1EE0C0270, &unk_1EE0BF1D0, &qword_1EE0CBA60);
          swift_allocObject();
          sub_1D7D2940C();
        }

        return;
      }
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D7B7A438(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1D7BE3D7C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1D7B7DF5C(v4);
  *a1 = v2;
}

uint64_t sub_1D7B7A4B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v76 = a3;
  v63 = a2;
  v62 = a4;
  v64 = sub_1D7D2EB1C();
  v5 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v69 = &v61 - v10;
  v11 = 0;
  v12 = *a1;
  v13 = MEMORY[0x1E69E7CC0];
  *&v78 = MEMORY[0x1E69E7CC0];
  v14 = *(v12 + 16);
  for (i = MEMORY[0x1E69E7CC0]; ; i = v78)
  {
    do
    {
      while (1)
      {
        if (v14 == v11)
        {
          if (!(i >> 62))
          {
            v19 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
            v20 = v63;
            v21 = v64;
            if (!v19)
            {
              goto LABEL_74;
            }

LABEL_17:
            v83 = v13;
            result = sub_1D7D3156C();
            if (v19 < 0)
            {
              goto LABEL_77;
            }

            v22 = i;
            v23 = 0;
            v74 = v22 & 0xC000000000000001;
            v71 = v22;
            v65 = v22 + 32;
            v68 = *MEMORY[0x1E69B5DE8];
            v67 = (v5 + 104);
            v66 = (v5 + 8);
            v75 = v19;
            while (1)
            {
              if (v74)
              {
                v30 = MEMORY[0x1DA70EF00](v23, v71);
              }

              else
              {
                v30 = *(v65 + 8 * v23);
                swift_unknownObjectRetain();
              }

              sub_1D7B8139C(v20 + 144, &v78, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
              if (!*(&v79 + 1))
              {
                break;
              }

              __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
              v24 = v69;
              sub_1D79EFA60(v30, v69);
              v25 = v70;
              (*v67)(v70, v68, v21);
              v26 = sub_1D7D2EB0C();
              v27 = *v66;
              (*v66)(v25, v21);
              v27(v24, v21);
              type metadata accessor for EndOfArticleHeadlineModel();
              v28 = swift_allocObject();
              v29 = v76;
              *(v28 + 16) = v30;
              *(v28 + 24) = v29;
              *(v28 + 32) = v26 & 1;
              __swift_destroy_boxed_opaque_existential_1(&v78);
LABEL_20:
              ++v23;
              sub_1D7D3153C();
              sub_1D7D3157C();
              sub_1D7D3158C();
              sub_1D7D3154C();
              if (v23 == v75)
              {

                v59 = v83;
                goto LABEL_75;
              }
            }

            sub_1D7B81420(&v78, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
            ObjectType = swift_getObjectType();
            v72 = *(v20 + 136);
            v73 = ObjectType;
            v32 = [v30 isPaid];
            if ([v30 respondsToSelector_])
            {
              v33 = [v30 isBundlePaid];
            }

            else
            {
              v33 = 0;
            }

            v34 = [v30 sourceChannel];
            if (v34)
            {
              v35 = [v34 identifier];
              swift_unknownObjectRelease();
              v77 = sub_1D7D3034C();
              v37 = v36;

              if (v32)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v77 = 0;
              v37 = 0;
              if (v32)
              {
LABEL_30:
                v38 = [v72 purchaseProvider];
                if (v37)
                {
                  v39 = [v38 purchasedTagIDs];
                  v40 = sub_1D7D309AC();

                  if (*(v40 + 16))
                  {
                    sub_1D7D31A8C();
                    sub_1D7D303FC();
                    v41 = sub_1D7D31ABC();
                    v42 = -1 << *(v40 + 32);
                    v43 = v41 & ~v42;
                    if ((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
                    {
                      v44 = ~v42;
                      v45 = v77;
                      while (1)
                      {
                        v46 = (*(v40 + 48) + 16 * v43);
                        if (*v46 == v45 && v37 == v46[1])
                        {
                          break;
                        }

                        v48 = sub_1D7D3197C();
                        v45 = v77;
                        if (v48)
                        {
                          break;
                        }

                        v43 = (v43 + 1) & v44;
                        if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                        {
                          goto LABEL_40;
                        }
                      }

                      swift_unknownObjectRelease();

                      v50 = 1;
                      v20 = v63;
                      v21 = v64;
                      goto LABEL_70;
                    }
                  }

LABEL_40:

                  v20 = v63;
                  v21 = v64;
                }

                swift_unknownObjectRelease();
                if (!v33)
                {
                  goto LABEL_66;
                }

                goto LABEL_45;
              }
            }

            if ((v33 & 1) == 0)
            {

              v50 = 1;
              goto LABEL_70;
            }

LABEL_45:
            if (v37)
            {
              v49 = [objc_msgSend(v72 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              if (objc_getAssociatedObject(v49, v49 + 1))
              {
                sub_1D7D3138C();
                swift_unknownObjectRelease();
              }

              else
              {
                v81 = 0u;
                v82 = 0u;
              }

              v78 = v81;
              v79 = v82;
              if (*(&v82 + 1))
              {
                sub_1D7992EFC(0, &qword_1EE0BECA0);
                if (swift_dynamicCast())
                {
                  v51 = v80;
                  v52 = [v80 integerValue];
                  if (v52 == -1)
                  {

                    goto LABEL_69;
                  }

                  v53 = v52;
LABEL_57:
                  if (objc_getAssociatedObject(v49, ~v53))
                  {
                    sub_1D7D3138C();
                    v21 = v64;
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v81 = 0u;
                    v82 = 0u;
                  }

                  v78 = v81;
                  v79 = v82;
                  if (*(&v82 + 1))
                  {
                    sub_1D7992EFC(0, &qword_1EE0BECA0);
                    if (swift_dynamicCast())
                    {
                      v54 = v80;
                      v61 = [v54 integerValue];

                      v21 = v64;
                      if ((v61 ^ v53))
                      {
                        goto LABEL_69;
                      }

LABEL_66:

                      v50 = 0;
                      goto LABEL_70;
                    }
                  }

                  else
                  {
                    sub_1D79F0014(&v78);
                  }

                  if ((v53 & 1) == 0)
                  {
                    goto LABEL_66;
                  }

LABEL_69:
                  v55 = [objc_msgSend(v72 bundleSubscriptionProvider)];
                  swift_unknownObjectRelease();
                  v56 = [v55 bundleChannelIDs];

                  v57 = sub_1D7D3031C();
                  v58 = [v56 containsObject_];

                  v50 = v58;
                  v20 = v63;
                  goto LABEL_70;
                }
              }

              else
              {
                sub_1D79F0014(&v78);
              }

              v51 = 0;
              v53 = 0;
              goto LABEL_57;
            }

            v50 = 0;
LABEL_70:
            sub_1D7CB99FC(v76, v50);
            swift_unknownObjectRelease();
            goto LABEL_20;
          }

LABEL_73:
          v19 = sub_1D7D3167C();
          v20 = v63;
          v21 = v64;
          if (!v19)
          {
LABEL_74:

            v59 = MEMORY[0x1E69E7CC0];
LABEL_75:
            v60 = v62;
            *v62 = v59;
            *(v60 + 8) = 0;
            return result;
          }

          goto LABEL_17;
        }

        if (v11 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_73;
        }

        v16 = *(v12 + 32 + 8 * v11);
        if (v16 >> 62)
        {
          break;
        }

        result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        ++v11;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1D7D3167C();
      ++v11;
    }

    while (!result);
LABEL_6:
    if ((v16 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x1DA70EF00](0, v16);

LABEL_9:
    MEMORY[0x1DA70E080](v18);
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    sub_1D7D3072C();
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = swift_unknownObjectRetain();
    goto LABEL_9;
  }

  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

id sub_1D7B7AE54(uint64_t a1, void *a2)
{
  v4 = sub_1D7D2DFAC();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B812D4(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  sub_1D799CC84(a1 + 56, v30);
  v27[2] = v32;
  v27[3] = v31;
  v27[4] = __swift_project_boxed_opaque_existential_1(v30, v31);
  v16 = [a2 identifier];
  v27[0] = sub_1D7D3034C();
  v27[1] = v17;
  sub_1D7992EFC(0, &qword_1EE0BF148);
  v18 = OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_createdDate;
  v19 = sub_1D7D2833C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v15, a1 + v18, v19);
  v21 = *(v20 + 56);
  v21(v15, 0, 1, v19);
  v21(v11, 1, 1, v19);
  result = sub_1D7B7B16C(v15, v11);
  if (result)
  {
    v23 = result;

    v25 = v28;
    v24 = v29;
    (*(v28 + 104))(v7, *MEMORY[0x1E69B5980], v29);
    v26 = sub_1D7D2F5DC();

    (*(v25 + 8))(v7, v24);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7B7B16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2833C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_1D7D282BC();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1D7D282BC();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDate:v7 endDate:v8];

  return v9;
}

uint64_t sub_1D7B7B2C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, void *a5@<X6>, uint64_t *a6@<X8>)
{
  v69 = a5;
  v76 = a4;
  v82 = a3;
  v68 = a6;
  v75 = sub_1D7D2EB1C();
  v8 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v9);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v12);
  v73 = &v66 - v14;
  v15 = *a1;
  v93 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
    goto LABEL_79;
  }

  v83 = v15 & 0xFFFFFFFFFFFFFF8;
  for (result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_1D7D3167C())
  {
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v86 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v17 = a2;
    }

    if (!result)
    {
      v77 = MEMORY[0x1E69E7CC0];
      goto LABEL_74;
    }

    v66 = v17;
    v18 = 0;
    v81 = v15 & 0xC000000000000001;
    v67 = v15;
    v79 = v15 + 32;
    v72 = *MEMORY[0x1E69B5DE8];
    v71 = (v8 + 104);
    v70 = (v8 + 8);
    v85 = a2 & 0xC000000000000001;
    v77 = MEMORY[0x1E69E7CC0];
    v78 = result;
    v80 = a2 >> 62;
LABEL_8:
    if (v81)
    {
      break;
    }

    if (v18 < *(v83 + 16))
    {
      v87 = *(v79 + 8 * v18);
      swift_unknownObjectRetain();
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        goto LABEL_11;
      }

      goto LABEL_77;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    v83 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v87 = MEMORY[0x1DA70EF00](v18, v67, v13);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_11:

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v84 = v20;
  if (v80)
  {
    v15 = sub_1D7D3167C();
  }

  else
  {
    v15 = *(v86 + 16);
  }

  v21 = 0;
  while (v15 != v21)
  {
    if (v85)
    {
      v23 = MEMORY[0x1DA70EF00](v21, a2);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v21 >= *(v86 + 16))
      {
        goto LABEL_76;
      }

      v23 = *(a2 + 8 * v21 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v21, 1))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    v24 = a2;
    v25 = [v23 identifier];
    v26 = sub_1D7D3034C();
    v8 = v27;

    v28 = [v87 identifier];
    v29 = sub_1D7D3034C();
    v31 = v30;

    if (v26 == v29 && v8 == v31)
    {
      swift_unknownObjectRelease();
      a2 = v24;

      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    v22 = sub_1D7D3197C();
    swift_unknownObjectRelease();

    ++v21;
    a2 = v24;
    if (v22)
    {
      swift_unknownObjectRelease();
LABEL_7:

      v18 = v84;
      if (v84 == v78)
      {
        goto LABEL_74;
      }

      goto LABEL_8;
    }
  }

  v32 = v76;
  sub_1D7B8139C(v76 + 144, &v91, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
  if (*(&v92 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
    v33 = v73;
    v34 = v87;
    sub_1D79EFA60(v87, v73);
    v35 = v74;
    v36 = v75;
    (*v71)(v74, v72, v75);
    v37 = sub_1D7D2EB0C();
    v38 = *v70;
    (*v70)(v35, v36);
    v38(v33, v36);
    type metadata accessor for EndOfArticleHeadlineModel();
    v8 = swift_allocObject();
    *(v8 + 16) = v34;
    *(v8 + 24) = 3;
    *(v8 + 32) = v37 & 1;
    v39 = __swift_destroy_boxed_opaque_existential_1(&v91);
    v40 = v78;
    v18 = v84;
    goto LABEL_48;
  }

  sub_1D7B81420(&v91, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
  v41 = *(v32 + 136);
  v42 = v69;
  v43 = [v69 isPaid];
  if ([v42 respondsToSelector_])
  {
    v44 = [v42 isBundlePaid];
  }

  else
  {
    v44 = 0;
  }

  v45 = [v42 sourceChannel];
  if (!v45)
  {
    v47 = 0;
    v49 = 0;
    if (!v43)
    {
      goto LABEL_38;
    }

LABEL_33:
    v50 = [v41 purchaseProvider];
    if (v49)
    {
      v51 = [v50 purchasedTagIDs];
      v52 = sub_1D7D309AC();

      LOBYTE(v51) = sub_1D7D053C8(v47, v49, v52);

      swift_unknownObjectRelease();
      if (v51)
      {
        goto LABEL_39;
      }

      if (v44)
      {
        goto LABEL_41;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (v44)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_45;
  }

  v46 = [v45 identifier];
  swift_unknownObjectRelease();
  v47 = sub_1D7D3034C();
  v49 = v48;

  if (v43)
  {
    goto LABEL_33;
  }

LABEL_38:
  if ((v44 & 1) == 0)
  {
LABEL_39:

    v53 = 1;
    goto LABEL_46;
  }

LABEL_41:
  if (!v49)
  {
LABEL_45:
    v53 = 0;
LABEL_46:
    v40 = v78;
    v18 = v84;
    goto LABEL_47;
  }

  v54 = [objc_msgSend(v41 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v54, v54 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v91 = v89;
  v92 = v90;
  v77 = v47;
  if (!*(&v90 + 1))
  {
    sub_1D79F0014(&v91);
    goto LABEL_58;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_58:
    v55 = 0;
    v56 = 0;
    goto LABEL_59;
  }

  v55 = v88;
  v56 = [v88 integerValue];
  if (v56 == -1)
  {
    v57 = v41;

    v40 = v78;
    v18 = v84;
    goto LABEL_65;
  }

LABEL_59:
  v58 = v56;
  if (objc_getAssociatedObject(v54, ~v56))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v91 = v89;
  v92 = v90;
  if (*(&v90 + 1))
  {
    sub_1D7992EFC(0, &qword_1EE0BECA0);
    v57 = v41;
    if (swift_dynamicCast())
    {
      v59 = v88;
      v60 = v55;
      v61 = [v59 integerValue];

      v40 = v78;
      v18 = v84;
      if ((v61 ^ v58))
      {
        goto LABEL_65;
      }

LABEL_68:

      v53 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v57 = v41;
    sub_1D79F0014(&v91);
  }

  v40 = v78;
  v18 = v84;
  if ((v58 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_65:
  v62 = [objc_msgSend(v57 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v63 = [v62 bundleChannelIDs];

  v64 = sub_1D7D3031C();
  v53 = [v63 containsObject_];

LABEL_47:
  swift_getObjectType();
  v8 = sub_1D7CB99FC(3, v53);
  v39 = swift_unknownObjectRelease();
LABEL_48:
  v15 = &v93;
  MEMORY[0x1DA70E080](v39);
  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D7D306DC();
  }

  result = sub_1D7D3072C();
  v77 = v93;
  if (v18 != v40)
  {
    goto LABEL_8;
  }

LABEL_74:
  v65 = v68;
  *v68 = v77;
  *(v65 + 8) = 0;
  return result;
}

uint64_t sub_1D7B7BC84()
{
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7B7F4F0(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7D3B4D0;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D79D6AE0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D7D30C6C();
  sub_1D7D29AAC();
}

id sub_1D7B7BDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[3] = a3;
  v20[4] = a4;
  v20[2] = a2;
  sub_1D7B812D4(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v20 - v11;
  sub_1D799CC84(a1 + 56, v21);
  v20[1] = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1D7992EFC(0, &qword_1EE0BF148);
  v13 = OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_createdDate;
  v14 = sub_1D7D2833C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a1 + v13, v14);
  v16 = *(v15 + 56);
  v16(v12, 0, 1, v14);
  v16(v8, 1, 1, v14);
  result = sub_1D7B7B16C(v12, v8);
  if (result)
  {
    v18 = result;
    v19 = sub_1D7D2F5DC();

    __swift_destroy_boxed_opaque_existential_1(v21);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7B7BFF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[6] = a3;
  sub_1D7B812D4(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v28 - v16;
  result = [*(a2 + 184) configuration];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v19 = result;
  if ([result respondsToSelector_])
  {
    v20 = [v19 enableCacheFallbackForArticleRecirculation];
    swift_unknownObjectRelease();
    if (v20)
    {
      v28[3] = a4;
      v28[4] = a5;
      sub_1D799CC84(a2 + 56, v29);
      v28[1] = v29[4];
      v28[2] = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_1D7992EFC(0, &qword_1EE0BF148);
      v21 = OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_createdDate;
      v22 = sub_1D7D2833C();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v17, a2 + v21, v22);
      v24 = *(v23 + 56);
      v24(v17, 0, 1, v22);
      v24(v12, 1, 1, v22);
      result = sub_1D7B7B16C(v17, v12);
      if (result)
      {
        v25 = result;
        v26 = sub_1D7D2F5DC();

        __swift_destroy_boxed_opaque_existential_1(v29);
        return v26;
      }

      goto LABEL_10;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1D7B7F2FC(0, &qword_1EE0C0270, &unk_1EE0BF1D0, &qword_1EE0CBA60);
  swift_allocObject();
  v27 = a1;
  return sub_1D7D293FC();
}

uint64_t sub_1D7B7C2D8@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v63 = a4;
  v72 = sub_1D7D2EB1C();
  v7 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v8);
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v70 = &v62 - v13;
  v14 = *a1;
  *&v79 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    goto LABEL_77;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v77 = a3;
  v16 = MEMORY[0x1E69E7CC0];
  v66 = a2;
  if (v15)
  {
    v76 = v7;
    a2 = 0;
    v78 = v14 & 0xC000000000000001;
    while (1)
    {
      if (!v78)
      {
        if (a2 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v14 + 8 * a2 + 32);
          swift_unknownObjectRetain();
          a3 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          goto LABEL_10;
        }

        __break(1u);
LABEL_77:
        v15 = sub_1D7D3167C();
        goto LABEL_3;
      }

      v7 = MEMORY[0x1DA70EF00](a2, v14, v12);
      a3 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

LABEL_10:
      if ([v7 respondsToSelector_] & 1) != 0 && (objc_msgSend(v7, sel_isIssueOnly))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
      }

      ++a2;
      if (a3 == v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    v17 = v79;
    a2 = v66;
    v7 = v76;
    v16 = MEMORY[0x1E69E7CC0];
    if ((v79 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_78:
    v18 = sub_1D7D3167C();
    if (!v18)
    {
      goto LABEL_79;
    }

LABEL_21:
    v84 = v16;
    result = sub_1D7D3156C();
    if ((v18 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v76 = v17 & 0xC000000000000001;
      v73 = v17;
      v65 = v17 + 32;
      v69 = *MEMORY[0x1E69B5DE8];
      v68 = (v7 + 104);
      v67 = (v7 + 8);
      v75 = v18;
      while (1)
      {
        if (v76)
        {
          v29 = MEMORY[0x1DA70EF00](v20, v73);
        }

        else
        {
          v29 = *(v65 + 8 * v20);
          swift_unknownObjectRetain();
        }

        sub_1D7B8139C(a2 + 144, &v79, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
        if (!*(&v80 + 1))
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
        v21 = v70;
        sub_1D79EFA60(v29, v70);
        v22 = v71;
        v23 = v72;
        (*v68)(v71, v69, v72);
        v24 = sub_1D7D2EB0C();
        v25 = *v67;
        v26 = v22;
        v18 = v75;
        (*v67)(v26, v23);
        v25(v21, v23);
        type metadata accessor for EndOfArticleHeadlineModel();
        v27 = swift_allocObject();
        v28 = v77;
        *(v27 + 16) = v29;
        *(v27 + 24) = v28;
        *(v27 + 32) = v24 & 1;
        __swift_destroy_boxed_opaque_existential_1(&v79);
LABEL_24:
        ++v20;
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
        if (v20 == v18)
        {

          v60 = v84;
          goto LABEL_80;
        }
      }

      sub_1D7B81420(&v79, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
      ObjectType = swift_getObjectType();
      v74 = *(a2 + 136);
      v31 = [v29 isPaid];
      if ([v29 respondsToSelector_])
      {
        v32 = [v29 isBundlePaid];
      }

      else
      {
        v32 = 0;
      }

      v33 = [v29 sourceChannel];
      if (!v33)
      {
        v78 = 0;
        v36 = 0;
        if (!v31)
        {
          goto LABEL_48;
        }

LABEL_34:
        v37 = [v74 purchaseProvider];
        if (v36)
        {
          v64 = ObjectType;
          v38 = [v37 purchasedTagIDs];
          v39 = sub_1D7D309AC();

          if (*(v39 + 16))
          {
            sub_1D7D31A8C();
            sub_1D7D303FC();
            v40 = sub_1D7D31ABC();
            v41 = v78;
            v42 = -1 << *(v39 + 32);
            v43 = v40 & ~v42;
            if ((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
            {
              v44 = ~v42;
              while (1)
              {
                v45 = (*(v39 + 48) + 16 * v43);
                if (*v45 == v41 && v36 == v45[1])
                {
                  break;
                }

                v47 = sub_1D7D3197C();
                v41 = v78;
                if (v47)
                {
                  break;
                }

                v43 = (v43 + 1) & v44;
                if (((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                {
                  goto LABEL_44;
                }
              }

              swift_unknownObjectRelease();

              v49 = 1;
              v18 = v75;
              goto LABEL_74;
            }
          }

LABEL_44:

          v18 = v75;
        }

        swift_unknownObjectRelease();
        if (v32)
        {
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      v34 = [v33 identifier];
      swift_unknownObjectRelease();
      v78 = sub_1D7D3034C();
      v36 = v35;

      if (v31)
      {
        goto LABEL_34;
      }

LABEL_48:
      if ((v32 & 1) == 0)
      {

        v49 = 1;
        goto LABEL_74;
      }

LABEL_49:
      if (!v36)
      {
        v49 = 0;
        goto LABEL_74;
      }

      v48 = [objc_msgSend(v74 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v48, v48 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v79 = v82;
      v80 = v83;
      if (*(&v83 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0);
        if (swift_dynamicCast())
        {
          v50 = v81;
          v51 = [v81 integerValue];
          if (v51 != -1)
          {
            v52 = v51;
            goto LABEL_61;
          }

LABEL_73:
          v56 = [objc_msgSend(v74 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          v57 = [v56 bundleChannelIDs];

          v58 = sub_1D7D3031C();
          v59 = [v57 containsObject_];

          v49 = v59;
LABEL_74:
          sub_1D7CB99FC(v77, v49);
          swift_unknownObjectRelease();
          a2 = v66;
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D79F0014(&v79);
      }

      v50 = 0;
      v52 = 0;
LABEL_61:
      if (objc_getAssociatedObject(v48, ~v52))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v79 = v82;
      v80 = v83;
      if (*(&v83 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0);
        if (swift_dynamicCast())
        {
          v53 = v81;
          v54 = [v53 integerValue];

          v55 = v54 ^ v52;
          v18 = v75;
          if (v55)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        }
      }

      else
      {
        sub_1D79F0014(&v79);
      }

      if (v52)
      {
        goto LABEL_73;
      }

LABEL_70:

      v49 = 0;
      goto LABEL_74;
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_78;
    }

LABEL_19:
    if ((v17 & 0x4000000000000000) != 0)
    {
      goto LABEL_78;
    }

    v18 = *(v17 + 16);
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_79:

    v60 = MEMORY[0x1E69E7CC0];
LABEL_80:
    v61 = v63;
    *v63 = v60;
    *(v61 + 8) = 0;
  }

  return result;
}

void sub_1D7B7CC74(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = a3;
  v57 = a4;
  v65 = sub_1D7D2EB1C();
  v7 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v8);
  v64 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v63 = v56 - v12;
  v13 = *a1;
  v14 = *a1 >> 62;
  v66 = *a1;
  if (v14)
  {
    v15 = sub_1D7D3167C();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v78 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v56[1] = v4;
      v17 = 0;
      v69 = v66 & 0xC000000000000001;
      v59 = v66 + 32;
      v62 = *MEMORY[0x1E69B5DE8];
      v61 = (v7 + 104);
      v60 = (v7 + 8);
      v58 = a2;
      v70 = v15;
      while (1)
      {
        if (v69)
        {
          v25 = MEMORY[0x1DA70EF00](v17, v66);
        }

        else
        {
          v25 = *(v59 + 8 * v17);
          swift_unknownObjectRetain();
        }

        sub_1D7B8139C(a2 + 144, &v73, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
        if (!*(&v74 + 1))
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        v18 = v63;
        sub_1D79EFA60(v25, v63);
        v19 = v64;
        v20 = v65;
        (*v61)(v64, v62, v65);
        v21 = sub_1D7D2EB0C();
        v22 = *v60;
        (*v60)(v19, v20);
        v22(v18, v20);
        type metadata accessor for EndOfArticleHeadlineModel();
        v23 = swift_allocObject();
        v24 = v71;
        *(v23 + 16) = v25;
        *(v23 + 24) = v24;
        *(v23 + 32) = v21 & 1;
        __swift_destroy_boxed_opaque_existential_1(&v73);
LABEL_7:
        ++v17;
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
        if (v17 == v70)
        {
          v16 = v78;
          goto LABEL_59;
        }
      }

      sub_1D7B81420(&v73, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
      ObjectType = swift_getObjectType();
      v67 = *(a2 + 136);
      v68 = ObjectType;
      v27 = [v25 isPaid];
      if ([v25 respondsToSelector_])
      {
        v28 = [v25 isBundlePaid];
      }

      else
      {
        v28 = 0;
      }

      v29 = [v25 sourceChannel];
      if (v29)
      {
        v30 = [v29 identifier];
        swift_unknownObjectRelease();
        v72 = sub_1D7D3034C();
        v32 = v31;

        if (v27)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v72 = 0;
        v32 = 0;
        if (v27)
        {
LABEL_17:
          v33 = [v67 purchaseProvider];
          if (v32)
          {
            v34 = [v33 purchasedTagIDs];
            v35 = sub_1D7D309AC();

            if (*(v35 + 16))
            {
              sub_1D7D31A8C();
              sub_1D7D303FC();
              v36 = sub_1D7D31ABC();
              v37 = v72;
              v38 = -1 << *(v35 + 32);
              v39 = v36 & ~v38;
              if ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
              {
                v40 = ~v38;
                while (1)
                {
                  v41 = (*(v35 + 48) + 16 * v39);
                  if (*v41 == v37 && v32 == v41[1])
                  {
                    break;
                  }

                  v43 = sub_1D7D3197C();
                  v37 = v72;
                  if (v43)
                  {
                    break;
                  }

                  v39 = (v39 + 1) & v40;
                  if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                swift_unknownObjectRelease();

                v45 = 1;
                a2 = v58;
                goto LABEL_57;
              }
            }

LABEL_27:

            a2 = v58;
          }

          swift_unknownObjectRelease();
          if (!v28)
          {
            goto LABEL_53;
          }

          goto LABEL_32;
        }
      }

      if ((v28 & 1) == 0)
      {

        v45 = 1;
        goto LABEL_57;
      }

LABEL_32:
      if (v32)
      {
        v44 = [objc_msgSend(v67 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v44, v44 + 1))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v76 = 0u;
          v77 = 0u;
        }

        v73 = v76;
        v74 = v77;
        if (*(&v77 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v46 = v75;
            v47 = [v75 integerValue];
            if (v47 == -1)
            {

              goto LABEL_56;
            }

            v48 = v47;
LABEL_44:
            if (objc_getAssociatedObject(v44, ~v48))
            {
              sub_1D7D3138C();
              swift_unknownObjectRelease();
            }

            else
            {
              v76 = 0u;
              v77 = 0u;
            }

            v73 = v76;
            v74 = v77;
            if (*(&v77 + 1))
            {
              sub_1D7992EFC(0, &qword_1EE0BECA0);
              if (swift_dynamicCast())
              {
                v49 = v75;
                v50 = [v49 integerValue];

                v51 = v50 ^ v48;
                a2 = v58;
                if (v51)
                {
                  goto LABEL_56;
                }

LABEL_53:

                v45 = 0;
                goto LABEL_57;
              }
            }

            else
            {
              sub_1D79F0014(&v73);
            }

            if ((v48 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_56:
            v52 = [objc_msgSend(v67 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            v53 = [v52 bundleChannelIDs];

            v54 = sub_1D7D3031C();
            LOBYTE(v52) = [v53 containsObject_];

            v45 = v52;
            goto LABEL_57;
          }
        }

        else
        {
          sub_1D79F0014(&v73);
        }

        v46 = 0;
        v48 = 0;
        goto LABEL_44;
      }

      v45 = 0;
LABEL_57:
      sub_1D7CB99FC(v71, v45);
      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
LABEL_59:
    v55 = v57;
    *v57 = v16;
    *(v55 + 8) = 0;
  }
}

id sub_1D7B7D4D0(void *a1, uint64_t a2)
{
  sub_1D7B812D4(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v19 - v10;
  v19[2] = *a1;
  sub_1D799CC84(a2 + 56, v20);
  v19[1] = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1D7992EFC(0, &qword_1EE0BF148);
  v12 = OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_createdDate;
  v13 = sub_1D7D2833C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a2 + v12, v13);
  v15 = *(v14 + 56);
  v15(v11, 0, 1, v13);
  v15(v7, 1, 1, v13);
  result = sub_1D7B7B16C(v11, v7);
  if (result)
  {
    v17 = result;
    v18 = sub_1D7D2F5AC();

    __swift_destroy_boxed_opaque_existential_1(v20);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B7D6F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D7A5BDC8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D79FBED0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D7A5BDC8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D7B7D804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D7B814F4(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  v6 = sub_1D7D2F17C();

  return v6;
}

uint64_t sub_1D7B7D8D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1D7B7F2FC(0, &unk_1EC9E5AF0, &qword_1EE0BF200, &qword_1EE0BF070);
    swift_allocObject();
    return sub_1D7D2940C();
  }

  result = sub_1D7D3167C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA70EF00](0, v3);
LABEL_6:
    v6 = [v5 asChannel];
    if (v6)
    {
      v7 = [v6 defaultSectionID];
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_1D7D3034C();
        v10 = v9;

        __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
        sub_1D7B814F4(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1D7D3B4D0;
        *(v11 + 32) = v8;
        *(v11 + 40) = v10;
        v12 = sub_1D7D2F17C();
        swift_unknownObjectRelease();

        return v12;
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B7DAB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }

  result = sub_1D7D3167C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA70EF00](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
LABEL_6:
    v6 = [v5 publisherSpecifiedArticleIDs];
    if (v6)
    {
      v7 = v6;
      sub_1D7D3063C();

      MEMORY[0x1EEE9AC00](v8, v9);
      sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
      sub_1D7D294BC();
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = 2;

      v11 = sub_1D7D2934C();
      v12 = sub_1D7D293AC();

      swift_unknownObjectRelease();

      return v12;
    }

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B7DCE0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_1D7B81420(v0 + 96, &qword_1EE0C7978, qword_1EE0C7980, &protocol descriptor for StocksFeedServiceType);
  swift_unknownObjectRelease();
  sub_1D7B81420(v0 + 144, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_createdDate;
  v2 = sub_1D7D2833C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D7A3B3F0(*(v0 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData), *(v0 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData + 8), *(v0 + OBJC_IVAR____TtC12NewsArticles22ArticleProviderService_articleGroupData + 16));
  return v0;
}

uint64_t sub_1D7B7DDC8()
{
  sub_1D7B7DCE0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleProviderService()
{
  result = qword_1EE0C7730;
  if (!qword_1EE0C7730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7B7DE74()
{
  result = sub_1D7D2833C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7B7DF5C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D798C3BC(0, &qword_1EE0CBA60);
        v6 = sub_1D7D3070C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D7B7E1C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7B7E070(0, v2, 1, a1);
  }
}

void sub_1D7B7E070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v21 = v7;
    v22 = v6;
    while (1)
    {
      v9 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [v8 scoreProfile];
      if (!v10 || (v11 = v10, [v10 personalizationScore], v13 = v12, v11, (v14 = objc_msgSend(v9, sel_scoreProfile)) == 0))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_5:
        ++v4;
        v6 = v22 + 8;
        v7 = v21 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v15 = v14;
      [v14 personalizationScore];
      v17 = v16;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v17 >= v13)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v18;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D7B7E1C4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v106 = *(v9 + 2);
      if (v106 >= 2)
      {
        do
        {
          v107 = *v6;
          if (!*v6)
          {
            goto LABEL_136;
          }

          v6 = v106 - 1;
          v108 = *&v9[16 * v106];
          v109 = *&v9[16 * v106 + 24];
          sub_1D7B7E95C((v107 + 8 * v108), (v107 + 8 * *&v9[16 * v106 + 16]), (v107 + 8 * v109), v12);
          if (v5)
          {
            break;
          }

          if (v109 < v108)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D7B50220(v9);
          }

          if (v106 - 2 >= *(v9 + 2))
          {
            goto LABEL_126;
          }

          v110 = &v9[16 * v106];
          *v110 = v108;
          *(v110 + 1) = v109;
          sub_1D7B50194(v106 - 1);
          v106 = *(v9 + 2);
          v6 = a3;
        }

        while (v106 > 1);
      }

LABEL_110:

      return;
    }

LABEL_132:
    v9 = sub_1D7B50220(v9);
    goto LABEL_102;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &selRef_addTarget_action_;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_29;
    }

    v114 = v5;
    v13 = *v6;
    v14 = *(*v6 + 8 * v12);
    v15 = v8;
    v16 = *(*v6 + 8 * v8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = [v14 v10[477]];
    if (v17 && (v18 = v17, [v17 personalizationScore], v20 = v19, v18, v10 = &selRef_addTarget_action_, (v21 = objc_msgSend(v16, sel_scoreProfile)) != 0))
    {
      v22 = v21;
      [v21 personalizationScore];
      v24 = v23;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v10 = &selRef_addTarget_action_;
      v6 = v24 < v20;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v6 = 0;
    }

    v11 = v15;
    v12 = v15 + 2;
    if (v15 + 2 < v7)
    {
      v25 = (v13 + 8 * v15 + 16);
      while (1)
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v28 = [v27 v10[477]];
        if (v28 && (v29 = v28, [v28 personalizationScore], v31 = v30, v29, v10 = &selRef_addTarget_action_, (v32 = objc_msgSend(v26, sel_scoreProfile)) != 0))
        {
          v33 = v32;
          [v32 personalizationScore];
          v35 = v34;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v10 = &selRef_addTarget_action_;
          if (v6 == v35 >= v31)
          {
            goto LABEL_18;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v6)
          {
            v5 = v114;
            v11 = v15;
            if (v12 < v15)
            {
              goto LABEL_129;
            }

LABEL_23:
            if (v11 < v12)
            {
              v36 = 8 * v12 - 8;
              v37 = 8 * v11;
              v38 = v12;
              v39 = v11;
              do
              {
                v38 = (v38 - 1);
                if (v39 != v38)
                {
                  v40 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_135;
                  }

                  v41 = *(v40 + v37);
                  *(v40 + v37) = *(v40 + v36);
                  *(v40 + v36) = v41;
                }

                v39 = (v39 + 1);
                v36 -= 8;
                v37 += 8;
              }

              while (v39 < v38);
            }

            goto LABEL_29;
          }
        }

        ++v12;
        ++v25;
        if (v7 == v12)
        {
          v12 = v7;
LABEL_18:
          v11 = v15;
          break;
        }
      }
    }

    v5 = v114;
    if (v6)
    {
      if (v12 < v11)
      {
        goto LABEL_129;
      }

      goto LABEL_23;
    }

LABEL_29:
    v6 = a3;
    v42 = a3[1];
    if (v12 < v42)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_128;
      }

      if (v12 - v11 < a4)
      {
        break;
      }
    }

LABEL_49:
    if (v12 < v11)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D79E4688(0, *(v9 + 2) + 1, 1, v9);
    }

    v61 = *(v9 + 2);
    v60 = *(v9 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      v9 = sub_1D79E4688((v60 > 1), v61 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v61];
    *(v63 + 4) = v11;
    *(v63 + 5) = v12;
    v121 = v12;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v61)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_69:
          if (v69)
          {
            goto LABEL_116;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_119;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_123;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_83:
        if (v87)
        {
          goto LABEL_118;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_121;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_90:
        v103 = v65 - 1;
        if (v65 - 1 >= v62)
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
          goto LABEL_131;
        }

        if (!*v6)
        {
          goto LABEL_134;
        }

        v104 = *&v9[16 * v103 + 32];
        v12 = *&v9[16 * v65 + 40];
        sub_1D7B7E95C((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v12), v64);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v12 < v104)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D7B50220(v9);
        }

        if (v103 >= *(v9 + 2))
        {
          goto LABEL_113;
        }

        v105 = &v9[16 * v103];
        *(v105 + 4) = v104;
        *(v105 + 5) = v12;
        sub_1D7B50194(v65);
        v62 = *(v9 + 2);
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_114;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_115;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_117;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_120;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_124;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v7 = *(v6 + 8);
    v8 = v121;
    v10 = &selRef_addTarget_action_;
    if (v121 >= v7)
    {
      goto LABEL_100;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_130;
  }

  if (v11 + a4 < v42)
  {
    v42 = (v11 + a4);
  }

  if (v42 < v11)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v12 == v42)
  {
    goto LABEL_49;
  }

  v118 = v42;
  v111 = v11;
  v112 = v9;
  v115 = v5;
  v43 = *a3;
  v44 = *a3 + 8 * v12 - 8;
  v45 = v11 - v12;
LABEL_40:
  v119 = v44;
  v120 = v12;
  v46 = *(v43 + 8 * v12);
  v47 = v45;
  while (1)
  {
    v48 = *v44;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v49 = [v46 v10[477]];
    v50 = v10;
    if (!v49 || (v51 = v49, [v49 personalizationScore], v53 = v52, v51, (v54 = objc_msgSend(v48, v50 + 2477)) == 0))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v10 = v50;
LABEL_39:
      ++v12;
      v44 = v119 + 8;
      --v45;
      if ((v120 + 1) == v118)
      {
        v6 = a3;
        v12 = v118;
        v5 = v115;
        v11 = v111;
        v9 = v112;
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    v55 = v54;
    [v54 personalizationScore];
    v57 = v56;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v10 = &selRef_addTarget_action_;
    if (v57 >= v53)
    {
      goto LABEL_39;
    }

    if (!v43)
    {
      break;
    }

    v58 = *v44;
    v46 = *(v44 + 8);
    *v44 = v46;
    *(v44 + 8) = v58;
    v44 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_39;
    }
  }

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
}
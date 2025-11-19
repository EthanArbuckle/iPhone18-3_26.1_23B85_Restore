uint64_t sub_24F1E5B44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FriendsPlayingPageView.PageContent(0) + 24));
  v5 = *v3;
  v4 = v3[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C1C0);
  sub_24F926F38();
  *a2 = v5;
  a2[1] = v4;
  v6 = type metadata accessor for FriendsPlayingAccessoryView();
  type metadata accessor for FriendsPlayingOptionProvider();
  sub_24F1EA254(&qword_27F227430, type metadata accessor for FriendsPlayingOptionProvider);
  sub_24F927378();
  v7 = a2 + *(v6 + 24);
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  v8 = *(v6 + 28);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F1E5C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1E5CF8()
{
  v1 = *(*(type metadata accessor for FriendsPlayingPageView(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  type metadata accessor for GameSource();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v13 = type metadata accessor for GameMAPI();
    v14 = *(v13 + 28);
    v15 = sub_24F9289E8();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);

    v16 = *(v13 + 40);
    v17 = sub_24F928388();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v2 + v16, 1, v17))
    {
      (*(v18 + 8))(v2 + v16, v17);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_12;
      }

      v4 = type metadata accessor for Game();
      v5 = v4[18];
      v6 = sub_24F9289E8();
      v7 = *(v6 - 8);
      v8 = *(v7 + 8);
      v8(v2 + v5, v6);
      v9 = v4[19];
      if (!(*(v7 + 48))(v2 + v9, 1, v6))
      {
        v8(v2 + v9, v6);
      }

      v10 = v4[21];
      v11 = sub_24F920818();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v2 + v10, 1, v11))
      {
        (*(v12 + 8))(v2 + v10, v11);
      }
    }
  }

LABEL_12:
  v60 = type metadata accessor for FriendsPlayingPageIntent();
  v19 = v2 + *(v60 + 20);

  v20 = type metadata accessor for Player(0);
  v21 = v20[6];
  v22 = sub_24F9289E8();
  v61 = *(v22 - 8);
  v62 = *(v61 + 8);
  v62(v19 + v21, v22);

  if (*(v19 + v20[9] + 8) != 1)
  {
  }

  v23 = v19 + v20[13];
  v24 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = type metadata accessor for CallProviderConversationHandle();
    v26 = *(*(v25 - 8) + 48);
    if (!v26(v23, 1, v25))
    {

      v27 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v61 + 48))(v23 + v27, 1, v22))
      {
        v62(v23 + v27, v22);
      }
    }

    v28 = v23 + *(v24 + 20);
    if (!v26(v28, 1, v25))
    {

      v29 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v61 + 48))(v28 + v29, 1, v22))
      {
        v62(v28 + v29, v22);
      }
    }
  }

  if (*(v19 + v20[15] + 8))
  {
  }

  v30 = v19 + v20[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v30, 1, PlayedTogetherInfo))
  {

    v32 = type metadata accessor for Game();
    v62(v30 + v32[18], v22);
    v33 = v32[19];
    if (!(*(v61 + 48))(v30 + v33, 1, v22))
    {
      v62(v30 + v33, v22);
    }

    v34 = v32[21];
    v35 = sub_24F920818();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v30 + v34, 1, v35))
    {
      (*(v36 + 8))(v30 + v34, v35);
    }
  }

  v37 = v19 + v20[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v37, 1, ChallengeInfo))
  {

    v39 = type metadata accessor for Game();
    v62(v37 + v39[18], v22);
    v40 = v39[19];
    if (!(*(v61 + 48))(v37 + v40, 1, v22))
    {
      v62(v37 + v40, v22);
    }

    v41 = v39[21];
    v42 = sub_24F920818();
    v43 = *(v42 - 8);
    if (!(*(v43 + 48))(v37 + v41, 1, v42))
    {
      (*(v43 + 8))(v37 + v41, v42);
    }
  }

  v44 = v2 + *(v60 + 24);
  v45 = type metadata accessor for Page.Background(0);
  if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
  {
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 <= 1)
    {
      if (v47)
      {
        if (v47 == 1)
        {
          v62(v44, v22);
          v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v50 = sub_24F922348();
          v51 = *(v50 - 8);
          if (!(*(v51 + 48))(v44 + v49, 1, v50))
          {
            (*(v51 + 8))(v44 + v49, v50);
          }
        }
      }

      else
      {
        v62(v44, v22);
      }
    }

    else if (v47 == 2)
    {
      if (!(*(v61 + 48))(v44, 1, v22))
      {
        v62(v44, v22);
      }

      v52 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v53 = type metadata accessor for GSKVideo();
      if (!(*(*(v53 - 1) + 48))(v52, 1, v53))
      {
        v54 = sub_24F91F4A8();
        (*(*(v54 - 8) + 8))(v52, v54);
        v62(v52 + v53[5], v22);
        v55 = v53[9];
        v56 = sub_24F928698();
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        if (!v58(v52 + v55, 1, v56))
        {
          (*(v57 + 8))(v52 + v55, v56);
        }

        v59 = v53[10];
        if (!v58(v52 + v59, 1, v56))
        {
          (*(v57 + 8))(v52 + v59, v56);
        }
      }
    }

    else if (v47 == 3 || v47 == 4)
    {
      v48 = sub_24F928388();
      (*(*(v48 - 8) + 8))(v44, v48);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F1E695C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FriendsPlayingPageView(0);

  return sub_24F1E47A0(a1, a2);
}

uint64_t sub_24F1E6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v66 = a3;
  v54 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v10 = *(v9 - 8);
  v60 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for FriendsPlayingShelfIntent();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C170);
  v52 = *(v69 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v69);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = &v47 - v18;
  v49 = *(a2 + 16);
  v65 = type metadata accessor for FriendsPlayingShelfIntent;
  v51 = v15;
  sub_24F1E5C90(a3, v15, type metadata accessor for FriendsPlayingShelfIntent);
  v19 = v10;
  v20 = *(v10 + 16);
  v63 = v10 + 16;
  v64 = v20;
  v20(v12, a1, v9);
  v21 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v22 = *(v62 + 80);
  v48 = v22;
  v62 = v14 + 7;
  v23 = (v14 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v10 + 80);
  v61 = v24 + 8;
  v25 = (v24 + 8 + v23) & ~v24;
  v58 = v22 | v24;
  v59 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  v27 = a2;
  v57 = type metadata accessor for FriendsPlayingShelfIntent;
  sub_24F1E9218(v15, v26 + v21, type metadata accessor for FriendsPlayingShelfIntent);
  *(v26 + v23) = v70;
  v28 = *(v19 + 32);
  v55 = v19 + 32;
  v56 = v28;
  v29 = v12;
  v28((v26 + v25), v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C138);
  sub_24E602068(&qword_27F23C178, &qword_27F23C138);

  sub_24F9288B8();
  v30 = v68;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v71);
  v31 = v52;
  v32 = v50;
  v33 = v69;
  (*(v52 + 16))(v50, v30, v69);
  v34 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  (*(v31 + 32))(v35 + v34, v32, v33);
  v36 = v27;

  v37 = v9;
  v38 = v54;
  sub_24F92B898();
  v39 = sub_24F92B858();
  v40 = v67;
  (*(*(v39 - 8) + 56))(v67, 1, 1, v39);
  v41 = v51;
  sub_24F1E5C90(v66, v51, v65);
  v64(v29, v38, v37);
  v42 = (v48 + 40) & ~v48;
  v43 = (v62 + v42) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v61 + v43) & ~v59;
  v45 = swift_allocObject();
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 4) = v36;
  sub_24F1E9218(v41, &v45[v42], v57);
  *&v45[v43] = v70;
  v56(&v45[v44], v29, v37);

  sub_24F1D3DA4(0, 0, v40, &unk_24F9D4758, v45);

  return (*(v31 + 8))(v68, v69);
}

uint64_t sub_24F1E7040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v27 = &v26 - v9;
  v11 = type metadata accessor for FriendsPlayingShelfIntent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_24F1E5C90(a3, v14, type metadata accessor for FriendsPlayingShelfIntent);
  v19 = v10;
  v20 = v7;
  (*(v8 + 16))(v19, v28, v7);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v8 + 80) + v22 + 8) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a2;
  sub_24F1E9218(v14, &v24[v21], type metadata accessor for FriendsPlayingShelfIntent);
  *&v24[v22] = v29;
  (*(v8 + 32))(&v24[v23], v27, v20);

  sub_24F1D3DA4(0, 0, v17, &unk_24F9D47A0, v24);
}

uint64_t sub_24F1E7324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v7[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[7] = v12;
  v13 = swift_task_alloc();
  v7[8] = v13;
  *v13 = v7;
  v13[1] = sub_24F1E7480;

  return sub_24F1E7714(v12, a5, a6, a4);
}

uint64_t sub_24F1E7480()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24F1E769C;
  }

  else
  {
    v2 = sub_24F1E7594;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1E7594()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_24F1E5C90(v1, v0[6], type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  (*(v3 + 8))(v2, v4);
  sub_24F1E9668(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F1E769C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F1E7714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  type metadata accessor for Player(0);
  v4[13] = swift_task_alloc();
  type metadata accessor for Game();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for FriendsPlayingShelfConstructionIntent();
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for JSIntentDispatcher();
  v6 = swift_task_alloc();
  v4[17] = v6;
  *v6 = v4;
  v6[1] = sub_24F1E7854;

  return MEMORY[0x28217F228](v4 + 7, v5, v5);
}

uint64_t sub_24F1E7854()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F1E8000;
  }

  else
  {
    v2 = sub_24F1E7968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1E7968()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v0[19] = v0[7];
  v0[20] = *v3;
  v0[21] = v3[1];
  v4 = type metadata accessor for FriendsPlayingShelfIntent();
  sub_24F1E5C90(v3 + *(v4 + 20), v2, type metadata accessor for Game);
  sub_24F1E5C90(v3 + *(v4 + 24), v1, type metadata accessor for Player);
  sub_24F92B7F8();

  v0[22] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1E7A88, v6, v5);
}

uint64_t sub_24F1E7A88()
{
  v1 = *(v0 + 96);

  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_24F1EA254(&qword_27F227430, type metadata accessor for FriendsPlayingOptionProvider);
  sub_24F91FD88();

  *(v0 + 200) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24F1E7B74, 0, 0);
}

uint64_t sub_24F1E7B74()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  *v4 = *(v0 + 160);
  v4[1] = v2;
  sub_24F1E5C90(v7, v4 + v5[5], type metadata accessor for Game);
  sub_24F1E5C90(v6, v4 + v5[6], type metadata accessor for Player);
  *(v4 + v5[8]) = v1;
  *(v0 + 40) = &_s14descr2861AC041O5GamesON;
  *(v0 + 48) = sub_24EDA569C();
  *(v0 + 16) = 0;
  v8 = sub_24F91FE68();
  sub_24F1E9668(v6, type metadata accessor for Player);
  sub_24F1E9668(v7, type metadata accessor for Game);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  *(v4 + v5[7]) = v8 & 1;
  v16 = (*(*v3 + 112) + **(*v3 + 112));
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  v10 = sub_24F1EA254(&qword_27F23C180, type metadata accessor for FriendsPlayingShelfConstructionIntent);
  *v9 = v0;
  v9[1] = sub_24F1E7DD4;
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 88);
  v14 = *(v0 + 72);

  return v16(v14, v11, v13, "", 0, 2, v12, v10);
}

uint64_t sub_24F1E7DD4()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 192) = v0;

  sub_24F1E9668(v2, type metadata accessor for FriendsPlayingShelfConstructionIntent);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F1E7F80, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24F1E7F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F1E8000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F1E8080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v7[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[7] = v12;
  v13 = swift_task_alloc();
  v7[8] = v13;
  *v13 = v7;
  v13[1] = sub_24F1E81DC;

  return sub_24F1E7714(v12, a5, a6, a4);
}

uint64_t sub_24F1E81DC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24F1EBEA8;
  }

  else
  {
    v2 = sub_24F1EBEA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1E82F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[11] = v7;
  v4[12] = v8;

  return MEMORY[0x2822009F8](sub_24F1E8438, 0, 0);
}

uint64_t sub_24F1E8438()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v14 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v10;
  type metadata accessor for GSKShelf();
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v8);
  sub_24F92B928();

  (*(v4 + 16))(v3, v1, v6);
  sub_24E602068(&qword_27F22D120, &qword_27F213760);
  sub_24F9280F8();
  (*(v4 + 8))(v1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F1E8674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1E8748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24F1E8804()
{
  type metadata accessor for Page(319);
  if (v0 <= 0x3F)
  {
    sub_24E833194();
    if (v1 <= 0x3F)
    {
      sub_24F1E88A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F1E88A8()
{
  if (!qword_27F23C150)
  {
    type metadata accessor for FriendsPlayingOptionProvider();
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23C150);
    }
  }
}

unint64_t sub_24F1E8904()
{
  result = qword_27F23C158;
  if (!qword_27F23C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C160);
    sub_24E602068(&qword_27F23C168, &qword_27F23C130);
    sub_24E9BAE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C158);
  }

  return result;
}

uint64_t sub_24F1E8A2C()
{
  v1 = v0;
  v2 = type metadata accessor for FriendsPlayingShelfIntent();
  v3 = *(*(v2 - 8) + 80);
  v38 = *(*(v2 - 8) + 64);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v39 = *(v42 - 8);
  v37 = *(v39 + 80);

  v40 = (v3 + 24) & ~v3;
  v4 = v0 + v40;

  v5 = v4 + *(v2 + 20);

  v6 = type metadata accessor for Game();
  v7 = v6[18];
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v43 = *(v9 + 8);
  v43(v5 + v7, v8);
  v10 = v6[19];
  v41 = *(v9 + 48);
  if (!v41(v5 + v10, 1, v8))
  {
    v43(v5 + v10, v8);
  }

  v11 = v6[21];
  v12 = sub_24F920818();
  v34 = *(v12 - 8);
  v35 = *(v34 + 48);
  if (!v35(v5 + v11, 1, v12))
  {
    (*(v34 + 8))(v5 + v11, v12);
  }

  v36 = v12;

  v13 = v4 + *(v2 + 24);

  v14 = type metadata accessor for Player(0);
  v43(v13 + v14[6], v8);

  if (*(v13 + v14[9] + 8) != 1)
  {
  }

  v15 = v13 + v14[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet();
  v17 = v42;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v33 = v1;
    v18 = type metadata accessor for CallProviderConversationHandle();
    v19 = *(*(v18 - 8) + 48);
    if (!v19(v15, 1, v18))
    {

      v20 = *(type metadata accessor for CallProvider() + 24);
      if (!v41(v15 + v20, 1, v8))
      {
        v43(v15 + v20, v8);
      }
    }

    v21 = v15 + *(v16 + 20);
    v22 = v19(v21, 1, v18);
    v1 = v33;
    if (!v22)
    {

      v23 = *(type metadata accessor for CallProvider() + 24);
      if (!v41(v21 + v23, 1, v8))
      {
        v43(v21 + v23, v8);
      }
    }

    v17 = v42;
  }

  if (*(v13 + v14[15] + 8))
  {
  }

  v24 = v13 + v14[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v24, 1, PlayedTogetherInfo))
  {

    v43(v24 + v6[18], v8);
    v26 = v6[19];
    if (!v41(v24 + v26, 1, v8))
    {
      v43(v24 + v26, v8);
    }

    v27 = v6[21];
    if (!v35(v24 + v27, 1, v36))
    {
      (*(v34 + 8))(v24 + v27, v36);
    }
  }

  v28 = v13 + v14[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v43(v28 + v6[18], v8);
    v30 = v6[19];
    if (!v41(v28 + v30, 1, v8))
    {
      v43(v28 + v30, v8);
    }

    v31 = v6[21];
    if (!v35(v28 + v31, 1, v36))
    {
      (*(v34 + 8))(v28 + v31, v36);
    }
  }

  (*(v39 + 8))(v1 + ((((v38 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + v37 + 8) & ~v37), v17);

  return swift_deallocObject();
}

uint64_t sub_24F1E9218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1E9280(uint64_t a1)
{
  v3 = *(type metadata accessor for FriendsPlayingShelfIntent() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_24F1E7040(a1, v8, v1 + v4, v7, v9);
}

uint64_t sub_24F1E9374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C170);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1E94BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendsPlayingShelfIntent() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F1E8080(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_24F1E9668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_35Tm()
{
  v1 = v0;
  v2 = type metadata accessor for FriendsPlayingShelfIntent();
  v3 = *(*(v2 - 8) + 80);
  v38 = *(*(v2 - 8) + 64);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v39 = *(v42 - 8);
  v37 = *(v39 + 80);
  swift_unknownObjectRelease();

  v40 = (v3 + 40) & ~v3;
  v4 = v0 + v40;

  v5 = v4 + *(v2 + 20);

  v6 = type metadata accessor for Game();
  v7 = v6[18];
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v43 = *(v9 + 8);
  v43(v5 + v7, v8);
  v10 = v6[19];
  v41 = *(v9 + 48);
  if (!v41(v5 + v10, 1, v8))
  {
    v43(v5 + v10, v8);
  }

  v11 = v6[21];
  v12 = sub_24F920818();
  v34 = *(v12 - 8);
  v35 = *(v34 + 48);
  if (!v35(v5 + v11, 1, v12))
  {
    (*(v34 + 8))(v5 + v11, v12);
  }

  v36 = v12;

  v13 = v4 + *(v2 + 24);

  v14 = type metadata accessor for Player(0);
  v43(v13 + v14[6], v8);

  if (*(v13 + v14[9] + 8) != 1)
  {
  }

  v15 = v13 + v14[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet();
  v17 = v42;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v33 = v1;
    v18 = type metadata accessor for CallProviderConversationHandle();
    v19 = *(*(v18 - 8) + 48);
    if (!v19(v15, 1, v18))
    {

      v20 = *(type metadata accessor for CallProvider() + 24);
      if (!v41(v15 + v20, 1, v8))
      {
        v43(v15 + v20, v8);
      }
    }

    v21 = v15 + *(v16 + 20);
    v22 = v19(v21, 1, v18);
    v1 = v33;
    if (!v22)
    {

      v23 = *(type metadata accessor for CallProvider() + 24);
      if (!v41(v21 + v23, 1, v8))
      {
        v43(v21 + v23, v8);
      }
    }

    v17 = v42;
  }

  if (*(v13 + v14[15] + 8))
  {
  }

  v24 = v13 + v14[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v24, 1, PlayedTogetherInfo))
  {

    v43(v24 + v6[18], v8);
    v26 = v6[19];
    if (!v41(v24 + v26, 1, v8))
    {
      v43(v24 + v26, v8);
    }

    v27 = v6[21];
    if (!v35(v24 + v27, 1, v36))
    {
      (*(v34 + 8))(v24 + v27, v36);
    }
  }

  v28 = v13 + v14[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v43(v28 + v6[18], v8);
    v30 = v6[19];
    if (!v41(v28 + v30, 1, v8))
    {
      v43(v28 + v30, v8);
    }

    v31 = v6[21];
    if (!v35(v28 + v31, 1, v36))
    {
      (*(v34 + 8))(v28 + v31, v36);
    }
  }

  (*(v39 + 8))(v1 + ((((v38 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + v37 + 8) & ~v37), v17);

  return swift_deallocObject();
}

uint64_t sub_24F1E9EBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendsPlayingShelfIntent() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F1E7324(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_24F1EA040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FriendsPlayingPageView.PageContent(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24F1E4F4C(a1, a2, v8, a3);
}

uint64_t sub_24F1EA0C8()
{

  return swift_deallocObject();
}

unint64_t sub_24F1EA108()
{
  result = qword_27F23C1A0;
  if (!qword_27F23C1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229248);
    type metadata accessor for FriendsPlayingShelfIntent();
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    sub_24F1EA254(&qword_27F21D488, type metadata accessor for FriendsPlayingShelfIntent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C1A0);
  }

  return result;
}

uint64_t sub_24F1EA254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_56Tm_1()
{
  v106 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  v1 = *(*(v106 - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92A708();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for Page(0);

  v5 = v4[6];
  v6 = sub_24F928818();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v4[20];
  v8 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_55;
  }

  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v7, 1, v9))
  {

    v11 = v7 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v11, v85);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v7 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = v7 + v9[10];
          if (*(v17 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v73 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v74 = type metadata accessor for JSColor();
        if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
        {
          v75 = sub_24F928388();
          (*(*(v75 - 8) + 8))(v73, v75);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v82 = sub_24F9289E8();
        v83 = *(v82 - 8);
        if (!(*(v83 + 48))(v11, 1, v82))
        {
          (*(v83 + 8))(v11, v82);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v7 + v8[5];
  if (v10(v18, 1, v9))
  {
    goto LABEL_32;
  }

  v19 = v18 + v9[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v76 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v77 = type metadata accessor for JSColor();
      if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
      {
        v78 = sub_24F928388();
        (*(*(v78 - 8) + 8))(v76, v78);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v84 = sub_24F9289E8();
      v104 = *(v84 - 8);
      if (!(*(v104 + 48))(v19, 1, v84))
      {
        (*(v104 + 8))(v19, v84);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v87 = sub_24F9289E8();
      (*(*(v87 - 8) + 8))(v19, v87);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v9[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = v18 + v9[10];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v7 + v8[6];
  if (v10(v26, 1, v9))
  {
    goto LABEL_49;
  }

  v27 = v26 + v9[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v79 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v80 = type metadata accessor for JSColor();
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v86 = sub_24F9289E8();
      v105 = *(v86 - 8);
      if (!(*(v105 + 48))(v27, 1, v86))
      {
        (*(v105 + 8))(v27, v86);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v27, v88);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v29 = v26 + v9[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = v26 + v9[10];
  if (*(v33 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v7 + v8[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v34 + 16);
    }
  }

  v35 = v7 + v8[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
      goto LABEL_149;
    }

    if (v50 != 1)
    {
      if (v50)
      {
        goto LABEL_55;
      }

      v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v51 - 8) + 48))(v35, 1, v51))
      {
        goto LABEL_55;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 2)
      {
        if (v52 != 3)
        {
          if (v52 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v35, v103);
            goto LABEL_55;
          }

          if (v52 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v35, 1, v101))
          {
            (*(v102 + 8))(v35, v101);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v69 = type metadata accessor for JSColor();
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_55;
      }

LABEL_99:
      v70 = sub_24F928388();
      (*(*(v70 - 8) + 8))(v68, v70);

      goto LABEL_55;
    }

    v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v35, 1, v64))
    {
LABEL_97:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v67 = v35 + *(v66 + 48);
      if (v65(v67, 1, v64))
      {
        goto LABEL_98;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 2)
      {
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v67, 1, v97))
          {
            (*(v98 + 8))(v67, v97);
          }

          if (*(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v92 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v93 = type metadata accessor for JSColor();
          if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
          {
            v94 = sub_24F928388();
            (*(*(v94 - 8) + 8))(v92, v94);
          }
        }

LABEL_98:
        v68 = v35 + *(v66 + 80);
        v69 = type metadata accessor for JSColor();
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v67, v100);
          goto LABEL_98;
        }

        if (v72 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 2)
    {
      if (v71 != 3)
      {
        if (v71 == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v35, v99);
          goto LABEL_97;
        }

        if (v71 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v71)
      {

        v89 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v90 = type metadata accessor for JSColor();
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          v91 = sub_24F928388();
          (*(*(v91 - 8) + 8))(v89, v91);
        }

        goto LABEL_97;
      }

      if (v71 == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v35, 1, v95))
        {
          (*(v96 + 8))(v35, v95);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v71 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v2 + v4[23]))
  {
  }

  v37 = v2 + v4[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          v46 = sub_24F9289E8();
          (*(*(v46 - 8) + 8))(v37, v46);
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v48 = sub_24F922348();
          v49 = *(v48 - 8);
          if (!(*(v49 + 48))(v37 + v47, 1, v48))
          {
            (*(v49 + 8))(v37 + v47, v48);
          }
        }
      }

      else
      {
        v63 = sub_24F9289E8();
        (*(*(v63 - 8) + 8))(v37, v63);
      }
    }

    else if (v44 == 2)
    {
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v37, 1, v53))
      {
        (*(v54 + 8))(v37, v53);
      }

      v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v56 = type metadata accessor for GSKVideo();
      if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
      {
        v57 = sub_24F91F4A8();
        (*(*(v57 - 8) + 8))(v55, v57);
        (*(v54 + 8))(v55 + v56[5], v53);
        v58 = v56[9];
        v59 = sub_24F928698();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        if (!v61(v55 + v58, 1, v59))
        {
          (*(v60 + 8))(v55 + v58, v59);
        }

        v62 = v56[10];
        if (!v61(v55 + v62, 1, v59))
        {
          (*(v60 + 8))(v55 + v62, v59);
        }
      }
    }

    else if (v44 == 3 || v44 == 4)
    {
      v45 = sub_24F928388();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  v39 = v2 + v4[27];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v2 + v4[28];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v2 + v4[29];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v2 + v4[30];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + *(v106 + 20));

  return swift_deallocObject();
}

uint64_t sub_24F1EBCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for FriendsPlayingPageView.PageContent(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E614970;

  return sub_24F1E54D8(a1, a2, a3, v3 + v9);
}

uint64_t sub_24F1EBD98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C188);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C198);
  sub_24F1EA108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C1A8);
  sub_24E602068(&qword_27F23C1B0, &qword_27F23C1A8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t InAppPurchaseAction.productIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productIdentifier);

  return v1;
}

uint64_t InAppPurchaseAction.appAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appAdamId);
  a1[1] = v2;
}

uint64_t InAppPurchaseAction.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appBundleId);

  return v1;
}

uint64_t InAppPurchaseAction.minimumShortVersionSupportingInAppPurchaseFlow.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow);

  return v1;
}

uint64_t InAppPurchaseAction.appTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appTitle);

  return v1;
}

uint64_t InAppPurchaseAction.productTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productTitle);

  return v1;
}

uint64_t InAppPurchaseAction.additionalBuyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_additionalBuyParams);

  return v1;
}

char *InAppPurchaseAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v79 = a2;
  v77 = v4;
  v6 = *v4;
  v75 = v3;
  v76 = v6;
  v78 = sub_24F9285B8();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v71 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v83 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v72 = v9;
  v81 = *(v9 + 8);
  v82 = v9 + 8;
  v81(v22, v8);
  if (!v25)
  {
    v65 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v66 = 0xD000000000000011;
    v66[1] = 0x800000024FA4CB10;
    v66[2] = v76;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D22530], v65);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v83, v8);
    v27 = v77;
LABEL_12:
    swift_deallocPartialClassInstance();
    return v27;
  }

  v26 = 0x496D616441707061;
  v27 = v77;
  v28 = &v77[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productIdentifier];
  *v28 = v23;
  v28[1] = v25;
  v71 = v28;
  v29 = 0xE900000000000064;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v81(v20, v8);
  if (!v32)
  {
    v67 = v83;
    v37 = v8;
    goto LABEL_10;
  }

  v26 = 0x6C646E7542707061;
  v33 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appAdamId];
  *v33 = v30;
  v33[1] = v32;
  v29 = 0xEB00000000644965;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v81(v17, v8);
  v37 = v8;
  if (!v36)
  {
    v67 = v83;
LABEL_10:
    v68 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v69 = v26;
    v69[1] = v29;
    v69[2] = v76;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D22530], v68);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v67, v37);

    if (v32)
    {
    }

    goto LABEL_12;
  }

  v38 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appBundleId];
  *v38 = v34;
  v38[1] = v36;
  type metadata accessor for Action();
  v39 = v83;
  sub_24F928398();
  v40 = v79;
  v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v14, v79);
  v42 = v81;
  v81(v14, v37);
  *&v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_installRequiredAction] = v41;
  sub_24F928398();
  v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v14, v40);
  v42(v14, v37);
  *&v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_streamlineBuyAction] = v43;
  sub_24F928398();
  v44 = sub_24F928348();
  v46 = v45;
  v42(v14, v37);
  v47 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow];
  *v47 = v44;
  v47[1] = v46;
  sub_24F928398();
  v48 = sub_24F928348();
  v50 = v49;
  v42(v14, v37);
  v51 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appTitle];
  *v51 = v48;
  v51[1] = v50;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v42(v14, v37);
  v55 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productTitle];
  *v55 = v52;
  v55[1] = v54;
  sub_24F928398();
  v56 = sub_24F928348();
  v58 = v57;
  v42(v14, v37);
  v59 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_additionalBuyParams];
  *v59 = v56;
  v59[1] = v58;
  v60 = v73;
  (*(v72 + 16))(v73, v39, v37);
  v61 = v74;
  v62 = v78;
  (*(v80 + 16))(v74, v40, v78);
  v63 = v75;
  v64 = Action.init(deserializing:using:)(v60, v61);
  if (!v63)
  {
    v27 = v64;
  }

  (*(v80 + 8))(v40, v62);
  v42(v39, v37);
  return v27;
}

uint64_t sub_24F1EC8F8()
{
}

uint64_t InAppPurchaseAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t InAppPurchaseAction.__deallocating_deinit()
{
  InAppPurchaseAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InAppPurchaseAction()
{
  result = qword_27F23C1C8;
  if (!qword_27F23C1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  *(a5 + 152) = a1[2];
  *(a5 + 168) = v8;
  v9 = a1[5];
  *(a5 + 184) = a1[4];
  *(a5 + 200) = v9;
  v10 = a1[1];
  *(a5 + 120) = *a1;
  *(a5 + 136) = v10;
  sub_24E612C80(a2, a5);
  v11 = *(a3 + 16);
  *(a5 + 40) = *a3;
  *(a5 + 56) = v11;
  *(a5 + 72) = *(a3 + 32);

  return sub_24E612C80(a4, a5 + 80);
}

uint64_t ProductDescriptionLayout.Metrics.init(topPadding:developerTopPadding:horizontalTextPadding:horizontalDeveloperSpace:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  a5[1] = v7;
  sub_24E612C80(a3, (a5 + 2));

  return sub_24E612C80(a4, (a5 + 7));
}

uint64_t ProductDescriptionLayout.Metrics.topPadding.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ProductDescriptionLayout.Metrics.developerTopPadding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t ProductDescriptionLayout.Metrics.horizontalTextPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t ProductDescriptionLayout.Metrics.horizontalDeveloperSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_24E612C80(a1, v1 + 56);
}

double ProductDescriptionLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9225E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F922618();
  v68 = *(v13 - 8);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v67 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 traitCollection];
  if (sub_24F92BF68() & 1) != 0 || (sub_24F92BF98())
  {
    v65 = v13;
    v66 = v16;
    sub_24E60169C((v2 + 5), &v70, &qword_27F229780);
    v63 = v12;
    v64 = a1;
    if (v71)
    {
      sub_24E612C80(&v70, v73);
      (*(v10 + 104))(v12, *MEMORY[0x277D22788], v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_24F93A070;
      *&v70 = v2[15];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v8);
      v19 = v18;
      v69 = *(v69 + 8);
      (v69)(v8, v6);

      v71 = MEMORY[0x277D85048];
      v72 = MEMORY[0x277D225F8];
      *&v70 = v19;
      v20 = sub_24F9229A8();
      v21 = MEMORY[0x277D228E0];
      *(v17 + 56) = v20;
      *(v17 + 64) = v21;
      __swift_allocate_boxed_opaque_existential_1((v17 + 32));
      sub_24F9229B8();
      v22 = v6;
      v62 = v6;
      v23 = v2[3];
      v24 = v3[4];
      v25 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      *(v17 + 96) = v23;
      *(v17 + 104) = *(v24 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 72));
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
      *&v70 = v3[15];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v8);
      v28 = v27;
      v29 = v22;
      v30 = v69;
      (v69)(v8, v29);

      v71 = MEMORY[0x277D85048];
      v72 = MEMORY[0x277D225F8];
      *&v70 = v28;
      *(v17 + 136) = v20;
      *(v17 + 144) = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1((v17 + 112));
      sub_24F9229B8();
      v31 = v74;
      v32 = v75;
      v33 = __swift_project_boxed_opaque_existential_1(v73, v74);
      *(v17 + 176) = v31;
      *(v17 + 184) = *(v32 + 8);
      v34 = __swift_allocate_boxed_opaque_existential_1((v17 + 152));
      (*(*(v31 - 8) + 16))(v34, v33, v31);
      *&v70 = v3[16];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v8);
      v36 = v35;
      v30(v8, v62);

      v71 = MEMORY[0x277D85048];
      v72 = MEMORY[0x277D225F8];
      *&v70 = v36;
      *(v17 + 216) = v20;
      *(v17 + 224) = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1((v17 + 192));
      sub_24F9229B8();
      v37 = v3[13];
      v38 = v3[14];
      v39 = __swift_project_boxed_opaque_existential_1(v3 + 10, v37);
      *(v17 + 256) = v37;
      *(v17 + 264) = *(v38 + 8);
      v40 = __swift_allocate_boxed_opaque_existential_1((v17 + 232));
      (*(*(v37 - 8) + 16))(v40, v39, v37);
      v41 = v67;
      sub_24F9225F8();
      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else
    {
      sub_24E601704(&v70, &qword_27F229780);
      (*(v10 + 104))(v12, *MEMORY[0x277D22788], v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_24F93FC20;
      v73[0] = v2[15];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v8);
      v44 = v43;
      v69 = *(v69 + 8);
      (v69)(v8, v6);

      v74 = MEMORY[0x277D85048];
      v75 = MEMORY[0x277D225F8];
      v73[0] = v44;
      v45 = sub_24F9229A8();
      v46 = MEMORY[0x277D228E0];
      *(v42 + 56) = v45;
      *(v42 + 64) = v46;
      __swift_allocate_boxed_opaque_existential_1((v42 + 32));
      sub_24F9229B8();
      v47 = v6;
      v48 = v2[3];
      v49 = v3[4];
      v50 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      *(v42 + 96) = v48;
      *(v42 + 104) = *(v49 + 8);
      v51 = __swift_allocate_boxed_opaque_existential_1((v42 + 72));
      (*(*(v48 - 8) + 16))(v51, v50, v48);
      v73[0] = v3[16];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v8);
      v53 = v52;
      (v69)(v8, v47);

      v74 = MEMORY[0x277D85048];
      v75 = MEMORY[0x277D225F8];
      v73[0] = v53;
      *(v42 + 136) = v45;
      *(v42 + 144) = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1((v42 + 112));
      sub_24F9229B8();
      v54 = v3[13];
      v55 = v3[14];
      v56 = __swift_project_boxed_opaque_existential_1(v3 + 10, v54);
      *(v42 + 176) = v54;
      *(v42 + 184) = *(v55 + 8);
      v57 = __swift_allocate_boxed_opaque_existential_1((v42 + 152));
      (*(*(v54 - 8) + 16))(v57, v56, v54);
      v41 = v67;
      sub_24F9225F8();
    }

    sub_24F9225D8();
    a2 = v58;

    (*(v68 + 8))(v41, v65);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v59 = *(v69 + 8);
    v59(v8, v6);
    __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v59(v8, v6);
    __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
    sub_24F922298();
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_24F922288();
    v73[0] = v2[16];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v8);
    v59(v8, v6);

    v73[0] = v2[15];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v8);

    v59(v8, v6);
  }

  return a2;
}

void ProductDescriptionLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v76 = a2;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  __swift_project_boxed_opaque_existential_1(v6 + 22, v6[25]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v19 = v18;
  v20 = *(v13 + 8);
  v20(v16, v12);
  __swift_project_boxed_opaque_existential_1(v6 + 17, v6[20]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v20(v16, v12);
  v21 = sub_24F92BF68();
  v75 = v17;
  v67 = v19;
  if (v21 & 1) != 0 || (sub_24F92BF98())
  {
    v82.origin.x = a3;
    v82.origin.y = a4;
    v82.size.width = a5;
    v82.size.height = a6;
    CGRectGetWidth(v82);
    v22 = 1;
  }

  else
  {
    v83.origin.x = a3;
    v83.origin.y = a4;
    v83.size.width = a5;
    v83.size.height = a6;
    CGRectGetWidth(v83);
    v22 = 0;
  }

  v84.origin.x = a3;
  v84.origin.y = a4;
  v84.size.width = a5;
  v84.size.height = a6;
  CGRectGetHeight(v84);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  v24 = v23;
  v26 = v25;
  v85.origin.x = a3;
  v85.origin.y = a4;
  v85.size.width = a5;
  v85.size.height = a6;
  MinY = CGRectGetMinY(v85);
  v80[0] = v6[15];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v16);
  v29 = v28;
  v20(v16, v12);

  v30 = MinY + v29;
  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  MinX = CGRectGetMinX(v86);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F92C1D8();
  sub_24F922228();
  v77 = a4;
  v74 = v24;
  v73 = v26;
  v72 = v30;
  v71 = MinX;
  v69 = a6;
  v68 = a5;
  if (v22)
  {
    v87.origin.x = MinX;
    v87.origin.y = v30;
    v87.size.width = v24;
    v87.size.height = v26;
    MaxY = CGRectGetMaxY(v87);
    sub_24E60169C((v6 + 5), &v78, &qword_27F229780);
    if (v79)
    {
      sub_24E612C80(&v78, v80);
      v88.origin.x = a3;
      v88.origin.y = a4;
      v88.size.width = a5;
      v88.size.height = a6;
      CGRectGetWidth(v88);
      v89.origin.x = a3;
      v89.origin.y = a4;
      v89.size.width = a5;
      v89.size.height = a6;
      CGRectGetHeight(v89);
      __swift_project_boxed_opaque_existential_1(v80, v81);
      sub_24F922288();
      v34 = v33;
      v36 = v35;
      v90.origin.x = a3;
      v90.origin.y = v77;
      v90.size.width = a5;
      v90.size.height = a6;
      v37 = CGRectGetMinX(v90);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_24F922218();
      v38 = CGRectGetMaxY(v91);
      *&v78 = v6[16];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v16);
      v40 = v39;
      v20(v16, v12);

      __swift_project_boxed_opaque_existential_1(v80, v81);
      sub_24F922228();
      v92.origin.x = v37;
      v92.origin.y = v38 + v40;
      v92.size.width = v34;
      a4 = v77;
      v92.size.height = v36;
      MaxY = CGRectGetMaxY(v92);
      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {
      sub_24E601704(&v78, &qword_27F229780);
    }

    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    Width = CGRectGetWidth(v95);
    v96.origin.x = a3;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    v70 = CGRectGetMinX(v96);
    v80[0] = v6[16];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v16);
    v54 = v53;
    v20(v16, v12);

    v52 = a4;
    v48 = MaxY + v54;
    v51 = a3;
  }

  else
  {
    v93.origin.x = a3;
    v93.origin.y = a4;
    v93.size.width = a5;
    v93.size.height = a6;
    v41 = CGRectGetMinY(v93);
    v80[0] = v6[15];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v16);
    v43 = v42;
    v20(v16, v12);

    v44 = v41 + v43;
    v80[0] = v6[16];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v16);
    v46 = v45;
    v20(v16, v12);

    v47 = a4;
    v48 = v44 + v46;
    v94.origin.x = a3;
    v94.origin.y = v47;
    v94.size.width = a5;
    v94.size.height = a6;
    MaxX = CGRectGetMaxX(v94);
    Width = v67;
    v70 = MaxX - v67;
    v51 = a3;
    v52 = v47;
  }

  v55 = a5;
  v56 = a6;
  Height = CGRectGetHeight(*&v51);
  v58 = v75;
  __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
  sub_24F922298();
  v60 = v59;
  v67 = v61;
  v62 = v70;
  v97.origin.x = v70;
  v97.origin.y = v48;
  v97.size.width = Width;
  v97.size.height = Height;
  v63 = CGRectGetMinX(v97);
  v98.origin.x = v62;
  v98.origin.y = v48;
  v98.size.width = Width;
  v98.size.height = Height;
  v70 = CGRectGetMinY(v98);
  __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
  v64 = v77;
  v65 = v68;
  v66 = v69;
  sub_24F92C1D8();
  sub_24F922228();
  v99.origin.x = a3;
  v99.origin.y = v64;
  v99.size.width = v65;
  v99.size.height = v66;
  CGRectGetMinX(v99);
  v100.origin.x = a3;
  v100.origin.y = v64;
  v100.size.width = v65;
  v100.size.height = v66;
  CGRectGetMinY(v100);
  v101.origin.x = a3;
  v101.origin.y = v64;
  v101.size.width = v65;
  v101.size.height = v66;
  CGRectGetWidth(v101);
  v102.origin.x = v63;
  v102.origin.y = v70;
  v102.size.width = v60;
  v102.size.height = v67;
  CGRectGetMaxY(v102);
  v103.origin.x = v71;
  v103.origin.y = v72;
  v103.size.width = v74;
  v103.size.height = v73;
  CGRectGetMaxY(v103);
  sub_24F922128();
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.init(metrics:primaryText:secondaryText:disclosureView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_24F1EE248(a1, a5);
  v9 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  sub_24E612C80(a2, a5 + v9[5]);
  sub_24E612C80(a3, a5 + v9[6]);
  v10 = a5 + v9[7];

  return sub_24E612C80(a4, v10);
}

uint64_t sub_24F1EE248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.Metrics.init(primaryTextSpace:secondaryTextSpace:disclosureMargin:disclosureSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = *a1;
  v11 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v12 = v11[5];
  v13 = sub_24F922628();
  (*(*(v13 - 8) + 32))(&a4[v12], a2, v13);
  result = sub_24E612C80(a3, &a4[v11[6]]);
  v15 = &a4[v11[7]];
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.Metrics.secondaryTextSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0) + 20);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F1EE478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ProductDescriptionLayout.DeveloperLinkLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24F922618();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F92CDB8();
  v43 = *(v44 - 8);
  *&v11 = MEMORY[0x28223BE20](v44).n128_u64[0];
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v14 = [a1 traitCollection];
  v15 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  __swift_project_boxed_opaque_existential_1((v2 + v15[7]), *(v2 + v15[7] + 24));
  if (sub_24F922238() & 1) == 0 && ((sub_24F92BF68() & 1) != 0 || (sub_24F92BF98()))
  {
    v17 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
    __swift_project_boxed_opaque_existential_1((v2 + *(v17 + 24)), *(v2 + *(v17 + 24) + 24));
    v42 = v15;
    sub_24E8ED7D8();
    v15 = v42;
    sub_24F9223A8();
    v19 = v18;
    (*(v43 + 8))(v13, v44);
    v16.n128_f64[0] = v19 + *(v2 + *(v17 + 28));
  }

  v45 = v14;
  v46 = v9;
  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24F93A400;
  v21 = (v3 + v15[5]);
  v22 = v21[3];
  v23 = v21[4];
  v24 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v58 = v22;
  v59 = *(*(v23 + 8) + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
  v26 = *v3;
  v55 = &type metadata for AnyDimensionWrapper;
  v56 = sub_24EF623A8();
  v54[0] = v26;
  v27 = sub_24F922418();
  v28 = MEMORY[0x277D226F0];
  v52 = v27;
  v53 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v51);

  sub_24F922408();
  v29 = sub_24F9229F8();
  v30 = MEMORY[0x277D22900];
  *(v20 + 56) = v29;
  *(v20 + 64) = v30;
  __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  sub_24F9229E8();
  v31 = (v3 + v15[6]);
  v32 = v31[3];
  v33 = v31[4];
  v34 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v58 = v32;
  v59 = *(*(v33 + 8) + 8);
  v35 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = *(type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0) + 20);
  v37 = sub_24F922628();
  v55 = v37;
  v56 = MEMORY[0x277D22798];
  v38 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(v37 - 8) + 16))(v38, v3 + v36, v37);
  v52 = v27;
  v53 = v28;
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_24F922408();
  *(v20 + 96) = v29;
  *(v20 + 104) = v30;
  __swift_allocate_boxed_opaque_existential_1((v20 + 72));
  sub_24F9229E8();
  v39 = v47;
  sub_24F9225F8();
  sub_24F9225D8();

  (*(v48 + 8))(v39, v49);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v62 = a2;
  v63 = a1;
  v12 = sub_24F922C28();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9221D8();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F92CDB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v22 = *(v20 + 24);
  v21 = *(v20 + 28);
  v58 = v20;
  v23 = (v6 + v21);
  v24 = *v23;
  v54[1] = v23[1];
  sub_24E615E00(v6 + v22, v73);
  v25 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  v26 = (v6 + v25[7]);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v27 = sub_24F922238();
  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v74.size.height = a6;
  CGRectGetWidth(v74);
  if ((v27 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v17 + 8))(v19, v16);
  }

  v54[2] = v24;
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  CGRectGetMinX(v75);
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetMinY(v76);
  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  CGRectGetHeight(v77);
  sub_24F92C1D8();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v37 = (v7 + v25[5]);
  v38 = v37[3];
  v39 = v37[4];
  v40 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v71 = v38;
  v72 = *(v39 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(*(v38 - 8) + 16))(boxed_opaque_existential_1, v40, v38);
  v42 = *v7;
  v68 = &type metadata for AnyDimensionWrapper;
  v69 = sub_24EF623A8();
  v67[0] = v42;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  sub_24E615E00(v70, inited + 32);
  sub_24E615E00(v67, inited + 80);
  sub_24E60169C(&v64, inited + 120, &qword_27F22F780);
  *(inited + 72) = 1;
  *(inited + 160) = 8;

  sub_24E601704(&v64, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  v43 = (v7 + v25[6]);
  v44 = v43[3];
  v45 = v43[4];
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  v71 = v44;
  v72 = *(v45 + 8);
  v47 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(*(v44 - 8) + 16))(v47, v46, v44);
  v48 = *(v58 + 20);
  v49 = sub_24F922628();
  v68 = v49;
  v69 = MEMORY[0x277D22798];
  v50 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(v49 - 8) + 16))(v50, v7 + v48, v49);
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  sub_24E615E00(v70, inited + 168);
  sub_24E615E00(v67, inited + 216);
  sub_24E60169C(&v64, inited + 256, &qword_27F22F780);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E601704(&v64, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  LOBYTE(v70[0]) = 1;
  v70[1] = inited;
  v51 = v59;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v59, v29, v31, v33, v35);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  if ((sub_24F922238() & 1) == 0)
  {
    v52 = v55;
    sub_24F9221C8();
    sub_24F922BE8();
    (*(v56 + 8))(v52, v57);
    v78.origin.x = a3;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    CGRectGetMaxX(v78);
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_24F92C1D8();
  sub_24F922228();
  sub_24F9221A8();
  sub_24F9221A8();
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetWidth(v79);
  sub_24F922158();
  sub_24F922128();
  (*(v60 + 8))(v51, v61);

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.init(metrics:primaryText:linkItems:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v8;
  result = sub_24E612C80(a2, a4 + 120);
  *(a4 + 160) = a3;
  return result;
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.Metrics.init(primaryTextSpace:secondaryContentMargin:secondaryTextSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4 + 80);
}

double ProductDescriptionLayout.DeveloperExtendedLinkLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = v2;
  v66 = a1;
  v58 = sub_24F9225E8();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F922618();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9229F8();
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24F9229A8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  v15 = v2[18];
  v16 = v3[19];
  v17 = __swift_project_boxed_opaque_existential_1(v3 + 15, v15);
  v74 = v15;
  v75 = *(*(v16 + 8) + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24E8ED7D8();
  v19 = v10;
  sub_24F9223A8();
  v21 = v20;
  v22 = v11 + 8;
  v23 = *(v11 + 8);
  v23(v13, v19);
  v71 = MEMORY[0x277D85048];
  v72 = MEMORY[0x277D225F8];
  v70 = v21;
  v63 = sub_24F922418();
  v68 = v63;
  v69 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v67);
  sub_24F922408();
  v24 = MEMORY[0x277D22900];
  v64 = v7;
  *(v14 + 56) = v7;
  *(v14 + 64) = v24;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_24F9229E8();
  v25 = v3[20];
  if (*(v25 + 16))
  {
    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v27 = v26;
    v61 = v23;
    v23(v13, v19);
    v74 = MEMORY[0x277D85048];
    v75 = MEMORY[0x277D225F8];
    *&v73 = v27;
    v28 = v52;
    sub_24F9229B8();
    v30 = *(v14 + 16);
    v29 = *(v14 + 24);
    v62 = v19;
    if (v30 >= v29 >> 1)
    {
      v14 = sub_24E617A00((v29 > 1), v30 + 1, 1, v14);
    }

    v31 = v60;
    v74 = v60;
    v75 = MEMORY[0x277D228E0];
    v32 = __swift_allocate_boxed_opaque_existential_1(&v73);
    v33 = v59;
    (*(v59 + 16))(v32, v28, v31);
    *(v14 + 16) = v30 + 1;
    sub_24E612C80(&v73, v14 + 40 * v30 + 32);
    (*(v33 + 8))(v28, v31);
    v34 = *(v25 + 16);
    if (v34)
    {
      v59 = v22;
      v60 = v3;
      v35 = (v25 + 32);
      v36 = (v51 + 16);
      v37 = (v51 + 8);
      do
      {
        v38 = v35[3];
        v39 = v35[4];
        v40 = __swift_project_boxed_opaque_existential_1(v35, v38);
        v74 = v38;
        v75 = *(v39 + 8);
        v41 = __swift_allocate_boxed_opaque_existential_1(&v73);
        (*(*(v38 - 8) + 16))(v41, v40, v38);
        __swift_project_boxed_opaque_existential_1((v60 + 80), *(v60 + 104));
        sub_24E8ED7D8();
        sub_24F9223A8();
        v43 = v42;
        v61(v13, v62);
        v71 = MEMORY[0x277D85048];
        v72 = MEMORY[0x277D225F8];
        v70 = v43;
        v68 = v63;
        v69 = MEMORY[0x277D226F0];
        __swift_allocate_boxed_opaque_existential_1(v67);
        sub_24F922408();
        sub_24F9229E8();
        v45 = *(v14 + 16);
        v44 = *(v14 + 24);
        if (v45 >= v44 >> 1)
        {
          v14 = sub_24E617A00((v44 > 1), v45 + 1, 1, v14);
        }

        v46 = v64;
        v74 = v64;
        v75 = MEMORY[0x277D22900];
        v47 = __swift_allocate_boxed_opaque_existential_1(&v73);
        v48 = v65;
        (*v36)(v47, v65, v46);
        *(v14 + 16) = v45 + 1;
        sub_24E612C80(&v73, v14 + 40 * v45 + 32);
        (*v37)(v48, v46);
        v35 += 5;
        --v34;
      }

      while (v34);
    }
  }

  (*(v56 + 104))(v54, *MEMORY[0x277D22788], v58);
  v49 = v53;
  sub_24F9225F8();
  sub_24F9225D8();
  (*(v55 + 8))(v49, v57);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v45 = a2;
  v40 = sub_24F92CDB8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F9221D8();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F922868();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24F922888();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v34 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
  v36 = a6;
  sub_24F922288();
  v33[1] = v20;
  __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);
  v35 = a3;
  v50.origin.x = a3;
  v50.origin.y = a4;
  v50.size.width = a5;
  v50.size.height = a6;
  CGRectGetMinX(v50);
  v51.origin.x = a3;
  v51.origin.y = a4;
  v51.size.width = a5;
  v51.size.height = a6;
  CGRectGetMinY(v51);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F9223C8();
  v21 = a5;
  sub_24F922228();
  (*(v16 + 104))(v18, *MEMORY[0x277D22868], v15);
  v22 = v6[20];
  v47 = v6;
  v48 = a1;
  sub_24E76CD4C(sub_24F1F050C, v46, v22);
  v49[3] = sub_24F922418();
  v49[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v49);
  sub_24F922408();
  v23 = v34;
  sub_24F922878();
  __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);
  sub_24F922218();
  MaxY = CGRectGetMaxY(v52);
  __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
  v25 = v37;
  sub_24E8ED7D8();
  sub_24F9223A8();
  v27 = v26;
  (*(v39 + 8))(v25, v40);
  v28 = MaxY + v27;
  v29 = v35;
  v53.origin.x = v35;
  v53.origin.y = a4;
  v53.size.width = v21;
  v30 = v36;
  v53.size.height = v36;
  CGRectOffset(v53, 0.0, v28);
  v31 = v38;
  sub_24F9227D8();
  v54.origin.x = v29;
  v54.origin.y = a4;
  v54.size.width = v21;
  v54.size.height = v30;
  CGRectGetMinX(v54);
  v55.origin.x = v29;
  v55.origin.y = a4;
  v55.size.width = v21;
  v55.size.height = v30;
  CGRectGetMinY(v55);
  v56.origin.x = v29;
  v56.origin.y = a4;
  v56.size.width = v21;
  v56.size.height = v30;
  CGRectGetWidth(v56);
  sub_24F922158();
  sub_24F9221A8();
  sub_24F922158();
  sub_24F922128();
  (*(v43 + 8))(v31, v44);
  return (*(v41 + 8))(v23, v42);
}

uint64_t sub_24F1F01FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v23 = a3;
  v26 = a4;
  v5 = sub_24F9227F8();
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F922838();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + 80), *(a2 + 104));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v17 = v16;
  (*(v13 + 8))(v15, v12);
  v29[3] = MEMORY[0x277D85048];
  v29[4] = MEMORY[0x277D225F8];
  v29[0] = v17;
  v18 = v22;
  (*(v9 + 104))(v11, *MEMORY[0x277D22850], v22);
  v28 = MEMORY[0x277D84F90];
  sub_24E8EF510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
  sub_24E8EF568();
  v19 = v24;
  sub_24F92C6A8();
  sub_24F922818();
  (*(v25 + 8))(v8, v19);
  (*(v9 + 8))(v11, v18);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_24F1F053C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1F0584(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24F1F0600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1F06D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24F1F0790()
{
  result = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0);
    if (v2 <= 0x3F)
    {
      result = sub_24E8EFB54(319, &qword_27F237A20);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24F1F0860(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F922628();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F1F0920(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922628();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1F09C4()
{
  sub_24F1F0A88();
  if (v0 <= 0x3F)
  {
    sub_24F922628();
    if (v1 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F237A40);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F1F0A88()
{
  if (!qword_27F23C208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2297E0);
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23C208);
    }
  }
}

uint64_t sub_24F1F0B14()
{
  result = sub_24F92B098();
  qword_27F23C210 = result;
  return result;
}

id static ArcadePageShelfRefreshNotification.notificationName.getter()
{
  if (qword_27F210FF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23C210;

  return v1;
}

uint64_t sub_24F1F0BD0()
{
  result = sub_24F92A9F8();
  if (v1 <= 0x3F)
  {
    sub_24F91F648();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F1F0C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_24F91F648() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = 8;
  if (v7 > 8)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 < 2)
    {
LABEL_25:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_24F1F0DFC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_24F91F648() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_24F1F1040(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_24F928AD8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_24F1F1220(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_24F928AD8();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for InvitePlayersToMultiplayerActivityAction()
{
  result = qword_27F23C298;
  if (!qword_27F23C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1F1438()
{
  type metadata accessor for GameActivityDraftGameInfo(319);
  if (v0 <= 0x3F)
  {
    sub_24E6D5010(319, &qword_27F2182A8);
    if (v1 <= 0x3F)
    {
      sub_24E6D5010(319, &qword_27F218170);
      if (v2 <= 0x3F)
      {
        sub_24F1F1584(319, &qword_27F23C2A8, type metadata accessor for ActivityDefinitionDetail);
        if (v3 <= 0x3F)
        {
          sub_24F1F1584(319, &qword_27F23C2B0, MEMORY[0x277D0CB18]);
          if (v4 <= 0x3F)
          {
            sub_24F928AD8();
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

void sub_24F1F1584(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F1F15D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_24F928AD8();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v37 - v7;
  v44 = type metadata accessor for GameActivityDraftGameInfo(0);
  MEMORY[0x28223BE20](v44);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C2B8);
  v11 = *(v10 - 8);
  v46 = v10;
  v47 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for InvitePlayersToMultiplayerActivityAction();
  MEMORY[0x28223BE20](v14);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 36);
  v19 = type metadata accessor for ActivityDefinitionDetail();
  v20 = *(*(v19 - 8) + 56);
  v50 = v18;
  v20(v16 + v18, 1, 1, v19);
  v21 = v14[10];
  v22 = sub_24F920418();
  v23 = *(*(v22 - 8) + 56);
  v49 = v21;
  v23(v16 + v21, 1, 1, v22);
  v24 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F1F20CC();
  v45 = v13;
  v25 = v48;
  sub_24F92D108();
  if (v25)
  {
    v27 = v50;
    __swift_destroy_boxed_opaque_existential_1(v51);
    v28 = v49;
    sub_24E601704(v16 + v27, &qword_27F2142A0);
    return sub_24E601704(v16 + v28, &qword_27F2142B8);
  }

  else
  {
    v48 = v19;
    v37 = v22;
    v26 = v47;
    LOBYTE(v53) = 0;
    *v16 = sub_24F92CC28();
    v16[1] = v29;
    LOBYTE(v53) = 1;
    v16[2] = sub_24F92CC28();
    v16[3] = v30;
    LOBYTE(v53) = 2;
    sub_24F1F2120(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo);
    sub_24F92CC68();
    sub_24ED10AA4(v9, v16 + v14[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
    v52 = 3;
    sub_24F086C6C();
    sub_24F92CC68();
    v31 = v49;
    *v14[7] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v52 = 4;
    sub_24E7C1498();
    sub_24F92CC68();
    *v14[8] = v53;
    LOBYTE(v53) = 5;
    sub_24F1F2120(&qword_27F233E68, type metadata accessor for ActivityDefinitionDetail);
    v32 = v43;
    v48 = 0;
    sub_24F92CC18();
    sub_24E61DA68(v32, v16 + v50, &qword_27F2142A0);
    LOBYTE(v53) = 6;
    sub_24F1F2120(&qword_27F23C2C8, MEMORY[0x277D0CB18]);
    v33 = v42;
    sub_24F92CC18();
    sub_24E61DA68(v33, v16 + v31, &qword_27F2142B8);
    LOBYTE(v53) = 7;
    sub_24F1F2120(&qword_27F254CB0, MEMORY[0x277D21C88]);
    v34 = v40;
    v35 = v41;
    sub_24F92CC68();
    (*(v26 + 8))(v45, v46);
    (*(v38 + 32))(v16 + v14[11], v34, v35);
    sub_24F1F2168(v16, v39);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24F1F21CC(v16, type metadata accessor for InvitePlayersToMultiplayerActivityAction);
  }
}

unint64_t sub_24F1F1E80()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x654D6E6F69746361;
    if (v1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000012;
    if (v1 == 4)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7974697669746361;
    v3 = 0x6F666E49656D6167;
    if (v1 != 2)
    {
      v3 = 0x5473726579616C70;
    }

    if (*v0)
    {
      v2 = 0x5255657469766E69;
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
}

uint64_t sub_24F1F1FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F1F2344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F1F1FC8(uint64_t a1)
{
  v2 = sub_24F1F20CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F1F2004(uint64_t a1)
{
  v2 = sub_24F1F20CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F1F2040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24F1F20CC()
{
  result = qword_27F23C2C0;
  if (!qword_27F23C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2C0);
  }

  return result;
}

uint64_t sub_24F1F2120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F1F2168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitePlayersToMultiplayerActivityAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1F21CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F1F2240()
{
  result = qword_27F23C2D0;
  if (!qword_27F23C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2D0);
  }

  return result;
}

unint64_t sub_24F1F2298()
{
  result = qword_27F23C2D8;
  if (!qword_27F23C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2D8);
  }

  return result;
}

unint64_t sub_24F1F22F0()
{
  result = qword_27F23C2E0;
  if (!qword_27F23C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C2E0);
  }

  return result;
}

uint64_t sub_24F1F2344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEA00000000004449;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5255657469766E69 && a2 == 0xE90000000000004CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5473726579616C70 && a2 == 0xEF657469766E496FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6F180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6F1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA65660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t type metadata accessor for VideoPlayer.Event()
{
  result = qword_27F23C2E8;
  if (!qword_27F23C2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1F2650()
{
  result = sub_24F1F26C4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VideoPlaybackFailure();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F1F26C4()
{
  result = qword_27F23C2F8;
  if (!qword_27F23C2F8)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27F23C2F8);
  }

  return result;
}

uint64_t setStoreKitLastAppAction(adamId:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F927E88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  sub_24F1F2908(0, 0, v11, &unk_24FA0A150, v14);

  return sub_24E601704(v11, &unk_27F21B570);
}

uint64_t sub_24F1F2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24ECAA62C(a3, v25 - v10);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t defaultStoreKitAppAction.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210FF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F927E88();
  v3 = __swift_project_value_buffer(v2, qword_27F23C300);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24F1F2C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[26] = a4;
  sub_24F928418();
  v6[29] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[30] = v10;
  *v10 = v6;
  v10[1] = sub_24F1F2D44;

  return MEMORY[0x28212C3C0](a4, a5, a6);
}

uint64_t sub_24F1F2D44()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24F1F30DC;
  }

  else
  {
    v2 = sub_24F1F2E58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1F2E58()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v0[17] = MEMORY[0x277D837D0];
  v0[14] = v3;
  v0[15] = v1;

  sub_24F9283D8();
  sub_24E601704((v0 + 14), &qword_27F2129B0);
  sub_24F9283F8();
  v5 = sub_24F927E88();
  v0[21] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v2, v5);
  sub_24F9283D8();
  sub_24E601704((v0 + 18), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F1F30DC()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v4;
  v0[3] = v2;

  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  v6 = sub_24F927E88();
  v0[9] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v3, v6);
  sub_24F9283D8();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F9283F8();
  swift_getErrorValue();
  v8 = v0[22];
  v9 = v0[23];
  v0[13] = v9;
  v10 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  sub_24F9283C8();
  sub_24E601704((v0 + 10), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F1F33F0()
{
  v1 = sub_24F927E88();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1F34CC()
{
  v0 = sub_24F927E88();
  __swift_allocate_value_buffer(v0, qword_27F23C300);
  v1 = __swift_project_value_buffer(v0, qword_27F23C300);
  v2 = *MEMORY[0x277CDCFC0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_24F1F3554()
{

  return swift_deallocObject();
}

uint64_t sub_24F1F358C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24E695D48(a1, v4);
}

uint64_t sub_24F1F3794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1F3870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for IconRowViewModel()
{
  result = qword_27F23C318;
  if (!qword_27F23C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1F3980()
{
  sub_24E66ED3C();
  if (v0 <= 0x3F)
  {
    sub_24F1F3A1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F1F3A1C()
{
  if (!qword_27F23C328)
  {
    type metadata accessor for Artwork();
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23C328);
    }
  }
}

unint64_t sub_24F1F3A88()
{
  result = qword_27F23C330;
  if (!qword_27F23C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C330);
  }

  return result;
}

void sub_24F1F3AE0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = off_286233E70();
  if (!v2)
  {
    v2 = sub_24E608210(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  v32 = v2;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v4 = off_27F229AB8;
  *&v27 = 0x746E6F4365676170;
  *(&v27 + 1) = 0xEB00000000747865;
  v5 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  v6 = v4[4];
  if (v6)
  {
    v7 = v4[3];
    v28 = v5;
    *&v27 = v7;
    *(&v27 + 1) = v6;
    sub_24E612B0C(&v27, &v29);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = v3;
    sub_24E81DC98(&v29, v31, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v31);
    v32 = v3;
  }

  else
  {
    sub_24E98F760(v31, &v27);
    sub_24E857CC8(&v27);
    sub_24E6585F8(v31);
  }

  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer + 8);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer);
    *&v27 = 0x6C7255666572;
    *(&v27 + 1) = 0xE600000000000000;

    sub_24F92C7F8();
    v28 = v5;
    *&v27 = v10;
    *(&v27 + 1) = v9;
    sub_24E612B0C(&v27, &v29);
    v11 = v32;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = v11;
    sub_24E81DC98(&v29, v31, v12);
    sub_24E6585F8(v31);
    v32 = v11;
  }

  *&v27 = 0x707041666572;
  *(&v27 + 1) = 0xE600000000000000;
  v13 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  swift_beginAccess();
  v14 = v4[20];
  if (v14 >= 3)
  {
    v15 = v4[19];
    v30 = v13;
    *&v29 = v15;
    *(&v29 + 1) = v14;
    sub_24E612B0C(&v29, &v27);

    v16 = v32;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(&v27, v31, v17);
    sub_24E6585F8(v31);
    v32 = v16;
  }

  else
  {
    sub_24E98F760(v31, &v27);
    sub_24E857CC8(&v27);
    sub_24E6585F8(v31);
  }

  *&v25 = 0x7255666552747865;
  *(&v25 + 1) = 0xE90000000000006CLL;
  v18 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  if ((v4[20] - 1) >= 2 && (v19 = v4[22]) != 0)
  {
    v20 = v4[21];
    v26 = v18;
    *&v25 = v20;
    *(&v25 + 1) = v19;
    sub_24E612B0C(&v25, v24);

    v21 = v32;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(v24, &v27, v22);
    sub_24E6585F8(&v27);
    v23 = v21;
  }

  else
  {
    sub_24E98F760(&v27, &v25);
    sub_24E857CC8(&v25);
    sub_24E6585F8(&v27);
    v23 = v32;
  }

  off_286233E78(v23);
}

void sub_24F1F3EA8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = off_286234018();
  if (!v2)
  {
    v2 = sub_24E608210(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  v32 = v2;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v4 = off_27F229AB8;
  *&v27 = 0x746E6F4365676170;
  *(&v27 + 1) = 0xEB00000000747865;
  v5 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  v6 = v4[4];
  if (v6)
  {
    v7 = v4[3];
    v28 = v5;
    *&v27 = v7;
    *(&v27 + 1) = v6;
    sub_24E612B0C(&v27, &v29);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = v3;
    sub_24E81DC98(&v29, v31, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v31);
    v32 = v3;
  }

  else
  {
    sub_24E98F760(v31, &v27);
    sub_24E857CC8(&v27);
    sub_24E6585F8(v31);
  }

  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_referrer + 8);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_referrer);
    *&v27 = 0x6C7255666572;
    *(&v27 + 1) = 0xE600000000000000;

    sub_24F92C7F8();
    v28 = v5;
    *&v27 = v10;
    *(&v27 + 1) = v9;
    sub_24E612B0C(&v27, &v29);
    v11 = v32;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = v11;
    sub_24E81DC98(&v29, v31, v12);
    sub_24E6585F8(v31);
    v32 = v11;
  }

  *&v27 = 0x707041666572;
  *(&v27 + 1) = 0xE600000000000000;
  v13 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  swift_beginAccess();
  v14 = v4[20];
  if (v14 >= 3)
  {
    v15 = v4[19];
    v30 = v13;
    *&v29 = v15;
    *(&v29 + 1) = v14;
    sub_24E612B0C(&v29, &v27);

    v16 = v32;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(&v27, v31, v17);
    sub_24E6585F8(v31);
    v32 = v16;
  }

  else
  {
    sub_24E98F760(v31, &v27);
    sub_24E857CC8(&v27);
    sub_24E6585F8(v31);
  }

  *&v25 = 0x7255666552747865;
  *(&v25 + 1) = 0xE90000000000006CLL;
  v18 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  if ((v4[20] - 1) >= 2 && (v19 = v4[22]) != 0)
  {
    v20 = v4[21];
    v26 = v18;
    *&v25 = v20;
    *(&v25 + 1) = v19;
    sub_24E612B0C(&v25, v24);

    v21 = v32;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(v24, &v27, v22);
    sub_24E6585F8(&v27);
    v23 = v21;
  }

  else
  {
    sub_24E98F760(&v27, &v25);
    sub_24E857CC8(&v25);
    sub_24E6585F8(&v27);
    v23 = v32;
  }

  off_286234020(v23);
}

Swift::Void __swiftcall DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 104))();
  if (!v4)
  {
    v4 = sub_24E608210(MEMORY[0x277D84F90]);
  }

  v5 = v4;
  v36 = v4;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v6 = off_27F229AB8;
  *&v31 = 0x746E6F4365676170;
  *(&v31 + 1) = 0xEB00000000747865;
  v7 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  v8 = v6[4];
  if (v8)
  {
    v9 = v6[3];
    v32 = v7;
    *&v31 = v9;
    *(&v31 + 1) = v8;
    sub_24E612B0C(&v31, &v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v5;
    sub_24E81DC98(&v33, v35, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v35);
    v36 = v5;
  }

  else
  {
    sub_24E98F760(v35, &v31);
    sub_24E857CC8(&v31);
    sub_24E6585F8(v35);
  }

  v11 = (*(v2 + 24))(v3, v2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    *&v31 = 0x6C7255666572;
    *(&v31 + 1) = 0xE600000000000000;
    sub_24F92C7F8();
    v32 = v7;
    *&v31 = v13;
    *(&v31 + 1) = v14;
    sub_24E612B0C(&v31, &v33);
    v15 = v36;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v15;
    sub_24E81DC98(&v33, v35, v16);
    sub_24E6585F8(v35);
    v36 = v15;
  }

  *&v31 = 0x707041666572;
  *(&v31 + 1) = 0xE600000000000000;
  v17 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  swift_beginAccess();
  v18 = v6[20];
  if (v18 >= 3)
  {
    v19 = v6[19];
    v34 = v17;
    *&v33 = v19;
    *(&v33 + 1) = v18;
    sub_24E612B0C(&v33, &v31);

    v20 = v36;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(&v31, v35, v21);
    sub_24E6585F8(v35);
    v36 = v20;
  }

  else
  {
    sub_24E98F760(v35, &v31);
    sub_24E857CC8(&v31);
    sub_24E6585F8(v35);
  }

  *&v29 = 0x7255666552747865;
  *(&v29 + 1) = 0xE90000000000006CLL;
  v22 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  if ((v6[20] - 1) >= 2 && (v23 = v6[22]) != 0)
  {
    v24 = v6[21];
    v30 = v22;
    *&v29 = v24;
    *(&v29 + 1) = v23;
    sub_24E612B0C(&v29, v28);

    v25 = v36;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81DC98(v28, &v31, v26);
    sub_24E6585F8(&v31);
    v27 = v25;
  }

  else
  {
    sub_24E98F760(&v31, &v29);
    sub_24E857CC8(&v29);
    sub_24E6585F8(&v31);
    v27 = v36;
  }

  (*(v2 + 112))(v27, v3, v2);
}

void DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 80))(a3, a4);
  if (v8)
  {
    v10 = v9;
    v15 = v8;
    ObjectType = swift_getObjectType();
    v12 = (*(a4 + 16))(a3, a4);
    [v15 bounds];
    (*(v10 + 8))(a1, a2, v12, ObjectType, v10, v13, v14);

    (*(a4 + 144))(a3, a4);
  }
}

void sub_24F1F47BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = &v6[*a5];
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    v14 = *&v6[*a6];
    v15 = v11;
    [v15 bounds];
    (*(v12 + 8))(a1, a2, v14, ObjectType, v12, v16, v17);
    [v6 reloadContentViewImpressionItems];
  }
}

uint64_t HeroCarouselItem.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HeroCarouselItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HeroCarouselItem.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v104 = sub_24F9285B8();
  v93 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v80 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v80 - v12;
  v13 = sub_24F91F6B8();
  v95 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v84 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v80 - v23;
  *(v3 + 112) = 0u;
  *(v3 + 144) = 0;
  v87 = v3 + 112;
  *(v3 + 128) = 0u;
  v96 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v89 = v16;
  v82 = v10;
  if (v26)
  {
    v102 = v25;
    v103 = v26;
    sub_24F92C7F8();
    v27 = *(v17 + 8);
    v91 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v24;
    v29 = v16;
  }

  else
  {
    sub_24F91F6A8();
    v30 = sub_24F91F668();
    v31 = v16;
    v33 = v32;
    (*(v95 + 8))(v15, v13);
    v102 = v30;
    v103 = v33;
    sub_24F92C7F8();
    v27 = *(v17 + 8);
    v91 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v24;
    v29 = v31;
    v10 = v82;
  }

  v94 = v27;
  v27(v28, v29);
  v34 = v99;
  *(v3 + 152) = v98;
  *(v3 + 168) = v34;
  *(v3 + 184) = v100;
  sub_24F929608();
  sub_24F928398();
  v35 = v92;
  v90 = v3;
  v36 = v21;
  v38 = v93 + 16;
  v37 = *(v93 + 16);
  v39 = v10;
  v37(v10, v92, v104);
  v40 = v83;
  sub_24F929548();
  v81 = OBJC_IVAR____TtC12GameStoreKit16HeroCarouselItem_impressionMetrics;
  sub_24E65E0D4(v40, v3 + OBJC_IVAR____TtC12GameStoreKit16HeroCarouselItem_impressionMetrics);
  v41 = v97;
  v42 = v104;
  v37(v97, v35, v104);
  v95 = v38;
  type metadata accessor for Artwork();
  sub_24F928398();
  v37(v39, v41, v42);
  v43 = v39;
  sub_24F1F5DD4(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v44 = v90;
  *(v90 + 16) = v98;
  type metadata accessor for Video();
  sub_24F928398();
  v45 = v39;
  v46 = v97;
  v47 = v104;
  v37(v45, v97, v104);
  sub_24F1F5DD4(&qword_27F221590, type metadata accessor for Video);
  sub_24F929548();
  *(v44 + 24) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650);
  v48 = v96;
  sub_24F928398();
  v37(v43, v46, v47);
  v88 = v37;
  sub_24E705AFC();
  sub_24F929548();
  *(v44 + 32) = v98;
  type metadata accessor for HeroCarouselItemOverlay();
  sub_24F928398();
  v49 = v97;
  v37(v43, v97, v47);
  sub_24F1F5DD4(&qword_27F23C338, type metadata accessor for HeroCarouselItemOverlay);
  v50 = v48;
  v51 = v47;
  v52 = v49;
  sub_24F929548();
  v53 = v90;
  *(v90 + 40) = v98;
  sub_24F928398();
  v54 = JSONObject.appStoreColor.getter();
  v55 = v89;
  v94(v36, v89);
  v56 = v53;
  *(v53 + 48) = v54;
  v57 = v84;
  sub_24F928398();
  v58 = v85;
  v88(v85, v52, v51);
  v59 = v86;
  sub_24EE5B05C(v57, v58, &v98);
  if (v59)
  {
    v60 = *(v93 + 8);
    v61 = v104;
    v60(v92, v104);
    v94(v50, v55);
    v60(v52, v61);

    sub_24E601704(v87 + 8, &qword_27F2129B0);
    sub_24E6585F8(v53 + 152);
    sub_24E601704(v53 + v81, &qword_27F213E68);
    type metadata accessor for HeroCarouselItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v86 = 0;
    v62 = v100;
    v63 = v101;
    v64 = v99;
    *(v53 + 56) = v98;
    *(v53 + 72) = v64;
    *(v53 + 88) = v62;
    *(v53 + 96) = v63;
    sub_24F928398();
    v88(v82, v52, v104);
    sub_24E951DC0();
    sub_24F929548();
    v65 = v98 | ((WORD2(v98) | (BYTE6(v98) << 16)) << 32);
    if (v98 == 2)
    {
      v66 = v94;
      if (qword_27F2110F8 != -1)
      {
        swift_once();
      }

      LOBYTE(v65) = dword_27F23E728;
      LOBYTE(v67) = BYTE1(dword_27F23E728);
      LOBYTE(v68) = BYTE2(dword_27F23E728);
      LOBYTE(v69) = HIBYTE(dword_27F23E728);
      LOBYTE(v70) = byte_27F23E72C;
      LOBYTE(v71) = byte_27F23E72D;
      LOBYTE(v72) = byte_27F23E72E;
    }

    else
    {
      v67 = (v65 >> 8) & 1;
      v68 = (v65 >> 16) & 1;
      v69 = (v65 >> 24) & 1;
      v70 = HIDWORD(v65) & 1;
      v71 = (v65 >> 40) & 1;
      v72 = HIWORD(v65) & 1;
      v66 = v94;
    }

    v94 = v66;
    *(v53 + 97) = v65 & 1;
    *(v53 + 98) = v67;
    *(v53 + 99) = v68;
    *(v53 + 100) = v69;
    *(v53 + 101) = v70;
    *(v53 + 102) = v71;
    *(v53 + 103) = v72;
    sub_24F928398();
    v73 = sub_24F928278();
    v74 = v89;
    v66(v36, v89);
    *(v56 + 104) = v73;
    type metadata accessor for Action();
    sub_24F928398();
    v75 = v97;
    v95 = static Action.tryToMakeInstance(byDeserializing:using:)(v36, v97);
    v76 = *(v93 + 8);
    v77 = v104;
    v76(v92, v104);
    v78 = v94;
    v94(v50, v74);
    v78(v36, v74);
    v76(v75, v77);
    swift_beginAccess();
    *(v56 + 112) = v95;
  }

  return v56;
}

uint64_t type metadata accessor for HeroCarouselItem()
{
  result = qword_27F23C348;
  if (!qword_27F23C348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *HeroCarouselItem.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_24F1F5648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 96);
  *(a2 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

void *sub_24F1F56AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a1 + 40);
  swift_beginAccess();
  v14 = *(v7 + 64);
  v15 = *(v7 + 56);
  v9 = *(v7 + 72);
  v10 = *(v7 + 80);
  v13 = *(v7 + 88);
  *(v7 + 56) = v2;
  *(v7 + 64) = v3;
  *(v7 + 72) = v4;
  *(v7 + 80) = v5;
  *(v7 + 88) = v6;
  v11 = *(v7 + 96);
  *(v7 + 96) = v8;
  sub_24ED21BB0(v2, v3, v4, v5, v6, v8);
  return sub_24EF43964(v15, v14, v9, v10, v13, v11);
}

id sub_24F1F5774@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v1 + 96);
  *(a1 + 40) = v8;
  return sub_24ED21BB0(v3, v4, v5, v6, v7, v8);
}

void HeroCarouselItem.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[98];
  v3 = v1[99];
  v4 = v1[100];
  v5 = v1[101];
  v6 = v1[102];
  v7 = v1[103];
  *a1 = v1[97];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_24F1F5818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t sub_24F1F58B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_24F1F5948(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 120);
  return swift_endAccess();
}

uint64_t sub_24F1F5A0C(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 120);
  return swift_endAccess();
}

uint64_t HeroCarouselItem.deinit()
{

  sub_24EF43964(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  sub_24E601704(v0 + 120, &qword_27F2129B0);
  sub_24E6585F8(v0 + 152);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16HeroCarouselItem_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t HeroCarouselItem.__deallocating_deinit()
{
  HeroCarouselItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F1F5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HeroCarouselItem();
  v7 = swift_allocObject();
  result = HeroCarouselItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1F5CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 120, a1, &qword_27F2129B0);
}

void sub_24F1F5D10(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 98);
  v3 = *(*v1 + 99);
  v4 = *(*v1 + 100);
  v5 = *(*v1 + 101);
  v6 = *(*v1 + 102);
  v7 = *(*v1 + 103);
  *a1 = *(*v1 + 97);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_24F1F5DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F1F5E24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24F1F5E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 120, a2, &qword_27F2129B0);
}

void sub_24F1F5EDC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F1F60F0(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E861E6C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_24F1F7AAC(v8, a2);
  return sub_24F92C958();
}

GameStoreKit::TodayCardArtworkSizedLayoutMetrics::Priority_optional __swiftcall TodayCardArtworkSizedLayoutMetrics.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.Priority.rawValue.getter()
{
  v1 = 0x6469576172747865;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1768843629;
  }
}

uint64_t sub_24F1F6220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6469576172747865;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1768843629;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6469576172747865;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1768843629;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1F6314()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1F63AC()
{
  sub_24F92B218();
}

uint64_t sub_24F1F6430()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1F64D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6469576172747865;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1768843629;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24F1F6530()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1F6610()
{
  sub_24F92B218();
}

uint64_t sub_24F1F66DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1F67B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F1F94F8();
  *a1 = result;
  return result;
}

void sub_24F1F67E8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574756C6F736261;
  v4 = 0xEF68746469576C61;
  if (*v1 != 2)
  {
    v4 = 0xEE00657A69536C61;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA43100;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F697463617266;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.LayoutSize.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v62 = a2;
  v4 = sub_24F9285B8();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = a1;
  sub_24F928398();
  sub_24F1F6E28();
  v25 = v59;
  sub_24F928218();
  if (v25)
  {
    (*(v60 + 8))(v62, v61);
    v26 = *(v7 + 8);
    v26(a1, v6);
    return (v26)(v23, v6);
  }

  else
  {
    v55 = v17;
    v59 = *(v7 + 8);
    v59(v23, v6);
    v28 = v64;
    if (v64 > 1u)
    {
      v56 = 0;
      v34 = v58;
      if (v64 == 2)
      {
        sub_24F928398();
        v35 = sub_24F928308();
        v37 = v36;
        (*(v60 + 8))(v62, v61);
        v38 = v59;
        v59(v24, v6);
        result = v38(v14, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v37 & 1) == 0)
        {
          v53 = v35;
        }
      }

      else
      {
        sub_24F928398();
        v55 = sub_24F928308();
        v63 = v44;
        v45 = v59;
        v59(v11, v6);
        v46 = v57;
        sub_24F928398();
        v47 = sub_24F928308();
        v49 = v48;
        (*(v60 + 8))(v62, v61);
        v45(v24, v6);
        result = (v45)(v46, v6);
        v54 = 0x3FF0000000000000;
        v53 = v55;
        if (v63)
        {
          v53 = 0x3FF0000000000000;
        }

        if ((v49 & 1) == 0)
        {
          v54 = v47;
        }
      }
    }

    else
    {
      if (v64)
      {
        v39 = v55;
        sub_24F928398();
        v40 = sub_24F928308();
        v42 = v41;
        (*(v60 + 8))(v62, v61);
        v43 = v59;
        v59(v24, v6);
        result = v43(v39, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v42 & 1) == 0)
        {
          v53 = v40;
        }
      }

      else
      {
        v57 = (v7 + 8);
        v29 = v20;
        (*(v7 + 16))(v20, a1, v6);
        v31 = v60;
        v30 = v61;
        v32 = v56;
        v33 = v62;
        (*(v60 + 16))(v56, v62, v61);
        v50 = sub_24EE356E4(v29, v32);
        v52 = v51;
        (*(v31 + 8))(v33, v30);
        result = (v59)(a1, v6);
        v53 = *&v50;
        v54 = v52;
      }

      v34 = v58;
    }

    *v34 = v53;
    *(v34 + 8) = v54;
    *(v34 + 16) = v28;
  }

  return result;
}

unint64_t sub_24F1F6E28()
{
  result = qword_27F23C358;
  if (!qword_27F23C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C358);
  }

  return result;
}

double sub_24F1F6E94()
{
  if (qword_27F210808 != -1)
  {
    swift_once();
  }

  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v2 = xmmword_27F39CD70;
  v1 = *&qword_27F39CD80;
  *(v0 + 40) = *&qword_27F39CD80;
  v3 = xmmword_27F39CD90;
  v4 = *&qword_27F39CDA0;
  *(v0 + 56) = xmmword_27F39CD90;
  *(v0 + 72) = v4;
  v5 = xmmword_27F39CDB0;
  *(v0 + 88) = xmmword_27F39CDB0;
  *(v0 + 24) = v2;
  *(v0 + 120) = v1;
  *(v0 + 136) = v3;
  *(v0 + 152) = v4;
  *(v0 + 168) = v5;
  *(v0 + 104) = v2;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 264) = 1;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 376) = -1;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0;
  *(v0 + 400) = -1;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 513;
  qword_27F39DD48 = v0;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.__allocating_init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v21 = swift_allocObject();
  v22 = *(a5 + 16);
  v23 = *(a6 + 16);
  v24 = *a13;
  *(v21 + 16) = a9;
  v25 = *a1;
  *(v21 + 40) = a1[1];
  v26 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v26;
  *(v21 + 88) = a1[4];
  *(v21 + 24) = v25;
  v27 = a2[1];
  *(v21 + 104) = *a2;
  v28 = a2[2];
  v29 = a2[3];
  *(v21 + 168) = a2[4];
  *(v21 + 152) = v29;
  *(v21 + 136) = v28;
  *(v21 + 120) = v27;
  v30 = *(a3 + 48);
  *(v21 + 216) = *(a3 + 32);
  *(v21 + 232) = v30;
  *(v21 + 248) = *(a3 + 64);
  *(v21 + 264) = *(a3 + 80);
  v31 = *(a3 + 16);
  *(v21 + 184) = *a3;
  *(v21 + 200) = v31;
  v32 = *(a4 + 16);
  *(v21 + 272) = *a4;
  *(v21 + 288) = v32;
  *(v21 + 352) = *(a4 + 80);
  v33 = *(a4 + 64);
  *(v21 + 320) = *(a4 + 48);
  *(v21 + 336) = v33;
  *(v21 + 304) = *(a4 + 32);
  *(v21 + 360) = *a5;
  *(v21 + 376) = v22;
  *(v21 + 384) = *a6;
  *(v21 + 400) = v23;
  result = *a7;
  v35 = *a8;
  *(v21 + 408) = *a7;
  *(v21 + 424) = v35;
  *(v21 + 440) = a10;
  *(v21 + 448) = a11;
  *(v21 + 456) = a12 & 1;
  *(v21 + 457) = v24;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v14 = *(a5 + 16);
  v15 = *(a6 + 16);
  v16 = *a13;
  *(v13 + 16) = a9;
  v17 = *a1;
  *(v13 + 40) = a1[1];
  v18 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v18;
  *(v13 + 88) = a1[4];
  *(v13 + 24) = v17;
  v19 = a2[1];
  *(v13 + 104) = *a2;
  v20 = a2[2];
  v21 = a2[3];
  *(v13 + 168) = a2[4];
  *(v13 + 152) = v21;
  *(v13 + 136) = v20;
  *(v13 + 120) = v19;
  v22 = *(a3 + 48);
  *(v13 + 216) = *(a3 + 32);
  *(v13 + 232) = v22;
  *(v13 + 248) = *(a3 + 64);
  *(v13 + 264) = *(a3 + 80);
  v23 = *(a3 + 16);
  *(v13 + 184) = *a3;
  *(v13 + 200) = v23;
  v24 = *(a4 + 16);
  *(v13 + 272) = *a4;
  *(v13 + 288) = v24;
  *(v13 + 352) = *(a4 + 80);
  v25 = *(a4 + 64);
  *(v13 + 320) = *(a4 + 48);
  *(v13 + 336) = v25;
  *(v13 + 304) = *(a4 + 32);
  *(v13 + 360) = *a5;
  *(v13 + 376) = v14;
  *(v13 + 384) = *a6;
  *(v13 + 400) = v15;
  v26 = *a8;
  *(v13 + 408) = *a7;
  *(v13 + 424) = v26;
  *(v13 + 440) = a10;
  *(v13 + 448) = a11;
  *(v13 + 456) = a12 & 1;
  *(v13 + 457) = v16;
  return v13;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 88);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 152);
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 168);
  *a1 = *(v1 + 104);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = *(v1 + 264);
  result = *(v1 + 184);
  v4 = *(v1 + 200);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  *(a1 + 32) = *(v1 + 304);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 336);
  *(a1 + 80) = *(v1 + 352);
  result = *(v1 + 272);
  v4 = *(v1 + 288);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.collapsedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 376);
  result = *(v1 + 360);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.expandedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[25].n128_u8[0];
  result = v1[24];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.layout(for:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 layoutDirection];
  if (sub_24F92BF98())
  {
    if (v4 == 1)
    {
      v5 = (*(v2 + 352) & 1) == 0;
      v6 = 272;
      v7 = 104;
    }

    else
    {
      v5 = (*(v2 + 264) & 1) == 0;
      v6 = 184;
      v7 = 24;
    }

    if (!v5)
    {
      v6 = v7;
    }
  }

  else
  {
    v6 = 24;
    if (v4 == 1)
    {
      v6 = 104;
    }
  }

  v8 = (v2 + v6);
  result = v8[2];
  v13 = v8[3];
  v10 = v8[4];
  v11 = *v8;
  v12 = v8[1];
  *(a2 + 32) = result;
  *(a2 + 48) = v13;
  *(a2 + 64) = v10;
  *a2 = v11;
  *(a2 + 16) = v12;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)@<X0>(void *a1@<X8>)
{
  v3 = sub_24F92BF88();
  v4 = (v3 & 1) == 0;
  v5 = 408;
  v6 = 416;
  if (v3)
  {
    v6 = 432;
  }

  v7 = *(v1 + v6);
  if (!v4)
  {
    v5 = 424;
  }

  *a1 = *(v1 + v5);
  a1[1] = v7;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.deinit()
{

  return v0;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_24F1F7464(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24F1F8B20(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t Array<A>.bestArtworkLayout(for:prioritizing:traitCollection:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a1;
  Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(&v8, a3, a5);
  TodayCardArtworkSizedLayoutMetrics.layout(for:)(a2, a4);
}

uint64_t Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(unsigned __int8 *a1, unint64_t a2, double a3)
{
  v5 = *a1;

  v14 = sub_24EC4E164(a2);
  sub_24F1F60F0(&v14, v5);
  v6 = v14;
  v7 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (!v7)
  {
    if (*(v14 + 16))
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!sub_24F92C738())
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x253052270](0, v6);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!*(v6 + 16))
    {
      goto LABEL_32;
    }

    v8 = *(v6 + 32);

    if (!v7)
    {
LABEL_15:
      v9 = *(v6 + 16);
      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

LABEL_12:
  v9 = sub_24F92C738();
  if (v9)
  {
LABEL_16:
    v10 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x253052270](v10, v6);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          swift_once();
LABEL_28:
          v8 = qword_27F39DD48;

          return v8;
        }

        v11 = *(v6 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_25;
        }
      }

      if (*(v11 + 16) >= a3)
      {

        return v11;
      }

      ++v10;
    }

    while (v12 != v9);
  }

LABEL_26:

  if (!v8)
  {
    if (qword_27F211000 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  return v8;
}

uint64_t sub_24F1F76F4(uint64_t *a1, uint64_t *a2, unsigned __int8 a3)
{
  v4 = 0xE900000000000065;
  v5 = *a1;
  if (*(*a1 + 457))
  {
    if (*(*a1 + 457) == 1)
    {
      v6 = 0x6469576172747865;
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = 0xE400000000000000;
      v6 = 1701736302;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1768843629;
  }

  v8 = *a2;
  v9 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v10 = 0x6469576172747865;
    }

    else
    {
      v10 = 1701736302;
    }

    if (v9 == 1)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    if (v6 != v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v6 != 1768843629)
    {
      goto LABEL_18;
    }
  }

  if (v7 == v11)
  {

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_24F92CE08();

  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if (!*(v8 + 457))
  {
    v14 = 0xE400000000000000;
    v13 = 1768843629;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (*(v8 + 457) != 1)
  {
    v14 = 0xE400000000000000;
    v13 = 1701736302;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

LABEL_24:
    if (v15 == 1)
    {
      v16 = 0x6469576172747865;
    }

    else
    {
      v16 = 1701736302;
    }

    if (v15 == 1)
    {
      v17 = 0xE900000000000065;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    if (v13 != v16)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v13 = 0x6469576172747865;
  v14 = 0xE900000000000065;
  v15 = a3;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_33:
  v17 = 0xE400000000000000;
  if (v13 != 1768843629)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v14 == v17)
  {

    goto LABEL_37;
  }

LABEL_36:
  v18 = sub_24F92CE08();

  if (v18)
  {
LABEL_37:
    if (*(v8 + 457))
    {
      if (*(v8 + 457) == 1)
      {
        v19 = 0x6469576172747865;
        v20 = 0xE900000000000065;
        v21 = a3;
        if (!a3)
        {
LABEL_51:
          v23 = 0xE400000000000000;
          if (v19 != 1768843629)
          {
            goto LABEL_54;
          }

LABEL_52:
          if (v20 == v23)
          {

            goto LABEL_55;
          }

LABEL_54:
          v24 = sub_24F92CE08();

          if ((v24 & 1) == 0)
          {
            return *(v5 + 16) <= *(v8 + 16);
          }

LABEL_55:
          if (*(v5 + 457))
          {
            if (*(v5 + 457) == 1)
            {
              v25 = 0x6469576172747865;
              v26 = 0xE900000000000065;
              v27 = a3;
              if (!a3)
              {
LABEL_64:
                v4 = 0xE400000000000000;
                if (v25 != 1768843629)
                {
LABEL_69:
                  v28 = sub_24F92CE08();

                  result = 0;
                  if ((v28 & 1) == 0)
                  {
                    return result;
                  }

                  return *(v5 + 16) <= *(v8 + 16);
                }

                goto LABEL_67;
              }
            }

            else
            {
              v26 = 0xE400000000000000;
              v25 = 1701736302;
              v27 = a3;
              if (!a3)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
            v26 = 0xE400000000000000;
            v25 = 1768843629;
            v27 = a3;
            if (!a3)
            {
              goto LABEL_64;
            }
          }

          if (v27 == 1)
          {
            if (v25 != 0x6469576172747865)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v4 = 0xE400000000000000;
            if (v25 != 1701736302)
            {
              goto LABEL_69;
            }
          }

LABEL_67:
          if (v26 != v4)
          {
            goto LABEL_69;
          }

          return *(v5 + 16) <= *(v8 + 16);
        }
      }

      else
      {
        v20 = 0xE400000000000000;
        v19 = 1701736302;
        v21 = a3;
        if (!a3)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v20 = 0xE400000000000000;
      v19 = 1768843629;
      v21 = a3;
      if (!a3)
      {
        goto LABEL_51;
      }
    }

    if (v21 == 1)
    {
      v22 = 0x6469576172747865;
    }

    else
    {
      v22 = 1701736302;
    }

    if (v21 == 1)
    {
      v23 = 0xE900000000000065;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v19 != v22)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_24F1F7AAC(uint64_t *a1, unsigned __int8 a2)
{
  v4 = a1[1];
  result = sub_24F92CD78();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
        v8 = sub_24F92B618();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_24F1F7CB0(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_24F1F7BB8(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_24F1F7BB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = result - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v16 = v10;
    v17 = v9;
    while (1)
    {
      v19 = v11;
      v18 = *v9;

      v12 = sub_24F1F76F4(&v19, &v18, a5);

      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v13 = *v9;
        v11 = v9[1];
        *v9 = v11;
        v9[1] = v13;
        --v9;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v17 + 1;
      v10 = v16 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_24F1F7CB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = v5;
  v114 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_164:
    v6 = *v114;
    if (*v114)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_166;
    }

    goto LABEL_204;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v14 = *a3;
      v15 = *(*a3 + 8 * v13);
      v123 = *(*a3 + 8 * v10);
      v124 = v15;

      v121 = sub_24F1F76F4(&v124, &v123, a5);
      if (v7)
      {
      }

      v112 = v11;

      v16 = v12 + 2;
      v110 = v12;
      v17 = 8 * v12;
      v6 = v14 + v17 + 16;
      while (v9 != v16)
      {
        v18 = *v6;
        v123 = *(v6 - 8);
        v124 = v18;

        v19 = sub_24F1F76F4(&v124, &v123, a5);

        ++v16;
        v6 += 8;
        if ((v121 ^ v19))
        {
          v9 = v16 - 1;
          break;
        }
      }

      v11 = v112;
      if (v121)
      {
        v20 = v110;
        if (v9 < v110)
        {
          goto LABEL_198;
        }

        if (v110 < v9)
        {
          v21 = 8 * v9 - 8;
          v22 = v9;
          while (1)
          {
            if (v20 != --v22)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_202;
              }

              v24 = *(v23 + v17);
              *(v23 + v17) = *(v23 + v21);
              *(v23 + v21) = v24;
            }

            ++v20;
            v21 -= 8;
            v17 += 8;
            if (v20 >= v22)
            {
              goto LABEL_18;
            }
          }
        }

        v13 = v9;
        v12 = v110;
      }

      else
      {
LABEL_18:
        v13 = v9;
        v12 = v110;
      }
    }

    v25 = a3[1];
    if (v13 >= v25)
    {
      goto LABEL_29;
    }

    v26 = v13;
    v43 = __OFSUB__(v13, v12);
    v27 = v13 - v12;
    if (v43)
    {
      goto LABEL_194;
    }

    if (v27 >= a4)
    {
LABEL_28:
      v13 = v26;
LABEL_29:
      if (v13 < v12)
      {
        goto LABEL_193;
      }

      goto LABEL_30;
    }

    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      return result;
    }

    if (v12 + a4 < v25)
    {
      v25 = v12 + a4;
    }

    if (v25 < v12)
    {
      goto LABEL_197;
    }

    if (v26 == v25)
    {
      goto LABEL_28;
    }

    v115 = v25;
    v111 = v12;
    v113 = v11;
    v108 = v7;
    v122 = *a3;
    v75 = (*a3 + 8 * v26 - 8);
    v76 = v12 - v26;
    while (2)
    {
      v117 = v75;
      v119 = v26;
      v77 = *(v122 + 8 * v26);
      v116 = v76;
      while (1)
      {
        v78 = *(v77 + 457);
        if (*(v77 + 457))
        {
          if (v78 == 1)
          {
            v79 = 0x6469576172747865;
          }

          else
          {
            v79 = 1701736302;
          }

          if (v78 == 1)
          {
            v80 = 0xE900000000000065;
          }

          else
          {
            v80 = 0xE400000000000000;
          }

          v81 = a5;
          if (!a5)
          {
LABEL_98:
            v83 = 0xE400000000000000;
            v82 = 1768843629;
            goto LABEL_99;
          }
        }

        else
        {
          v80 = 0xE400000000000000;
          v79 = 1768843629;
          v81 = a5;
          if (!a5)
          {
            goto LABEL_98;
          }
        }

        v82 = v81 == 1 ? 0x6469576172747865 : 1701736302;
        v83 = v81 == 1 ? 0xE900000000000065 : 0xE400000000000000;
LABEL_99:
        v84 = *v75;
        if (v79 == v82 && v80 == v83)
        {
        }

        else
        {
          v6 = sub_24F92CE08();

          if ((v6 & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v85 = 0x6469576172747865;
            v86 = 0xE900000000000065;
            v87 = a5;
            if (a5)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v86 = 0xE400000000000000;
            v85 = 1701736302;
            v87 = a5;
            if (a5)
            {
LABEL_108:
              if (v87 == 1)
              {
                v88 = 0x6469576172747865;
              }

              else
              {
                v88 = 1701736302;
              }

              if (v87 == 1)
              {
                v89 = 0xE900000000000065;
              }

              else
              {
                v89 = 0xE400000000000000;
              }

              if (v85 != v88)
              {
                goto LABEL_120;
              }

              goto LABEL_118;
            }
          }
        }

        else
        {
          v86 = 0xE400000000000000;
          v85 = 1768843629;
          v87 = a5;
          if (a5)
          {
            goto LABEL_108;
          }
        }

        v89 = 0xE400000000000000;
        if (v85 != 1768843629)
        {
          goto LABEL_120;
        }

LABEL_118:
        if (v86 == v89)
        {

          goto LABEL_121;
        }

LABEL_120:
        v6 = sub_24F92CE08();

        if ((v6 & 1) == 0)
        {

          if (!v122)
          {
            goto LABEL_199;
          }

          goto LABEL_156;
        }

LABEL_121:
        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v90 = 0x6469576172747865;
            v91 = 0xE900000000000065;
            v92 = a5;
            if (a5)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v91 = 0xE400000000000000;
            v90 = 1701736302;
            v92 = a5;
            if (a5)
            {
LABEL_126:
              if (v92 == 1)
              {
                v93 = 0x6469576172747865;
              }

              else
              {
                v93 = 1701736302;
              }

              if (v92 == 1)
              {
                v94 = 0xE900000000000065;
              }

              else
              {
                v94 = 0xE400000000000000;
              }

              if (v90 != v93)
              {
                goto LABEL_138;
              }

              goto LABEL_136;
            }
          }
        }

        else
        {
          v91 = 0xE400000000000000;
          v90 = 1768843629;
          v92 = a5;
          if (a5)
          {
            goto LABEL_126;
          }
        }

        v94 = 0xE400000000000000;
        if (v90 != 1768843629)
        {
          goto LABEL_138;
        }

LABEL_136:
        if (v91 == v94)
        {

          goto LABEL_139;
        }

LABEL_138:
        v6 = sub_24F92CE08();

        if ((v6 & 1) == 0)
        {
          goto LABEL_154;
        }

LABEL_139:
        if (*(v77 + 457))
        {
          if (*(v77 + 457) == 1)
          {
            v95 = 0x6469576172747865;
            v96 = 0xE900000000000065;
            v97 = a5;
            if (!a5)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v96 = 0xE400000000000000;
            v95 = 1701736302;
            v97 = a5;
            if (!a5)
            {
LABEL_148:
              v98 = 0xE400000000000000;
              if (v95 != 1768843629)
              {
                goto LABEL_153;
              }

              goto LABEL_151;
            }
          }
        }

        else
        {
          v96 = 0xE400000000000000;
          v95 = 1768843629;
          v97 = a5;
          if (!a5)
          {
            goto LABEL_148;
          }
        }

        if (v97 == 1)
        {
          v98 = 0xE900000000000065;
          if (v95 != 0x6469576172747865)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v98 = 0xE400000000000000;
          if (v95 != 1701736302)
          {
            goto LABEL_153;
          }
        }

LABEL_151:
        if (v96 == v98)
        {

          goto LABEL_154;
        }

LABEL_153:
        v6 = sub_24F92CE08();

        if ((v6 & 1) == 0)
        {
          break;
        }

LABEL_154:
        v99 = *(v77 + 16);
        v100 = *(v84 + 16);

        if (v99 > v100)
        {
          goto LABEL_81;
        }

        if (!v122)
        {
          goto LABEL_199;
        }

LABEL_156:
        v101 = *v75;
        v77 = v75[1];
        *v75 = v77;
        v75[1] = v101;
        --v75;
        if (__CFADD__(v76++, 1))
        {
          goto LABEL_81;
        }
      }

LABEL_81:
      v26 = v119 + 1;
      v75 = v117 + 1;
      v76 = v116 - 1;
      if (v119 + 1 != v115)
      {
        continue;
      }

      break;
    }

    v13 = v115;
    v7 = v108;
    v12 = v111;
    v11 = v113;
    if (v115 < v111)
    {
      goto LABEL_193;
    }

LABEL_30:
    v118 = v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v29 = *(v11 + 16);
    v28 = *(v11 + 24);
    v30 = v29 + 1;
    v6 = v7;
    if (v29 >= v28 >> 1)
    {
      result = sub_24E615ED8((v28 > 1), v29 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v30;
    v31 = v11 + 16 * v29;
    *(v31 + 32) = v12;
    *(v31 + 40) = v118;
    v7 = *v114;
    if (!*v114)
    {
      goto LABEL_203;
    }

    if (v29)
    {
      break;
    }

LABEL_3:
    v10 = v118;
    v9 = a3[1];
    v7 = v6;
    if (v118 >= v9)
    {
      goto LABEL_164;
    }
  }

  while (1)
  {
    v32 = v30 - 1;
    if (v30 >= 4)
    {
      v37 = v11 + 32 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_180;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_181;
      }

      v44 = (v11 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_183;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_186;
      }

      if (v48 >= v40)
      {
        v66 = (v11 + 32 + 16 * v32);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_192;
        }

        if (v35 < v69)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v30 == 3)
    {
      v33 = *(v11 + 32);
      v34 = *(v11 + 40);
      v43 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      v36 = v43;
LABEL_49:
      if (v36)
      {
        goto LABEL_182;
      }

      v49 = (v11 + 16 * v30);
      v51 = *v49;
      v50 = v49[1];
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_185;
      }

      v55 = (v11 + 32 + 16 * v32);
      v57 = *v55;
      v56 = v55[1];
      v43 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v43)
      {
        goto LABEL_188;
      }

      if (__OFADD__(v53, v58))
      {
        goto LABEL_189;
      }

      if (v53 + v58 >= v35)
      {
        if (v35 < v58)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v59 = (v11 + 16 * v30);
    v61 = *v59;
    v60 = v59[1];
    v43 = __OFSUB__(v60, v61);
    v53 = v60 - v61;
    v54 = v43;
LABEL_63:
    if (v54)
    {
      goto LABEL_184;
    }

    v62 = v11 + 16 * v32;
    v64 = *(v62 + 32);
    v63 = *(v62 + 40);
    v43 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v43)
    {
      goto LABEL_187;
    }

    if (v65 < v53)
    {
      goto LABEL_3;
    }

LABEL_70:
    v70 = v32 - 1;
    if (v32 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_200;
    }

    v71 = v11;
    v72 = *(v11 + 32 + 16 * v70);
    v73 = *(v11 + 32 + 16 * v32);
    v11 = *(v11 + 32 + 16 * v32 + 8);
    sub_24F1F8764((*a3 + 8 * v72), (*a3 + 8 * v73), (*a3 + 8 * v11), v7, a5);
    if (v6)
    {
    }

    if (v11 < v72)
    {
      goto LABEL_178;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_24E86164C(v71);
    }

    if (v70 >= *(v71 + 2))
    {
      goto LABEL_179;
    }

    v74 = &v71[16 * v70];
    *(v74 + 4) = v72;
    *(v74 + 5) = v11;
    v125 = v71;
    result = sub_24E8615C0(v32);
    v11 = v125;
    v30 = *(v125 + 16);
    if (v30 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  result = sub_24E86164C(v11);
  v11 = result;
LABEL_166:
  v125 = v11;
  v103 = *(v11 + 16);
  if (v103 >= 2)
  {
    while (*a3)
    {
      v104 = *(v11 + 16 * v103);
      v105 = v11;
      v106 = *(v11 + 16 * (v103 - 1) + 32);
      v11 = *(v11 + 16 * (v103 - 1) + 40);
      sub_24F1F8764((*a3 + 8 * v104), (*a3 + 8 * v106), (*a3 + 8 * v11), v6, a5);
      if (v7)
      {
      }

      if (v11 < v104)
      {
        goto LABEL_190;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_24E86164C(v105);
      }

      if (v103 - 2 >= *(v105 + 2))
      {
        goto LABEL_191;
      }

      v107 = &v105[16 * v103];
      *v107 = v104;
      *(v107 + 1) = v11;
      v125 = v105;
      result = sub_24E8615C0(v103 - 1);
      v11 = v125;
      v103 = *(v125 + 16);
      if (v103 <= 1)
      {
      }
    }

    goto LABEL_201;
  }
}

uint64_t sub_24F1F8764(char *__dst, uint64_t *a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;

      v18 = sub_24F1F76F4(&v48, &v47, a5);
      if (v5)
      {

        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        return 1;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  --v6;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;

    v31 = sub_24F1F76F4(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;

    v33 = v6 + 1;
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    --v6;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        return 1;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      return 1;
    }
  }

  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    return 1;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

  return 1;
}

double sub_24F1F8B20(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_24F9285B8();
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  sub_24F928398();
  v62 = sub_24F928308();
  LODWORD(v61) = v13;
  v63 = *(v7 + 8);
  v64 = v6;
  v66 = v7 + 8;
  v63(v12, v6);
  v14 = v5;
  v68 = a1;
  sub_24F928398();
  v16 = v67 + 16;
  v15 = *(v67 + 16);
  v71 = v3;
  v69 = v15;
  v15(v14, v70, v3);
  sub_24F1F9544();
  v17 = v114;
  sub_24F929548();
  if (v114[80])
  {
    if (qword_27F210808 != -1)
    {
      swift_once();
    }

    v17 = &xmmword_27F39CD70;
  }

  v18 = v17[3];
  v117 = v17[2];
  v118 = v18;
  v119 = v17[4];
  v19 = v17[1];
  v115 = *v17;
  v116 = v19;
  sub_24F928398();
  v65 = v16;
  v69(v14, v70, v71);
  v20 = v108;
  sub_24F929548();
  if (v108[80])
  {
    if (qword_27F210808 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_27F39CD70;
  }

  v21 = v20[3];
  v111 = v20[2];
  v112 = v21;
  v113 = v20[4];
  v22 = v20[1];
  v109 = *v20;
  v110 = v22;
  if (v61)
  {
    v23 = 1.79769313e308;
  }

  else
  {
    v23 = *&v62;
  }

  v24 = v9;
  sub_24F928398();
  v54 = v14;
  v25 = v70;
  v69(v14, v70, v71);
  sub_24F929548();
  v98 = v92;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v96 = v90;
  v97 = v91;
  sub_24F928398();
  v26 = v25;
  v27 = v69;
  v69(v14, v26, v71);
  sub_24F929548();
  v104 = v86;
  v105 = v87;
  v106 = v88;
  v107 = v89;
  v102 = v84;
  v103 = v85;
  sub_24F928398();
  v29 = v70;
  v28 = v71;
  v27(v14, v70, v71);
  v30 = v27;
  v59 = sub_24F1F9598();
  sub_24F929548();
  v61 = v82;
  v62 = v81;
  v60 = v83;
  v31 = v68;
  sub_24F928398();
  v30(v14, v29, v28);
  sub_24F929548();
  v58 = v79;
  v59 = v78;
  v57 = v80;
  sub_24F928398();
  sub_24E9F71AC();
  sub_24F928248();
  v33 = v63;
  v32 = v64;
  v63(v24, v64);
  v56 = v77;
  v34 = v31;
  sub_24F928398();
  sub_24F928248();
  v33(v24, v32);
  v55 = v76;
  type metadata accessor for CGSize(0);
  sub_24F928398();
  v36 = v70;
  v35 = v71;
  v69(v54, v70, v71);
  sub_24F1F95EC();
  sub_24F929548();
  v37 = v73;
  v69 = v74;
  LODWORD(v65) = v75;
  sub_24F928398();
  sub_24F1F9644();
  sub_24F928208();
  (*(v67 + 8))(v36, v35);
  v33(v34, v32);
  v33(v24, v32);
  v38 = v72;
  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v39 = swift_allocObject();
  *(v39 + 16) = v23;
  v40 = v115;
  *(v39 + 40) = v116;
  v41 = v118;
  *(v39 + 56) = v117;
  *(v39 + 72) = v41;
  *(v39 + 88) = v119;
  *(v39 + 24) = v40;
  v42 = v109;
  *(v39 + 120) = v110;
  v43 = v112;
  *(v39 + 136) = v111;
  *(v39 + 152) = v43;
  *(v39 + 168) = v113;
  *(v39 + 104) = v42;
  v44 = v99;
  *(v39 + 216) = v98;
  *(v39 + 232) = v44;
  *(v39 + 248) = v100;
  *(v39 + 264) = v101;
  v45 = v97;
  *(v39 + 184) = v96;
  *(v39 + 200) = v45;
  *(v39 + 352) = v107;
  v46 = v106;
  *(v39 + 320) = v105;
  *(v39 + 336) = v46;
  v47 = v104;
  *(v39 + 288) = v103;
  *(v39 + 304) = v47;
  *(v39 + 272) = v102;
  v48 = v61;
  *(v39 + 360) = v62;
  *(v39 + 368) = v48;
  *(v39 + 376) = v60;
  v49 = v58;
  *(v39 + 384) = v59;
  *(v39 + 392) = v49;
  *(v39 + 400) = v57;
  v51 = v55;
  result = *&v56;
  *(v39 + 408) = v56;
  *(v39 + 424) = v51;
  v52 = v69;
  *(v39 + 440) = v37;
  *(v39 + 448) = v52;
  *(v39 + 456) = v65;
  *(v39 + 457) = v38;
  return result;
}

unint64_t sub_24F1F9380()
{
  result = qword_27F23C360;
  if (!qword_27F23C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C360);
  }

  return result;
}

unint64_t sub_24F1F94A4()
{
  result = qword_27F23C368;
  if (!qword_27F23C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C368);
  }

  return result;
}

uint64_t sub_24F1F94F8()
{
  v0 = sub_24F92CB88();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24F1F9544()
{
  result = qword_27F23C370;
  if (!qword_27F23C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C370);
  }

  return result;
}

unint64_t sub_24F1F9598()
{
  result = qword_27F23C378;
  if (!qword_27F23C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C378);
  }

  return result;
}

unint64_t sub_24F1F95EC()
{
  result = qword_27F23C380;
  if (!qword_27F23C380)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C380);
  }

  return result;
}

unint64_t sub_24F1F9644()
{
  result = qword_27F23C388;
  if (!qword_27F23C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C388);
  }

  return result;
}

uint64_t sub_24F1F96AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F1F97F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for WelcomeGameCenterView()
{
  result = qword_27F23C390;
  if (!qword_27F23C390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1F996C()
{
  sub_24E8BF5C0(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24E6CAE80();
    if (v1 <= 0x3F)
    {
      sub_24E6CAEE4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24F928FD8();
        if (v3 <= 0x3F)
        {
          sub_24F928818();
          if (v4 <= 0x3F)
          {
            sub_24E6CAEE4(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24E8BF5C0(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24F1F9B74();
                if (v7 <= 0x3F)
                {
                  sub_24E8BF5C0(319, &qword_27F218018, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F1F9B74()
{
  if (!qword_27F2157B8)
  {
    sub_24F929EB8();
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2157B8);
    }
  }
}

double sub_24F1F9BE8()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39DD50 = xmmword_24F947C50;
  unk_27F39DD60 = xmmword_24F9B8DC0;
  *&xmmword_27F39DD70 = v0;
  *(&xmmword_27F39DD70 + 1) = v2;
  qword_27F39DD80 = 0x4030000000000000;
  unk_27F39DD88 = v3;
  return result;
}

double sub_24F1F9C3C()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39DD90 = xmmword_24F947C70;
  unk_27F39DDA0 = xmmword_24F9B8DC0;
  *&xmmword_27F39DDB0 = v0;
  *(&xmmword_27F39DDB0 + 1) = v2;
  qword_27F39DDC0 = 0x4030000000000000;
  unk_27F39DDC8 = v3;
  return result;
}

uint64_t sub_24F1F9C90@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v72 - v3;
  v90 = sub_24F929158();
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v72 - v6;
  v7 = type metadata accessor for WelcomeGameCenterView();
  v76 = *(v7 - 8);
  v75 = *(v76 + 64);
  v8 = v7 - 8;
  v86 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3A0);
  MEMORY[0x28223BE20](v79);
  v11 = &v72 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3A8);
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v95 = &v72 - v12;
  v13 = *(v1 + 88);
  v85 = *(v1 + 80);
  v84 = v13;
  v73 = v1;

  v83 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  sub_24E615E00(v1 + 40, v14 + 32);
  v15 = v1 + *(v8 + 80);
  v17 = *(v15 + 8);
  LOBYTE(v112) = *v15;
  v16 = v112;
  v81 = v112;
  v113 = v17;
  v82 = v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v19 = v97;
  v18 = v98;
  v20 = v99;
  *(v11 + 6) = type metadata accessor for ProgressPerformAction();
  *(v11 + 7) = sub_24E6CF670(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 3);
  sub_24F928A98();
  *boxed_opaque_existential_1 = v14;
  boxed_opaque_existential_1[1] = v19;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v20;
  boxed_opaque_existential_1[5] = 0;
  boxed_opaque_existential_1[6] = 0;
  boxed_opaque_existential_1[4] = 0;
  *(v11 + 15) = 0;
  *(v11 + 104) = 0u;
  *(v11 + 88) = 0u;
  LOBYTE(v97) = v16;
  v98 = v17;
  sub_24F926F38();
  v78 = v112;
  v22 = v73;
  v23 = *(v73 + 23);
  v24 = v74;
  sub_24F1FAD54(v73, v74);
  v25 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v26 = swift_allocObject();
  sub_24F1FADBC(v24, v26 + v25);
  sub_24F1FAD54(v22, v24);
  v27 = swift_allocObject();
  sub_24F1FADBC(v24, v27 + v25);
  v28 = v24;
  sub_24F1FAD54(v22, v24);
  v29 = swift_allocObject();
  sub_24F1FADBC(v28, v29 + v25);
  v30 = v79;
  v31 = *(v79 + 136);
  v32 = type metadata accessor for HeaderPresentation(0);
  (*(*(v32 - 8) + 56))(&v11[v31], 1, 1, v32);
  v33 = &v11[v30[37]];
  LOBYTE(v112) = 0;
  v77 = v23;

  sub_24F926F28();
  v34 = v98;
  *v33 = v97;
  *(v33 + 1) = v34;
  v35 = &v11[v30[38]];
  LOBYTE(v112) = 0;
  sub_24F926F28();
  v36 = v98;
  *v35 = v97;
  *(v35 + 1) = v36;
  v37 = &v11[v30[39]];
  v112 = 0;
  sub_24F926F28();
  v38 = v98;
  *v37 = v97;
  *(v37 + 1) = v38;
  v39 = v30[40];
  *&v11[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v40 = v30[41];
  *&v11[v40] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v41 = v30[42];
  *&v11[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v42 = &v11[v30[43]];
  *v42 = sub_24F923398() & 1;
  *(v42 + 1) = v43;
  v42[16] = v44 & 1;
  v45 = v84;
  *v11 = v85;
  *(v11 + 1) = v45;
  *(v11 + 2) = v83;
  v11[128] = 0;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 8) = 0;
  v11[129] = v78;
  *(v11 + 17) = v23;
  *(v11 + 18) = 0;
  *(v11 + 19) = 0;
  *(v11 + 20) = sub_24F1FAE20;
  *(v11 + 21) = v26;
  *(v11 + 22) = sub_24F1FAEA0;
  *(v11 + 23) = v27;
  *(v11 + 24) = sub_24F1FB214;
  *(v11 + 25) = v29;
  *(v11 + 26) = sub_24E93BDF4;
  *(v11 + 27) = 0;
  v11[v30[35]] = 7;
  v11[v30[36]] = 0;
  sub_24E60169C((v22 + 96), &v97, qword_27F21B590);
  v46 = *(v22 + 18);
  v47 = *(v22 + 19);
  v48 = *(v22 + 20);
  v49 = *(v22 + 21);
  v50 = *(v22 + 22);
  v101 = *(v22 + 17);
  v102 = v46;
  v103 = v47;
  v104 = v48;
  v105 = v49;
  v106 = v50;
  v96 = 0;

  sub_24F926F28();
  v107 = v112;
  v108 = v113;
  LOBYTE(v112) = v81;
  v113 = v82;
  sub_24F926F38();
  LOBYTE(v42) = v96;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v42;
  v109 = KeyPath;
  v110 = sub_24E600A48;
  v111 = v52;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3B0);
  v53 = sub_24E602068(&qword_27F23C3B8, &qword_27F23C3A0);
  v54 = sub_24F1FC934();
  sub_24F926588();
  sub_24E601704(&v97, &qword_27F23C3B0);
  sub_24E601704(v11, &qword_27F23C3A0);
  v55 = v86;
  v56 = *(v86 + 64);
  v57 = sub_24F928818();
  v58 = *(v57 - 8);
  v59 = v87;
  (*(v58 + 16))(v87, &v22[v56], v57);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = v89;
  v61 = v90;
  sub_24F928F28();
  v62 = &v22[*(v55 + 84)];
  v64 = *v62;
  v63 = v62[1];
  v97 = v64;
  v98 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810);
  sub_24F926F38();
  v65 = sub_24F921B48();
  v66 = v92;
  (*(*(v65 - 8) + 56))(v92, 1, 1, v65);
  v97 = v30;
  v98 = v85;
  v99 = v53;
  v100 = v54;
  swift_getOpaqueTypeConformance2();
  v67 = v60;
  v68 = v66;
  v69 = v88;
  v70 = v95;
  sub_24F925E58();

  sub_24E601704(v68, &qword_27F2157E8);
  (*(v93 + 8))(v67, v61);
  sub_24E601704(v59, &qword_27F2157F0);
  return (*(v91 + 8))(v70, v69);
}

void *sub_24F1FA7A0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24F1FA850(a1, __src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v8, __src, 0x129uLL);
  sub_24E60169C(__dst, &v5, &qword_27F23C3D0);
  sub_24E601704(v8, &qword_27F23C3D0);
  return memcpy((a2 + 24), __dst, 0x129uLL);
}

uint64_t sub_24F1FA850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_24F1FCA40(v78);
  v36 = v78[0];
  v37 = v78[1];
  v38 = v78[2];
  v39 = v78[3];
  KeyPath = swift_getKeyPath();
  v40 = 0;
  sub_24F1FD2EC(v78, v64);
  v7 = sub_24F925818();
  sub_24F1FCA40(v79);
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v77 = 0;
  v16 = a1[2];
  v17 = a1[4];
  v28 = a1[3];
  v29 = a1[1];

  sub_24F1FCA40(v80);
  v32 = v80[0];
  v33 = v80[1];
  v34 = v80[2];
  v35 = v80[3];
  sub_24F1FD2EC(v80, v64);
  v18 = sub_24F925818();
  sub_24F1FCA40(&v81);
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v64[0]) = 0;
  *&v41[0] = v4;
  *(&v41[0] + 1) = v5;
  v41[1] = v36;
  v41[2] = v37;
  v41[3] = v38;
  v41[4] = v39;
  *&v42 = KeyPath;
  BYTE8(v42) = 0;
  LOBYTE(v43) = v7;
  *(&v43 + 1) = v9;
  *v44 = v11;
  *&v44[8] = v13;
  *&v44[16] = v15;
  v44[24] = 0;
  __src[2] = v37;
  __src[3] = v38;
  __src[0] = v41[0];
  __src[1] = v36;
  *(&__src[7] + 9) = *&v44[9];
  __src[6] = v43;
  __src[7] = *v44;
  __src[4] = v39;
  __src[5] = v42;
  *&v45 = v29;
  *(&v45 + 1) = v16;
  *&v46 = v28;
  *(&v46 + 1) = v17;
  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  LOBYTE(v51) = v18;
  *(&v51 + 1) = v19;
  *v52 = v21;
  *&v52[8] = v23;
  *&v52[16] = v25;
  v52[24] = 0;
  *(&__src[16] + 9) = *&v52[9];
  __src[9] = v45;
  __src[10] = v46;
  __src[15] = v51;
  __src[16] = *v52;
  __src[13] = v34;
  __src[14] = v35;
  __src[11] = v32;
  __src[12] = v33;
  memcpy(a2, __src, 0x120uLL);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  v53[0] = v29;
  v53[1] = v16;
  v53[2] = v28;
  v53[3] = v17;
  v54 = v32;
  v55 = v33;
  v56 = v34;
  v57 = v35;
  v58 = v18;
  v59 = v20;
  v60 = v22;
  v61 = v24;
  v62 = v26;
  v63 = 0;
  sub_24E60169C(v41, v64, &qword_27F23C3D8);
  sub_24E60169C(&v45, v64, &qword_27F23C3E0);
  sub_24E601704(v53, &qword_27F23C3E0);
  v64[0] = v4;
  v64[1] = v5;
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = KeyPath;
  v70 = 0;
  v71 = v7;
  v72 = v9;
  v73 = v11;
  v74 = v13;
  v75 = v15;
  v76 = 0;
  return sub_24E601704(v64, &qword_27F23C3D8);
}

uint64_t sub_24F1FAC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_24F1FCA40(v11);
  KeyPath = swift_getKeyPath();
  v10[64] = 0;
  *a2 = v5;
  *(a2 + 8) = v4;
  v7 = v11[1];
  *(a2 + 16) = v11[0];
  *(a2 + 32) = v7;
  v8 = v11[3];
  *(a2 + 48) = v11[2];
  *(a2 + 64) = v8;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0;
  return sub_24F1FD2EC(v11, v10);
}

uint64_t sub_24F1FACD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];

  sub_24F1FCA40(v11);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  v7 = v11[1];
  *(a2 + 32) = v11[0];
  *(a2 + 48) = v7;
  v8 = v11[3];
  *(a2 + 64) = v11[2];
  *(a2 + 80) = v8;
  return sub_24F1FD2EC(v11, &v10);
}

uint64_t sub_24F1FAD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeGameCenterView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1FADBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeGameCenterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24F1FAE20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeGameCenterView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F1FA7A0(v4, a1);
}

uint64_t sub_24F1FAEA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeGameCenterView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F1FAC38(v4, a1);
}

uint64_t objectdestroyTm_57()
{
  v1 = type metadata accessor for WelcomeGameCenterView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 40);

  if (*(v2 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  }

  v3 = v1[14];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[16];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F1FB214@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeGameCenterView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F1FACD0(v4, a1);
}

uint64_t sub_24F1FB29C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08);
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - v2;
  sub_24F1FD698(v1, v24);
  v4 = swift_allocObject();
  v5 = v24[3];
  v6 = v24[5];
  *(v4 + 80) = v24[4];
  *(v4 + 96) = v6;
  v7 = v24[1];
  v8 = v24[2];
  *(v4 + 16) = v24[0];
  *(v4 + 32) = v7;
  *(v4 + 112) = v25;
  *(v4 + 48) = v8;
  *(v4 + 64) = v5;
  v19 = v1;
  sub_24F926F88();
  v9 = *(v1 + 64);
  v22 = *(v1 + 56);
  v23 = v9;
  v10 = *(v1 + 96);
  v20 = *(v1 + 88);
  v21 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v18 = v1;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3E8);
  sub_24E602068(&qword_27F222D00, &qword_27F222D08);
  sub_24E600AEC();
  sub_24E602068(&qword_27F23C3F0, &qword_27F23C3E8);
  v11 = v14;
  sub_24F926578();

  return (*(v16 + 8))(v3, v11);
}

uint64_t sub_24F1FB60C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28);
  v41 = *(v10 - 8);
  v11 = v41;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  sub_24F9232B8();
  v17 = sub_24F9232F8();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 0, 1, v17);
  sub_24E60169C(a1, v48, qword_27F21B590);
  sub_24F1FD698(a1, v46);
  v19 = swift_allocObject();
  v20 = v46[5];
  *(v19 + 80) = v46[4];
  *(v19 + 96) = v20;
  *(v19 + 112) = v47;
  v21 = v46[1];
  *(v19 + 16) = v46[0];
  *(v19 + 32) = v21;
  v22 = v46[3];
  *(v19 + 48) = v46[2];
  *(v19 + 64) = v22;
  v40 = v16;
  sub_24F921788();
  v23._object = 0x800000024FA6F3A0;
  v23._countAndFlagsBits = 0xD000000000000018;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v46[0] = localizedString(_:comment:)(v23, v24);
  sub_24F9232D8();
  v18(v9, 0, 1, v17);
  sub_24E600AEC();
  v25 = v6;
  v38 = v6;
  sub_24F926FA8();
  v26 = *(v11 + 16);
  v39 = v13;
  v26(v13, v16, v10);
  v27 = v42;
  v28 = *(v42 + 16);
  v29 = v43;
  v30 = v25;
  v31 = v44;
  v28(v43, v30, v44);
  v32 = v45;
  v26(v45, v13, v10);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C3F8);
  v28(&v32[*(v33 + 48)], v29, v31);
  v34 = *(v27 + 8);
  v34(v38, v31);
  v35 = *(v41 + 8);
  v35(v40, v10);
  v34(v29, v31);
  return (v35)(v39, v10);
}

uint64_t sub_24F1FBA90@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24F1FBAFC@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

__n128 sub_24F1FBB6C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v4 = *(v1 + 3);
  v30[0] = *(v1 + 2);
  v30[1] = v4;
  v35 = v30[0];
  v36 = v4;
  v5 = *(v1 + 5);
  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  v31 = *(v1 + 4);
  v32 = v5;
  v8 = v5;
  v29 = 0;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v37 = v31;
  v38 = v5;
  *&v33[0] = v11;
  *(&v33[0] + 1) = v12;
  v14 = *(v1 + 4);
  v13 = *(v1 + 5);
  v33[1] = v7;
  v33[2] = v6;
  v33[3] = v14;
  v33[4] = v13;
  v26 = v6;
  v27 = v14;
  v28 = v13;
  v24 = v33[0];
  v25 = v7;
  v34[0] = v11;
  v34[1] = v12;

  sub_24F1FD2EC(v30, v23);

  sub_24F1FD784(v33, v23);
  sub_24F1FD7BC(v34);

  v15 = v29;
  sub_24F927628();
  sub_24F9242E8();
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  v16 = v24;
  *(a1 + 56) = v25;
  v17 = v27;
  *(a1 + 72) = v26;
  *(a1 + 88) = v17;
  *(a1 + 104) = v28;
  *(a1 + 40) = v16;
  v18 = v23[0];
  v19 = v23[1];
  v20 = v23[3];
  *(a1 + 152) = v23[2];
  *(a1 + 136) = v19;
  *(a1 + 120) = v18;
  result = v23[4];
  v22 = v23[5];
  *(a1 + 216) = v23[6];
  *(a1 + 200) = v22;
  *(a1 + 184) = result;
  *(a1 + 168) = v20;
  return result;
}

uint64_t sub_24F1FBD28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F926E08();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359E8);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F0);
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - v14;
  v15 = sub_24F924848();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 8);
  if (!v20)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v45 = *(v1 + 8);
  v46 = v6;
  v44 = *v1;
  static SystemAppIcon.from(iconName:)(v44, v20, &v73);
  v21 = v73;
  if (v73 == 4)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v42 = v4;
  v43 = v3;
  v78 = *(v1 + 88);
  v22 = *(v1 + 80);
  v77 = v22;
  if (v78 == 1)
  {
    v23 = v22;
  }

  else
  {

    sub_24F92BDC8();
    v41 = a1;
    v24 = sub_24F9257A8();
    a1 = v41;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v77, &qword_27F218208);
    (*(v16 + 8))(v19, v15);
    v23 = *v68;
  }

  v25 = *(v1 + 32);
  LOBYTE(v68[0]) = v21;
  if (!sub_24EFFE798(v68, 0, v25, v25, v23))
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v41 = sub_24F926DE8();
  v27 = v47;
  v26 = v48;
  (*(v47 + 104))(v9, *MEMORY[0x277CE0FE0], v48);
  v28 = sub_24F926E88();
  (*(v27 + 8))(v9, v26);
  sub_24F927618();
  sub_24F9238C8();
  v71 = 1;
  *&v70[6] = v74;
  *&v70[22] = v75;
  *&v70[38] = v76;
  sub_24F9242E8();
  v29 = sub_24F925838();
  sub_24F923318();
  *(v57 + 2) = *v70;
  *(&v57[1] + 2) = *&v70[16];
  *(&v57[2] + 2) = *&v70[32];
  *(&v57[6] + 8) = v64;
  *(&v57[7] + 8) = v65;
  *(&v57[8] + 8) = v66;
  *(&v57[9] + 8) = v67;
  *(&v57[3] + 8) = v61;
  *(&v57[4] + 8) = v62;
  v72 = 0;
  v56 = v28;
  LOWORD(v57[0]) = 1;
  *&v57[3] = *&v70[46];
  *(&v57[5] + 8) = v63;
  BYTE8(v57[10]) = v29;
  *&v58 = v30;
  *(&v58 + 1) = v31;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F8);
  sub_24EFC15FC();
  v34 = v49;
  sub_24F9265E8();
  v68[12] = v58;
  v68[13] = v59;
  v69 = v60;
  v68[8] = v57[7];
  v68[9] = v57[8];
  v68[10] = v57[9];
  v68[11] = v57[10];
  v68[4] = v57[3];
  v68[5] = v57[4];
  v68[6] = v57[5];
  v68[7] = v57[6];
  v68[0] = v56;
  v68[1] = v57[0];
  v68[2] = v57[1];
  v68[3] = v57[2];
  sub_24E601704(v68, &qword_27F2359F8);
  v35 = v51;
  sub_24F923FE8();
  sub_24E601704(v34, &qword_27F2359E8);
  v56 = 0u;
  v57[0] = 0u;
  memset(v55, 0, sizeof(v55));
  v36 = v46;
  sub_24F9297A8();
  sub_24E601704(v55, &qword_27F2129B0);
  sub_24E601704(&v56, &qword_27F2129B0);
  sub_24EFC17A0();
  v37 = v50;
  sub_24F925EE8();

  (*(v42 + 8))(v36, v43);
  sub_24E601704(v35, &qword_27F2359E8);
  v39 = v53;
  v38 = v54;
  (*(v53 + 32))(a1, v37, v54);
  return (*(v39 + 56))(a1, 0, 1, v38);
}

uint64_t sub_24F1FC490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B78);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925988();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v8, v10, v12 & 1);

  *&v31 = v13;
  *(&v31 + 1) = v15;
  v17 &= 1u;
  LOBYTE(v32) = v17;
  *(&v32 + 1) = v19;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17);

  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B80) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v21 = v26;
  v22 = &v7[*(v25 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_24F9297A8();
  sub_24E601704(v30, &qword_27F2129B0);
  sub_24E601704(&v31, &qword_27F2129B0);
  sub_24F1FDAD0(&qword_27F235B88, &qword_27F235B78, &unk_24F9B9388, sub_24EFC2250);
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24F1FDA24(v7);
}

uint64_t sub_24F1FC78C@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  v7 = sub_24F925C98();
  v9 = v8;
  v11 = v10;
  sub_24E600B40(v2, v4, v6 & 1);

  sub_24F9251C8();
  v12 = sub_24F925C58();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24E600B40(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = 256;
  *(a1 + 40) = result;
  *(a1 + 48) = 0;
  return result;
}

unint64_t sub_24F1FC934()
{
  result = qword_27F23C3C0;
  if (!qword_27F23C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3B0);
    sub_24F1FC9EC();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C3C0);
  }

  return result;
}

unint64_t sub_24F1FC9EC()
{
  result = qword_27F23C3C8;
  if (!qword_27F23C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C3C8);
  }

  return result;
}

double sub_24F1FCA40@<D0>(__int128 *a1@<X8>)
{
  v68 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v67 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-v22];
  v60 = type metadata accessor for WelcomeGameCenterView();
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v59 = *MEMORY[0x277CE0560];
  v58 = v25;
  v56 = v3 + 13;
  v25(v20);
  v57 = v3[7];
  v57(v20, 0, 1, v2);
  v61 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598);
  v66 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v67, &qword_27F215598);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v65 = v27;
      v53 = v24;
      v29 = v55;
      (v66[4])(v55, &v9[v26], v2);
      sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570]);
      v30 = v67;
      v52 = sub_24F92AFF8();
      v31 = v66[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598);
      sub_24E601704(v23, &qword_27F215598);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598);
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598);
    sub_24E601704(v23, &qword_27F215598);
    (v66[1])(v67, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20);
    goto LABEL_15;
  }

  v53 = v24;
  v65 = v27;
  sub_24E601704(v20, &qword_27F215598);
  sub_24E601704(v23, &qword_27F215598);
  if (v65(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  v32 = v63;
  sub_24F769764(v63);
  v33 = v62;
  v58(v62, v59, v2);
  v57(v33, 0, 1, v2);
  v34 = *(v61 + 48);
  v35 = v64;
  sub_24E60169C(v32, v64, &qword_27F215598);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598);
  v36 = v65;
  if (v65(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598);
LABEL_20:
      if (qword_27F211010 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39DD90;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v54;
  sub_24E60169C(v35, v54, &qword_27F215598);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    (v66[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v45 = v33;
  v46 = v66;
  v47 = &v35[v34];
  v48 = v55;
  (v66[4])(v55, v47, v2);
  sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570]);
  v49 = sub_24F92AFF8();
  v50 = v46[1];
  v50(v48, v2);
  sub_24E601704(v45, &qword_27F215598);
  sub_24E601704(v32, &qword_27F215598);
  v50(v37, v2);
  sub_24E601704(v35, &qword_27F215598);
  if (v49)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F211008 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39DD50;
LABEL_18:
  v39 = v38[1];
  v69 = *v38;
  v70 = v39;
  v40 = v38[3];
  v71 = v38[2];
  v72 = v40;
  v41 = v70;
  v42 = v68;
  *v68 = v69;
  v42[1] = v41;
  result = *&v71;
  v44 = v72;
  v42[2] = v71;
  v42[3] = v44;
  return result;
}

uint64_t sub_24F1FD32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1FD374(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_24F1FD3D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_24F1FD41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1FD494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1FD4DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1FD544()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3B0);
  sub_24E602068(&qword_27F23C3B8, &qword_27F23C3A0);
  sub_24F1FC934();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_51Tm_0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_24F1FD80C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C3E8);
  sub_24E602068(&qword_27F222D00, &qword_27F222D08);
  sub_24E600AEC();
  sub_24E602068(&qword_27F23C3F0, &qword_27F23C3E8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F1FD928()
{
  result = qword_27F23C400;
  if (!qword_27F23C400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C408);
    sub_24E602068(&qword_27F23C410, &qword_27F23C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C400);
  }

  return result;
}

uint64_t sub_24F1FDA24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1FDAD0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F1FDB80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B78);
  sub_24F1FDAD0(&qword_27F235B88, &qword_27F235B78, &unk_24F9B9388, sub_24EFC2250);
  return swift_getOpaqueTypeConformance2();
}

UIColor __swiftcall UIColor.init(light:dark:)(UIColor light, UIColor dark)
{
  v3 = light.super.isa;
  v4 = dark.super.isa;

  return sub_24F92C388();
}

uint64_t sub_24F1FDCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C440);
  MEMORY[0x28223BE20](v2);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C448);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C450);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C458);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  if (*(*(a1 + 16) + 16))
  {
    v14 = *(*(a1 + 16) + 16) < 3u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0);
    v15 = swift_allocObject();
    v16 = vdup_n_s32(v14);
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    *(v15 + 16) = xmmword_24F93A400;
    *(v15 + 32) = vandq_s8(xmmword_24F97EE40, vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)));
    sub_24F923658();
    v18 = v39;
    v19 = v41;
    v33[1] = v8;
    v20 = v42;
    v21 = v43;
    v22 = sub_24F1AEC94();
    KeyPath = swift_getKeyPath();
    v35 = __PAIR128__(v40, v18);
    *&v36 = v19;
    *(&v36 + 1) = v20;
    *&v37 = v21;
    *(&v37 + 1) = KeyPath;
    v38 = v22;
    *(v7 + 6) = v22;
    v24 = v37;
    v25 = v35;
    *(v7 + 1) = v36;
    *(v7 + 2) = v24;
    *v7 = v25;
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v35, v34, &qword_27F23C460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C460);
    sub_24F1FE55C();
    sub_24F1FE68C();
    sub_24F924E28();
    sub_24E60169C(v10, v4, &qword_27F23C450);
    swift_storeEnumTagMultiPayload();
    sub_24F9271F8();
    sub_24F1FE770();
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088]);
    sub_24F924E28();
    sub_24E601704(&v35, &qword_27F23C460);
    v26 = v10;
    v27 = &qword_27F23C450;
  }

  else
  {
    sub_24F9271E8();
    v28 = sub_24F1AEC94();
    v29 = sub_24F927618();
    v30 = &v13[*(v11 + 36)];
    *v30 = v28;
    v30[1] = v29;
    v30[2] = v31;
    sub_24E60169C(v13, v7, &qword_27F23C458);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C460);
    sub_24F1FE55C();
    sub_24F1FE68C();
    sub_24F924E28();
    sub_24E60169C(v10, v4, &qword_27F23C450);
    swift_storeEnumTagMultiPayload();
    sub_24F9271F8();
    sub_24F1FE770();
    sub_24F1FE644(&qword_27F2388C0, MEMORY[0x277CDF088]);
    sub_24F924E28();
    sub_24E601704(v10, &qword_27F23C450);
    v26 = v13;
    v27 = &qword_27F23C458;
  }

  return sub_24E601704(v26, v27);
}

uint64_t sub_24F1FE1E0()
{
  sub_24E66D960();

  return sub_24F9218E8();
}

unint64_t sub_24F1FE228()
{
  result = qword_27F23C430;
  if (!qword_27F23C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C430);
  }

  return result;
}

double sub_24F1FE328@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24F925B28();
  sub_24F925AF8();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMaxX(v14);
  sub_24F925B18();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}
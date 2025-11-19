uint64_t sub_24F32B7DC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_24F92B098();
  [v1 setBool:0 forKey:v2];

  v3 = [objc_opt_self() shared];
  if (v3)
  {
    v6 = v3;
    [v3 setForceGamesCrossUseNotice_];

    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_24F32B924;
    v3 = v0[12];
    v4 = v0[10];
    v5 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x28217F228](v3, v4, v5);
}

uint64_t sub_24F32B924()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24F32BF38;
  }

  else
  {
    v2 = sub_24F32BA38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F32BA38()
{
  v1 = v0[9];
  sub_24E6364A0(v0[4], v1);
  v2 = type metadata accessor for Player(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_24E601704(v3, &unk_27F23E1F0);
    v4 = v0[2];
    v5 = *MEMORY[0x277D21CA8];
    v6 = sub_24F928AE8();
    (*(*(v6 - 8) + 104))(v4, v5, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[9];
    v10 = v0[4];

    sub_24E71BF38(v9);
    sub_24F920FC8();
    v11 = *(v10 + *(type metadata accessor for UpdateCrossUseConsentAction() + 20));
    v12 = [objc_opt_self() ams:*MEMORY[0x277CEE160] sharedAccountStoreForMediaType:?];
    v13 = [v12 ams_activeiTunesAccount];
    v14 = [v13 ams_DSID];

    if (v14)
    {
      v15 = [v14 integerValue];
    }

    else
    {
      v15 = 0;
    }

    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_24F32BCF0;
    v17 = v0[12];
    v18 = v0[8];
    v19 = v0[3];

    return sub_24F32C858(v17, v18, v11, v15, v14 == 0, v19);
  }
}

uint64_t sub_24F32BCF0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_24F32BE48, 0, 0);
}

uint64_t sub_24F32BE48()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[2];
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F32BF38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F32BFB8()
{
  updated = type metadata accessor for UpdateCrossUseConsentAction();
  v2 = *(*(updated - 8) + 80);

  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = type metadata accessor for Player(0);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {

    v5 = v4[6];
    v33 = sub_24F9289E8();
    v31 = (*(v33 - 8) + 8);
    v32 = *(v33 - 8);
    v30 = *v31;
    (*v31)(v3 + v5);

    if (*(v3 + v4[9] + 8) != 1)
    {
    }

    v6 = v3 + v4[13];
    v7 = type metadata accessor for CallProviderConversationHandleSet();
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = type metadata accessor for CallProviderConversationHandle();
      v9 = *(*(v8 - 8) + 48);
      if (!v9(v6, 1, v8))
      {

        v10 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v32 + 48))(v6 + v10, 1, v33))
        {
          (v30)(v6 + v10, v33);
        }
      }

      v11 = v6 + *(v7 + 20);
      if (!v9(v11, 1, v8))
      {

        v12 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v32 + 48))(v11 + v12, 1, v33))
        {
          (v30)(v11 + v12, v33);
        }
      }
    }

    if (*(v3 + v4[15] + 8))
    {
    }

    v13 = v3 + v4[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
    {

      v15 = type metadata accessor for Game();
      (v30)(v13 + v15[18], v33);
      v16 = v15[19];
      if (!(*(v32 + 48))(v13 + v16, 1, v33))
      {
        (v30)(v13 + v16, v33);
      }

      v17 = v15[21];
      v18 = sub_24F920818();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v13 + v17, 1, v18))
      {
        (*(v19 + 8))(v13 + v17, v18);
      }
    }

    v20 = v3 + v4[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
    {

      v22 = type metadata accessor for Game();
      (v30)(v20 + v22[18], v33);
      v23 = v22[19];
      if (!(*(v32 + 48))(v20 + v23, 1, v33))
      {
        (v30)(v20 + v23, v33);
      }

      v24 = v22[21];
      v25 = sub_24F920818();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v20 + v24, 1, v25))
      {
        (*(v26 + 8))(v20 + v24, v25);
      }
    }
  }

  v27 = *(updated + 24);
  v28 = sub_24F928AD8();
  (*(*(v28 - 8) + 8))(v3 + v27, v28);

  return swift_deallocObject();
}

uint64_t sub_24F32C6B8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateCrossUseConsentAction();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24F32C71C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for UpdateCrossUseConsentAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F32B678(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F32C810()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F32C858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 120) = a4;
  *(v6 + 128) = a6;
  *(v6 + 65) = a5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  v7 = sub_24F921668();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  v8 = sub_24F920988();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F32C980, 0, 0);
}

uint64_t sub_24F32C980()
{
  if (*(v0 + 65))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9220D8();
    __swift_project_value_buffer(v1, qword_27F39E8E0);
    v2 = sub_24F9220B8();
    v3 = sub_24F92BDB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "UpdateCrossUseConsentActionImplementation: linkedDSID should not be nil. Is App Store signed in?", v4, 2u);
      MEMORY[0x2530542D0](v4, -1, -1);
    }
  }

  sub_24F9212E8();
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  sub_24F920968();
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_24F32CB4C;
  v8 = *(v0 + 176);
  v9 = *(v0 + 104);

  return MEMORY[0x282165200](v8, v9, v5, v6);
}

uint64_t sub_24F32CB4C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v3 = sub_24F32D8E0;
  }

  else
  {
    v3 = sub_24F32CCB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F32CCB4()
{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 65);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2080;
    *(v0 + 72) = v5;
    *(v0 + 80) = v4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
    v9 = sub_24F92B188();
    v11 = sub_24E7620D4(v9, v10, v32);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24E5DD000, v2, v3, "UpdateCrossUseConsentActionImplementation: Acknowledged Cross Use Privacy (version %ld, linkedDSID %s)", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v12 = *(v0 + 192);
  *(v0 + 200) = sub_24F920FD8();
  *(v0 + 208) = v13;
  if (v12)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_27F39E8E0);
    v14 = v12;
    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 65);
      v19 = *(v0 + 112);
      v18 = *(v0 + 120);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v20 = 134218498;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2080;
      *(v0 + 56) = v18;
      *(v0 + 64) = v17 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
      v23 = sub_24F92B188();
      v25 = sub_24E7620D4(v23, v24, v32);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      v26 = v12;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v27;
      *v21 = v27;
      _os_log_impl(&dword_24E5DD000, v15, v16, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v20, 0x20u);
      sub_24E601704(v21, &qword_27F227B20);
      MEMORY[0x2530542D0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2530542D0](v22, -1, -1);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F518);
    v29 = swift_task_alloc();
    *(v0 + 216) = v29;
    *v29 = v0;
    v29[1] = sub_24F32D104;

    return MEMORY[0x28217F228](v0 + 88, v28, v28);
  }
}

uint64_t sub_24F32D104()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_24F32DB3C;
  }

  else
  {
    v2 = sub_24F32D220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F32D220()
{
  v1 = v0[11];
  v0[29] = v1;
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_24F32D2D0;
  v3 = v0[19];

  return MEMORY[0x282140780](v3, v1);
}

uint64_t sub_24F32D2D0()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F32DD90, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[32] = v3;
    *v3 = v2;
    v3[1] = sub_24F32D494;
    v4 = v2[25];
    v5 = v2[26];
    v6 = v2[19];

    return (sub_24F567434)(v6, v4, v5, 1802398060, 0xE400000000000000, 0x6C7070612E6D6F63, 0xEF73656D61672E65);
  }
}

uint64_t sub_24F32D494()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_24F32D664;
  }

  else
  {
    v2 = sub_24F32D5C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F32D5C8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F32D664()
{
  v23 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 264);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E8E0);
  v6 = v4;
  v7 = sub_24F9220B8();
  v8 = sub_24F92BDB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 65);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 134218498;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2080;
    *(v0 + 56) = v10;
    *(v0 + 64) = v9 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
    v15 = sub_24F92B188();
    v17 = sub_24E7620D4(v15, v16, &v22);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2112;
    v18 = v4;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v13 = v19;
    _os_log_impl(&dword_24E5DD000, v7, v8, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v12, 0x20u);
    sub_24E601704(v13, &qword_27F227B20);
    MEMORY[0x2530542D0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24F32D8E0()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 192);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 65);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    *(v0 + 56) = v7;
    *(v0 + 64) = v6 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
    v12 = sub_24F92B188();
    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v9, 0x20u);
    sub_24E601704(v10, &qword_27F227B20);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24F32DB3C()
{
  v20 = v0;
  v1 = *(v0 + 224);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 65);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    *(v0 + 56) = v7;
    *(v0 + 64) = v6 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
    v12 = sub_24F92B188();
    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v9, 0x20u);
    sub_24E601704(v10, &qword_27F227B20);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24F32DD90()
{
  v20 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 248);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 65);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    *(v0 + 56) = v7;
    *(v0 + 64) = v6 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
    v12 = sub_24F92B188();
    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v9, 0x20u);
    sub_24E601704(v10, &qword_27F227B20);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24F32E01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F32E160(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardEntryTable()
{
  result = qword_27F23F520;
  if (!qword_27F23F520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F32E2DC()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F32E420(319, &qword_27F23F530, type metadata accessor for LeaderboardEntryTableRow, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Player(319);
      if (v2 <= 0x3F)
      {
        sub_24E61C8D4();
        if (v3 <= 0x3F)
        {
          sub_24F32E420(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F32E420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F32E484(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33213C();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + 40);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F8);
    sub_24F332190(&qword_27F23F658, &qword_27F23F660);
    sub_24F92CD48();
    LOBYTE(v11) = *(v3 + 48);
    HIBYTE(v10) = 2;
    sub_24F33239C();
    sub_24F92CD48();
    LOBYTE(v11) = *(v3 + 49);
    HIBYTE(v10) = 3;
    sub_24F3323F0();
    sub_24F92CD48();
    type metadata accessor for LeaderboardEntryTable();
    LOBYTE(v11) = 4;
    type metadata accessor for Player(0);
    sub_24F332444(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    LOBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v11) = 6;
    sub_24F929608();
    sub_24F332444(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F32E898@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v28 - v4;
  v31 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v31);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F620);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v10 = type metadata accessor for LeaderboardEntryTable();
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v12[*(v13 + 36)];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  v36 = v14;
  sub_24E61DA68(&v39, v14, qword_27F21B590);
  v15 = *(v10 + 40);
  v16 = sub_24F929608();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v12[v15], 1, 1, v16);
  v18 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F33213C();
  v34 = v9;
  v19 = v35;
  sub_24F92D108();
  if (v19)
  {
    v22 = v36;
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_24E601704(v22, qword_27F24EC90);
    return sub_24E601704(&v12[v38], &qword_27F213E68);
  }

  else
  {
    v35 = v6;
    v28[1] = v16;
    v20 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v42 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v21 = v33;
    sub_24F92CC68();
    v23 = v40;
    *v12 = v39;
    *(v12 + 1) = v23;
    *(v12 + 4) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F8);
    v42 = 1;
    sub_24F332190(&qword_27F23F630, &qword_27F23F638);
    sub_24F92CC68();
    v24 = v36;
    *(v12 + 5) = v39;
    v42 = 2;
    sub_24F33222C();
    sub_24F92CC68();
    v12[48] = v39;
    v42 = 3;
    sub_24F332280();
    sub_24F92CC68();
    v12[49] = v39;
    LOBYTE(v39) = 4;
    sub_24F332444(&qword_27F213E38, type metadata accessor for Player);
    v25 = v35;
    sub_24F92CC68();
    sub_24F3322D4(v25, &v12[*(v10 + 32)], type metadata accessor for Player);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v42 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v39, v24, qword_27F24EC90);
    LOBYTE(v39) = 6;
    sub_24F332444(&qword_27F213F48, MEMORY[0x277D21F70]);
    v26 = v30;
    sub_24F92CC18();
    (*(v20 + 8))(v34, v21);
    sub_24E61DA68(v26, &v12[v38], &qword_27F213E68);
    sub_24F332064(v12, v29, type metadata accessor for LeaderboardEntryTable);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_24F33233C(v12, type metadata accessor for LeaderboardEntryTable);
  }
}

unint64_t sub_24F32F020()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x706F6353656D6974;
  if (v1 != 3)
  {
    v4 = 0x616C506C61636F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x736D657469;
  if (v1 != 1)
  {
    v5 = 0x6353726579616C70;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F32F100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F3325E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F32F128(uint64_t a1)
{
  v2 = sub_24F33213C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F32F164(uint64_t a1)
{
  v2 = sub_24F33213C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F32F220()
{
  result = qword_27F23F538;
  if (!qword_27F23F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F538);
  }

  return result;
}

uint64_t sub_24F32F274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v30 = a2;
  v32 = a1;
  v36 = a5;
  v6 = type metadata accessor for LeaderboardEntryTable();
  v37 = *(v6 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F924098();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = sub_24F925068();
  MEMORY[0x28223BE20](v10);
  v33 = sub_24F924C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F550);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F925058();
  v43 = v11;
  sub_24F332444(&qword_27F23F558, MEMORY[0x277CE0428]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F560);
  sub_24E602068(&qword_27F23F568, &qword_27F23F560);
  sub_24F92C6A8();
  v39 = v30;
  v40 = v31 & 1;
  v12 = a4;
  v41 = a4;
  v13 = v32;
  v42 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F570);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F578);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F580);
  v16 = sub_24F331478();
  v17 = sub_24F331670();
  v43 = v15;
  v44 = &type metadata for LeaderboardEntryPlayerScopeOption;
  v45 = v16;
  v46 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_24F3316C4();
  v43 = v14;
  v44 = &type metadata for LeaderboardEntryTimeScopeOption;
  v45 = OpaqueTypeConformance2;
  v46 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v36;
  sub_24F9233F8();
  v21 = v13;
  v22 = v34;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v34);
  v23 = v35;
  sub_24F332064(v12, v35, type metadata accessor for LeaderboardEntryTable);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = (v9 + *(v37 + 80) + v24) & ~*(v37 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v24, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  sub_24F3322D4(v23, v26 + v25, type metadata accessor for LeaderboardEntryTable);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5E0);
  v28 = (v20 + *(result + 36));
  *v28 = sub_24F33283C;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  return result;
}

uint64_t sub_24F32F73C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v54 = a5;
  v9 = type metadata accessor for LeaderboardEntryTable();
  v49 = *(v9 - 8);
  v55 = *(v49 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924098();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F580);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F578);
  v21 = *(v20 - 8);
  v52 = v20;
  v53 = v21;
  MEMORY[0x28223BE20](v20);
  v56 = &v39 - v22;
  v57 = a1;
  v58 = a2 & 1;
  v45 = a3;
  v59 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F598);
  sub_24F331508();
  sub_24F9272B8();
  LOBYTE(v60) = *(a3 + 48);
  v47 = *(v13 + 16);
  v42 = v12;
  v47(v15, a4, v12);
  v46 = type metadata accessor for LeaderboardEntryTable;
  v40 = v11;
  sub_24F332064(a3, v11, type metadata accessor for LeaderboardEntryTable);
  v23 = *(v13 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = *(v49 + 80);
  v26 = (v14 + v25 + v24) & ~v25;
  v49 = v23 | v25;
  v27 = swift_allocObject();
  v44 = *(v13 + 32);
  v44(v27 + v24, v15, v12);
  v43 = type metadata accessor for LeaderboardEntryTable;
  sub_24F3322D4(v11, v27 + v26, type metadata accessor for LeaderboardEntryTable);
  v41 = sub_24F331478();
  v28 = sub_24F331670();
  v29 = v50;
  sub_24F926AC8();

  v30 = v29;
  (*(v51 + 8))(v19, v29);
  v31 = v45;
  v64 = *(v45 + 49);
  v32 = v42;
  v47(v15, v48, v42);
  v33 = v31;
  v34 = v40;
  sub_24F332064(v33, v40, v46);
  v35 = swift_allocObject();
  v44(v35 + v24, v15, v32);
  sub_24F3322D4(v34, v35 + v26, v43);
  v60 = v30;
  v61 = &type metadata for LeaderboardEntryPlayerScopeOption;
  v62 = v41;
  v63 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24F3316C4();
  v36 = v52;
  v37 = v56;
  sub_24F926AC8();

  return (*(v53 + 8))(v37, v36);
}

uint64_t sub_24F32FCA0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5E8);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5B8);
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v46 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F0);
  MEMORY[0x28223BE20](v55);
  v56 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0);
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = &v46 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238340);
  MEMORY[0x28223BE20](v48);
  v51 = &v46 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5A8);
  MEMORY[0x28223BE20](v54);
  v16 = &v46 - v15;
  v17 = sub_24F924848();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    v47 = v16;
    v22 = v10;
    v23 = v12;
    v24 = v8;
    v25 = a3;
    v26 = v21;
    sub_24F921FD8();

    a3 = v25;
    v8 = v24;
    v12 = v23;
    v10 = v22;
    v16 = v47;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v18 + 8))(v20, v17);
    LOBYTE(a1) = v59;
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    *&v59 = *(a3 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F8);
    sub_24E602068(&qword_27F23F600, &qword_27F23F5F8);
    sub_24F921BA8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5C8);
    sub_24E602068(&qword_27F23F608, &qword_27F23F5E8);
    sub_24E602068(&qword_27F23F5C0, &qword_27F23F5C8);
    sub_24F927228();
    v45 = v57;
    (*(v8 + 16))(v56, v10, v57);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F23F5A0, &qword_27F23F5A8);
    sub_24F3315C0();
    sub_24F924E28();
    return (*(v8 + 8))(v10, v45);
  }

  else
  {
    *v16 = sub_24F9249A8();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v27 = v49;
    sub_24F923798();
    sub_24F927618();
    v28 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F610) + 44)];
    sub_24F9242E8();
    v29 = v51;
    (*(v50 + 32))(v51, v27, v12);
    v30 = (v29 + *(v48 + 36));
    v31 = v64;
    v30[4] = v63;
    v30[5] = v31;
    v30[6] = v65;
    v32 = v60;
    *v30 = v59;
    v30[1] = v32;
    v33 = v62;
    v30[2] = v61;
    v30[3] = v33;
    v34 = sub_24F925868();
    sub_24F923318();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_24F331FF4(v29, v28);
    v43 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A80) + 36);
    *v43 = v34;
    *(v43 + 8) = v36;
    *(v43 + 16) = v38;
    *(v43 + 24) = v40;
    *(v43 + 32) = v42;
    *(v43 + 40) = 0;
    sub_24E60169C(v16, v56, &qword_27F23F5A8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F23F5A0, &qword_27F23F5A8);
    sub_24F3315C0();
    sub_24F924E28();
    return sub_24E601704(v16, &qword_27F23F5A8);
  }
}

uint64_t sub_24F33049C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v36 = a3;
  v34 = sub_24F929888();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220208);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5C8);
  MEMORY[0x28223BE20](v31);
  v14 = &v29 - v13;
  v15 = type metadata accessor for LeaderboardEntryTableRow(0);
  v42[3] = v15;
  v42[4] = sub_24F332444(&qword_27F21ACA8, type metadata accessor for LeaderboardEntryTableRow);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  sub_24F332064(a2, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRow);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24F332444(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  v40 = sub_24F923598();
  v41 = v17 & 1;
  v35 = a2;
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));

  sub_24F929828();

  sub_24E601704(v37, &qword_27F2129B0);
  sub_24E601704(&v38, &qword_27F2129B0);
  *&v37[0] = v30;
  sub_24E9B5BEC();
  v18 = sub_24F92C638();
  *(&v39 + 1) = MEMORY[0x277D837D0];
  *&v38 = v18;
  *(&v38 + 1) = v19;
  sub_24F929868();
  v20 = *(v4 + 8);
  v21 = v6;
  v22 = v34;
  v20(v21, v34);
  sub_24E601704(&v38, &qword_27F2129B0);
  sub_24E66C1E0();
  sub_24F925EE8();
  v20(v9, v22);
  sub_24E88F154(&v40);
  v23 = v35 + *(v15 + 20);
  v24 = (v23 + *(type metadata accessor for LeaderboardEntry() + 20));
  v26 = *v24;
  v25 = v24[1];
  (*(v32 + 32))(v14, v12, v33);
  v27 = &v14[*(v31 + 52)];
  *v27 = v26;
  *(v27 + 1) = v25;
  sub_24F3320CC(v14, v36);
}

uint64_t sub_24F3308E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F618) + 48);

  return sub_24F33049C(v3, v4, a2);
}

uint64_t sub_24F3309AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = type metadata accessor for LeaderboardEntryTable();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *v2;
  v9 = *(v2 + 8);
  sub_24F332064(a1, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeaderboardEntryTable);
  v10 = (*(v6 + 80) + 25) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  sub_24F3322D4(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LeaderboardEntryTable);
  *a2 = sub_24F3313E0;
  a2[1] = v11;
  return sub_24E62AB1C(v8, v9);
}

uint64_t sub_24F330AF0()
{
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24F32F220();
  return sub_24F9218E8();
}

unint64_t sub_24F330B9C()
{
  result = qword_27F23F548;
  if (!qword_27F23F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F548);
  }

  return result;
}

uint64_t sub_24F330C9C()
{
  v1 = type metadata accessor for LeaderboardEntryTable();
  v2 = *(*(v1 - 1) + 80);
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + ((v2 + 25) & ~v2));

  v37 = v0 + ((v2 + 25) & ~v2);
  v3 = v37 + v1[8];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v38 = *(v6 - 8);
  v36 = *(v38 + 8);
  v36(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v34 = v1;
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v7 + v11, 1, v6))
      {
        v36(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    v13 = v10(v12, 1, v9);
    v1 = v34;
    if (!v13)
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v12 + v14, 1, v6))
      {
        v36(v12 + v14, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v15 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {
    v35 = v1;

    v17 = type metadata accessor for Game();
    v36(v15 + v17[18], v6);
    v18 = v17[19];
    if (!(*(v38 + 48))(v15 + v18, 1, v6))
    {
      v36(v15 + v18, v6);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }

    v1 = v35;
  }

  v22 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    v36(v22 + v24[18], v6);
    v25 = v24[19];
    if (!(*(v38 + 48))(v22 + v25, 1, v6))
    {
      v36(v22 + v25, v6);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  v29 = v37 + v1[9];
  if (*(v29 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = v1[10];
  v31 = sub_24F929608();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v37 + v30, 1, v31))
  {
    (*(v32 + 8))(v37 + v30, v31);
  }

  return swift_deallocObject();
}

uint64_t sub_24F3313E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LeaderboardEntryTable() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_24F32F274(a1, v6, v7, v8, a2);
}

unint64_t sub_24F331478()
{
  result = qword_27F23F588;
  if (!qword_27F23F588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F580);
    sub_24F331508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F588);
  }

  return result;
}

unint64_t sub_24F331508()
{
  result = qword_27F23F590;
  if (!qword_27F23F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F598);
    sub_24E602068(&qword_27F23F5A0, &qword_27F23F5A8);
    sub_24F3315C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F590);
  }

  return result;
}

unint64_t sub_24F3315C0()
{
  result = qword_27F23F5B0;
  if (!qword_27F23F5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F5B8);
    sub_24E602068(&qword_27F23F5C0, &qword_27F23F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F5B0);
  }

  return result;
}

unint64_t sub_24F331670()
{
  result = qword_27F23F5D0;
  if (!qword_27F23F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F5D0);
  }

  return result;
}

unint64_t sub_24F3316C4()
{
  result = qword_27F23F5D8;
  if (!qword_27F23F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F5D8);
  }

  return result;
}

uint64_t sub_24F331730()
{
  sub_24F924098();
  type metadata accessor for LeaderboardEntryTable();
  return sub_24F330944();
}

uint64_t objectdestroy_9Tm_2()
{
  v1 = v0;
  v2 = sub_24F924098();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for LeaderboardEntryTable();
  v44 = *(*(v6 - 8) + 80);
  (*(v3 + 8))(v1 + v4, v2);
  v43 = (v4 + v5 + v44) & ~v44;
  __swift_destroy_boxed_opaque_existential_1(v1 + v43);

  v41 = v6;
  v42 = v1 + v43;
  v7 = v1 + v43 + *(v6 + 32);

  v8 = type metadata accessor for Player(0);
  v9 = v8[6];
  v10 = sub_24F9289E8();
  v45 = *(v10 - 8);
  v11 = *(v45 + 8);
  v11(v7 + v9, v10);

  if (*(v7 + v8[9] + 8) != 1)
  {
  }

  v12 = v7 + v8[13];
  v13 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v40 = v11;
    v14 = type metadata accessor for CallProviderConversationHandle();
    v15 = *(*(v14 - 8) + 48);
    if (!v15(v12, 1, v14))
    {

      v16 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v45 + 48))(v12 + v16, 1, v10))
      {
        v40(v12 + v16, v10);
      }
    }

    v17 = v12 + *(v13 + 20);
    v18 = v15(v17, 1, v14);
    v11 = v40;
    if (!v18)
    {

      v19 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v45 + 48))(v17 + v19, 1, v10))
      {
        v40(v17 + v19, v10);
      }
    }
  }

  if (*(v7 + v8[15] + 8))
  {
  }

  v20 = v7 + v8[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v20, 1, PlayedTogetherInfo))
  {

    v22 = type metadata accessor for Game();
    v11(v20 + v22[18], v10);
    v23 = v22[19];
    if (!(*(v45 + 48))(v20 + v23, 1, v10))
    {
      v11(v20 + v23, v10);
    }

    v24 = v11;

    v25 = v22[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v20 + v25, 1, v26))
    {
      (*(v27 + 8))(v20 + v25, v26);
    }

    v11 = v24;
  }

  v28 = v7 + v8[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v30 = type metadata accessor for Game();
    v11(v28 + v30[18], v10);
    v31 = v30[19];
    if (!(*(v45 + 48))(v28 + v31, 1, v10))
    {
      v11(v28 + v31, v10);
    }

    v32 = v30[21];
    v33 = sub_24F920818();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v28 + v32, 1, v33))
    {
      (*(v34 + 8))(v28 + v32, v33);
    }
  }

  v35 = v42 + *(v41 + 36);
  if (*(v35 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v36 = *(v41 + 40);
  v37 = sub_24F929608();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v42 + v36, 1, v37))
  {
    (*(v38 + 8))(v42 + v36, v37);
  }

  return swift_deallocObject();
}

double sub_24F331F9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24F331FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F332064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3320CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F33213C()
{
  result = qword_27F23F628;
  if (!qword_27F23F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F628);
  }

  return result;
}

uint64_t sub_24F332190(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F5F8);
    sub_24F332444(a2, type metadata accessor for LeaderboardEntryTableRow);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F33222C()
{
  result = qword_27F23F640;
  if (!qword_27F23F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F640);
  }

  return result;
}

unint64_t sub_24F332280()
{
  result = qword_27F23F648;
  if (!qword_27F23F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F648);
  }

  return result;
}

uint64_t sub_24F3322D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F33233C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F33239C()
{
  result = qword_27F23F668;
  if (!qword_27F23F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F668);
  }

  return result;
}

unint64_t sub_24F3323F0()
{
  result = qword_27F23F670;
  if (!qword_27F23F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F670);
  }

  return result;
}

uint64_t sub_24F332444(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F3324E4()
{
  result = qword_27F23F688;
  if (!qword_27F23F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F688);
  }

  return result;
}

unint64_t sub_24F33253C()
{
  result = qword_27F23F690;
  if (!qword_27F23F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F690);
  }

  return result;
}

unint64_t sub_24F332594()
{
  result = qword_27F23F698;
  if (!qword_27F23F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F698);
  }

  return result;
}

uint64_t sub_24F3325E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353726579616C70 && a2 == 0xEB0000000065706FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706F6353656D6974 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F332858(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F332928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SignInGameCenterView()
{
  result = qword_27F23F6A0;
  if (!qword_27F23F6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F332A24()
{
  sub_24F264544();
  if (v0 <= 0x3F)
  {
    sub_24F2645E8(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24E6CAE80();
      if (v2 <= 0x3F)
      {
        sub_24F332C10(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F928FD8();
          if (v4 <= 0x3F)
          {
            sub_24F332C10(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24F2645E8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24F332C10(319, &qword_27F22CC10, &unk_27F237670, &unk_24F989C80, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
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

void sub_24F332C10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_24F332C90()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E330 = xmmword_24F947C50;
  unk_27F39E340 = xmmword_24F9DA310;
  *&xmmword_27F39E350 = 0;
  *(&xmmword_27F39E350 + 1) = v0;
  qword_27F39E360 = v2;
  unk_27F39E368 = v3;
  return result;
}

double sub_24F332CE0()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E370 = xmmword_24F947C70;
  unk_27F39E380 = xmmword_24F9DA310;
  *&xmmword_27F39E390 = 0;
  *(&xmmword_27F39E390 + 1) = v0;
  qword_27F39E3A0 = v2;
  unk_27F39E3A8 = v3;
  return result;
}

double sub_24F332D30@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = type metadata accessor for SignInGameCenterView();
  v4 = v3 - 8;
  v62 = *(v3 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6B0);
  MEMORY[0x28223BE20](v66);
  v7 = v58 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6B8);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v58 - v8;
  v9 = type metadata accessor for ProgressPerformAction();
  MEMORY[0x28223BE20](v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;
  sub_24E615E00((v1 + 6), v12 + 32);
  v13 = v1 + *(v4 + 64);
  LODWORD(v78) = *v13;
  v77 = *(v13 + 1);
  LOBYTE(v87) = v78;
  v88 = v77;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v14 = v81;
  v15 = v82;
  v16 = (v1 + *(v4 + 68));
  v18 = *v16;
  v17 = v16[1];
  v70 = v18;
  v69 = v17;
  v87 = v18;
  v88 = v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8);
  sub_24F926F58();
  v65 = v81;
  v19 = v82;
  sub_24F928A98();
  *v11 = v12;
  *(v11 + 8) = v14;
  v11[24] = v15;
  *(v11 + 2) = v65;
  *(v11 + 6) = v19;
  v67 = v11;
  v20 = v2[12];
  *&v65 = v2[11];
  v64 = v20;

  v63 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *(v7 + 6) = v9;
  *(v7 + 7) = sub_24E6CF670(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7 + 3);
  sub_24F333EE8(v11, boxed_opaque_existential_1, type metadata accessor for ProgressPerformAction);
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 15) = 0;
  LOBYTE(v81) = v78;
  *(&v81 + 1) = v77;
  sub_24F926F38();
  v60 = v87;
  v22 = v2[18];
  v23 = v2;
  v24 = v2;
  v25 = v59;
  sub_24F333EE8(v23, v59, type metadata accessor for SignInGameCenterView);
  v26 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v27 = swift_allocObject();
  sub_24F333F54(v25, v27 + v26);
  v75 = v24;
  sub_24F333EE8(v24, v25, type metadata accessor for SignInGameCenterView);
  v28 = swift_allocObject();
  sub_24F333F54(v25, v28 + v26);
  sub_24F333EE8(v24, v25, type metadata accessor for SignInGameCenterView);
  v29 = swift_allocObject();
  sub_24F333F54(v25, v29 + v26);
  v30 = v66;
  v31 = *(v66 + 136);
  v32 = type metadata accessor for HeaderPresentation(0);
  (*(*(v32 - 8) + 56))(&v7[v31], 1, 1, v32);
  v33 = &v7[v30[37]];
  LOBYTE(v87) = 0;
  v58[1] = v22;

  sub_24F926F28();
  v34 = *(&v81 + 1);
  *v33 = v81;
  *(v33 + 1) = v34;
  v35 = &v7[v30[38]];
  LOBYTE(v87) = 0;
  sub_24F926F28();
  v36 = *(&v81 + 1);
  *v35 = v81;
  *(v35 + 1) = v36;
  v37 = &v7[v30[39]];
  v87 = 0;
  sub_24F926F28();
  v38 = *(&v81 + 1);
  *v37 = v81;
  *(v37 + 1) = v38;
  v39 = v30[40];
  *&v7[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v40 = v30[41];
  *&v7[v40] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v41 = v30[42];
  *&v7[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v42 = &v7[v30[43]];
  *v42 = sub_24F923398() & 1;
  *(v42 + 1) = v43;
  v42[16] = v44 & 1;
  v45 = v64;
  *v7 = v65;
  *(v7 + 1) = v45;
  *(v7 + 2) = v63;
  v7[128] = 0;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 8) = 0;
  v7[129] = v60;
  *(v7 + 17) = v22;
  *(v7 + 18) = 0;
  *(v7 + 19) = 0;
  *(v7 + 20) = sub_24F333FB8;
  *(v7 + 21) = v27;
  *(v7 + 22) = sub_24F334038;
  *(v7 + 23) = v28;
  *(v7 + 24) = sub_24F334340;
  *(v7 + 25) = v29;
  *(v7 + 26) = CGSizeMake;
  *(v7 + 27) = 0;
  v46 = v30;
  v7[v30[35]] = 7;
  v7[v30[36]] = 0;
  sub_24E60169C(v75 + 104, &v81, qword_27F21B590);
  LOBYTE(v87) = v78;
  v88 = v77;
  sub_24F926F38();
  LOBYTE(v27) = v80;
  KeyPath = swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = v27;
  v84 = KeyPath;
  v85 = sub_24E600A48;
  v86 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6C0);
  v50 = sub_24E602068(&qword_27F23F6C8, &qword_27F23F6B0);
  v51 = sub_24F33552C();
  v52 = v71;
  sub_24F926588();
  sub_24E601704(&v81, &qword_27F23F6C0);
  sub_24E601704(v7, &qword_27F23F6B0);
  v79 = v75;
  sub_24F928FD8();
  *&v81 = v46;
  *(&v81 + 1) = v49;
  v82 = v50;
  v83 = v51;
  swift_getOpaqueTypeConformance2();
  v53 = v74;
  v54 = v72;
  sub_24F925EB8();
  (*(v73 + 8))(v52, v54);
  v87 = v70;
  v88 = v69;
  sub_24F926F58();
  sub_24F335640(v67);
  v78 = v81;
  v55 = v82;
  v56 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6E0) + 36);
  result = *&v78;
  *v56 = v78;
  *(v56 + 16) = v55;
  return result;
}

void *sub_24F333664@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24F333714(a1, __src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v8, __src, 0x129uLL);
  sub_24E60169C(__dst, &v5, &qword_27F23F6E8);
  sub_24E601704(v8, &qword_27F23F6E8);
  return memcpy((a2 + 24), __dst, 0x129uLL);
}

uint64_t sub_24F333714@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_24F33569C(v78);
  v36 = v78[0];
  v37 = v78[1];
  v38 = v78[2];
  v39 = v78[3];
  KeyPath = swift_getKeyPath();
  v40 = 0;
  sub_24F335F48(v78, v64);
  v7 = sub_24F925818();
  sub_24F33569C(v79);
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v77 = 0;
  v16 = a1[3];
  v17 = a1[5];
  v28 = a1[4];
  v29 = a1[2];

  sub_24F33569C(v80);
  v32 = v80[0];
  v33 = v80[1];
  v34 = v80[2];
  v35 = v80[3];
  sub_24F335F48(v80, v64);
  v18 = sub_24F925818();
  sub_24F33569C(&v81);
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
  *(a2 + 296) = 1;
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
  sub_24E60169C(v41, v64, &qword_27F23F6F0);
  sub_24E60169C(&v45, v64, &qword_27F23F6F8);
  sub_24E601704(v53, &qword_27F23F6F8);
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
  return sub_24E601704(v64, &qword_27F23F6F0);
}

uint64_t sub_24F333B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_24F33569C(v11);
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
  return sub_24F335F48(v11, v10);
}

uint64_t sub_24F333BA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];

  sub_24F33569C(v11);
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
  return sub_24F335F48(v11, &v10);
}

uint64_t sub_24F333C20@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  swift_unknownObjectWeakInit();
  v15 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFF8)) init];
  swift_unknownObjectWeakAssign();
  v13[0] = sub_24F928FD8();
  sub_24F929298();
  v8 = *(v2 + 16);
  v8(v7, v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D000);
  sub_24E602068(&qword_27F23D008, &qword_27F23D000);
  sub_24F929238();
  v9 = *(v2 + 8);
  v9(v4, v1);
  sub_24E601704(v14, &qword_27F23D000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  v8((v11 + v10), v7, v1);
  sub_24F929298();
  v8(v4, (v11 + v10), v1);
  swift_setDeallocating();
  v9((v11 + v10), v1);
  swift_deallocClassInstance();
  sub_24F929228();
  v9(v4, v1);
  return (v9)(v7, v1);
}

uint64_t sub_24F333EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F333F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInGameCenterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24F333FB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInGameCenterView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F333664(v4, a1);
}

uint64_t sub_24F334038@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInGameCenterView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F333B08(v4, a1);
}

uint64_t objectdestroyTm_63()
{
  v1 = type metadata accessor for SignInGameCenterView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 48);

  if (*(v2 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 104);
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F334340@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInGameCenterView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F333BA0(v4, a1);
}

uint64_t sub_24F3343C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  sub_24E60169C(v2, &v13, qword_27F21B590);
  if (v14)
  {
    sub_24E612C80(&v13, v15);
    v11 = sub_24F9232F8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_24E615E00(v15, &v13);
    sub_24F921788();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v8 + 32))(a1, v10, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_24E601704(&v13, qword_27F21B590);
    return (*(v8 + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_24F3345F4@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000024FA73C80;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

__n128 sub_24F334670@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 5);
  v32 = *(v1 + 4);
  v33 = v6;
  v38 = v32;
  v39 = v6;
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 2);
  v31[0] = v4;
  v31[1] = v7;
  v10 = v7;
  v30 = 0;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v36 = v4;
  v37 = v7;
  *&v34[0] = v13;
  *(&v34[0] + 1) = v14;
  v15 = *(v1 + 5);
  v34[1] = v9;
  v34[2] = v5;
  v34[3] = v8;
  v34[4] = v15;
  v27 = v5;
  v28 = v8;
  v29 = v15;
  v25 = v34[0];
  v26 = v9;
  v35[0] = v13;
  v35[1] = v14;

  sub_24F335F48(v31, v24);

  sub_24F33619C(v34, v24);
  sub_24F3361D4(v35);

  v16 = v30;
  sub_24F927628();
  sub_24F9242E8();
  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v16;
  *(a1 + 24) = v12;
  *(a1 + 32) = v11;
  v17 = v25;
  *(a1 + 56) = v26;
  v18 = v28;
  *(a1 + 72) = v27;
  *(a1 + 88) = v18;
  *(a1 + 104) = v29;
  *(a1 + 40) = v17;
  v19 = v24[0];
  v20 = v24[1];
  v21 = v24[3];
  *(a1 + 152) = v24[2];
  *(a1 + 136) = v20;
  *(a1 + 120) = v19;
  result = v24[4];
  v23 = v24[5];
  *(a1 + 216) = v24[6];
  *(a1 + 200) = v23;
  *(a1 + 184) = result;
  *(a1 + 168) = v21;
  return result;
}

uint64_t sub_24F334830@<X0>(uint64_t a1@<X8>)
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

  v25 = *(v1 + 40);
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

uint64_t sub_24F334F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
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
  sub_24E64575C();
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24F336328(v7);
}

uint64_t sub_24F335248@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_24F929888();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v1[1];
  v30 = *v1;
  v31 = v4;
  sub_24E600AEC();

  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;
  sub_24E600B40(v5, v7, v9 & 1);

  LODWORD(v30) = sub_24F9251C8();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v15;
  v31 = v17;
  v32 = v19 & 1;
  v33 = v21;
  v34 = KeyPath;
  v35 = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  sub_24F9297A8();
  sub_24E601704(v28, &qword_27F2129B0);
  sub_24E601704(v29, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  sub_24F925EE8();
  (*(v25 + 8))(v3, v27);
  sub_24E600B40(v15, v17, v19 & 1);
}

unint64_t sub_24F33552C()
{
  result = qword_27F23F6D0;
  if (!qword_27F23F6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6C0);
    sub_24F3355E4();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F6D0);
  }

  return result;
}

unint64_t sub_24F3355E4()
{
  result = qword_27F23F6D8;
  if (!qword_27F23F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F6D8);
  }

  return result;
}

uint64_t sub_24F335640(uint64_t a1)
{
  v2 = type metadata accessor for ProgressPerformAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_24F33569C@<D0>(__int128 *a1@<X8>)
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
  v60 = type metadata accessor for SignInGameCenterView();
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
      if (qword_27F211120 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39E370;
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
  if (qword_27F211118 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39E330;
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

unint64_t sub_24F335FCC()
{
  result = qword_27F23F700;
  if (!qword_27F23F700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6B8);
    sub_24F928FD8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6C0);
    sub_24E602068(&qword_27F23F6C8, &qword_27F23F6B0);
    sub_24F33552C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24F265E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F700);
  }

  return result;
}

unint64_t sub_24F33622C()
{
  result = qword_27F23F708;
  if (!qword_27F23F708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F710);
    sub_24E602068(&qword_27F23F718, &qword_27F23F720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F708);
  }

  return result;
}

uint64_t sub_24F336328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP011_JetEngine_aB0E19automationSemanticsyQr0dE0010AutomationG0VFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t FriendInviteButtonShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t FriendInviteButtonShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x444965676170;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_24F336598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444965676170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F33661C(uint64_t a1)
{
  v2 = sub_24F336BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F336658(uint64_t a1)
{
  v2 = sub_24F336BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendInviteButtonShelfIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F728);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F336BA4();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

uint64_t FriendInviteButtonShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F336BA4();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CC28();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F33697C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F728);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F336BA4();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F336AB8@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x444965676170;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24F336BA4()
{
  result = qword_27F23F730;
  if (!qword_27F23F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F730);
  }

  return result;
}

unint64_t sub_24F336C1C()
{
  result = qword_27F23F740;
  if (!qword_27F23F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F740);
  }

  return result;
}

unint64_t sub_24F336C74()
{
  result = qword_27F23F748;
  if (!qword_27F23F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F748);
  }

  return result;
}

unint64_t sub_24F336CCC()
{
  result = qword_27F23F750;
  if (!qword_27F23F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F750);
  }

  return result;
}

uint64_t sub_24F336D34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F336E78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for NicknameSection()
{
  result = qword_27F23F760;
  if (!qword_27F23F760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F336FE4()
{
  sub_24E600550();
  if (v0 <= 0x3F)
  {
    sub_24F337100(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F337100(319, &qword_27F23F770, type metadata accessor for NicknameModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        sub_24E654514();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F337100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F337180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F780);
  MEMORY[0x28223BE20](v5);
  v7 = v10 - v6;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F788);
  sub_24F3381F0(v0, &v7[*(v8 + 44)]);
  if (qword_27F2116C0 != -1)
  {
    swift_once();
  }

  v10[4] = qword_27F39EE48;
  v10[5] = unk_27F39EE50;
  type metadata accessor for NicknameSection();

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v2 + 8))(v4, v1);
  sub_24E602068(&qword_27F23F790, &qword_27F23F780);
  sub_24E600AEC();
  sub_24F926918();

  return sub_24E601704(v7, &qword_27F23F780);
}

uint64_t sub_24F337440(uint64_t a1)
{
  v1[3] = a1;
  sub_24F92B7F8();
  v1[4] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_24F3374D8, v3, v2);
}

uint64_t sub_24F3374D8()
{
  type metadata accessor for NicknameSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  sub_24F927358();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24F33759C;

  return sub_24F548E70();
}

uint64_t sub_24F33759C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_24F3376F8;

  return sub_24F337818();
}

uint64_t sub_24F3376F8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v3, v2);
}

uint64_t sub_24F337818()
{
  v1[6] = v0;
  sub_24F92B7F8();
  v1[7] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_24F3378B0, v3, v2);
}

uint64_t sub_24F3378B0()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for NicknameSection();
  if (*(v1 + *(v2 + 28)))
  {

    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E8F8);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "The user is restricted from editing their nickname. Skipping auto-assigning a new nickname.", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 112) = *(v2 + 24);
    *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
    sub_24F927358();
    *(v0 + 88) = *(*(v0 + 16) + 40);

    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_24F337A98;

    return sub_24F552A54();
  }
}

uint64_t sub_24F337A98(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_24F337F80;
  }

  else
  {
    *(v4 + 116) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_24F337BC4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24F337BC4()
{
  v21 = v0;
  v1 = *(v0 + 116);

  if (v1 == 1)
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E8F8);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "The player needs a new nickname.", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    sub_24F927358();
    v6 = *(v0 + 24);
    swift_getKeyPath();
    *(v0 + 32) = v6;
    sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel);
    sub_24F91FD88();

    v7 = *(v6 + 48);

    if (v7[2])
    {
      v8 = v7[4];
      v9 = v7[5];
      swift_bridgeObjectRetain_n();

      v10 = sub_24F9220B8();
      v11 = sub_24F92BD98();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_24E7620D4(v8, v9, &v20);
        _os_log_impl(&dword_24E5DD000, v10, v11, "Received nickname suggestions: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x2530542D0](v13, -1, -1);
        MEMORY[0x2530542D0](v12, -1, -1);
      }

      sub_24F927358();
      sub_24F549384(v8, v9);

      sub_24F3394EC();
    }

    else
    {
    }
  }

  else
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E8F8);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "The player may have changed the nickname. Skipping auto-assigning a new nickname.", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24F337F80()
{

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to get the player default nickname state: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24E5DD000, v12, v13, "The player may have changed the nickname. Skipping auto-assigning a new nickname.", v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24F3381F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v129 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F798);
  MEMORY[0x28223BE20](v116);
  v117 = &v114 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7A0);
  v125 = *(v4 - 8);
  v126 = v4;
  MEMORY[0x28223BE20](v4);
  v119 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v114 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7A8);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v133 = &v114 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7B0);
  MEMORY[0x28223BE20](v12);
  v14 = &v114 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v114 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7C0);
  MEMORY[0x28223BE20](v131);
  v132 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v114 - v20;
  MEMORY[0x28223BE20](v22);
  v134 = &v114 - v23;
  v135 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7C8);
  sub_24E602068(&qword_27F23F7D0, &qword_27F23F7C8);
  sub_24F923BA8();
  v24 = sub_24F9257F8();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7D8) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7E0) + 36)];
  v35 = v158;
  *v34 = v157;
  *(v34 + 1) = v35;
  *(v34 + 2) = v159;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7E8) + 36)] = 256;
  v115 = objc_opt_self();
  v36 = [v115 secondarySystemBackgroundColor];
  v37 = sub_24F926BF8();
  v38 = sub_24F925808();
  v39 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7F0) + 36)];
  *v39 = v37;
  v39[8] = v38;
  v40 = &v14[*(v12 + 36)];
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_24F924B38();
  (*(*(v42 - 8) + 104))(v40, v41, v42);
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0) + 36)] = 256;
  sub_24F33B3E8();
  sub_24F9262F8();
  sub_24E601704(v14, &qword_27F23F7B0);
  v43 = sub_24F925828();
  type metadata accessor for NicknameSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  sub_24F927358();
  v44 = v143;
  swift_getKeyPath();
  *&v143 = v44;
  sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel);
  sub_24F91FD88();

  v45 = *(v44 + 80);

  if (v45)
  {
  }

  sub_24F923318();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24E6009C8(v17, v21, &qword_27F23F7B8);
  v54 = &v21[*(v131 + 36)];
  *v54 = v43;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_24E6009C8(v21, v134, &qword_27F23F7C0);
  v124 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  v130 = v160;
  v131 = v162;
  v122 = v165;
  v123 = v164;
  v120 = v161;
  v121 = v163;
  LOBYTE(v143) = v161;
  LOBYTE(v136) = v163;
  sub_24F927358();
  v55 = v143;
  swift_getKeyPath();
  *&v143 = v55;
  sub_24F91FD88();

  v57 = *(v55 + 72);
  v56 = *(v55 + 80);

  if (v56)
  {
    *&v143 = v57;
    *(&v143 + 1) = v56;
    sub_24E600AEC();
    v58 = sub_24F925E18();
    v60 = v59;
    v62 = v61;
    v63 = [v115 systemRedColor];
    *&v143 = sub_24F926BF8();
    v64 = sub_24F925C58();
    v66 = v65;
    v68 = v67;
    sub_24E600B40(v58, v60, v62 & 1);

    sub_24F925A08();
    v69 = sub_24F925C98();
    v71 = v70;
    v73 = v72;
    v75 = v74;

    sub_24E600B40(v64, v66, v68 & 1);

    LOBYTE(v58) = sub_24F9257F8();
    sub_24F923318();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v73 & 1;
    LOBYTE(v143) = v73 & 1;
    LOBYTE(v136) = 0;
    v85 = sub_24F925868();
    sub_24F923318();
    LOBYTE(v150) = 0;
    *&v136 = v69;
    *(&v136 + 1) = v71;
    LOBYTE(v137) = v84;
    *(&v137 + 1) = v75;
    LOBYTE(v138) = v58;
    *(&v138 + 1) = v77;
    *&v139 = v79;
    *(&v139 + 1) = v81;
    *&v140 = v83;
    BYTE8(v140) = 0;
    LOBYTE(v141) = v85;
    *(&v141 + 1) = v86;
    *&v142[0] = v87;
    *(&v142[0] + 1) = v88;
    *&v142[1] = v89;
    BYTE8(v142[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F840);
    sub_24F33B7B4();
    v90 = v117;
    sub_24F9262F8();
    v147 = v140;
    v148 = v141;
    v149[0] = v142[0];
    *(v149 + 9) = *(v142 + 9);
    v143 = v136;
    v144 = v137;
    v145 = v138;
    v146 = v139;
    sub_24E601704(&v143, &qword_27F23F840);
    *(v90 + *(v116 + 36)) = 256;
    sub_24F927628();
    sub_24F9242E8();
    v91 = v119;
    sub_24E6009C8(v90, v119, &qword_27F23F798);
    v92 = v126;
    v93 = (v91 + *(v126 + 36));
    v94 = v141;
    v93[4] = v140;
    v93[5] = v94;
    v93[6] = v142[0];
    v95 = v137;
    *v93 = v136;
    v93[1] = v95;
    v96 = v139;
    v93[2] = v138;
    v93[3] = v96;
    v97 = v91;
    v98 = v118;
    sub_24E6009C8(v97, v118, &qword_27F23F7A0);
    v99 = v98;
    v100 = v133;
    sub_24E6009C8(v99, v133, &qword_27F23F7A0);
    (*(v125 + 56))(v100, 0, 1, v92);
  }

  else
  {
    v100 = v133;
    (*(v125 + 56))(v133, 1, 1, v126);
  }

  v129 = 0x800000024FA589F0;
  v101 = v132;
  sub_24E60169C(v134, v132, &qword_27F23F7C0);
  v102 = v127;
  sub_24E60169C(v100, v127, &qword_27F23F7A8);
  v103 = v128;
  sub_24E60169C(v101, v128, &qword_27F23F7C0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F830);
  v105 = v103 + *(v104 + 48);
  v106 = v123;
  v107 = v124;
  *&v150 = v124;
  *(&v150 + 1) = v130;
  v109 = v120;
  v108 = v121;
  LOBYTE(v151) = v120;
  *(&v151 + 1) = *v156;
  DWORD1(v151) = *&v156[3];
  *(&v151 + 1) = v131;
  LOBYTE(v152) = v121;
  *(&v152 + 1) = *v155;
  DWORD1(v152) = *&v155[3];
  *(&v152 + 1) = v123;
  v110 = v122;
  *&v153 = v122;
  *(&v153 + 1) = 0xD000000000000020;
  v154 = v129;
  *(v105 + 64) = v129;
  v111 = v151;
  *v105 = v150;
  *(v105 + 16) = v111;
  v112 = v153;
  *(v105 + 32) = v152;
  *(v105 + 48) = v112;
  sub_24E60169C(v102, v103 + *(v104 + 64), &qword_27F23F7A8);
  sub_24E60169C(&v150, &v143, &qword_27F23F838);
  sub_24E601704(v133, &qword_27F23F7A8);
  sub_24E601704(v134, &qword_27F23F7C0);
  sub_24E601704(v102, &qword_27F23F7A8);
  *&v143 = v107;
  *(&v143 + 1) = v130;
  LOBYTE(v144) = v109;
  *(&v144 + 1) = *v156;
  DWORD1(v144) = *&v156[3];
  *(&v144 + 1) = v131;
  LOBYTE(v145) = v108;
  *(&v145 + 1) = *v155;
  DWORD1(v145) = *&v155[3];
  *(&v145 + 1) = v106;
  *&v146 = v110;
  *(&v146 + 1) = 0xD000000000000020;
  *&v147 = v129;
  sub_24E601704(&v143, &qword_27F23F838);
  return sub_24E601704(v132, &qword_27F23F7C0);
}

uint64_t sub_24F338E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F850);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v7;
  v8 = type metadata accessor for NicknameSection();
  v9 = v8 - 8;
  v54 = *(v8 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F858);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F860);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  sub_24F927358();
  v25 = *(v9 + 36);
  v55 = a1;
  v53 = *(a1 + v25);
  sub_24F33AF90(a1, v11, type metadata accessor for NicknameSection);
  v26 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v27 = swift_allocObject();
  sub_24F33AC48(v11, v27 + v26);
  type metadata accessor for NicknameModel();
  sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel);
  sub_24F927378();
  v28 = type metadata accessor for NicknameTextField(0);
  v15[*(v28 + 20)] = v53;
  v29 = &v15[*(v28 + 24)];
  *v29 = sub_24F33B840;
  v29[1] = v27;
  v30 = v56;
  v31 = [objc_opt_self() secondarySystemBackgroundColor];
  v32 = sub_24F926BF8();
  v33 = sub_24F925808();
  v34 = &v15[*(v13 + 44)];
  *v34 = v32;
  v34[8] = v33;
  sub_24F927638();
  v35 = 1;
  sub_24F9242E8();
  v36 = v15;
  v37 = v57;
  sub_24E6009C8(v36, v21, &qword_27F23F858);
  v38 = &v21[*(v17 + 44)];
  v39 = v70;
  *(v38 + 4) = v69;
  *(v38 + 5) = v39;
  *(v38 + 6) = v71;
  v40 = v66;
  *v38 = v65;
  *(v38 + 1) = v40;
  v41 = v68;
  *(v38 + 2) = v67;
  *(v38 + 3) = v41;
  sub_24E6009C8(v21, v24, &qword_27F23F860);
  v42 = v55 + *(v9 + 40);
  v43 = *v42;
  v44 = *(v42 + 8);
  v63 = v43;
  v64 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v45 = v59;
  if (v62 == 1)
  {
    v46 = v52;
    sub_24F923798();
    (*(v45 + 32))(v30, v46, v37);
    v35 = 0;
  }

  (*(v45 + 56))(v30, v35, 1, v37);
  v47 = v58;
  sub_24E60169C(v24, v58, &qword_27F23F860);
  v48 = v60;
  sub_24E60169C(v30, v60, &qword_27F23F850);
  v49 = v61;
  sub_24E60169C(v47, v61, &qword_27F23F860);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F868);
  sub_24E60169C(v48, v49 + *(v50 + 48), &qword_27F23F850);
  sub_24E601704(v30, &qword_27F23F850);
  sub_24E601704(v24, &qword_27F23F860);
  sub_24E601704(v48, &qword_27F23F850);
  return sub_24E601704(v47, &qword_27F23F860);
}

uint64_t sub_24F3394EC()
{
  v1 = v0;
  v57 = sub_24F921B58();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NicknameSection();
  v63 = *(v3 - 8);
  v62 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24F928AD8();
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928B08();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = type metadata accessor for SetNicknameAction();
  MEMORY[0x28223BE20](v15);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v3;
  sub_24F927358();
  v17 = v74;
  swift_getKeyPath();
  *&v74 = v17;
  sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel);
  sub_24F91FD88();

  v18 = *(v17 + 56);
  v19 = *(v17 + 64);

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  v20 = v14;
  v21 = v66;
  (*(v12 + 8))(v20, v11);
  v22 = v67;
  v58 = v74;
  v23 = v75;
  v24 = v76;
  v53 = v15;
  v25 = v59;
  sub_24F928A98();
  *v25 = v18;
  *(v25 + 8) = v19;
  *(v25 + 16) = v58;
  *(v25 + 32) = v23;
  *(v25 + 40) = v24;
  *(v25 + 48) = 0;
  sub_24F928A98();
  sub_24F928AF8();
  sub_24F928A98();
  v26 = v1;
  v27 = v1;
  v28 = v61;
  sub_24F33AF90(v27, v61, type metadata accessor for NicknameSection);
  v29 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v30 = swift_allocObject();
  sub_24F33AC48(v28, v30 + v29);
  sub_24F928AF8();
  sub_24F7695C8(&v74);
  if (v76)
  {
    v62 = v76;
    v63 = v77;
    v61 = __swift_project_boxed_opaque_existential_1(&v74, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24F9479A0;
    *(v31 + 56) = v53;
    *(v31 + 64) = sub_24F33B9F4(&qword_27F216390, type metadata accessor for SetNicknameAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
    sub_24F33AF90(v25, boxed_opaque_existential_1, type metadata accessor for SetNicknameAction);
    v33 = MEMORY[0x277D21CB8];
    v34 = v65;
    *(v31 + 96) = v65;
    *(v31 + 104) = v33;
    v35 = __swift_allocate_boxed_opaque_existential_1((v31 + 72));
    v36 = v64;
    v37 = *(v64 + 16);
    v37(v35, v21, v34);
    *(v31 + 136) = v34;
    *(v31 + 144) = v33;
    v38 = __swift_allocate_boxed_opaque_existential_1((v31 + 112));
    v37(v38, v22, v34);
    v39 = *(v54 + 32);
    v52 = v26;
    v40 = (v26 + v39);
    v41 = *v40;
    v42 = *(v40 + 1);
    v68 = v41;
    v69 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F58();
    v44 = v70[0];
    v43 = v70[1];
    v45 = v71;
    v72 = type metadata accessor for ProgressPerformAction();
    v73 = sub_24F33B9F4(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
    v46 = __swift_allocate_boxed_opaque_existential_1(v70);
    sub_24F928A98();
    *v46 = v31;
    v46[1] = v44;
    v46[2] = v43;
    *(v46 + 24) = v45;
    v46[5] = 0;
    v46[6] = 0;
    v46[4] = 0;
    v47 = v55;
    sub_24F76973C(v55);
    sub_24F9218A8();
    (*(v56 + 8))(v47, v57);
    v48 = *(v36 + 8);
    v48(v67, v34);
    v48(v66, v34);
    sub_24F33B28C(v25, type metadata accessor for SetNicknameAction);
    __swift_destroy_boxed_opaque_existential_1(v70);
    return __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    v50 = v65;
    v51 = *(v64 + 8);
    v51(v22, v65);
    v51(v21, v50);
    sub_24F33B28C(v25, type metadata accessor for SetNicknameAction);
    return sub_24E601704(&v74, &unk_27F212740);
  }
}

uint64_t sub_24F339CE4@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0x656D616E6B63694ELL;
  v2._object = 0xEE006C6562614C2ELL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  sub_24F925938();
  v9 = sub_24F925B78();
  v11 = v10;
  v13 = v12;
  sub_24E600B40(v4, v6, v8 & 1);

  sub_24F9251C8();
  v14 = sub_24F925C58();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24E600B40(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_24F339E34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_24F92B858();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_24F92B7F8();
  v4 = sub_24F92B7E8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_24EA99ECC(0, 0, v2, &unk_24F9E6C48, v5);
}

uint64_t sub_24F339F50(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24F92B7F8();
  *(v1 + 24) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F339FE8, v3, v2);
}

uint64_t sub_24F339FE8()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24F33A0A0(uint64_t a1)
{
  v2 = type metadata accessor for NicknameSection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24F33AF90(a1, v5, type metadata accessor for NicknameSection);
  sub_24F92B7F8();
  v10 = sub_24F92B7E8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24F33AC48(v5, v12 + v11);
  sub_24EA998B8(0, 0, v8, &unk_24F9E6C10, v12);
}

uint64_t sub_24F33A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = type metadata accessor for NicknameSection();
  v4[10] = swift_task_alloc();
  v5 = sub_24F92CA08();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_24F92B7F8();
  v4[14] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v4[15] = v7;
  v4[16] = v6;

  return MEMORY[0x2822009F8](sub_24F33A398, v7, v6);
}

uint64_t sub_24F33A398()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_24F33A47C;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24F33A47C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_24F33BA3C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_24F33A610;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24F33A610()
{
  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  sub_24F927358();
  v0[19] = *(v0[5] + 40);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_24F33A6E8;

  return sub_24F553070();
}

uint64_t sub_24F33A6E8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24F33BA48;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24F33A82C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F33A82C()
{
  v18 = v0;

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8F8);
  sub_24F33AF90(v2, v1, type metadata accessor for NicknameSection);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    sub_24F927358();
    v9 = *(v0[6] + 40);

    swift_getKeyPath();
    v0[7] = v9;
    sub_24F33B9F4(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
    sub_24F91FD88();

    sub_24F33B28C(v6, type metadata accessor for NicknameSection);
    v10 = (v9 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = sub_24E7620D4(v12, v11, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LocalPlayerProvider reloaded with a new nickname: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
    v14 = v0[10];

    sub_24F33B28C(v14, type metadata accessor for NicknameSection);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F33AB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24F337180();
  sub_24F33AF90(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NicknameSection);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24F33AC48(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F778) + 36));
  sub_24F923AD8();
  result = sub_24F92B818();
  *v8 = &unk_24F9E6B78;
  v8[1] = v7;
  return result;
}

uint64_t sub_24F33AC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NicknameSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F33ACAC()
{
  v2 = *(type metadata accessor for NicknameSection() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E6541E4;

  return sub_24F337440(v0 + v3);
}

uint64_t objectdestroyTm_64()
{
  v1 = type metadata accessor for NicknameSection();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F33AF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F33AFF8()
{
  v1 = type metadata accessor for NicknameSection();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F33B19C(uint64_t a1)
{
  v4 = *(type metadata accessor for NicknameSection() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F33A274(a1, v6, v7, v1 + v5);
}

uint64_t sub_24F33B28C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F33B2F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F33B32C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E6541E4;

  return sub_24F339F50(a1);
}

unint64_t sub_24F33B3E8()
{
  result = qword_27F23F7F8;
  if (!qword_27F23F7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7B0);
    sub_24F33B4A0();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F7F8);
  }

  return result;
}

unint64_t sub_24F33B4A0()
{
  result = qword_27F23F800;
  if (!qword_27F23F800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7F0);
    sub_24F33B558();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F800);
  }

  return result;
}

unint64_t sub_24F33B558()
{
  result = qword_27F23F808;
  if (!qword_27F23F808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7E8);
    sub_24F33B5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F808);
  }

  return result;
}

unint64_t sub_24F33B5E4()
{
  result = qword_27F23F810;
  if (!qword_27F23F810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7E0);
    sub_24F33B670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F810);
  }

  return result;
}

unint64_t sub_24F33B670()
{
  result = qword_27F23F818;
  if (!qword_27F23F818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7D8);
    sub_24F33B6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F818);
  }

  return result;
}

unint64_t sub_24F33B6FC()
{
  result = qword_27F23F820;
  if (!qword_27F23F820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F828);
    sub_24E602068(&qword_27F23F7D0, &qword_27F23F7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F820);
  }

  return result;
}

unint64_t sub_24F33B7B4()
{
  result = qword_27F23F848;
  if (!qword_27F23F848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F840);
    sub_24E6AF8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F848);
  }

  return result;
}

unint64_t sub_24F33B8A0()
{
  result = qword_27F23F870;
  if (!qword_27F23F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F780);
    sub_24E602068(&qword_27F23F790, &qword_27F23F780);
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    sub_24F33B9F4(&qword_27F211A48, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F870);
  }

  return result;
}

uint64_t sub_24F33B9F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OverlayNowPlayingPageIntent.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OverlayNowPlayingPageIntent.localizedGameName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OverlayNowPlayingPageIntent.gameIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OverlayNowPlayingPageIntent() + 24);
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OverlayNowPlayingPageIntent()
{
  result = qword_27F23F898;
  if (!qword_27F23F898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverlayNowPlayingPageIntent.player.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverlayNowPlayingPageIntent() + 28);

  return sub_24E6364A0(v3, a1);
}

uint64_t OverlayNowPlayingPageIntent.cachedNowPlayingData.getter()
{
  v1 = *(v0 + *(type metadata accessor for OverlayNowPlayingPageIntent() + 36));

  return v1;
}

uint64_t OverlayNowPlayingPageIntent.commonOnboardingStatus.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for OverlayNowPlayingPageIntent();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t OverlayNowPlayingPageIntent.init(_:localizedGameName:gameIcon:for:using:commonOnboardingStatus:isGamesAppInstalled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10, char a11)
{
  v14 = *a10;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v15 = type metadata accessor for OverlayNowPlayingPageIntent();
  v16 = v15[6];
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a9[v16], a5, v17);
  sub_24E6364A0(a6, &a9[v15[7]]);
  v26 = &_s14descr2861AC041O5GamesON;
  v19 = sub_24EDA569C();
  v27 = v19;
  v25[0] = 0;
  v20 = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v25);
  a9[v15[8]] = v20 & 1;
  v21 = &a9[v15[9]];
  *v21 = a7;
  *(v21 + 1) = a8;
  *&a9[v15[10]] = v14;
  a9[v15[11]] = a11;
  v26 = &_s14descr2861AC041O5GamesON;
  v27 = v19;
  v25[0] = 4;
  LOBYTE(v14) = sub_24F91FE68();
  sub_24E637048(a6);
  (*(v18 + 8))(a5, v17);
  result = __swift_destroy_boxed_opaque_existential_1(v25);
  a9[v15[12]] = v14 & 1;
  return result;
}

unint64_t OverlayNowPlayingPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F95AD70;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 72) = v5;
  v6 = MEMORY[0x277D22580];
  v7 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740);
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x800000024FA73CC0;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v6;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 0x6E6F6349656D6167;
  *(inited + 152) = 0xE800000000000000;
  v10 = type metadata accessor for OverlayNowPlayingPageIntent();
  v11 = v10[6];
  v12 = sub_24F9289E8();
  *(inited + 184) = v12;
  *(inited + 192) = sub_24F33CE3C(&qword_27F21E338, MEMORY[0x277D21C48]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, &v1[v11], v12);
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v14 = v10[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 248) = sub_24E7EDBB4();
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E6364A0(&v1[v14], v15);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v16 = v1[v10[8]];
  v17 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v17;
  *(inited + 272) = v16;
  *(inited + 312) = 0xD000000000000014;
  *(inited + 320) = 0x800000024FA73CE0;
  v18 = &v1[v10[9]];
  v19 = *v18;
  v20 = *(v18 + 1);
  *(inited + 352) = v5;
  *(inited + 360) = v7;
  *(inited + 328) = v19;
  *(inited + 336) = v20;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x800000024FA55B30;
  v21 = *&v1[v10[10]];
  *(inited + 408) = &type metadata for CommonOnboardingStatus;
  v22 = sub_24EBB9898();
  *(inited + 384) = v21;
  *(inited + 416) = v22;
  *(inited + 424) = 0xD000000000000013;
  *(inited + 432) = 0x800000024FA73D00;
  LOBYTE(v3) = v1[v10[11]];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8);
  v23 = sub_24E7594F8(&qword_27F23F878, &qword_27F2383C8);
  *(inited + 440) = v3;
  *(inited + 472) = v23;
  *(inited + 480) = 0xD00000000000001CLL;
  *(inited + 488) = 0x800000024FA73D20;
  v24 = v1[v10[12]];
  *(inited + 520) = MEMORY[0x277D839B0];
  *(inited + 528) = v17;
  *(inited + 496) = v24;

  v25 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v25;
  return result;
}

uint64_t sub_24F33C200(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x4449656C646E7562;
    v5 = 0x6E6F6349656D6167;
    if (a1 != 2)
    {
      v5 = 0x726579616C70;
    }

    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000016;
    }

    v2 = 0xD000000000000010;
    if (a1 != 4)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F33C334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F33D3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F33C35C(uint64_t a1)
{
  v2 = sub_24F33CDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33C398(uint64_t a1)
{
  v2 = sub_24F33CDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayNowPlayingPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33CDE8();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CCA8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24F92CD08();
    v10 = type metadata accessor for OverlayNowPlayingPageIntent();
    LOBYTE(v12) = 2;
    sub_24F9289E8();
    sub_24F33CE3C(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    type metadata accessor for Player(0);
    sub_24F33CE3C(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    LOBYTE(v12) = 4;
    sub_24F92CD18();
    v13 = 5;
    sub_24F92CCA8();
    v12 = *(v3 + *(v10 + 40));
    v11[15] = 6;
    sub_24EBB9844();
    sub_24F92CD48();
    LOBYTE(v12) = 7;
    sub_24F92CCB8();
    LOBYTE(v12) = 8;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t OverlayNowPlayingPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_24F9289E8();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F890);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for OverlayNowPlayingPageIntent();
  MEMORY[0x28223BE20](v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F33CDE8();
  v42 = v11;
  v16 = v44;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v17 = v8;
  v18 = v40;
  v19 = v41;
  LOBYTE(v47) = 0;
  *v14 = sub_24F92CBC8();
  v14[1] = v21;
  LOBYTE(v47) = 1;
  v14[2] = sub_24F92CC28();
  v14[3] = v22;
  LOBYTE(v47) = 2;
  sub_24F33CE3C(&qword_27F214018, MEMORY[0x277D21C48]);
  v37 = 0;
  sub_24F92CC68();
  v44 = 0;
  (*(v39 + 32))(v14 + v12[6], v17, v6);
  type metadata accessor for Player(0);
  LOBYTE(v47) = 3;
  sub_24F33CE3C(&qword_27F213E38, type metadata accessor for Player);
  v23 = v42;
  v24 = v44;
  sub_24F92CC18();
  v44 = v24;
  if (v24)
  {
    (*(v18 + 8))(v23, v19);
    v25 = 0;
LABEL_8:
    v28 = v37;
    __swift_destroy_boxed_opaque_existential_1(v43);

    if (!v28)
    {
    }

    v29 = 0;
    goto LABEL_11;
  }

  sub_24E6365D4(v5, v14 + v12[7]);
  LOBYTE(v47) = 4;
  v26 = v44;
  v27 = sub_24F92CC38();
  if (v26)
  {
    v44 = v26;
    (*(v18 + 8))(v23, v19);
    v25 = 1;
    goto LABEL_8;
  }

  *(v14 + v12[8]) = v27 & 1;
  LOBYTE(v47) = 5;
  v30 = sub_24F92CBC8();
  v29 = 1;
  v44 = 0;
  v31 = (v14 + v12[9]);
  *v31 = v30;
  v31[1] = v32;
  v46 = 6;
  sub_24EBB96D8();
  v33 = v44;
  sub_24F92CC68();
  if (!v33)
  {
    *(v14 + v12[10]) = v47;
    v45 = 7;
    *(v14 + v12[11]) = sub_24F92CBD8();
    v45 = 8;
    v34 = sub_24F92CC38();
    v44 = 0;
    v35 = v34;
    (*(v18 + 8))(v42, v41);
    *(v14 + v12[12]) = v35 & 1;
    sub_24F33CE84(v14, v38);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24F33CEE8(v14);
  }

  v44 = v33;
  (*(v18 + 8))(v23, v41);
  __swift_destroy_boxed_opaque_existential_1(v43);

  v25 = 1;
LABEL_11:
  result = (*(v39 + 8))(v14 + v12[6], v6);
  if (v25)
  {
    result = sub_24E637048(v14 + v12[7]);
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v29)
  {
    return result;
  }
}

unint64_t sub_24F33CDE8()
{
  result = qword_27F23F888;
  if (!qword_27F23F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F888);
  }

  return result;
}

uint64_t sub_24F33CE3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F33CE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayNowPlayingPageIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F33CEE8(uint64_t a1)
{
  v2 = type metadata accessor for OverlayNowPlayingPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F33CF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F33D09C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F33D1CC()
{
  sub_24E66ECF0(319, &qword_27F254DE0);
  if (v0 <= 0x3F)
  {
    sub_24F9289E8();
    if (v1 <= 0x3F)
    {
      sub_24E637694();
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2169A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F33D2D4()
{
  result = qword_27F23F8A8;
  if (!qword_27F23F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8A8);
  }

  return result;
}

unint64_t sub_24F33D32C()
{
  result = qword_27F23F8B0;
  if (!qword_27F23F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8B0);
  }

  return result;
}

unint64_t sub_24F33D384()
{
  result = qword_27F23F8B8;
  if (!qword_27F23F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8B8);
  }

  return result;
}

uint64_t sub_24F33D3D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73CC0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA73CE0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA73D00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA73D20 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t TitleDisplayMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D0D8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5._countAndFlagsBits = sub_24F92CEB8();
    TitleDisplayMode.init(rawValue:)(v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

GameStoreKit::TitleDisplayMode __swiftcall TitleDisplayMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x6974616D6F747561 && rawValue._object == 0xE900000000000063;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x656772616CLL && object == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x614C656E696C6E69 && object == 0xEB00000000656772 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x656E696C6E69 && object == 0xE600000000000000)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TitleDisplayMode.navigationTitleDisplayMode.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return sub_24F9252F8();
    }

    else
    {
      return sub_24F925318();
    }
  }

  else if (*v0)
  {
    return sub_24F925308();
  }

  else
  {
    return sub_24F925328();
  }
}

uint64_t TitleDisplayMode.rawValue.getter()
{
  v1 = 0x6974616D6F747561;
  v2 = 0x614C656E696C6E69;
  if (*v0 != 2)
  {
    v2 = 0x656E696C6E69;
  }

  if (*v0)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F33D9AC()
{
  result = qword_27F23F8C0;
  if (!qword_27F23F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8C0);
  }

  return result;
}

uint64_t sub_24F33DA00()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F33DAC8()
{
  sub_24F92B218();
}

uint64_t sub_24F33DB7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F33DC40@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = TitleDisplayMode.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

void sub_24F33DC80(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = 0xEB00000000656772;
  v5 = 0x614C656E696C6E69;
  if (*v1 != 2)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x656772616CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24F33DD7C()
{
  result = qword_27F23F8C8;
  if (!qword_27F23F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8C8);
  }

  return result;
}

uint64_t sub_24F33DDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F33DE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GSKDebugMetricsOverlayAction()
{
  result = qword_27F23F8D0;
  if (!qword_27F23F8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F33DF20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F8E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GSKDebugMetricsOverlayAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33E380();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F33E3D4(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F33E18C(uint64_t a1)
{
  v2 = sub_24F33E380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33E1C8(uint64_t a1)
{
  v2 = sub_24F33E380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33E21C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F8F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33E380();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F33E380()
{
  result = qword_27F23F8E8;
  if (!qword_27F23F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8E8);
  }

  return result;
}

uint64_t sub_24F33E3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsOverlayAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F33E44C()
{
  result = qword_27F23F8F8;
  if (!qword_27F23F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8F8);
  }

  return result;
}

unint64_t sub_24F33E4A4()
{
  result = qword_27F23F900;
  if (!qword_27F23F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F900);
  }

  return result;
}

unint64_t sub_24F33E4FC()
{
  result = qword_27F23F908;
  if (!qword_27F23F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F908);
  }

  return result;
}

uint64_t sub_24F33E560(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F928);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33EA9C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F33EB44();
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F33E6F4()
{
  if (*v0)
  {
    return 0x74756F656D6974;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_24F33E728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F33E804(uint64_t a1)
{
  v2 = sub_24F33EA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33E840(uint64_t a1)
{
  v2 = sub_24F33EA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_24F33E89C(void *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_24F33E8E4(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

double sub_24F33E8E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33EA9C();
  sub_24F92D108();
  v11 = 0;
  sub_24F33EAF0();
  sub_24F92CC68();
  v10 = 1;
  sub_24F92CC48();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F33EA9C()
{
  result = qword_27F23F918;
  if (!qword_27F23F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F918);
  }

  return result;
}

unint64_t sub_24F33EAF0()
{
  result = qword_27F23F920;
  if (!qword_27F23F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F920);
  }

  return result;
}

unint64_t sub_24F33EB44()
{
  result = qword_27F23F930;
  if (!qword_27F23F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F930);
  }

  return result;
}

unint64_t sub_24F33EBAC()
{
  result = qword_27F23F938;
  if (!qword_27F23F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F938);
  }

  return result;
}

unint64_t sub_24F33EC04()
{
  result = qword_27F23F940;
  if (!qword_27F23F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F940);
  }

  return result;
}

unint64_t sub_24F33EC5C()
{
  result = qword_27F23F948;
  if (!qword_27F23F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F948);
  }

  return result;
}

uint64_t Page.shelves.getter()
{
  type metadata accessor for Page(0);
}

uint64_t Page.topLeadingShelves.getter()
{
  type metadata accessor for Page(0);
}

uint64_t Page.bottomLeadingShelves.getter()
{
  type metadata accessor for Page(0);
}

uint64_t Page.topTrailingShelves.getter()
{
  type metadata accessor for Page(0);
}

uint64_t Page.bottomTrailingShelves.getter()
{
  type metadata accessor for Page(0);
}

uint64_t sub_24F33EDD4(void *a1, uint64_t a2, int a3)
{
  v35 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD08);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD10);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD18);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD20);
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD28);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34BA5C();
  sub_24F92D128();
  if (!v34)
  {
    v38 = 2;
    sub_24F34BB04();
    sub_24F92CC98();
    v21 = v30;
    sub_24F92CD28();
    (*(v29 + 8))(v8, v21);
    return (*(v16 + 8))(v18, v15);
  }

  if (v34 == 1)
  {
    v39 = 3;
    sub_24F34BAB0();
    v19 = v31;
    sub_24F92CC98();
    v20 = v33;
    sub_24F92CD28();
    (*(v32 + 8))(v19, v20);
    return (*(v16 + 8))(v18, v15);
  }

  v23 = (v16 + 8);
  if (v35)
  {
    v37 = 1;
    sub_24F34BB58();
    sub_24F92CC98();
    (*(v27 + 8))(v11, v28);
  }

  else
  {
    v36 = 0;
    sub_24F34BBAC();
    sub_24F92CC98();
    (*(v25 + 8))(v14, v26);
  }

  return (*v23)(v18, v15);
}

uint64_t sub_24F33F28C()
{
  v1 = 0x65526F546C6C7570;
  v2 = 0x7261657070416E6FLL;
  if (*v0 != 2)
  {
    v2 = 0x726765726F466E6FLL;
  }

  if (*v0)
  {
    v1 = 0x7266655264656566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F33F324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F34ABE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F33F34C(uint64_t a1)
{
  v2 = sub_24F34BA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F388(uint64_t a1)
{
  v2 = sub_24F34BA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F3C4(uint64_t a1)
{
  v2 = sub_24F34BB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F400(uint64_t a1)
{
  v2 = sub_24F34BB58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F464(uint64_t a1)
{
  v2 = sub_24F34BB04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F4A0(uint64_t a1)
{
  v2 = sub_24F34BB04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4968736572666572 && a2 == 0xEF6C61767265746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F33F56C(uint64_t a1)
{
  v2 = sub_24F34BAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F5A8(uint64_t a1)
{
  v2 = sub_24F34BAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F5E4(uint64_t a1)
{
  v2 = sub_24F34BBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F620(uint64_t a1)
{
  v2 = sub_24F34BBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F65C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24F34A10C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_24F33F6AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2 == 0.0)
  {
    if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else if (v4 != 2 || *&v3 != 1)
  {
    return 0;
  }

  return 1;
}

uint64_t Page.Background.MaterialBackground.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24F33F784()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F33F7E8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F33F834@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

unint64_t Page.Background.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v127 = a2;
  v114 = a1;
  v3 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GSKVideo();
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x28223BE20](v5);
  v120 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v118 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v124 = &v112 - v15;
  v16 = sub_24F922348();
  v115 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v113 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v122 = &v112 - v22;
  v23 = sub_24F9289E8();
  v125 = *(v23 - 8);
  *&v126 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v121 = &v112 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v112 - v29;
  v31 = type metadata accessor for Page.Background(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F340D54(v2, v33, type metadata accessor for Page.Background);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v45 = v123;
      sub_24F347CE4(v33, v123, type metadata accessor for JSColor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F950);
      inited = swift_initStackObject();
      v126 = xmmword_24F93DE60;
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x47646570756F7267;
      *(inited + 40) = 0xEF746E6569646172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F958);
      v72 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132B0) - 8);
      v73 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = v126;
      v75 = (v74 + v73);
      v76 = v72[14];
      *v75 = 0x726F6C6F63;
      v75[1] = 0xE500000000000000;
      sub_24F340D54(v45, v75 + v76, type metadata accessor for JSColor);
      v77 = sub_24E61145C(v74);
      swift_setDeallocating();
      sub_24E601704(v75, &qword_27F2132B0);
      swift_deallocClassInstance();
      *(inited + 48) = v77;
      v53 = sub_24E611644(inited);
      swift_setDeallocating();
      v54 = inited + 32;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        v87 = v127;
        v127[3] = v86;
        result = sub_24F340CD8();
        v87[4] = result;
        *v87 = &unk_2861C2158;
        return result;
      }

      v45 = v123;
      sub_24F347CE4(v33, v123, type metadata accessor for JSColor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F950);
      v46 = swift_initStackObject();
      v126 = xmmword_24F93DE60;
      *(v46 + 16) = xmmword_24F93DE60;
      *(v46 + 32) = 0xD000000000000016;
      *(v46 + 40) = 0x800000024FA48750;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F958);
      v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132B0) - 8);
      v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v126;
      v50 = (v49 + v48);
      v51 = v47[14];
      *v50 = 0x726F6C6F63;
      v50[1] = 0xE500000000000000;
      sub_24F340D54(v45, v50 + v51, type metadata accessor for JSColor);
      v52 = sub_24E61145C(v49);
      swift_setDeallocating();
      sub_24E601704(v50, &qword_27F2132B0);
      swift_deallocClassInstance();
      *(v46 + 48) = v52;
      v53 = sub_24E611644(v46);
      swift_setDeallocating();
      v54 = v46 + 32;
    }

    sub_24E601704(v54, &qword_27F23F960);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F968);
    v79 = v127;
    v127[3] = v78;
    v79[4] = sub_24F347C68(&qword_27F23F970, &qword_27F23F968, &unk_24F9E74B0, sub_24F347BB4);
    *v79 = v53;
    return sub_24F347D4C(v45, type metadata accessor for JSColor);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8);
      v36 = *(v35 + 48);
      LODWORD(v124) = v33[*(v35 + 64)];
      v37 = v125;
      v38 = v126;
      v39 = v121;
      (*(v125 + 32))(v121, v33, v126);
      v40 = v122;
      sub_24E6009C8(&v33[v36], v122, &qword_27F214148);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_24F93A400;
      *(v41 + 32) = 0x6B726F77747261;
      *(v41 + 40) = 0xE700000000000000;
      *(v41 + 72) = v38;
      *(v41 + 80) = sub_24F347DAC(&qword_27F21E338, MEMORY[0x277D21C48]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v41 + 48));
      (*(v37 + 16))(boxed_opaque_existential_1, v39, v38);
      *(v41 + 88) = 0x4D746E65746E6F63;
      *(v41 + 96) = 0xEB0000000065646FLL;
      *(v41 + 128) = MEMORY[0x277CDF400];
      *(v41 + 136) = sub_24F347DF4();
      *(v41 + 104) = v124;
      v43 = sub_24E607E40(v41);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      sub_24E60169C(v40, v20, &qword_27F214148);
      v44 = v115;
      if ((*(v115 + 48))(v20, 1, v16) == 1)
      {
        sub_24E601704(v20, &qword_27F214148);
      }

      else
      {
        v88 = v113;
        (*(v44 + 32))(v113, v20, v16);
        *(&v133 + 1) = v16;
        v134 = sub_24F347DAC(&qword_27F23F9B8, MEMORY[0x277D22668]);
        v89 = __swift_allocate_boxed_opaque_existential_1(&v132);
        (*(v44 + 16))(v89, v88, v16);
        v129 = v132;
        v130 = v133;
        v131 = v134;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v43;
        sub_24E82115C(&v129, 0x6152746365707361, 0xEB000000006F6974, isUniquelyReferenced_nonNull_native);
        (*(v44 + 8))(v88, v16);
        v43 = v135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990);
      v91 = swift_initStackObject();
      *(v91 + 16) = xmmword_24F93DE60;
      *(v91 + 32) = 0x6567616D69;
      v92 = v91 + 32;
      *(v91 + 40) = 0xE500000000000000;
      *(v91 + 48) = v43;
      v93 = sub_24E611448(v91);
      swift_setDeallocating();
      sub_24E601704(v92, &qword_27F23F998);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0);
      v95 = v127;
      v127[3] = v94;
      v95[4] = sub_24F347C68(&qword_27F23F9A8, &qword_27F23F9A0, &unk_24FA0A590, sub_24E6060B8);
      *v95 = v93;
      sub_24E601704(v122, &qword_27F214148);
      return (*(v125 + 8))(v121, v38);
    }

    else
    {
      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v81 = v124;
      sub_24E6009C8(v33, v124, &qword_27F213FB0);
      v82 = v118;
      sub_24E6009C8(&v33[v80], v118, &qword_27F213FB8);
      sub_24E60169C(v81, v13, &qword_27F213FB0);
      v84 = v125;
      v83 = v126;
      if ((*(v125 + 48))(v13, 1, v126) == 1)
      {
        sub_24E601704(v13, &qword_27F213FB0);
        v85 = MEMORY[0x277D84F98];
      }

      else
      {
        (*(v84 + 32))(v25, v13, v83);
        *(&v133 + 1) = v83;
        v134 = sub_24F347DAC(&qword_27F21E338, MEMORY[0x277D21C48]);
        v96 = __swift_allocate_boxed_opaque_existential_1(&v132);
        (*(v84 + 16))(v96, v25, v83);
        v129 = v132;
        v130 = v133;
        v131 = v134;
        v97 = MEMORY[0x277D84F98];
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v97;
        sub_24E82115C(&v129, 0x6B726F77747261, 0xE700000000000000, v98);
        (*(v84 + 8))(v25, v83);
        v85 = v135;
      }

      v99 = v128;
      v100 = v119;
      v101 = v120;
      sub_24E60169C(v82, v119, &qword_27F213FB8);
      if ((*(v116 + 48))(v100, 1, v117) == 1)
      {
        sub_24E601704(v100, &qword_27F213FB8);
      }

      else
      {
        sub_24F347CE4(v100, v101, type metadata accessor for GSKVideo);
        sub_24E810980(v114, &v132);
        if (v99)
        {
          sub_24F347D4C(v101, type metadata accessor for GSKVideo);
          sub_24E601704(v82, &qword_27F213FB8);
          sub_24E601704(v124, &qword_27F213FB0);
        }

        v102 = __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
        v103 = MEMORY[0x28223BE20](v102);
        (*(v105 + 16))(&v112 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0), v103);
        sub_24F92A138();
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v85;
        sub_24E82115C(&v129, 0x6F65646976, 0xE500000000000000, v106);
        sub_24F347D4C(v101, type metadata accessor for GSKVideo);
        v85 = v135;
        __swift_destroy_boxed_opaque_existential_1(&v132);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990);
      v107 = swift_initStackObject();
      *(v107 + 16) = xmmword_24F93DE60;
      *(v107 + 32) = 0x746E657645707061;
      v108 = v107 + 32;
      *(v107 + 40) = 0xEE006C6961746544;
      *(v107 + 48) = v85;
      v109 = sub_24E611448(v107);
      swift_setDeallocating();
      sub_24E601704(v108, &qword_27F23F998);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0);
      v111 = v127;
      v127[3] = v110;
      v111[4] = sub_24F347C68(&qword_27F23F9A8, &qword_27F23F9A0, &unk_24FA0A590, sub_24E6060B8);
      *v111 = v109;
      sub_24E601704(v82, &qword_27F213FB8);
      return sub_24E601704(v124, &qword_27F213FB0);
    }
  }

  else
  {
    v55 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C0) + 48)];
    v56 = *v55;
    v57 = v55[8];
    v59 = v125;
    v58 = v126;
    (*(v125 + 32))(v30, v33, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    v60 = swift_initStackObject();
    v124 = xmmword_24F93DE60;
    *(v60 + 16) = xmmword_24F93DE60;
    *(v60 + 32) = 0x6B726F77747261;
    *(v60 + 40) = 0xE700000000000000;
    *(v60 + 72) = v58;
    *(v60 + 80) = sub_24F347DAC(&qword_27F21E338, MEMORY[0x277D21C48]);
    v61 = __swift_allocate_boxed_opaque_existential_1((v60 + 48));
    (*(v59 + 16))(v61, v30, v58);
    v62 = sub_24E607E40(v60);
    swift_setDeallocating();
    sub_24E601704(v60 + 32, &qword_27F212FB0);
    if ((v57 & 1) == 0)
    {
      v63 = sub_24E65901C();
      *&v132 = v56;
      *(&v133 + 1) = MEMORY[0x277D83B88];
      v134 = v63;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v62;
      sub_24E82115C(&v132, 0x7974696C617571, 0xE700000000000000, v64);
      v62 = v129;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990);
    v65 = swift_initStackObject();
    *(v65 + 16) = v124;
    *(v65 + 32) = 0x6E6172546D6F6F7ALL;
    v66 = v65 + 32;
    *(v65 + 40) = 0xEF6E6F6974616C73;
    *(v65 + 48) = v62;
    v67 = sub_24E611448(v65);
    swift_setDeallocating();
    sub_24E601704(v66, &qword_27F23F998);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0);
    v69 = v127;
    v127[3] = v68;
    v69[4] = sub_24F347C68(&qword_27F23F9A8, &qword_27F23F9A0, &unk_24FA0A590, sub_24E6060B8);
    *v69 = v67;
    return (*(v59 + 8))(v30, v126);
  }
}

unint64_t sub_24F340CD8()
{
  result = qword_27F213798;
  if (!qword_27F213798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213798);
  }

  return result;
}

uint64_t sub_24F340D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F340DBC(uint64_t a1)
{
  v2 = sub_24F347F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F340DF8(uint64_t a1)
{
  v2 = sub_24F347F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F340E34(uint64_t a1)
{
  v2 = sub_24F347E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F340E70(uint64_t a1)
{
  v2 = sub_24F347E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F340EAC()
{
  v1 = *v0;
  v2 = 0x6E6172546D6F6F7ALL;
  v3 = 0x47646570756F7267;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x7261656C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6567616D69;
  if (v1 != 1)
  {
    v5 = 0x746E657645707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F340F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F34AD54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F340FB0(uint64_t a1)
{
  v2 = sub_24F347E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F340FEC(uint64_t a1)
{
  v2 = sub_24F347E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F34102C(uint64_t a1)
{
  v2 = sub_24F347F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F341068(uint64_t a1)
{
  v2 = sub_24F347F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3410A4()
{
  v1 = 0x6152746365707361;
  if (*v0 != 1)
  {
    v1 = 0x4D746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24F341110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F34AF68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F341138(uint64_t a1)
{
  v2 = sub_24F347FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F341174(uint64_t a1)
{
  v2 = sub_24F347FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3411B0(uint64_t a1)
{
  v2 = sub_24F347EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3411EC(uint64_t a1)
{
  v2 = sub_24F347EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F341228()
{
  if (*v0)
  {
    return 0x7974696C617571;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24F34125C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F341338(uint64_t a1)
{
  v2 = sub_24F348094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F341374(uint64_t a1)
{
  v2 = sub_24F348094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Page.Background.encode(to:)(void *a1)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C8);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v74 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9D0);
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x28223BE20](v3);
  v89 = &v74 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9D8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v74 - v5;
  v96 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v96);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9E0);
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  v85 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v74 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9E8);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v16 - 8);
  v95 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9F0);
  v74 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = sub_24F9289E8();
  v97 = *(v21 - 8);
  v98 = v21;
  MEMORY[0x28223BE20](v21);
  v94 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  v26 = type metadata accessor for Page.Background(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9F8);
  v30 = *(v29 - 8);
  v100 = v29;
  v101 = v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v74 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F347E48();
  v99 = v32;
  sub_24F92D128();
  sub_24F340D54(v102, v28, type metadata accessor for Page.Background);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v44 = v76;
      sub_24F347CE4(v28, v76, type metadata accessor for JSColor);
      v115 = 3;
      sub_24F347F44();
      v45 = v77;
      v47 = v99;
      v46 = v100;
      sub_24F92CC98();
      sub_24F347DAC(&qword_27F21C778, type metadata accessor for JSColor);
      v48 = v83;
      sub_24F92CD48();
      v49 = v82;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v117 = 5;
        sub_24F347E9C();
        v64 = v81;
        v66 = v99;
        v65 = v100;
        sub_24F92CC98();
        (*(v86 + 8))(v64, v88);
        return (*(v101 + 8))(v66, v65);
      }

      v44 = v78;
      sub_24F347CE4(v28, v78, type metadata accessor for JSColor);
      v116 = 4;
      sub_24F347EF0();
      v45 = v89;
      v47 = v99;
      v46 = v100;
      sub_24F92CC98();
      sub_24F347DAC(&qword_27F21C778, type metadata accessor for JSColor);
      v48 = v93;
      sub_24F92CD48();
      v49 = v92;
    }

    (*(v49 + 8))(v45, v48);
    sub_24F347D4C(v44, type metadata accessor for JSColor);
    return (*(v101 + 8))(v47, v46);
  }

  if (EnumCaseMultiPayload)
  {
    v34 = v103;
    if (EnumCaseMultiPayload == 1)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8);
      v36 = *(v35 + 48);
      LODWORD(v102) = v28[*(v35 + 64)];
      v37 = v97;
      v38 = v98;
      (*(v97 + 32))(v94, v28, v98);
      sub_24E6009C8(&v28[v36], v95, &qword_27F214148);
      v111 = 1;
      sub_24F347FEC();
      v39 = v75;
      v40 = v99;
      v41 = v100;
      sub_24F92CC98();
      v110 = 0;
      sub_24F347DAC(&qword_27F214060, MEMORY[0x277D21C48]);
      v42 = v80;
      sub_24F92CD48();
      if (v34)
      {
        (*(v79 + 8))(v39, v42);
        sub_24E601704(v95, &qword_27F214148);
        (*(v37 + 8))(v94, v38);
        return (*(v101 + 8))(v40, v41);
      }

      else
      {
        v67 = v41;
        v109 = 1;
        sub_24F922348();
        sub_24F347DAC(&qword_27F23FA30, MEMORY[0x277D22668]);
        v68 = v95;
        v69 = v42;
        v70 = v39;
        sub_24F92CCF8();
        v108 = v102;
        v107 = 2;
        sub_24F348040();
        sub_24F92CD48();
        v71 = v97;
        v72 = v98;
        v73 = v94;
        (*(v79 + 8))(v70, v69);
        sub_24E601704(v68, &qword_27F214148);
        (*(v71 + 8))(v73, v72);
        return (*(v101 + 8))(v40, v67);
      }
    }

    else
    {
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v57 = v87;
      sub_24E6009C8(v28, v87, &qword_27F213FB0);
      v58 = &v28[v56];
      v59 = v84;
      sub_24E6009C8(v58, v84, &qword_27F213FB8);
      v114 = 2;
      sub_24F347F98();
      v60 = v85;
      v62 = v99;
      v61 = v100;
      sub_24F92CC98();
      v113 = 0;
      sub_24F347DAC(&qword_27F214060, MEMORY[0x277D21C48]);
      v63 = v91;
      sub_24F92CCF8();
      if (!v34)
      {
        v112 = 1;
        type metadata accessor for GSKVideo();
        sub_24F347DAC(&qword_27F214068, type metadata accessor for GSKVideo);
        sub_24F92CCF8();
      }

      (*(v90 + 8))(v60, v63);
      sub_24E601704(v59, &qword_27F213FB8);
      sub_24E601704(v57, &qword_27F213FB0);
      return (*(v101 + 8))(v62, v61);
    }
  }

  else
  {
    v50 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C0) + 48)];
    v102 = *v50;
    LODWORD(v96) = v50[8];
    v52 = v97;
    v51 = v98;
    (*(v97 + 32))(v25, v28, v98);
    v106 = 0;
    sub_24F348094();
    v54 = v99;
    v53 = v100;
    sub_24F92CC98();
    v105 = 0;
    sub_24F347DAC(&qword_27F214060, MEMORY[0x277D21C48]);
    v55 = v103;
    sub_24F92CD48();
    if (v55)
    {
      (*(v74 + 8))(v20, v18);
      (*(v52 + 8))(v25, v51);
    }

    else
    {
      v104 = 1;
      sub_24F92CCE8();
      (*(v74 + 8))(v20, v18);
      (*(v97 + 8))(v25, v98);
    }

    return (*(v101 + 8))(v54, v53);
  }
}

uint64_t Page.Background.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA48);
  v93 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v101 = &v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA50);
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA58);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v106 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA60);
  v9 = *(v8 - 8);
  v97 = v8;
  v98 = v9;
  MEMORY[0x28223BE20](v8);
  v105 = &v81 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA68);
  v99 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v104 = &v81 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA70);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v103 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA78);
  v108 = *(v13 - 8);
  v109 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  v102 = type metadata accessor for Page.Background(0);
  MEMORY[0x28223BE20](v102);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  v32 = a1[3];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24F347E48();
  v33 = v110;
  sub_24F92D108();
  if (!v33)
  {
    v82 = v19;
    v84 = v28;
    v34 = v103;
    v83 = v22;
    v35 = v106;
    v85 = v25;
    v110 = 0;
    v36 = v104;
    v37 = v105;
    v86 = v31;
    v38 = v107;
    v39 = v109;
    v40 = sub_24F92CC78();
    v41 = (2 * *(v40 + 16)) | 1;
    v112 = v40;
    v113 = v40 + 32;
    v114 = 0;
    v115 = v41;
    v42 = sub_24E64343C();
    v43 = v15;
    if (v42 == 6 || v114 != v115 >> 1)
    {
      v45 = sub_24F92C918();
      swift_allocError();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v47 = v102;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
      (*(v108 + 8))(v43, v39);
    }

    else
    {
      if (v42 <= 2u)
      {
        if (v42)
        {
          v44 = v110;
          if (v42 == 1)
          {
            v116 = 1;
            sub_24F347FEC();
            sub_24F92CBA8();
            if (v44)
            {
              (*(v108 + 8))(v43, v39);
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_1(v111);
            }

            v50 = v38;
            v110 = v43;
            sub_24F9289E8();
            v116 = 0;
            sub_24F347DAC(&qword_27F214018, MEMORY[0x277D21C48]);
            v67 = v94;
            sub_24F92CC68();
            v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
            sub_24F922348();
            v116 = 1;
            sub_24F347DAC(&qword_27F23FA80, MEMORY[0x277D22668]);
            sub_24F92CC18();
            v106 = v74;
            v116 = 2;
            sub_24F3480E8();
            v80 = v85;
            sub_24F92CC68();
            (*(v99 + 8))(v36, v67);
            (*(v108 + 8))(v110, v109);
            swift_unknownObjectRelease();
            goto LABEL_29;
          }

          v116 = 2;
          sub_24F347F98();
          v61 = v37;
          sub_24F92CBA8();
          if (v44)
          {
            goto LABEL_21;
          }

          sub_24F9289E8();
          v116 = 0;
          sub_24F347DAC(&qword_27F214018, MEMORY[0x277D21C48]);
          v69 = v83;
          v70 = v97;
          sub_24F92CC18();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200);
          type metadata accessor for GSKVideo();
          v116 = 1;
          sub_24F347DAC(&qword_27F214020, type metadata accessor for GSKVideo);
          sub_24F92CC18();
          (*(v98 + 8))(v61, v70);
          (*(v108 + 8))(v43, v39);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v79 = v86;
          sub_24F347CE4(v69, v86, type metadata accessor for Page.Background);
          v50 = v38;
        }

        else
        {
          v116 = 0;
          sub_24F348094();
          v53 = v34;
          v54 = v110;
          sub_24F92CBA8();
          if (v54)
          {
LABEL_21:
            (*(v108 + 8))(v43, v39);
            goto LABEL_10;
          }

          v55 = v15;
          v56 = v39;
          sub_24F9289E8();
          v116 = 0;
          sub_24F347DAC(&qword_27F214018, MEMORY[0x277D21C48]);
          v57 = v90;
          sub_24F92CC68();
          v58 = v108;
          v116 = 1;
          v71 = sub_24F92CC08();
          LODWORD(v106) = v72;
          v110 = 0;
          v75 = v71;
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C0);
          v77 = v84;
          v78 = &v84[*(v76 + 48)];
          (*(v89 + 8))(v53, v57);
          (*(v58 + 8))(v55, v56);
          swift_unknownObjectRelease();
          *v78 = v75;
          v78[8] = v106 & 1;
          swift_storeEnumTagMultiPayload();
          v79 = v86;
          sub_24F347CE4(v77, v86, type metadata accessor for Page.Background);
          v50 = v38;
        }

LABEL_31:
        sub_24F347CE4(v79, v50, type metadata accessor for Page.Background);
        return __swift_destroy_boxed_opaque_existential_1(v111);
      }

      if (v42 == 3)
      {
        v116 = 3;
        sub_24F347F44();
        v59 = v110;
        sub_24F92CBA8();
        v60 = v39;
        if (!v59)
        {
          v50 = v38;
          v64 = v60;
          type metadata accessor for JSColor();
          sub_24F347DAC(&qword_27F21C758, type metadata accessor for JSColor);
          v65 = v82;
          v66 = v92;
          sub_24F92CC68();
          (*(v91 + 8))(v35, v66);
          (*(v108 + 8))(v15, v64);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v73 = v65;
LABEL_30:
          v79 = v86;
          sub_24F347CE4(v73, v86, type metadata accessor for Page.Background);
          goto LABEL_31;
        }

        (*(v108 + 8))(v15, v39);
      }

      else
      {
        v49 = v39;
        v50 = v38;
        if (v42 != 4)
        {
          v116 = 5;
          sub_24F347E9C();
          v62 = v101;
          v63 = v110;
          sub_24F92CBA8();
          if (v63)
          {
            (*(v108 + 8))(v43, v49);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v111);
          }

          (*(v93 + 8))(v62, v88);
          (*(v108 + 8))(v43, v49);
          swift_unknownObjectRelease();
          v79 = v86;
          swift_storeEnumTagMultiPayload();
          goto LABEL_31;
        }

        v116 = 4;
        sub_24F347EF0();
        v51 = v100;
        v52 = v110;
        sub_24F92CBA8();
        if (!v52)
        {
          v110 = v15;
          type metadata accessor for JSColor();
          sub_24F347DAC(&qword_27F21C758, type metadata accessor for JSColor);
          v80 = v87;
          v68 = v95;
          sub_24F92CC68();
          (*(v96 + 8))(v51, v68);
          (*(v108 + 8))(v110, v49);
          swift_unknownObjectRelease();
LABEL_29:
          swift_storeEnumTagMultiPayload();
          v73 = v80;
          goto LABEL_30;
        }

        (*(v108 + 8))(v15, v49);
      }
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_24F3435F4(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FCE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FCE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34B960();
  sub_24F92D128();
  sub_24F34B9B4();
  sub_24F92CC98();
  v15 = v13;
  v16 = v14;
  sub_24F34BA08();
  sub_24F92CD48();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24F343874(uint64_t a1)
{
  v2 = sub_24F34B960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3438B0(uint64_t a1)
{
  v2 = sub_24F34B960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3438EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64654D646578696DLL && a2 == 0xEE006D6574496169)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F34397C(uint64_t a1)
{
  v2 = sub_24F34B9B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3439B8(uint64_t a1)
{
  v2 = sub_24F34B9B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24F3439F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_24F34A850(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

GameStoreKit::Page::Paddings::Configuration_optional __swiftcall Page.Paddings.Configuration.init(rawValue:)(Swift::String rawValue)
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

uint64_t Page.Paddings.Configuration.rawValue.getter()
{
  v1 = 0x746361706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24F343AE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v4 = 0x656772616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746361706D6F63;
  if (*a2 != 1)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
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

uint64_t sub_24F343BDC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F343C74()
{
  sub_24F92B218();
}

uint64_t sub_24F343CF8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F343D98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24F343EB0()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_24F343EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F343FB8(uint64_t a1)
{
  v2 = sub_24F34813C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F343FF4(uint64_t a1)
{
  v2 = sub_24F34813C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Page.Paddings.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34813C();
  sub_24F92D128();
  v15 = v8;
  v14 = 0;
  sub_24F348190();
  sub_24F92CD48();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Page.Paddings.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34813C();
  sub_24F92D108();
  if (!v2)
  {
    v15 = 0;
    sub_24F3481E4();
    sub_24F92CC68();
    v9 = v16;
    v13 = 1;
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Page.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Page.id.setter(uint64_t a1)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Page.pageKind.getter()
{
  v1 = *(v0 + *(type metadata accessor for Page(0) + 20));

  return v1;
}

uint64_t Page.pageKind.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Page(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Page.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Page(0) + 24);
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Page.pageMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 24);
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Page.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for Page(0) + 28));

  return v1;
}

uint64_t Page.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Page(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Page.titleDisplayMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t Page.titleDisplayMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t Page.navigationBarVisibility.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Page.toolbarItemGroups.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Page(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 Page.toolbarItemGroups.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for Page(0) + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t Page.isScrollDisabled.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_24F344AD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 48);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.shelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Page.auxiliaryShelves.getter()
{
  type metadata accessor for Page(0);
}

uint64_t sub_24F344BE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 52);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.auxiliaryShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Page.automaticallyUnifyStrandedColumn.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Page.automaticUnificationOverrideMargins.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t Page.automaticUnificationOverrideMargins.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t sub_24F344E00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 64);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.topLeadingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F344ED8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 68);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.topTrailingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 68);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F344FB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 72);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.bottomLeadingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F345088(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 76);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.bottomTrailingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Page.margins.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t Page.margins.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t Page.paddings.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 88));
  return result;
}

uint64_t Page.paddings.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 88)) = v2;
  return result;
}

uint64_t Page.dragIndicatorVisibility.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

unint64_t sub_24F345504(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x646E694B65676170;
      break;
    case 2:
      result = 0x7274654D65676170;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 21:
    case 28:
      result = 0xD000000000000017;
      break;
    case 6:
    case 12:
    case 22:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7365766C656873;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 13:
    case 16:
    case 24:
      result = 0xD000000000000012;
      break;
    case 14:
    case 27:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x736E696772616DLL;
      break;
    case 18:
      result = 0x73676E6964646170;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x756F72676B636162;
      break;
    case 23:
      result = 0x4168736572666572;
      break;
    case 25:
      result = 0x676553656C746974;
      break;
    case 26:
      result = 0x656C746974627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F345864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F34B088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F345898(uint64_t a1)
{
  v2 = sub_24F348238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3458D4(uint64_t a1)
{
  v2 = sub_24F348238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Page.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F348238();
  sub_24F92D128();
  LOBYTE(v19) = 0;
  sub_24F92A708();
  sub_24F347DAC(&qword_27F21F890, MEMORY[0x277D22408]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for Page(0);
    LOBYTE(v19) = 1;
    sub_24F92CD08();
    LOBYTE(v19) = 2;
    sub_24F928818();
    sub_24F347DAC(&qword_27F21F898, MEMORY[0x277D21BF8]);
    sub_24F92CD48();
    LOBYTE(v19) = 3;
    sub_24F92CD08();
    LOBYTE(v19) = *(v3 + v9[8]);
    v23 = 4;
    sub_24F34828C();
    sub_24F92CD48();
    LOBYTE(v19) = *(v3 + v9[9]);
    v23 = 5;
    v10 = sub_24F3482E0();
    sub_24F92CD48();
    v17 = v10;
    v11 = (v3 + v9[10]);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v18 = v11[3];
    *&v19 = v12;
    LOBYTE(v11) = *(v11 + 32);
    *(&v19 + 1) = v13;
    v20 = v14;
    v21 = v18;
    v22 = v11;
    v23 = 6;
    sub_24F348334();

    sub_24F92CD48();

    LOBYTE(v19) = 7;
    sub_24F92CD18();
    *&v19 = *(v3 + v9[12]);
    v23 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAE0);
    sub_24E602068(&qword_27F23FAE8, &qword_27F23FAE0);
    sub_24F92CD48();
    *&v19 = *(v3 + v9[13]);
    v23 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAF0);
    sub_24F3485A4(&qword_27F23FAF8, &qword_27F23FB00);
    sub_24F92CD48();
    LOBYTE(v19) = 10;
    sub_24F92CCB8();
    LOBYTE(v19) = *(v3 + v9[15]);
    v23 = 11;
    v18 = sub_24E777488();
    sub_24F92CCF8();
    *&v19 = *(v3 + v9[16]);
    v23 = 12;
    sub_24F92CD48();
    *&v19 = *(v3 + v9[17]);
    v23 = 13;
    sub_24F92CD48();
    *&v19 = *(v3 + v9[18]);
    v23 = 14;
    sub_24F92CD48();
    *&v19 = *(v3 + v9[19]);
    v23 = 15;
    sub_24F92CD48();
    LOBYTE(v19) = 16;
    type metadata accessor for HeaderPresentation(0);
    sub_24F347DAC(&qword_27F21BE58, type metadata accessor for HeaderPresentation);
    sub_24F92CCF8();
    LOBYTE(v19) = *(v3 + v9[21]);
    v23 = 17;
    sub_24F92CD48();
    LOWORD(v19) = *(v3 + v9[22]);
    v23 = 18;
    sub_24F348388();
    sub_24F92CCF8();
    v19 = *(v3 + v9[23]);
    v23 = 19;
    sub_24F3483DC();
    sub_24F92CCF8();
    LOBYTE(v19) = 20;
    type metadata accessor for Page.Background(0);
    sub_24F347DAC(&qword_27F21D920, type metadata accessor for Page.Background);
    sub_24F92CCF8();
    LOBYTE(v19) = *(v3 + v9[25]);
    v23 = 21;
    sub_24F92CCF8();
    *&v19 = *(v3 + v9[26]);
    v23 = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FB18);
    sub_24F348430(&qword_27F23FB20, sub_24F3484A8);
    sub_24F92CD48();
    LOBYTE(v19) = 23;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v19) = 24;
    sub_24F92CD48();
    LOBYTE(v19) = 25;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8);
    v18 = v15;
    sub_24F92CD48();
    LOBYTE(v19) = 26;
    sub_24F92CD48();
    LOBYTE(v19) = 27;
    sub_24F92CCB8();
    LOBYTE(v19) = 28;
    sub_24F92CCB8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Page.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v83 - v6;
  v92 = sub_24F928818();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v94 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_24F92A708();
  v93 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FB30);
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v83 - v10;
  v12 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v15 + 60);
  v14[v90] = 7;
  v16 = *(v15 + 80);
  v17 = type metadata accessor for HeaderPresentation(0);
  v18 = *(*(v17 - 8) + 56);
  v107 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = v12[22];
  *&v14[v19] = 3;
  v20 = v12[24];
  v21 = type metadata accessor for Page.Background(0);
  v22 = *(*(v21 - 8) + 56);
  v106 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = &v14[v12[27]];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v105 = v23;
  sub_24E61DA68(&v109, v23, qword_27F21B590);
  v24 = &v14[v12[28]];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v103 = v24;
  sub_24E61DA68(&v109, v24, qword_27F21B590);
  v25 = &v14[v12[29]];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v102 = v25;
  sub_24E61DA68(&v109, v25, qword_27F21B590);
  v26 = v12[30];
  v108 = v14;
  v27 = &v14[v26];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v101 = &v14[v26];
  sub_24E61DA68(&v109, &v14[v26], qword_27F21B590);
  v28 = a1[3];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24F348238();
  v99 = v11;
  v29 = v100;
  sub_24F92D108();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v104);
    v33 = 0;
    v34 = v108;
LABEL_4:
    sub_24E601704(&v34[v107], qword_27F220E38);
    sub_24EA4FAF8(v33);
    sub_24E601704(&v34[v106], &qword_27F21D8F8);

    sub_24E601704(v105, qword_27F24EC90);
    sub_24E601704(v103, qword_27F24EC90);
    sub_24E601704(v102, &qword_27F213EA8);
    return sub_24E601704(v101, &qword_27F213EA8);
  }

  v30 = v94;
  v100 = v17;
  v85 = v19;
  v86 = v21;
  LOBYTE(v109) = 0;
  sub_24F347DAC(&qword_27F21F8C0, MEMORY[0x277D22408]);
  v31 = v95;
  v32 = v98;
  sub_24F92CC68();
  v36 = v32;
  v37 = v108;
  (*(v93 + 32))(v108, v31, v36);
  LOBYTE(v109) = 1;
  v38 = sub_24F92CC28();
  v39 = &v37[v12[5]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v109) = 2;
  sub_24F347DAC(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
  v41 = v92;
  v84 = 0;
  sub_24F92CC68();
  (*(v91 + 32))(&v37[v12[6]], v30, v41);
  LOBYTE(v109) = 3;
  v42 = sub_24F92CC28();
  v43 = &v37[v12[7]];
  *v43 = v42;
  v43[1] = v44;
  v112 = 4;
  sub_24F3484FC();
  sub_24F92CC68();
  v37[v12[8]] = v109;
  v112 = 5;
  v45 = sub_24F348550();
  sub_24F92CC68();
  v37[v12[9]] = v109;
  v112 = 6;
  sub_24E933414();
  sub_24F92CC68();
  v47 = v111;
  v48 = &v37[v12[10]];
  v49 = v110;
  *v48 = v109;
  *(v48 + 1) = v49;
  v48[32] = v47;
  LOBYTE(v109) = 7;
  v50 = sub_24F92CC38();
  v83 = v45;
  v108[v12[11]] = v50 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAE0);
  v112 = 8;
  sub_24E602068(&qword_27F23FB48, &qword_27F23FAE0);
  sub_24F92CC68();
  v95 = 0;
  *&v108[v12[12]] = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAF0);
  v112 = 9;
  sub_24F3485A4(&qword_27F23FB50, &qword_27F23FB58);
  v51 = v95;
  sub_24F92CC68();
  v95 = v51;
  if (v51)
  {
    (*(v96 + 8))(v99, v97);
    v52 = 0;
    v53 = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
LABEL_26:
    v58 = v12;
    v46 = v84;
    __swift_destroy_boxed_opaque_existential_1(v104);
    v34 = v108;
    (*(v93 + 8))(v108, v98);
    if (!v46)
    {
    }

    (*(v91 + 8))(&v34[v58[6]], v92);

    if (v52)
    {

      if (v53)
      {
        goto LABEL_16;
      }
    }

    else if (v53)
    {
LABEL_16:

      if ((v96 & 1) == 0)
      {
LABEL_17:
        if (v97)
        {
LABEL_18:

          if ((v99 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_11:
        if (!v99)
        {
LABEL_13:
          v33 = v100;
          goto LABEL_4;
        }

LABEL_12:

        goto LABEL_13;
      }

LABEL_10:

      if (v97)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (!v96)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  *&v108[v12[13]] = v109;
  LOBYTE(v109) = 10;
  v54 = v95;
  v55 = sub_24F92CBD8();
  v95 = v54;
  if (v54 || (v108[v12[14]] = v55, v112 = 11, sub_24E777690(), v56 = v95, sub_24F92CC18(), (v95 = v56) != 0) || (v108[v90] = v109, v112 = 12, v57 = v95, sub_24F92CC68(), (v95 = v57) != 0))
  {
    (*(v96 + 8))(v99, v97);
    v53 = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    goto LABEL_26;
  }

  *&v108[v12[16]] = v109;
  v112 = 13;
  v59 = v95;
  sub_24F92CC68();
  v95 = v59;
  if (v59)
  {
    (*(v96 + 8))(v99, v97);
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    v53 = 1;
    goto LABEL_26;
  }

  *&v108[v12[17]] = v109;
  v112 = 14;
  v60 = v95;
  sub_24F92CC68();
  v95 = v60;
  if (v60)
  {
    (*(v96 + 8))(v99, v97);
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    v53 = 1;
    LODWORD(v96) = 1;
    goto LABEL_26;
  }

  *&v108[v12[18]] = v109;
  v112 = 15;
  v61 = v95;
  sub_24F92CC68();
  v95 = v61;
  if (v61)
  {
    (*(v96 + 8))(v99, v97);
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    v53 = 1;
    LODWORD(v96) = 1;
    LODWORD(v97) = 1;
    goto LABEL_26;
  }

  *&v108[v12[19]] = v109;
  LOBYTE(v109) = 16;
  sub_24F347DAC(&qword_27F21BEB8, type metadata accessor for HeaderPresentation);
  v62 = v95;
  sub_24F92CC18();
  v95 = v62;
  if (v62 || (sub_24E61DA68(v87, &v108[v107], qword_27F220E38), v112 = 17, v63 = v95, sub_24F92CC68(), (v95 = v63) != 0) || (v108[v12[21]] = v109, v112 = 18, sub_24F34863C(), v64 = v95, sub_24F92CC18(), (v95 = v64) != 0) || (*&v108[v85] = v109, v112 = 19, sub_24F348690(), v65 = v95, sub_24F92CC18(), (v95 = v65) != 0))
  {
    (*(v96 + 8))(v99, v97);
    v100 = 0;
    v94 = 0;
LABEL_38:
    v90 = MEMORY[0x277D84F90];
LABEL_39:
    v52 = 1;
    v53 = 1;
    LODWORD(v96) = 1;
    LODWORD(v97) = 1;
    LODWORD(v99) = 1;
    goto LABEL_26;
  }

  v66 = &v108[v12[23]];
  v67 = *(&v109 + 1);
  v100 = v109;
  *v66 = v109;
  *(v66 + 1) = v67;
  v94 = v67;
  LOBYTE(v109) = 20;
  sub_24F347DAC(&qword_27F21D930, type metadata accessor for Page.Background);
  v68 = v95;
  sub_24F92CC18();
  v95 = v68;
  if (v68 || (sub_24E61DA68(v88, &v108[v106], &qword_27F21D8F8), v112 = 21, v69 = v95, sub_24F92CC18(), (v95 = v69) != 0) || (v108[v12[25]] = v109, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FB18), v112 = 22, sub_24F348430(&qword_27F23FB70, sub_24F3486E4), v70 = v95, sub_24F92CC68(), (v95 = v70) != 0))
  {
    (*(v96 + 8))(v99, v97);
    goto LABEL_38;
  }

  v71 = v12[26];
  v90 = v109;
  *&v108[v71] = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  v112 = 23;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
  v72 = v95;
  sub_24F92CC68();
  v95 = v72;
  if (v72 || (sub_24E61DA68(&v109, v105, qword_27F24EC90), v112 = 24, v73 = v95, sub_24F92CC68(), (v95 = v73) != 0) || (sub_24E61DA68(&v109, v103, qword_27F24EC90), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8), v112 = 25, sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8), v74 = v95, sub_24F92CC68(), (v95 = v74) != 0) || (sub_24E61DA68(&v109, v102, &qword_27F213EA8), v112 = 26, v75 = v95, sub_24F92CC68(), (v95 = v75) != 0) || (sub_24E61DA68(&v109, v101, &qword_27F213EA8), LOBYTE(v109) = 27, v76 = v95, v77 = sub_24F92CBD8(), (v95 = v76) != 0) || (v108[v12[31]] = v77, LOBYTE(v109) = 28, v78 = v95, v79 = sub_24F92CBD8(), (v95 = v78) != 0))
  {
    (*(v96 + 8))(v99, v97);
    goto LABEL_39;
  }

  v80 = v79;
  (*(v96 + 8))(v99, v97);
  v81 = v12[32];
  v82 = v108;
  v108[v81] = v80;
  sub_24F340D54(v82, v89, type metadata accessor for Page);
  __swift_destroy_boxed_opaque_existential_1(v104);
  return sub_24F347D4C(v82, type metadata accessor for Page);
}

uint64_t sub_24F347A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_24F347AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24F347B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_24F347BB4()
{
  result = qword_27F23F978;
  if (!qword_27F23F978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F980);
    sub_24F347DAC(&qword_27F23F988, type metadata accessor for JSColor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F978);
  }

  return result;
}

uint64_t sub_24F347C68(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F347CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F347D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F347DAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F347DF4()
{
  result = qword_27F23F9B0;
  if (!qword_27F23F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F9B0);
  }

  return result;
}

unint64_t sub_24F347E48()
{
  result = qword_27F23FA00;
  if (!qword_27F23FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA00);
  }

  return result;
}

unint64_t sub_24F347E9C()
{
  result = qword_27F23FA08;
  if (!qword_27F23FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA08);
  }

  return result;
}

unint64_t sub_24F347EF0()
{
  result = qword_27F23FA10;
  if (!qword_27F23FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA10);
  }

  return result;
}

unint64_t sub_24F347F44()
{
  result = qword_27F23FA18;
  if (!qword_27F23FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA18);
  }

  return result;
}

unint64_t sub_24F347F98()
{
  result = qword_27F23FA20;
  if (!qword_27F23FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA20);
  }

  return result;
}

unint64_t sub_24F347FEC()
{
  result = qword_27F23FA28;
  if (!qword_27F23FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA28);
  }

  return result;
}

unint64_t sub_24F348040()
{
  result = qword_27F23FA38;
  if (!qword_27F23FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA38);
  }

  return result;
}

unint64_t sub_24F348094()
{
  result = qword_27F23FA40;
  if (!qword_27F23FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA40);
  }

  return result;
}

unint64_t sub_24F3480E8()
{
  result = qword_27F23FA88;
  if (!qword_27F23FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA88);
  }

  return result;
}

unint64_t sub_24F34813C()
{
  result = qword_27F23FA98;
  if (!qword_27F23FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA98);
  }

  return result;
}

unint64_t sub_24F348190()
{
  result = qword_27F23FAA0;
  if (!qword_27F23FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAA0);
  }

  return result;
}

unint64_t sub_24F3481E4()
{
  result = qword_27F23FAB0;
  if (!qword_27F23FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAB0);
  }

  return result;
}

unint64_t sub_24F348238()
{
  result = qword_27F23FAC0;
  if (!qword_27F23FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAC0);
  }

  return result;
}

unint64_t sub_24F34828C()
{
  result = qword_27F23FAC8;
  if (!qword_27F23FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAC8);
  }

  return result;
}

unint64_t sub_24F3482E0()
{
  result = qword_27F23FAD0;
  if (!qword_27F23FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAD0);
  }

  return result;
}

unint64_t sub_24F348334()
{
  result = qword_27F23FAD8;
  if (!qword_27F23FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAD8);
  }

  return result;
}

unint64_t sub_24F348388()
{
  result = qword_27F23FB08;
  if (!qword_27F23FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB08);
  }

  return result;
}

unint64_t sub_24F3483DC()
{
  result = qword_27F23FB10;
  if (!qword_27F23FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB10);
  }

  return result;
}

uint64_t sub_24F348430(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23FB18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F3484A8()
{
  result = qword_27F23FB28;
  if (!qword_27F23FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB28);
  }

  return result;
}

unint64_t sub_24F3484FC()
{
  result = qword_27F23FB38;
  if (!qword_27F23FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB38);
  }

  return result;
}

unint64_t sub_24F348550()
{
  result = qword_27F23FB40;
  if (!qword_27F23FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB40);
  }

  return result;
}

uint64_t sub_24F3485A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23FAF0);
    sub_24E602068(a2, &qword_27F23FAE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F34863C()
{
  result = qword_27F23FB60;
  if (!qword_27F23FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB60);
  }

  return result;
}

unint64_t sub_24F348690()
{
  result = qword_27F23FB68;
  if (!qword_27F23FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB68);
  }

  return result;
}

unint64_t sub_24F3486E4()
{
  result = qword_27F23FB78;
  if (!qword_27F23FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB78);
  }

  return result;
}

unint64_t sub_24F34873C()
{
  result = qword_27F23FB80;
  if (!qword_27F23FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB80);
  }

  return result;
}

unint64_t sub_24F348794()
{
  result = qword_27F23FB88;
  if (!qword_27F23FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB88);
  }

  return result;
}

uint64_t sub_24F348908@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 48));
}

uint64_t sub_24F348954@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 52));
}

uint64_t sub_24F3489A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 64));
}

uint64_t sub_24F3489EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 68));
}

uint64_t sub_24F348A38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 72));
}

uint64_t sub_24F348A84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 76));
}

uint64_t sub_24F348AE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F92A708();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_24F928818();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[20];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[24];

  return v18(v19, a2, v17);
}

uint64_t sub_24F348CD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24F92A708();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_24F928818();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[20];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[24];

  return v18(v19, a2, a2, v17);
}

void sub_24F348EA8()
{
  sub_24F92A708();
  if (v0 <= 0x3F)
  {
    sub_24F928818();
    if (v1 <= 0x3F)
    {
      sub_24F3491F0();
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F23FBC0, &qword_27F23FAE0);
        if (v3 <= 0x3F)
        {
          sub_24F3492E8(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24F3492E8(319, &qword_27F220ED0, &type metadata for Margins, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24F349294(319, &qword_27F220EC8, type metadata accessor for HeaderPresentation);
              if (v6 <= 0x3F)
              {
                sub_24F3492E8(319, &qword_27F23FBC8, &type metadata for Page.Paddings, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_24F3492E8(319, &qword_27F23FBD0, &type metadata for Page.SingleColumnComponent, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_24F349294(319, &qword_27F21D948, type metadata accessor for Page.Background);
                    if (v9 <= 0x3F)
                    {
                      sub_24F3492E8(319, &qword_27F23FBD8, MEMORY[0x277CDF388], MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        sub_24F3492E8(319, &qword_27F23FBE0, &type metadata for Page.RefreshCondition, MEMORY[0x277D83940]);
                        if (v11 <= 0x3F)
                        {
                          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
                          if (v12 <= 0x3F)
                          {
                            sub_24E7CA5E4();
                            if (v13 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_24F3491F0()
{
  if (!qword_27F23FBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225CB0);
    sub_24E602068(&qword_27F225CB8, &qword_27F225CB0);
    v0 = sub_24F9294F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23FBB8);
    }
  }
}

void sub_24F349294(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_24F3492E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F349338()
{
  sub_24F3493D4();
  if (v0 <= 0x3F)
  {
    sub_24F349454();
    if (v1 <= 0x3F)
    {
      sub_24F3494DC();
      if (v2 <= 0x3F)
      {
        sub_24E869A90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24F3493D4()
{
  if (!qword_27F23FBF8)
  {
    sub_24F9289E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F23FBF8);
    }
  }
}

void sub_24F349454()
{
  if (!qword_27F23FC00)
  {
    sub_24F9289E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214148);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F23FC00);
    }
  }
}

void sub_24F3494DC()
{
  if (!qword_27F23FC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F23FC08);
    }
  }
}

uint64_t getEnumTagSinglePayload for Page.Paddings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for UpdateListener.RefreshDataType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UpdateListener.RefreshDataType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24F349820()
{
  result = qword_27F23FC10;
  if (!qword_27F23FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC10);
  }

  return result;
}
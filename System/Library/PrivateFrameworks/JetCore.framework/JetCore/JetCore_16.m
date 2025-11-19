uint64_t sub_1DB45E628()
{
  v1 = v0[62];
  v2 = v0[58];
  sub_1DB468D80(v0[61], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v12 = *(v11 + 8);
    v17 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[68] = v14;
    *v14 = v0;
    v14[1] = sub_1DB45E84C;
    v15 = v0[62];
    v16 = v0[60];

    return v17(v16, v15, v10, v11);
  }

  else
  {
    v5 = v0[63];
    v7 = v0[60];
    v6 = v0[61];
    sub_1DB468D80(v0[62], v0[52], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1DB45E84C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v6 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_1DB45EAEC;
  }

  else
  {
    sub_1DB467374(*(v2 + 480), type metadata accessor for JetPackAsset);
    v4 = sub_1DB45E97C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB45E97C()
{
  v1 = v0[63];
  v3 = v0[60];
  v2 = v0[61];
  sub_1DB468D80(v0[62], v0[52], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB45EA40()
{
  v1 = v0[67];
  v3 = v0[62];
  v2 = v0[63];
  v5 = v0[60];
  v4 = v0[61];
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB45EAEC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  sub_1DB50BEB0();
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v24 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001DB52F2F0;
  v7._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 384);
  v9 = *(v0 + 392);
  *(v0 + 344) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 320));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_1DB30C4B8(v0 + 320, v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 352, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v11 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = *(v0 + 552);
  *(v11 + 2) = v13 + 1;
  v15 = &v11[40 * v13];
  v16 = *(v0 + 216);
  v17 = *(v0 + 232);
  v15[64] = *(v0 + 248);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1DB30623C(v0 + 320, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v6 + 32) = v11;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v19 = *(v0 + 504);
  v21 = *(v0 + 480);
  v20 = *(v0 + 488);
  sub_1DB468D80(*(v0 + 496), *(v0 + 416), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DB45EDE8()
{
  sub_1DB466224(*(v0 + 328) + 24, v0 + 96);
  if (!*(v0 + 120))
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    sub_1DB46625C(v0 + 96);
    goto LABEL_10;
  }

  v1 = *(v0 + 160);
  *(v0 + 64) = *(v0 + 144);
  *(v0 + 80) = v1;
  v2 = *(v0 + 128);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v2;
  *(v0 + 16) = *(v0 + 96);
  if (!*(v0 + 40))
  {
LABEL_10:
    sub_1DB30623C(v0 + 16, &qword_1ECC45918, &qword_1DB51C4F0);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    goto LABEL_11;
  }

  sub_1DB2FEA0C((v0 + 16), v0 + 216);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (*(v0 + 240))
  {
    sub_1DB2FEA0C((v0 + 216), v0 + 176);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    *(v0 + 320) = MEMORY[0x1E69E6158];
    *(v0 + 296) = 0xD000000000000015;
    *(v0 + 304) = 0x80000001DB52F000;
    *(v6 + 48) = 0u;
    *(v6 + 32) = 0u;
    sub_1DB30C2D8(v0 + 296, v6 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v6 + 64) = 0;
    *(v5 + 32) = v6;
    Logger.info(_:)(v5, v4, v3);

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v7);
    v9 = *(v8 + 32);
    v14 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 336) = v11;
    *v11 = v0;
    v11[1] = sub_1DB45F144;

    return v14(v7, v8);
  }

LABEL_11:
  sub_1DB30623C(v0 + 216, &qword_1ECC45928, &qword_1DB51C508);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DB45F144()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1DB45F2BC;
  }

  else
  {
    v3 = sub_1DB45F258;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB45F258()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB45F2BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[1];
  v2 = v0[43];

  return v1();
}

uint64_t JetPackAssetSession.performMaintenance()()
{
  v1[126] = v0;
  v2 = type metadata accessor for JetPackAsset(0);
  v1[127] = v2;
  v3 = *(v2 - 8);
  v1[128] = v3;
  v4 = *(v3 + 64) + 15;
  v1[129] = swift_task_alloc();
  v5 = sub_1DB50A230();
  v1[130] = v5;
  v6 = *(v5 - 8);
  v1[131] = v6;
  v7 = *(v6 + 64) + 15;
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB45F448, 0, 0);
}

uint64_t sub_1DB45F448()
{
  sub_1DB466224(*(v0 + 1008) + 24, v0 + 96);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 160);
    *(v0 + 64) = *(v0 + 144);
    *(v0 + 80) = v1;
    v2 = *(v0 + 128);
    *(v0 + 32) = *(v0 + 112);
    *(v0 + 48) = v2;
    *(v0 + 16) = *(v0 + 96);
    if (*(v0 + 40))
    {
      v3 = *(v0 + 64);
      *(v0 + 208) = *(v0 + 48);
      *(v0 + 224) = v3;
      *(v0 + 240) = *(v0 + 80);
      v4 = *(v0 + 32);
      *(v0 + 176) = *(v0 + 16);
      *(v0 + 192) = v4;
      if (qword_1EE30E170 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 1064);
      v6 = sub_1DB50A270();
      __swift_project_value_buffer(v6, qword_1EE30E178);
      sub_1DB50A250();
      sub_1DB50A200();
      v7 = sub_1DB50A250();
      v8 = sub_1DB50B070();
      if (sub_1DB50B0E0())
      {
        v9 = *(v0 + 1064);
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v7, v8, v11, "Perform Maintenance", "", v10, 2u);
        MEMORY[0x1E1288220](v10, -1, -1);
      }

      v12 = *(v0 + 1064);
      v13 = *(v0 + 1056);
      v14 = *(v0 + 1048);
      v15 = *(v0 + 1040);

      (*(v14 + 16))(v13, v12, v15);
      v16 = sub_1DB50A2C0();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      *(v0 + 1072) = sub_1DB50A2B0();
      v19 = *(v0 + 200);
      v20 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v19);
      v21 = *(v20 + 40);
      v29 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 1080) = v23;
      *v23 = v0;
      v23[1] = sub_1DB45F778;

      return v29(v19, v20);
    }
  }

  else
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    sub_1DB46625C(v0 + 96);
  }

  sub_1DB30623C(v0 + 16, &qword_1ECC45918, &qword_1DB51C4F0);
  v25 = *(v0 + 1064);
  v26 = *(v0 + 1056);
  v27 = *(v0 + 1032);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1DB45F778(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1080);
  v7 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {
    v5 = sub_1DB460884;
  }

  else
  {
    v5 = sub_1DB45F890;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB45F890()
{
  v62 = v0;
  v1 = *(*(v0 + 1088) + 16);
  *(v0 + 1104) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 456);
    v4 = (v0 + 536);
    v5 = (v0 + 1000);
    v6 = *(v0 + 1024);
    *(v0 + 372) = *(v6 + 80);
    *(v0 + 1112) = *(v6 + 72);
    while (1)
    {
      *(v0 + 1120) = v2;
      v7 = *(v0 + 1032);
      sub_1DB468D18(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v2, v7, type metadata accessor for JetPackAsset);
      v8 = *(v0 + 240);
      v9 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v8);
      (*(v9 + 8))(&v61, v7, v8, v9);
      v10 = v61;
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EE30C918;
      sub_1DB50BEB0();
      v58 = *(v0 + 288);
      v59 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v59);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      *(v0 + 1000) = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001DB52F020;
      v12._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      *(v0 + 832) = v10;
      sub_1DB30C4B8(v0 + 832, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v3 = 0u;
      *(v0 + 472) = 0u;
      sub_1DB30C2D8(v0 + 736, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 488) = 0;
      v13 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
      }

      v16 = *(v0 + 1032);
      v17 = *(v0 + 1016);
      *(v13 + 2) = v15 + 1;
      v18 = &v13[40 * v15];
      v19 = *v3;
      v20 = *(v0 + 472);
      v18[64] = *(v0 + 488);
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      *(v0 + 1000) = v13;
      sub_1DB30623C(v0 + 832, &qword_1ECC426B0, &qword_1DB50EEB0);
      v21._countAndFlagsBits = 0x654B656863616320;
      v21._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v22 = (v16 + *(v17 + 28));
      v23 = *v22;
      *(v0 + 1144) = *v22;
      v24 = v22[1];
      *(v0 + 1152) = v24;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v23;
      *(v0 + 680) = v24;
      sub_1DB30C4B8(v0 + 672, v0 + 640, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v4 = 0u;
      *(v0 + 552) = 0u;

      sub_1DB30C2D8(v0 + 640, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 568) = 0;
      v25 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DB301BC0(0, *(v25 + 2) + 1, 1, v25);
        *v5 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1DB301BC0((v26 > 1), v27 + 1, 1, v25);
      }

      v28 = *(v0 + 1032);
      v29 = *(v0 + 1016);
      *(v25 + 2) = v27 + 1;
      v30 = &v25[40 * v27];
      v31 = *v4;
      v32 = *(v0 + 552);
      v30[64] = *(v0 + 568);
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      *(v0 + 1000) = v25;
      sub_1DB30623C(v0 + 672, &qword_1ECC426B0, &qword_1DB50EEB0);
      v33._countAndFlagsBits = 0x4449656863616320;
      v33._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v34 = v28 + *(v29 + 24);
      v35 = *v34;
      *(v0 + 412) = *v34;
      LOBYTE(v34) = *(v34 + 4);
      *(v0 + 369) = v34;
      if (v34)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v35;
      }

      sub_1DB30C4B8(v0 + 608, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1DB30C2D8(v0 + 576, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 368) = 0;
      v36 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = *(v0 + 336);
      v41 = *(v0 + 352);
      v39[64] = *(v0 + 368);
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      *v5 = v36;
      sub_1DB30623C(v0 + 608, &qword_1ECC426B0, &qword_1DB50EEB0);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v11 + 32) = *v5;
      Logger.info(_:)(v11, v59, v58);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      if (v10 == 3)
      {
        break;
      }

      sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v2 = *(v0 + 1120) + 1;
      if (v2 == *(v0 + 1104))
      {
        v50 = *(v0 + 1088);
        goto LABEL_26;
      }
    }

    v43 = *(v0 + 200);
    v44 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v43);
    v45 = *(v44 + 24);
    v60 = (v45 + *v45);
    v46 = v45[1];
    v47 = swift_task_alloc();
    *(v0 + 1160) = v47;
    *v47 = v0;
    v47[1] = sub_1DB45FFFC;
    v48 = *(v0 + 1032);

    return v60(v48, v43, v44);
  }

  else
  {
LABEL_26:

    v51 = *(v0 + 1064);
    v52 = *(v0 + 1048);
    v53 = *(v0 + 1040);
    sub_1DB4662E0(*(v0 + 1072), "Perform Maintenance");

    (*(v52 + 8))(v51, v53);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    v54 = *(v0 + 1064);
    v55 = *(v0 + 1056);
    v56 = *(v0 + 1032);

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_1DB45FFFC()
{
  v2 = *(*v1 + 1160);
  v5 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v3 = sub_1DB460968;
  }

  else
  {
    v3 = sub_1DB460110;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB460110()
{
  v60 = v0;
  sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
  v1 = *(v0 + 1120) + 1;
  if (v1 == *(v0 + 1104))
  {
LABEL_2:
    v2 = *(v0 + 1088);

    v3 = *(v0 + 1064);
    v4 = *(v0 + 1048);
    v5 = *(v0 + 1040);
    sub_1DB4662E0(*(v0 + 1072), "Perform Maintenance");

    (*(v4 + 8))(v3, v5);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    v6 = *(v0 + 1064);
    v7 = *(v0 + 1056);
    v8 = *(v0 + 1032);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = (v0 + 456);
    v12 = (v0 + 536);
    v13 = (v0 + 1000);
    while (1)
    {
      *(v0 + 1120) = v1;
      v14 = *(v0 + 1032);
      sub_1DB468D18(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v1, v14, type metadata accessor for JetPackAsset);
      v15 = *(v0 + 240);
      v16 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v15);
      (*(v16 + 8))(&v59, v14, v15, v16);
      v17 = v59;
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EE30C918;
      sub_1DB50BEB0();
      v56 = *(v0 + 288);
      v57 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v57);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      *(v0 + 1000) = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v19._object = 0x80000001DB52F020;
      v19._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      *(v0 + 832) = v17;
      sub_1DB30C4B8(v0 + 832, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v11 = 0u;
      *(v0 + 472) = 0u;
      sub_1DB30C2D8(v0 + 736, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 488) = 0;
      v20 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      v23 = *(v0 + 1032);
      v24 = *(v0 + 1016);
      *(v20 + 2) = v22 + 1;
      v25 = &v20[40 * v22];
      v26 = *v11;
      v27 = *(v0 + 472);
      v25[64] = *(v0 + 488);
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      *(v0 + 1000) = v20;
      sub_1DB30623C(v0 + 832, &qword_1ECC426B0, &qword_1DB50EEB0);
      v28._countAndFlagsBits = 0x654B656863616320;
      v28._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v29 = (v23 + *(v24 + 28));
      v30 = *v29;
      *(v0 + 1144) = *v29;
      v31 = v29[1];
      *(v0 + 1152) = v31;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v30;
      *(v0 + 680) = v31;
      sub_1DB30C4B8(v0 + 672, v0 + 640, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v12 = 0u;
      *(v0 + 552) = 0u;

      sub_1DB30C2D8(v0 + 640, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 568) = 0;
      v32 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DB301BC0(0, *(v32 + 2) + 1, 1, v32);
        *v13 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v32);
      }

      v35 = *(v0 + 1032);
      v36 = *(v0 + 1016);
      *(v32 + 2) = v34 + 1;
      v37 = &v32[40 * v34];
      v38 = *v12;
      v39 = *(v0 + 552);
      v37[64] = *(v0 + 568);
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      *(v0 + 1000) = v32;
      sub_1DB30623C(v0 + 672, &qword_1ECC426B0, &qword_1DB50EEB0);
      v40._countAndFlagsBits = 0x4449656863616320;
      v40._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      v41 = v35 + *(v36 + 24);
      v42 = *v41;
      *(v0 + 412) = *v41;
      LOBYTE(v41) = *(v41 + 4);
      *(v0 + 369) = v41;
      if (v41)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v42;
      }

      sub_1DB30C4B8(v0 + 608, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1DB30C2D8(v0 + 576, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 368) = 0;
      v43 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DB301BC0(0, *(v43 + 2) + 1, 1, v43);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1DB301BC0((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v46 = &v43[40 * v45];
      v47 = *(v0 + 336);
      v48 = *(v0 + 352);
      v46[64] = *(v0 + 368);
      *(v46 + 2) = v47;
      *(v46 + 3) = v48;
      *v13 = v43;
      sub_1DB30623C(v0 + 608, &qword_1ECC426B0, &qword_1DB50EEB0);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v18 + 32) = *v13;
      Logger.info(_:)(v18, v57, v56);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      if (v17 == 3)
      {
        break;
      }

      sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v1 = *(v0 + 1120) + 1;
      if (v1 == *(v0 + 1104))
      {
        goto LABEL_2;
      }
    }

    v50 = *(v0 + 200);
    v51 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v50);
    v52 = *(v51 + 24);
    v58 = (v52 + *v52);
    v53 = v52[1];
    v54 = swift_task_alloc();
    *(v0 + 1160) = v54;
    *v54 = v0;
    v54[1] = sub_1DB45FFFC;
    v55 = *(v0 + 1032);

    return v58(v55, v50, v51);
  }
}

uint64_t sub_1DB460884()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  sub_1DB4662E0(v0[134], "Perform Maintenance");

  (*(v3 + 8))(v1, v4);
  sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);

  v6 = v0[1];
  v7 = v0[137];

  return v6();
}

uint64_t sub_1DB460968()
{
  v99 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  sub_1DB50BEB0();
  v93 = *(v0 + 328);
  v95 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 296), v95);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  *(v0 + 984) = sub_1DB301BC0(0, 56, 0, MEMORY[0x1E69E7CC0]);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001DB52F040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v6 = *(v0 + 960);
  v7 = *(v0 + 968);
  *(v0 + 728) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 704));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v6, v7);
  sub_1DB30C4B8(v0 + 704, v0 + 768, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 768, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v9 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 1152);
  v13 = *(v0 + 1144);
  *(v9 + 2) = v11 + 1;
  v14 = &v9[40 * v11];
  v15 = *(v0 + 496);
  v16 = *(v0 + 512);
  v14[64] = *(v0 + 528);
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  *(v0 + 984) = v9;
  sub_1DB30623C(v0 + 704, &qword_1ECC426B0, &qword_1DB50EEB0);
  v17._countAndFlagsBits = 0x654B656863616320;
  v17._object = 0xEA00000000003D79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v0 + 824) = MEMORY[0x1E69E6158];
  *(v0 + 800) = v13;
  *(v0 + 808) = v12;
  sub_1DB30C4B8(v0 + 800, v0 + 864, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;

  sub_1DB30C2D8(v0 + 864, v0 + 416, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 448) = 0;
  v18 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
    *(v0 + 984) = v18;
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
  }

  v21 = (v0 + 376);
  v22 = *(v0 + 369);
  *(v18 + 2) = v20 + 1;
  v23 = &v18[40 * v20];
  v24 = *(v0 + 416);
  v25 = *(v0 + 432);
  v23[64] = *(v0 + 448);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  *(v0 + 984) = v18;
  sub_1DB30623C(v0 + 800, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0x4449656863616320;
  v26._object = 0xE90000000000003DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  if (v22)
  {
    *(v0 + 896) = 0u;
    *(v0 + 912) = 0u;
  }

  else
  {
    v27 = *(v0 + 412);
    *(v0 + 920) = MEMORY[0x1E69E72F0];
    *(v0 + 896) = v27;
  }

  sub_1DB30C4B8(v0 + 896, v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v21 = 0u;
  *(v0 + 392) = 0u;
  sub_1DB30C2D8(v0 + 928, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 408) = 0;
  v28 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
  }

  v31 = *(v0 + 1168);
  v32 = *(v0 + 1032);
  *(v28 + 2) = v30 + 1;
  v33 = &v28[40 * v30];
  v34 = *v21;
  v35 = *(v0 + 392);
  v33[64] = *(v0 + 408);
  *(v33 + 2) = v34;
  *(v33 + 3) = v35;
  *(v0 + 984) = v28;
  sub_1DB30623C(v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  *(v4 + 32) = *(v0 + 984);
  Logger.error(_:)(v4, v95, v93);

  sub_1DB467374(v32, type metadata accessor for JetPackAsset);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  v37 = *(v0 + 1120) + 1;
  if (v37 == *(v0 + 1104))
  {
LABEL_17:
    v38 = *(v0 + 1088);

    v39 = *(v0 + 1064);
    v40 = *(v0 + 1048);
    v41 = *(v0 + 1040);
    sub_1DB4662E0(*(v0 + 1072), "Perform Maintenance");

    (*(v40 + 8))(v39, v41);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    v42 = *(v0 + 1064);
    v43 = *(v0 + 1056);
    v44 = *(v0 + 1032);

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v47 = (v0 + 456);
    v48 = (v0 + 536);
    v49 = (v0 + 1000);
    while (1)
    {
      *(v0 + 1120) = v37;
      v50 = *(v0 + 1032);
      sub_1DB468D18(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v37, v50, type metadata accessor for JetPackAsset);
      v51 = *(v0 + 240);
      v52 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v51);
      (*(v52 + 8))(&v98, v50, v51, v52);
      v53 = v98;
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EE30C918;
      sub_1DB50BEB0();
      v92 = *(v0 + 288);
      v94 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v94);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1DB50EE90;
      *(v0 + 1000) = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v55._object = 0x80000001DB52F020;
      v55._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      v96 = v53;
      *(v0 + 832) = v53;
      sub_1DB30C4B8(v0 + 832, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v47 = 0u;
      *(v0 + 472) = 0u;
      sub_1DB30C2D8(v0 + 736, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 488) = 0;
      v56 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1DB301BC0(0, *(v56 + 2) + 1, 1, v56);
      }

      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v56 = sub_1DB301BC0((v57 > 1), v58 + 1, 1, v56);
      }

      v59 = *(v0 + 1032);
      v60 = *(v0 + 1016);
      *(v56 + 2) = v58 + 1;
      v61 = &v56[40 * v58];
      v62 = *v47;
      v63 = *(v0 + 472);
      v61[64] = *(v0 + 488);
      *(v61 + 2) = v62;
      *(v61 + 3) = v63;
      *(v0 + 1000) = v56;
      sub_1DB30623C(v0 + 832, &qword_1ECC426B0, &qword_1DB50EEB0);
      v64._countAndFlagsBits = 0x654B656863616320;
      v64._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v64);
      v65 = (v59 + *(v60 + 28));
      v66 = *v65;
      *(v0 + 1144) = *v65;
      v67 = v65[1];
      *(v0 + 1152) = v67;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v66;
      *(v0 + 680) = v67;
      sub_1DB30C4B8(v0 + 672, v0 + 640, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v48 = 0u;
      *(v0 + 552) = 0u;

      sub_1DB30C2D8(v0 + 640, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 568) = 0;
      v68 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1DB301BC0(0, *(v68 + 2) + 1, 1, v68);
        *v49 = v68;
      }

      v70 = *(v68 + 2);
      v69 = *(v68 + 3);
      if (v70 >= v69 >> 1)
      {
        v68 = sub_1DB301BC0((v69 > 1), v70 + 1, 1, v68);
      }

      v71 = *(v0 + 1032);
      v72 = *(v0 + 1016);
      *(v68 + 2) = v70 + 1;
      v73 = &v68[40 * v70];
      v74 = *v48;
      v75 = *(v0 + 552);
      v73[64] = *(v0 + 568);
      *(v73 + 2) = v74;
      *(v73 + 3) = v75;
      *(v0 + 1000) = v68;
      sub_1DB30623C(v0 + 672, &qword_1ECC426B0, &qword_1DB50EEB0);
      v76._countAndFlagsBits = 0x4449656863616320;
      v76._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v76);
      v77 = v71 + *(v72 + 24);
      v78 = *v77;
      *(v0 + 412) = *v77;
      LOBYTE(v77) = *(v77 + 4);
      *(v0 + 369) = v77;
      if (v77)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v78;
      }

      sub_1DB30C4B8(v0 + 608, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1DB30C2D8(v0 + 576, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 368) = 0;
      v79 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1DB301BC0(0, *(v79 + 2) + 1, 1, v79);
      }

      v81 = *(v79 + 2);
      v80 = *(v79 + 3);
      if (v81 >= v80 >> 1)
      {
        v79 = sub_1DB301BC0((v80 > 1), v81 + 1, 1, v79);
      }

      *(v79 + 2) = v81 + 1;
      v82 = &v79[40 * v81];
      v83 = *(v0 + 336);
      v84 = *(v0 + 352);
      v82[64] = *(v0 + 368);
      *(v82 + 2) = v83;
      *(v82 + 3) = v84;
      *v49 = v79;
      sub_1DB30623C(v0 + 608, &qword_1ECC426B0, &qword_1DB50EEB0);
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v85);
      *(v54 + 32) = *v49;
      Logger.info(_:)(v54, v94, v92);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      if (v96 == 3)
      {
        break;
      }

      sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v37 = *(v0 + 1120) + 1;
      if (v37 == *(v0 + 1104))
      {
        goto LABEL_17;
      }
    }

    v86 = *(v0 + 200);
    v87 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v86);
    v88 = *(v87 + 24);
    v97 = (v88 + *v88);
    v89 = v88[1];
    v90 = swift_task_alloc();
    *(v0 + 1160) = v90;
    *v90 = v0;
    v90[1] = sub_1DB45FFFC;
    v91 = *(v0 + 1032);

    return v97(v91, v86, v87);
  }
}

uint64_t sub_1DB461524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38[-v10];
  v12 = type metadata accessor for URLJetPackAssetRequest();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DB468D18(a2, v15, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB468C90(&qword_1EE30CE70, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB50B2B0();
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_1DB30EDA8(v43), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);

    sub_1DB314BE8(v43);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v20 = v44;
    v21 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    v46 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v23._object = 0x80000001DB52F1B0;
    v23._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    v42[3] = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
    sub_1DB468D18(a2, boxed_opaque_existential_0, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB30C4B8(v42, v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v39 = 0u;
    v40 = 0u;
    sub_1DB30C2D8(v38, &v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v41 = 0;
    v25 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1DB301BC0(0, *(v25 + 2) + 1, 1, v25);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1DB301BC0((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[40 * v27];
    v29 = v39;
    v30 = v40;
    v28[64] = v41;
    *(v28 + 2) = v29;
    *(v28 + 3) = v30;
    v46 = v25;
    sub_1DB30623C(v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    *(v22 + 32) = v46;
    Logger.info(_:)(v22, v20, v21);

    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    sub_1DB314BE8(v43);
    v32 = sub_1DB50ABA0();
    (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = a3;
    v33[5] = a4;

    v19 = sub_1DB4DD5A4(0, 0, v11, &unk_1DB51CC68, v33);
    sub_1DB468D18(a2, v15, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB50B2B0();

    v34 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39 = *a1;
    sub_1DB31E0C8(v19, v43, isUniquelyReferenced_nonNull_native);
    sub_1DB314BE8(v43);
    *a1 = v39;
  }

  return v19;
}

uint64_t sub_1DB4619CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37[-v10 - 8];
  v12 = *(a2 + 16);
  v40 = *a2;
  v41 = v12;
  v42 = *(a2 + 32);
  sub_1DB467318(a2, v39);
  sub_1DB415E08();
  sub_1DB50B2B0();
  v13 = *a1;
  if (*(*a1 + 16) && (v14 = sub_1DB30EDA8(v43), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);

    sub_1DB314BE8(v43);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v17 = v44;
    v18 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    v46 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v20._object = 0x80000001DB52F1B0;
    v20._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v38[3] = &type metadata for SilverBulletJetPackAssetRequest;
    v21 = swift_allocObject();
    v38[0] = v21;
    v22 = *(a2 + 16);
    *(v21 + 16) = *a2;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(a2 + 32);
    sub_1DB30C4B8(v38, v37, &qword_1ECC426B0, &qword_1DB50EEB0);
    v40 = 0u;
    v41 = 0u;
    sub_1DB467318(a2, v39);
    sub_1DB30C2D8(v37, &v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    v42 = 0;
    v23 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
      v46 = v23;
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[40 * v25];
    v27 = v40;
    v28 = v41;
    v26[64] = v42;
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    v46 = v23;
    sub_1DB30623C(v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v19 + 32) = v46;
    Logger.info(_:)(v19, v17, v18);

    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    sub_1DB314BE8(v43);
    v30 = sub_1DB50ABA0();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a3;
    v31[5] = a4;

    v16 = sub_1DB4DD5A4(0, 0, v11, &unk_1DB51C950, v31);
    v32 = *(a2 + 16);
    v40 = *a2;
    v41 = v32;
    v42 = *(a2 + 32);
    sub_1DB467318(a2, v43);
    sub_1DB50B2B0();

    v33 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40 = *a1;
    sub_1DB31E0C8(v16, v43, isUniquelyReferenced_nonNull_native);
    sub_1DB314BE8(v43);
    *a1 = v40;
  }

  return v16;
}

uint64_t sub_1DB461E0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v40[-v16];
  v18 = *(a6 + 8);
  sub_1DB50B670();
  v19 = *a1;
  if (*(*a1 + 16) && (v20 = sub_1DB30EDA8(v45), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    sub_1DB314BE8(v45);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v23 = v46;
    v39 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DB50EE90;
    v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v25._object = 0x80000001DB52F1B0;
    v25._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    v44[3] = a5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a2, a5);
    sub_1DB30C4B8(v44, v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    v41 = 0u;
    v42 = 0u;
    sub_1DB30C2D8(v40, &v41, &qword_1ECC426B0, &qword_1DB50EEB0);
    v43 = 0;
    v27 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v41;
    v32 = v42;
    v30[64] = v43;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v48 = v27;
    sub_1DB30623C(v44, &qword_1ECC426B0, &qword_1DB50EEB0);
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v24 + 32) = v48;
    Logger.info(_:)(v24, v23, v39);

    result = __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    sub_1DB314BE8(v45);
    v35 = sub_1DB50ABA0();
    (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = a3;
    v36[5] = a4;

    v22 = sub_1DB4DD5A4(0, 0, v17, &unk_1DB51C960, v36);
    sub_1DB50B670();

    v37 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41 = *a1;
    sub_1DB31E0C8(v22, v45, isUniquelyReferenced_nonNull_native);
    result = sub_1DB314BE8(v45);
    *a1 = v41;
  }

  *a7 = v22;
  return result;
}

uint64_t sub_1DB462214(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DB306AF4;

  return v9(a1);
}

void sub_1DB46230C(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DB467540();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DB462384()
{
  v0[55] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[56] = v1;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[57] = qword_1EE30EAD0;
  v0[52] = v1;
  v2 = *(MEMORY[0x1E69E8950] + 4);
  v3 = swift_task_alloc();
  v0[58] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45928, &qword_1DB51C508);
  *v3 = v0;
  v3[1] = sub_1DB4624DC;

  return MEMORY[0x1EEE6DE98](v0 + 37, v0 + 52, &unk_1DB51CB20, v1, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB4624DC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v7 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_1DB4627C4;
  }

  else
  {
    v5 = *(v2 + 448);

    v4 = sub_1DB4625F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4625F8()
{
  if (*(v0 + 320))
  {
    sub_1DB2FEA0C((v0 + 296), v0 + 256);
LABEL_3:
    v1 = *(v0 + 440);
    v2 = static BaseObjectGraph.current.getter();
    *(v0 + 480) = v2;
    *(v0 + 424) = v2;
    v3 = *(MEMORY[0x1E69E8950] + 4);
    v4 = swift_task_alloc();
    *(v0 + 488) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A58, &qword_1DB51CB38);
    *v4 = v0;
    v4[1] = sub_1DB462828;
    v5 = *(v0 + 456);

    return MEMORY[0x1EEE6DE98](v0 + 96, v0 + 424, &unk_1DB51CB30, v2, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
  }

  v6 = *(v0 + 472);
  v7 = type metadata accessor for JetPackAssetDiskCache(0);
  v8 = JetPackAssetDiskCache.__allocating_init()();
  if (!v6)
  {
    *(v0 + 280) = v7;
    *(v0 + 288) = &protocol witness table for JetPackAssetDiskCache;
    *(v0 + 256) = v8;
    if (*(v0 + 320))
    {
      sub_1DB30623C(v0 + 296, &qword_1ECC45928, &qword_1DB51C508);
    }

    goto LABEL_3;
  }

  if (*(v0 + 320))
  {
    sub_1DB30623C(v0 + 296, &qword_1ECC45928, &qword_1DB51C508);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB4627C4()
{
  v1 = v0[56];

  v2 = v0[59];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB462828()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_1DB462A64;
  }

  else
  {
    v5 = *(v2 + 480);

    v4 = sub_1DB462944;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB462944()
{
  if (*(v0 + 120) == 1)
  {
    sub_1DB30BE90(v0 + 256, v0 + 336);
    *(v0 + 400) = &type metadata for JetPackAssetStandardCachePolicy;
    *(v0 + 408) = &protocol witness table for JetPackAssetStandardCachePolicy;
    sub_1DB2FEA0C((v0 + 336), v0 + 16);
    sub_1DB2FEA0C((v0 + 376), v0 + 56);
    if (*(v0 + 120) != 1)
    {
      sub_1DB30623C(v0 + 96, &qword_1ECC45A58, &qword_1DB51CB38);
    }
  }

  else
  {
    v1 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 160);
    v2 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v2;
  }

  v3 = *(v0 + 432);
  sub_1DB400AF8(v0 + 16, v0 + 176);
  type metadata accessor for JetPackAssetSession();
  v4 = swift_allocObject();
  JetPackAssetSession.init(configuration:)(v0 + 176);
  sub_1DB30C018(v0 + 16);
  *v3 = v4;
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB462A64()
{
  v1 = v0[60];

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v2 = v0[62];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB462AD0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for SilverBulletJetPackAssetFetcher();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB462B64, 0, 0);
}

uint64_t sub_1DB462B64()
{
  v0[7] = type metadata accessor for BaseObjectGraph();
  v0[8] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DB462C20;

  return sub_1DB43E948();
}

uint64_t sub_1DB462C20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_1DB462E48;
  }

  else
  {
    v5 = sub_1DB462D34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB462D34()
{
  if (v0[10])
  {
    v2 = v0[7];
    v1 = v0[8];

    v0[12] = static BaseObjectGraph.current.getter();
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1DB462EB4;

    return sub_1DB43FDB8((v0 + 2));
  }

  else
  {
    v5 = v0[8];
    sub_1DB43F02C();
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB462E48()
{
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB462EB4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1DB463540;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1DB462FD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB462FD0()
{
  v1 = v0[7];
  v0[15] = v0[2];
  v0[16] = static BaseObjectGraph.current.getter();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1DB463088;

  return sub_1DB43E7E8();
}

uint64_t sub_1DB463088(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_1DB4635B8;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_1DB4631A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4631A4()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];
  }

  else
  {
    v2 = [objc_opt_self() ams:0 configurationWithProcessInfo:v0[15] bag:?];
  }

  v0[20] = v2;
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v5 + *(v0[5] + 20);
  v7 = type metadata accessor for URLJetPackAssetFetcher();
  v8 = *(v7 + 24);
  v9 = sub_1DB509CA0();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = v3;
  *(v10 + 32) = 1;
  *&v6[*(v7 + 28)] = v10;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = v2;
  *v5 = v3;
  v12 = v1;
  swift_unknownObjectRetain();
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_1DB463394;
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];

  return sub_1DB447B9C(v15, v16, v14);
}

uint64_t sub_1DB463394()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1DB463638;
  }

  else
  {
    v3 = sub_1DB4634A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4634A8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  sub_1DB467374(v2, type metadata accessor for SilverBulletJetPackAssetFetcher);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DB463540()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[14];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB4635B8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[10];
  swift_unknownObjectRelease();

  v4 = v0[19];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB463638()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  sub_1DB467374(v2, type metadata accessor for SilverBulletJetPackAssetFetcher);
  v3 = *(v0 + 176);
  v4 = *(v0 + 48);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB46370C(uint64_t a1)
{
  v1[103] = a1;
  v2 = *(*(type metadata accessor for DiskJetPackResourceBundle() - 8) + 64) + 15;
  v1[104] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  v1[105] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[106] = swift_task_alloc();
  v5 = sub_1DB509CA0();
  v1[107] = v5;
  v6 = *(v5 - 8);
  v1[108] = v6;
  v1[109] = *(v6 + 64);
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v7 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 64) + 15;
  v1[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB463874, 0, 0);
}

uint64_t sub_1DB463874()
{
  v0[113] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[114] = v1;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[115] = qword_1EE30EAD0;
  v0[101] = v1;
  v2 = *(MEMORY[0x1E69E8950] + 4);
  v3 = swift_task_alloc();
  v0[116] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459A0, &qword_1DB51C848);
  *v3 = v0;
  v3[1] = sub_1DB4639CC;

  return MEMORY[0x1EEE6DE98](v0 + 47, v0 + 101, &unk_1DB51C840, v1, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB4639CC()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v7 = *v1;
  *(*v1 + 936) = v0;

  if (v0)
  {
    v4 = sub_1DB463BEC;
  }

  else
  {
    v5 = *(v2 + 912);

    v4 = sub_1DB463AE8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB463AE8()
{
  if (*(v0 + 416) == 1)
  {
    *(v0 + 360) = &type metadata for JetPackManagedKeyProvider;
    *(v0 + 368) = &protocol witness table for JetPackManagedKeyProvider;
    *(v0 + 320) = xmmword_1DB517E90;
  }

  else
  {
    v2 = *(v0 + 392);
    *(v0 + 320) = *(v0 + 376);
    *(v0 + 336) = v2;
    *(v0 + 352) = *(v0 + 408);
    *(v0 + 368) = *(v0 + 424);
  }

  v3 = *(v0 + 904);
  *(v0 + 944) = static BaseObjectGraph.current.getter();
  v4 = swift_task_alloc();
  *(v0 + 952) = v4;
  *v4 = v0;
  v4[1] = sub_1DB463C98;
  v5 = *(v0 + 896);

  return sub_1DB440104(v5);
}

uint64_t sub_1DB463BEC()
{
  v1 = v0[114];

  v2 = v0[117];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[106];
  v7 = v0[104];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB463C98()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 944);

  if (v0)
  {
    v6 = sub_1DB4646FC;
  }

  else
  {
    v6 = sub_1DB463DCC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DB463DCC()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 864);
  v7 = *(v0 + 856);
  v26 = *(v0 + 872);
  v27 = *(v0 + 848);
  v28 = *(v0 + 840);
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_1DB509C20();
  *(v0 + 512) = &type metadata for SyncTaskScheduler;
  *(v0 + 520) = &protocol witness table for SyncTaskScheduler;
  *(v0 + 816) = static BaseObjectGraph.current.getter();

  swift_task_localValuePush();
  v10 = v3[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  (*(v11 + 8))(v10, v11);
  sub_1DB30BE90(v3, v0 + 528);
  (*(v6 + 16))(v5, v4, v7);
  sub_1DB3C17BC(v0 + 320, v0 + 432);
  v12 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_1DB2FEA0C((v0 + 528), v13 + 16);
  (*(v6 + 32))(v13 + v12, v5, v7);
  *(v13 + v12 + v26) = 1;
  v14 = v13 + ((v12 + v26) & 0xFFFFFFFFFFFFFFF8);
  *(v14 + 56) = *(v0 + 480);
  v15 = *(v0 + 448);
  *(v14 + 40) = *(v0 + 464);
  v16 = *(v0 + 432);
  *(v14 + 24) = v15;
  *(v14 + 8) = v16;
  *v27 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DF8, &qword_1DB5180B0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  *(v0 + 968) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v20[2] = v21;
  sub_1DB30C06C(v27, v20 + *(*v20 + 96), &unk_1ECC42BD0, &unk_1DB518FB0);
  v22 = swift_allocObject();
  *(v0 + 80) = sub_1DB3C187C;
  v22[2] = sub_1DB3C1C00;
  v22[3] = v13;
  v22[4] = v20;
  *(v0 + 88) = v22;
  *(v0 + 96) = sub_1DB3C1888;
  *(v0 + 104) = v20;
  sub_1DB30BE90(v0 + 488, v0 + 112);
  *(v0 + 152) = 0;
  swift_retain_n();

  sub_1DB30828C(v0 + 80);

  sub_1DB30623C(v0 + 80, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(v3, v0 + 608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C((v0 + 648), v0 + 568);
    sub_1DB30BE90(v0 + 568, v0 + 688);
    v23 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 688), v23 + 16);
    sub_1DB30BE90(v0 + 568, v0 + 728);
    v24 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 728), v24 + 16);
    *(v0 + 240) = sub_1DB467074;
    *(v0 + 792) = &type metadata for SyncTaskScheduler;
    *(v0 + 800) = &protocol witness table for SyncTaskScheduler;
    *(v0 + 248) = v23;
    *(v0 + 256) = sub_1DB3C18F8;
    *(v0 + 264) = v24;
    sub_1DB30BE90(v0 + 768, v0 + 272);
    *(v0 + 312) = 0;

    sub_1DB309368(v0 + 240);

    sub_1DB30623C(v0 + 240, &unk_1ECC453A0, &unk_1DB50F710);
    __swift_destroy_boxed_opaque_existential_0((v0 + 568));
    __swift_destroy_boxed_opaque_existential_0((v0 + 768));
  }

  else
  {
    *(v0 + 680) = 0;
    *(v0 + 648) = 0u;
    *(v0 + 664) = 0u;
    sub_1DB30623C(v0 + 648, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_0((v0 + 488));

  return MEMORY[0x1EEE6DFA0](sub_1DB464304, 0, 0);
}

uint64_t sub_1DB464304()
{
  v1 = v0 + 2;
  v2 = v0[121];
  v3 = v0[104];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB4643D0;
  v0[20] = swift_continuation_init();
  v4 = (v0 + 20);
  *(v4 + 72) = 1;
  sub_1DB309368(v4);
  sub_1DB30623C(v4, &unk_1ECC453A0, &unk_1DB50F710);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4643D0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 976) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB464604;
  }

  else
  {
    v5 = v1[121];
    v6 = v1[104];
    v7 = v1[103];

    sub_1DB468D80(v6, v7, type metadata accessor for DiskJetPackResourceBundle);
    v4 = sub_1DB46451C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB46451C()
{
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[106];
  v4 = v0[104];
  (*(v0[108] + 8))(v0[111], v0[107]);
  sub_1DB467374(v1, type metadata accessor for JetPackAsset);
  sub_1DB30BFC4((v0 + 40));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB464604()
{
  v1 = v0[121];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];
  v5 = v0[107];

  (*(v4 + 8))(v3, v5);
  sub_1DB467374(v2, type metadata accessor for JetPackAsset);
  sub_1DB30BFC4((v0 + 40));
  v6 = v0[122];
  v7 = v0[112];
  v8 = v0[111];
  v9 = v0[110];
  v10 = v0[106];
  v11 = v0[104];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DB4646FC()
{
  sub_1DB30BFC4((v0 + 40));
  v1 = v0[120];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[106];
  v6 = v0[104];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB4647E4(__int128 *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a1 + 32);
  v17 = *a1;
  v18 = v9;
  v19 = v10;
  LOBYTE(v20) = v11;
  sub_1DB466570(&v17);
  *&v17 = a2(0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = a5;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  v20 = v12;
  *(&v17 + 1) = v13;
  v15 = sub_1DB40D33C(&v17);

  sub_1DB30BF1C(&v17);
  return v15;
}

uint64_t sub_1DB4648D8(uint64_t a1)
{
  *(v1 + 136) = a1;
  v2 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 64) + 15;
  *(v1 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB464968, 0, 0);
}

uint64_t sub_1DB464968()
{
  v0[19] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[20] = v1;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[16] = v1;
  v2 = *(MEMORY[0x1E69E8950] + 4);
  v3 = swift_task_alloc();
  v0[21] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45948, &qword_1DB51C718);
  *v3 = v0;
  v3[1] = sub_1DB464AC8;

  return MEMORY[0x1EEE6DE98](v0 + 9, v0 + 16, &unk_1DB51C710, v1, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB464AC8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1DB464CE8;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_1DB464BE4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB464BE4()
{
  if (*(v0 + 112) == 1)
  {
    *(v0 + 56) = &type metadata for JetPackManagedKeyProvider;
    *(v0 + 64) = &protocol witness table for JetPackManagedKeyProvider;
    *(v0 + 16) = xmmword_1DB517E90;
  }

  else
  {
    v2 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
  }

  v3 = *(v0 + 152);
  *(v0 + 184) = static BaseObjectGraph.current.getter();
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_1DB464D54;
  v5 = *(v0 + 144);

  return sub_1DB440104(v5);
}

uint64_t sub_1DB464CE8()
{
  v1 = v0[20];

  v2 = v0[22];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB464D54()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *v1;
  v4[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB465094, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[26] = v5;
    *v5 = v4;
    v5[1] = sub_1DB464EF4;
    v6 = v4[17];
    v7 = v4[18];

    return InMemoryJetPackLoader.bundle(from:)(v6, v7);
  }
}

uint64_t sub_1DB464EF4()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1DB465100;
  }

  else
  {
    v3 = sub_1DB465008;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB465008()
{
  sub_1DB467374(*(v0 + 144), type metadata accessor for JetPackAsset);
  sub_1DB30BF70(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB465094()
{
  sub_1DB30BF70((v0 + 2));
  v1 = v0[25];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB465100()
{
  sub_1DB467374(v0[18], type metadata accessor for JetPackAsset);
  sub_1DB30BF70((v0 + 2));
  v1 = v0[27];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

void *JetPackAssetSession.deinit()
{
  v1 = v0[2];

  sub_1DB30C018((v0 + 3));
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  return v0;
}

uint64_t JetPackAssetSession.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1DB30C018((v0 + 3));
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1DB465210(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URLJetPackAssetRequest();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DB468D18(a2, &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for URLJetPackAssetRequest);
  sub_1DB468C90(&qword_1EE30CE70, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB50B2B0();
  return sub_1DB30D974(0, v8);
}

uint64_t sub_1DB465318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB465338, 0, 0);
}

uint64_t sub_1DB465338()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DB4653E4;

  return sub_1DB430D78(v1);
}

uint64_t sub_1DB4653E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB4695C4, 0, 0);
  }
}

uint64_t sub_1DB465530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DB4695BC;

  return sub_1DB43B0A4(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB465624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  *(v5 + 48) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1DB465660, 0, 0);
}

uint64_t sub_1DB465660()
{
  sub_1DB50AC80();
  v1 = *(v0 + 64);
  v2 = v1[3];
  v3 = v1[4];
  v11 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 16;
  *(v4 + 32) = v11;
  v5 = *(v3 + 64);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = type metadata accessor for JetPackAsset(0);
  *v7 = v0;
  v7[1] = sub_1DB465838;
  v9 = *(v0 + 56);

  return v12(v9, &unk_1DB51C970, v4, v8, v2, v3);
}

uint64_t sub_1DB465838()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB465974, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DB465974()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4659D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  sub_1DB415E08();

  sub_1DB50B2B0();
  return sub_1DB30D974(0, v8);
}

uint64_t sub_1DB465A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(a3 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = sub_1DB32D394;

  return sub_1DB44FD50(a1, a2, v5 + 16, a4, a5);
}

uint64_t sub_1DB465B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v16;
  *(v8 + 48) = *(a5 + 32);
  v17 = swift_task_alloc();
  *(v8 + 56) = v17;
  *v17 = v8;
  v17[1] = sub_1DB469560;

  return sub_1DB45C8CC(a1, a2, a3, a4, v8 + 16, a6, a7, a8);
}

uint64_t sub_1DB465C24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB465C44, 0, 0);
}

uint64_t sub_1DB465C44()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DB4653E4;

  return sub_1DB432670(v1);
}

uint64_t sub_1DB465CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DB4695BC;

  return sub_1DB43B84C(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB465DE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB465E04, 0, 0);
}

uint64_t sub_1DB465E04()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DB465EB0;

  return sub_1DB43351C(v1);
}

uint64_t sub_1DB465EB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB465FFC, 0, 0);
  }
}

uint64_t sub_1DB466020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DB466114;

  return sub_1DB43BF70(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB466114(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_1DB46628C()
{
  result = qword_1ECC45920;
  if (!qword_1ECC45920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45920);
  }

  return result;
}

uint64_t sub_1DB4662E0(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1DB50A280();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50A230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v12 = sub_1DB50A270();
  __swift_project_value_buffer(v12, qword_1EE30E178);
  v13 = sub_1DB50A250();
  sub_1DB50A2A0();
  v14 = sub_1DB50B060();
  if (sub_1DB50B0E0())
  {

    sub_1DB50A2D0();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x1E1288220](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DB466570(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v2;
  v23 = *(a1 + 32);
  v21[0] = type metadata accessor for JetPackAssetSession();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459D0, &qword_1DB51C8E0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = &unk_1DB51C8D8;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v21[4] = v3;
  v21[1] = v4;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v20[0] = type metadata accessor for JetPackAsset(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45968, &qword_1DB51C778);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = &unk_1DB51C8F0;
  *(v9 + 32) = v6;
  *(v9 + 40) = 0;
  v20[4] = v8;
  v20[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  sub_1DB30C420(v21, inited + 32);
  sub_1DB467318(v22, v19);
  v12 = sub_1DB30BC94();
  v19[0] = MEMORY[0x1E12859D0](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v12);
  sub_1DB307C9C(inited);
  swift_setDeallocating();
  sub_1DB30BF1C(inited + 32);
  v13 = v19[0];
  type metadata accessor for BaseObjectGraph();
  v14 = swift_initStackObject();
  v14[3] = 0;
  v14[4] = 0xE000000000000000;
  v14[2] = v13;

  v15 = sub_1DB40D33C(v20);

  swift_setDeallocating();
  v16 = v14[2];

  v17 = v14[4];

  sub_1DB30BF1C(v20);
  sub_1DB30BF1C(v21);
  return v15;
}

uint64_t get_enum_tag_for_layout_string_7JetCore0A16PackAssetSessionC13ConfigurationV4ModeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB466824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_1DB466880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB466908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB466958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DB4669B8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DB466A04()
{
  result = qword_1ECC45940;
  if (!qword_1ECC45940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45940);
  }

  return result;
}

uint64_t sub_1DB466A58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FCE4(a1, v1);
}

uint64_t sub_1DB466AF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FB3C(a1, v1);
}

uint64_t sub_1DB466B90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43A180(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB466C9C(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43C53C(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1DB466DD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43ABCC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB466EE4(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43CCB8(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1DB466FD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FC10(a1, v1);
}

uint64_t sub_1DB46707C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB306AF4;

  return sub_1DB43A6F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB467188(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43C6E8(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1DB46727C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB462AD0(a1, v1 + 16);
}

uint64_t sub_1DB467374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB4673D4(uint64_t a1)
{
  v4 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = *(v1 + 136);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB306AF4;

  return sub_1DB465624(a1, v1 + 16, v1 + 96, v6, v1 + v5);
}

uint64_t sub_1DB4674D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v6 + 16);
  v10[0] = *v6;
  v10[1] = v8;
  v11 = *(v6 + 32);
  result = sub_1DB4619CC(a1, v10, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DB467540()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0[3] + 8);
  sub_1DB50B670();
  return sub_1DB30D974(0, v5);
}

uint64_t sub_1DB46759C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB462214(a1, v4, v5, v7);
}

uint64_t sub_1DB467680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB465A64(a1, v4, v5, v7, v6);
}

uint64_t sub_1DB4677A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v6 = (*(v5 + 80) + 73) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DB30C7A0;

  return sub_1DB465B30(a1, v9, v10, v11, (v1 + 5), v1 + v6, v12, v1 + v8);
}

uint64_t sub_1DB467918(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB465C24(a1, v1);
}

unint64_t sub_1DB4679C8()
{
  result = qword_1EE30C7D8;
  if (!qword_1EE30C7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30C7D8);
  }

  return result;
}

uint64_t sub_1DB467A14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB4392E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1DB467B20()
{
  v10 = v0[3];
  v11 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1DB30C7A0;

  JUMPOUT(0x1DB465CF0);
}

uint64_t sub_1DB467C1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FA68(a1, v1);
}

uint64_t sub_1DB467CB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB4397C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB467DC4(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43B9E4(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1DB467EB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB465DE4(a1, v1);
}

uint64_t sub_1DB467F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB439CA0(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1DB468074()
{
  v10 = v0[3];
  v11 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1DB30C7A0;

  JUMPOUT(0x1DB466020);
}

uint64_t sub_1DB468170(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43F994(a1, v1);
}

uint64_t sub_1DB46820C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43F8C0(a1, v1);
}

uint64_t sub_1DB4682A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43892C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB4683B4(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43B39C(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1DB4684A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB438E04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB4685B4(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB43B6A0(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1DB4686A8(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v11 = *(v1 + v9);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB4488B0(a1, v1 + 32, v1 + v8, v11, v1 + v10, v6, v5);
}

uint64_t sub_1DB468828(uint64_t a1)
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
  v10[1] = sub_1DB30C7A0;

  return sub_1DB456BD0(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1DB4688FC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = (*(*(v4 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[3];
  v16 = v1[2];
  v12 = v1[6];
  v13 = *(v1 + v9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DB30C7A0;

  return sub_1DB45D984(a1, v16, v11, v12, v1 + v7, v1 + v8, v13, v1 + v10);
}

uint64_t objectdestroy_121Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1DB468B08()
{
  result = qword_1ECC45AB8;
  if (!qword_1ECC45AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45AB8);
  }

  return result;
}

uint64_t sub_1DB468B5C(uint64_t a1)
{
  v4 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB446D7C(a1, v6, v1 + v5);
}

uint64_t sub_1DB468C40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DB461524(a1, v2[2], v2[3], v2[4]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DB468C90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_144Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB468D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB468D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB468DE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB44851C(a1, v1 + 16, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1DB468F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB448C54(a1, v4, v5, v7, v6);
}

uint64_t sub_1DB469004(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DB30C7A0;

  return sub_1DB45B828(a1, v12, v13, v14, v1 + v6, v1 + v9, v15, v1 + v11);
}

uint64_t sub_1DB4691A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB33114C(**(v2 + 16), *(*(v2 + 16) + 8), *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DB4691EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB465318(a1, v1);
}

uint64_t objectdestroy_55Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB4692FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB438448(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1DB469408()
{
  v10 = v0[3];
  v11 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1DB30C7A0;

  JUMPOUT(0x1DB465530);
}

uint64_t sub_1DB469504(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  a1(v6, v7, v8);
}

uint64_t dispatch thunk of JetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DB32FDFC;

  return v15(a1, a2, a3, a4, a5);
}

void sub_1DB469780()
{
  v37 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_1DB509BC0();
  v34[0] = 0;
  v3 = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v34];

  v4 = v34[0];
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = v34[0];
  v6 = [v0 defaultManager];
  v7 = sub_1DB509BC0();
  v34[0] = 0;
  v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v34];

  v4 = v34[0];
  if (v8)
  {
    v9 = v34[0];
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_4:
    v11 = v4;
    v12 = sub_1DB509B20();

    swift_willThrow();
    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v13 = v35;
    v14 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50EE90;
    v28 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001DB52F5A0;
    v16._countAndFlagsBits = 0xD000000000000030;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    swift_getErrorValue();
    v33[3] = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_0);
    sub_1DB301CDC(v33, v29);
    v30 = 0u;
    v31 = 0u;
    sub_1DB301D4C(v29, &v30);
    v32 = 0;
    v18 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v30;
    v23 = v31;
    v21[64] = v32;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    sub_1DB30623C(v33, &qword_1ECC426B0, &qword_1DB50EEB0);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v15 + 32) = v18;
    Logger.error(_:)(v15, v13, v14);

    __swift_destroy_boxed_opaque_existential_0(v34);
    sub_1DB46AFBC();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 2;
    swift_willThrow();

    v26 = *MEMORY[0x1E69E9840];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContainerLocationProtocol.prepare()()
{
  v3 = v1;
  v4 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = *(v3 + 16);
  v41 = v2;
  v40 = v4;
  v12(v4, v3);
  v13 = sub_1DB509BC0();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v50[0] = 0;
  LODWORD(v4) = [v11 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v50];

  v15 = v50[0];
  if (!v4)
  {
    goto LABEL_4;
  }

  v16 = v50[0];
  v17 = [v10 defaultManager];
  (*(v3 + 24))(v40, v3);
  v18 = sub_1DB509BC0();
  v14(v9, v5);
  v50[0] = 0;
  v19 = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v50];

  v15 = v50[0];
  if (v19)
  {
    v20 = v50[0];
  }

  else
  {
LABEL_4:
    v21 = v15;
    v22 = sub_1DB509B20();

    swift_willThrow();
    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v23 = v51;
    v24 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB50EE90;
    v44 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
    v26._object = 0x80000001DB52F5A0;
    v26._countAndFlagsBits = 0xD000000000000030;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    swift_getErrorValue();
    v27 = v42;
    v28 = v43;
    v49[3] = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v27, v28);
    sub_1DB301CDC(v49, v45);
    v46 = 0u;
    v47 = 0u;
    sub_1DB301D4C(v45, &v46);
    v48 = 0;
    v30 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
      v44 = v30;
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[40 * v32];
    v34 = v46;
    v35 = v47;
    v33[64] = v48;
    *(v33 + 2) = v34;
    *(v33 + 3) = v35;
    v44 = v30;
    sub_1DB30623C(v49, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v25 + 32) = v44;
    Logger.error(_:)(v25, v23, v24);

    __swift_destroy_boxed_opaque_existential_0(v50);
    sub_1DB46AFBC();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 2;
    swift_willThrow();
  }

  v38 = *MEMORY[0x1E69E9840];
}

unint64_t ContainerLocation.ContainerError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1DB50B320();

    v7 = 0xD000000000000022;
    v3 = v2;
    v4 = v1;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_1DB50B320();

    v7 = 0xD00000000000001CLL;
    MEMORY[0x1E1285C70](v2, v1);
    v3 = 41;
    v4 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x1E1285C70](v3, v4);
    return v7;
  }

  if (v2 <= 1)
  {
    if (v2 | v1)
    {
      return 0xD000000000000022;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v6 = 0xD000000000000023;
    if (!(v2 ^ 3 | v1))
    {
      v6 = 0xD000000000000025;
    }

    if (v2 ^ 2 | v1)
    {
      return v6;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }
}

uint64_t ContainerLocation.ContainerError.errorCode.getter()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1DB51D018[*v0];
}

unint64_t ContainerLocation.ContainerError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v6;
  v7 = ContainerLocation.ContainerError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  v9 = 0x206E776F6E6B6E55;
  if (v8)
  {
    v9 = v7;
  }

  v10 = 0xED0000726F727265;
  if (v8)
  {
    v10 = v8;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
  return v11;
}

uint64_t sub_1DB46A33C()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1DB51D018[*v0];
}

uint64_t sub_1DB46A374(uint64_t a1)
{
  v2 = sub_1DB46B878();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB46A3B0(uint64_t a1)
{
  v2 = sub_1DB46B878();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t ContainerLocation.ContainerType.description.getter()
{
  if (!*(v0 + 16))
  {
    v1 = 0x286E6F6D656164;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 0x2861746144707061;
LABEL_5:
    v3 = v1;
    MEMORY[0x1E1285C70](*v0, *(v0 + 8));
    MEMORY[0x1E1285C70](41, 0xE100000000000000);
    return v3;
  }

  return 0x774F6E6F6D656164;
}

uint64_t sub_1DB46A4B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1DB509CA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ContainerLocation.__allocating_init(type:consumeSandboxToken:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ContainerLocation.init(type:consumeSandboxToken:)(a1, a2);
  return v7;
}

void (**ContainerLocation.init(type:consumeSandboxToken:)(uint64_t a1, char a2))(uint64_t, char *, uint64_t)
{
  v4 = v2;
  v62 = *v2;
  v63 = v3;
  v7 = sub_1DB509B70();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v46 - v13;
  v15 = sub_1DB509CA0();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v46 - v21;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v64 = v22;
  v65 = v23;
  v66 = v24;
  v25 = v63;
  sub_1DB46B358(&v64, a2);
  v63 = v25;
  if (v25)
  {
    sub_1DB46B61C(v22, v23, v24);
    v27 = *(*v2 + 12);
    v28 = *(*v2 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v51 = v26;
    sub_1DB46B61C(v22, v23, v24);
    v29 = v67;
    (*(v67 + 56))(v14, 1, 1, v15);
    sub_1DB50A6F0();

    v30 = v59;
    sub_1DB509C10();
    sub_1DB30623C(v14, &unk_1ECC42B20, &unk_1DB50F6A0);

    v31 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
    v50 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
    v32 = *(v29 + 32);
    v56 = v29 + 32;
    v62 = v32;
    v32(v4 + OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL, v30, v15);
    v33 = v29;
    v34 = *(v29 + 16);
    v48 = v29 + 16;
    v49 = v34;
    v35 = v4 + v31;
    v36 = v57;
    v34(v57, v35, v15);
    v64 = 0x7972617262694CLL;
    v65 = 0xE700000000000000;
    v55 = *MEMORY[0x1E6968F70];
    v38 = v60;
    v37 = v61;
    v39 = *(v60 + 104);
    v52 = v60 + 104;
    v54 = v39;
    v39(v10);
    v53 = sub_1DB301E30();
    v40 = v58;
    sub_1DB509C90();
    v60 = *(v38 + 8);
    (v60)(v10, v37);
    v41 = v33;
    v42 = v15;
    v43 = v10;
    v44 = *(v41 + 8);
    v67 = v41 + 8;
    v44(v36, v42);
    v47 = v44;
    v64 = 0x736568636143;
    v65 = 0xE600000000000000;
    v54(v43, v55, v37);
    sub_1DB509C90();
    (v60)(v43, v37);
    v44(v40, v42);
    v62(v4 + OBJC_IVAR____TtC7JetCore17ContainerLocation_cacheDirectoryUrl, v30, v42);
    v49(v40, v4 + v50, v42);
    v64 = 7368052;
    v65 = 0xE300000000000000;
    v54(v43, v55, v37);
    sub_1DB509C90();
    (v60)(v43, v37);
    v47(v40, v42);
    v62(v4 + OBJC_IVAR____TtC7JetCore17ContainerLocation_tmpDirectoryUrl, v30, v42);
    *(v4 + OBJC_IVAR____TtC7JetCore17ContainerLocation_sandboxTokenHandle) = v51;
  }

  return v4;
}

uint64_t ContainerLocation.deinit()
{
  ContainerLocation.release()();
  v1 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
  v2 = sub_1DB509CA0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_cacheDirectoryUrl, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_tmpDirectoryUrl, v2);
  return v0;
}

Swift::Void __swiftcall ContainerLocation.release()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_sandboxTokenHandle);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (qword_1ECC42298 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v2 = v20;
    v3 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DB50EE90;
    v18 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v5._object = 0x80000001DB52F700;
    v5._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    v17[3] = MEMORY[0x1E69E7360];
    v17[0] = v1;
    sub_1DB301CDC(v17, v13);
    v14 = 0u;
    v15 = 0u;
    sub_1DB301D4C(v13, &v14);
    v16 = 0;
    v6 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[40 * v8];
    v10 = v14;
    v11 = v15;
    v9[64] = v16;
    *(v9 + 2) = v10;
    *(v9 + 3) = v11;
    v18 = v6;
    sub_1DB30623C(v17, &qword_1ECC426B0, &qword_1DB50EEB0);
    v12._countAndFlagsBits = 0x657361656C657220;
    v12._object = 0xE900000000000064;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v4 + 32) = v18;
    Logger.info(_:)(v4, v2, v3);

    __swift_destroy_boxed_opaque_existential_0(v19);
    sandbox_extension_release();
  }
}

uint64_t ContainerLocation.__deallocating_deinit()
{
  ContainerLocation.release()();
  v1 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
  v2 = sub_1DB509CA0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_cacheDirectoryUrl, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_tmpDirectoryUrl, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1DB46AF20@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1DB509CA0();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

unint64_t sub_1DB46AFBC()
{
  result = qword_1ECC45AF0;
  if (!qword_1ECC45AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45AF0);
  }

  return result;
}

void *sub_1DB46B010()
{
  v0 = container_copy_sandbox_token();
  if (v0)
  {
    v1 = v0;
    v2 = sandbox_extension_consume();
    if (v2 == -1)
    {
      if (qword_1ECC42220 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v9 = v18;
      v3 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      v16 = MEMORY[0x1E69E6158];
      v14 = 0xD000000000000025;
      v15 = 0x80000001DB52F7E0;
      *(v11 + 48) = 0u;
      *(v11 + 32) = 0u;
      sub_1DB301D4C(&v14, v11 + 32);
      *(v11 + 64) = 0;
      *(v10 + 32) = v11;
      Logger.error(_:)(v10, v9, v3);

      __swift_destroy_boxed_opaque_existential_0(v17);
      sub_1DB46AFBC();
      swift_allocError();
      *v12 = xmmword_1DB51CD60;
      *(v12 + 16) = 2;
      swift_willThrow();
      MEMORY[0x1E1288220](v1, -1, -1);
    }

    else
    {
      v3 = v2;
      MEMORY[0x1E1288220](v1, -1, -1);
    }
  }

  else
  {
    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v4 = v18;
    v5 = v19;
    v3 = __swift_project_boxed_opaque_existential_1(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v16 = MEMORY[0x1E69E6158];
    v14 = 0xD00000000000001BLL;
    v15 = 0x80000001DB52F7C0;
    *(v7 + 48) = 0u;
    *(v7 + 32) = 0u;
    sub_1DB301D4C(&v14, v7 + 32);
    *(v7 + 64) = 0;
    *(v6 + 32) = v7;
    Logger.error(_:)(v6, v4, v5);

    __swift_destroy_boxed_opaque_existential_0(v17);
    sub_1DB46AFBC();
    swift_allocError();
    *v8 = xmmword_1DB51CD70;
    *(v8 + 16) = 2;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1DB46B358(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (container_query_create())
  {
    v7 = *MEMORY[0x1E69E9980];
    sub_1DB50A790();
    sub_1DB50A6F0();

    container_query_set_persona_unique_string();

    container_query_set_class();
    container_query_operation_set_flags();
    if (v6 <= 1)
    {
      v8 = sub_1DB50A6F0();
      xpc_string_create((v8 + 32));

      container_query_set_identifiers();
      swift_unknownObjectRelease();
    }

    if (container_query_get_single_result())
    {
      path = container_get_path();
      if (path)
      {
        v4 = path;
        if (strlen(path) >= 1)
        {
          if ((a2 & 1) == 0 || (sub_1DB46B010(), !v2))
          {
            v4 = sub_1DB50A790();
            container_query_free();
            return v4;
          }

          goto LABEL_24;
        }

        sub_1DB46AFBC();
        swift_allocError();
        *v20 = xmmword_1DB51CD80;
        v21 = 2;
      }

      else
      {
        if (container_query_get_last_error() && (v15 = container_error_copy_unlocalized_description()) != 0)
        {
          v16 = v15;
          v17 = sub_1DB50A790();
          v4 = v18;
          MEMORY[0x1E1288220](v16, -1, -1);
        }

        else
        {
          v17 = 0;
          v4 = 0xE000000000000000;
        }

        sub_1DB46AFBC();
        swift_allocError();
        *v20 = v17;
        *(v20 + 8) = v4;
        v21 = 1;
      }

      *(v20 + 16) = v21;
    }

    else
    {
      if (container_query_get_last_error() && (v11 = container_error_copy_unlocalized_description()) != 0)
      {
        v12 = v11;
        v13 = sub_1DB50A790();
        v4 = v14;
        MEMORY[0x1E1288220](v12, -1, -1);
      }

      else
      {
        v13 = 0;
        v4 = 0xE000000000000000;
      }

      sub_1DB46AFBC();
      swift_allocError();
      *v19 = v13;
      *(v19 + 8) = v4;
      *(v19 + 16) = 0;
    }

    swift_willThrow();
LABEL_24:
    container_query_free();
    return v4;
  }

  sub_1DB46AFBC();
  swift_allocError();
  *v10 = xmmword_1DB51C480;
  *(v10 + 16) = 2;
  swift_willThrow();
  return v4;
}

uint64_t sub_1DB46B61C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t type metadata accessor for ContainerLocation()
{
  result = qword_1EE30D388;
  if (!qword_1EE30D388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB46B6EC()
{
  result = sub_1DB509CA0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB46B7DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB46B824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_1DB46B878()
{
  result = qword_1ECC45AF8[0];
  if (!qword_1ECC45AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC45AF8);
  }

  return result;
}

uint64_t MetricsEventRecorder._recordAsync(_:on:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44070, qword_1DB51D040);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v14 = *a1;
  (*(a5 + 8))(&v14, a2, a3, a4, a5);
  sub_1DB3FB8C4();
  return v10;
}

uint64_t AsyncEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncEvent.init()();
  return v0;
}

uint64_t AsyncEvent.post(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DB50A400();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A440();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v23 - v17;
  v23[1] = v1[2];
  (*(v13 + 16))(v23 - v17, a1, v12, v16);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = v1;
  (*(v13 + 32))(v20 + v19, v18, v12);
  aBlock[4] = sub_1DB46D0D4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_15;
  v21 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v11, v7, v21);
  _Block_release(v21);
  (*(v26 + 8))(v7, v4);
  (*(v24 + 8))(v11, v25);
}

uint64_t static AsyncEvent.defaultScheduler.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DB357BD4();
  result = sub_1DB50AFB0();
  a1[3] = v2;
  a1[4] = &protocol witness table for OS_dispatch_queue;
  *a1 = result;
  return result;
}

uint64_t *AsyncEvent.init()()
{
  v18 = *v0;
  v17 = sub_1DB50AFA0();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB50A440();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DB50AF80();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = sub_1DB357BD4();
  v16[1] = "up performance event";
  v16[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448E8, &unk_1DB518F40);
  v11 = *(v8 + 72);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB50EE90;
  sub_1DB50AF70();
  v19 = v13;
  sub_1DB46D124(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB35AA0C(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v17);
  v0[2] = sub_1DB50AFD0();
  v14 = *(v18 + 80);
  type metadata accessor for EventSubscription();
  v0[3] = sub_1DB50A9D0();
  return v0;
}

uint64_t AsyncEvent.addObserver<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v32 = a3;
  v37 = a4;
  v34 = *v5;
  v8 = sub_1DB50A440();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DB50A400();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(a2 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a1, a2, v18);
  v22 = *(v34 + 80);
  EventSubscription.init<A>(_:)(v20, a2, aBlock);
  v23 = aBlock[0];
  v34 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v24 = *(v12 + 72);
  v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  aBlock[0] = v26;
  sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  v27 = v33;
  sub_1DB50B240();
  v28 = swift_allocObject();
  v29 = v32;
  v28[2] = a2;
  v28[3] = v29;
  v28[4] = v5;
  v28[5] = v23;
  aBlock[4] = sub_1DB46D1F8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_6_0;
  v30 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v11, v15, v30);
  _Block_release(v30);
  (*(v35 + 8))(v11, v36);
  (*(v12 + 8))(v15, v27);

  *v37 = v23;
  return result;
}

uint64_t sub_1DB46C504(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  type metadata accessor for EventSubscription();
  sub_1DB50AA60();

  sub_1DB50AA10();
  return swift_endAccess();
}

uint64_t AsyncEvent.removeObserver(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DB50A440();
  v21 = *(v4 - 8);
  v22 = v4;
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A400();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v20[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v14 = *(v9 + 72);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  aBlock[0] = v16;
  sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v13;
  aBlock[4] = sub_1DB46D204;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_12;
  v18 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v7, v12, v18);
  _Block_release(v18);
  (*(v21 + 8))(v7, v22);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DB46C8BC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v6 = a1[3];
  v3 = *(v2 + 80);
  type metadata accessor for EventSubscription();
  sub_1DB50AA60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1DB50AE80();
  if (v5 != 1)
  {
    swift_beginAccess();
    sub_1DB50AA20();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB46C9DC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1DB50A440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A400();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a1;
  v15 = *(v4 + 80);
  type metadata accessor for EventSubscription();
  sub_1DB50AA60();
  swift_getWitnessTable();
  result = sub_1DB50AE70();
  if ((result & 1) == 0)
  {
    v25 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
    v17 = *(v11 + 72);
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    sub_1DB50A3F0();
    aBlock[0] = v19;
    sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60]);
    v23 = v5;
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
    sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
    sub_1DB50B240();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v2;
    aBlock[4] = sub_1DB46D298;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB3330B0;
    aBlock[3] = &block_descriptor_18;
    v21 = _Block_copy(aBlock);

    _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    MEMORY[0x1E12864B0](0, v9, v14, v21);
    _Block_release(v21);
    (*(v6 + 8))(v9, v23);
    (*(v24 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_1DB46CD5C(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 80);
  type metadata accessor for EventSubscription();
  result = sub_1DB50AA00();
  if (result)
  {
    swift_beginAccess();
    v6 = 4;
    do
    {
      v7 = v6 - 4;
      v8 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if (v8)
      {
        v9 = *(a1 + 8 * v6);

        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1DB50B380();
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v12 = a2[3];
      sub_1DB50AA60();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1DB50AE80();
      if (v11 != 1)
      {
        swift_beginAccess();
        sub_1DB50AA20();
        swift_endAccess();
      }

      result = sub_1DB50AA00();
      ++v6;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_1DB46CF34(void *a1)
{
  v2 = *(*a1 + 80);
  type metadata accessor for EventSubscription();
  v10 = sub_1DB50A480();
  swift_beginAccess();
  v3 = a1[3];

  if (sub_1DB50AA00())
  {
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if (v6)
      {
        v7 = *(v3 + 8 * v4);

        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1DB50B380();
        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      if (EventSubscription.isValid.getter() & 1) != 0 && (EventSubscription.notify(_:)(), (EventSubscription.isValid.getter()))
      {
      }

      else
      {
        sub_1DB50AA60();
        sub_1DB50AA10();
      }

      ++v4;
    }

    while (v8 != sub_1DB50AA00());
  }

  sub_1DB46C9DC(v10);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB46D124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AsyncEvent.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AsyncEvent.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DB46D1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1DB46C504(*(v0 + 32));
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1DB46D2B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1DB46D300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1DB51D0C0;
    }
  }

  return result;
}

void *sub_1DB46D354(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

id sub_1DB46D38C()
{
  v1 = v0[1];
  if (((v1 >> 60) & 3) > 1)
  {
    if (*v0 | v1 ^ 0x2000000000000000)
    {
      v5 = [objc_opt_self() defaultSignatureVerifier];
    }

    else
    {
      v5 = [objc_opt_self() unsafeIgnoreSignatureVerifier];
    }

    return v5;
  }

  else
  {
    v2 = sub_1DB509CD0();
    v3 = [objc_opt_self() signatureVerifierWithCertificate_];

    return v3;
  }
}

__int128 *Models.ToastAction.init(actionMetrics:icon:title:message:duration:)@<X0>(__int128 *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *result;
  v9 = a2[2];
  v10 = a2[4];
  *(a7 + 64) = a2[3];
  *(a7 + 80) = v10;
  v11 = *a2;
  v12 = a2[1];
  *a7 = v8;
  *(a7 + 16) = v11;
  v13 = *(a2 + 10);
  *(a7 + 32) = v12;
  *(a7 + 48) = v9;
  *(a7 + 96) = v13;
  *(a7 + 104) = a3;
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 128) = a6;
  *(a7 + 136) = a8;
  return result;
}

uint64_t sub_1DB46D4F0()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x656C746974;
  v4 = 0x6567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852793705;
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

uint64_t sub_1DB46D58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB46E750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB46D5B4(uint64_t a1)
{
  v2 = sub_1DB46DCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB46D5F0(uint64_t a1)
{
  v2 = sub_1DB46DCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.ToastAction.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45B80, &qword_1DB51D240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DB46DCA8();
  sub_1DB50BDF0();
  if (!v2)
  {
    v12 = v6;
    v63 = a2;
    LOBYTE(v70) = 0;
    sub_1DB37C0CC();
    sub_1DB50B710();
    if (*&v76[0])
    {
      v13 = *&v76[0];
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    if (*&v76[0])
    {
      v14 = *(&v76[0] + 1);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC8];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44520, &qword_1DB5151E0);
    LOBYTE(v68[0]) = 1;
    sub_1DB46DCFC();
    sub_1DB50B710();
    v62 = v14;
    if (v70)
    {
      sub_1DB3EB6A4(&v70, v76);
      sub_1DB30623C(&v70, &qword_1ECC44520, &qword_1DB5151E0);
    }

    else
    {
      sub_1DB30623C(&v70, &qword_1ECC45B90, &qword_1DB51D248);
      memset(v76, 0, sizeof(v76));
      v77 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    LOBYTE(v68[0]) = 2;
    sub_1DB3980E8();
    sub_1DB50B710();
    v61 = v13;
    v16 = *(&v70 + 1);
    v60 = v70;
    if (*(&v70 + 1) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v70;
    }

    if (*(&v70 + 1) == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(&v70 + 1);
    }

    v58 = v18;
    v59 = v17;
    LOBYTE(v68[0]) = 3;
    sub_1DB50B710();
    v57 = v16;
    if (*(&v70 + 1) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v70;
    }

    v56 = *(&v70 + 1);
    if (*(&v70 + 1) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(&v70 + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44390, &unk_1DB51EB60);
    LOBYTE(v68[0]) = 4;
    sub_1DB46DDE0();
    sub_1DB50B710();
    v57 = v20;
    v60 = v19;
    v21 = *&v70;
    v22 = BYTE9(v70);
    v23 = BYTE9(v70) | BYTE8(v70);
    sub_1DB46DE84(v76, v68);
    v24 = v12;
    v25 = v61;
    if (*&v68[0])
    {
      sub_1DB30623C(v76, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v12 + 8))(v9, v5);
      v72 = v68[2];
      v73 = v68[3];
      v74 = v68[4];
      v75 = v69;
      v70 = v68[0];
      v71 = v68[1];
    }

    else
    {
      *(&v74 + 1) = &_s12_EmptySourceVN;
      v75 = &off_1EECE8048;
      sub_1DB30BE90(&v73, v65);
      v55 = v22;
      v26 = v66;
      v27 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v28 = *(v27 + 24);
      LODWORD(v56) = v23;
      v54 = v28(v26, v27);
      v29 = v66;
      v30 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v53 = (*(v30 + 32))(v29, v30);
      v52 = v31;
      v32 = v66;
      v33 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v51 = (*(v33 + 40))(v32, v33);
      v35 = v66;
      v34 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v36 = *(v34 + 48);
      v37 = v34;
      v22 = v55;
      v38 = v36(v35, v37);
      LOBYTE(v23) = v56;
      v39 = v38;
      v41 = v40;
      sub_1DB30623C(v76, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v24 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_0(v65);
      *&v70 = v54;
      *(&v70 + 1) = v53;
      LOBYTE(v71) = v52 & 1;
      *(&v71 + 1) = v51;
      *&v72 = v39;
      *(&v72 + 1) = v41;
      if (*&v68[0])
      {
        sub_1DB30623C(v68, &qword_1ECC45B98, &qword_1DB51D250);
      }
    }

    v42 = 0.0;
    if (!v22)
    {
      v42 = v21;
    }

    v43 = v62;
    v44 = v63;
    *v63 = v25;
    v44[1] = v43;
    if (v23)
    {
      v42 = 1.5;
    }

    v45 = v73;
    *(v44 + 3) = v72;
    *(v44 + 4) = v45;
    *(v44 + 5) = v74;
    v46 = v75;
    v47 = v71;
    *(v44 + 1) = v70;
    *(v44 + 2) = v47;
    v49 = v58;
    v48 = v59;
    v44[12] = v46;
    v44[13] = v48;
    v50 = v60;
    v44[14] = v49;
    v44[15] = v50;
    v44[16] = v57;
    *(v44 + 17) = v42;
  }

  return __swift_destroy_boxed_opaque_existential_0(v64);
}

unint64_t sub_1DB46DCA8()
{
  result = qword_1ECC45B88;
  if (!qword_1ECC45B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45B88);
  }

  return result;
}

unint64_t sub_1DB46DCFC()
{
  result = qword_1ECC44610;
  if (!qword_1ECC44610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44520, &qword_1DB5151E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44610);
  }

  return result;
}

uint64_t sub_1DB46DD78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB46DDE0()
{
  result = qword_1ECC44398;
  if (!qword_1ECC44398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44390, &unk_1DB51EB60);
    sub_1DB46DD78(&qword_1ECC443A0, &qword_1ECC443A8, &qword_1DB514D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44398);
  }

  return result;
}

uint64_t sub_1DB46DE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45B98, &qword_1DB51D250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Models.ToastAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v25);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v27);

  v7 = sub_1DB320870(v27, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v27);
  v23[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v27, v23, v24);
  sub_1DB3151CC(v25);
  v8 = v24[0];
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v27);
  v24[0] = v6;
  MediaArtwork.init(deserializing:using:)(v27, v24, v25);
  if (v3)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v27);
    v28 = JSONObject.string.getter();
    v22 = v10;
    sub_1DB3151CC(v27);
    JSONObject.subscript.getter(0x6567617373656DLL, 0xE700000000000000, v24);
    v11 = JSONObject.string.getter();
    v13 = v12;
    sub_1DB3151CC(v24);
    JSONObject.subscript.getter(0x6E6F697461727564, 0xE800000000000000, v23);
    v14 = JSONObject.double.getter();
    v16 = v15;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v23);
    v17 = *&v14;
    *a3 = v7;
    *(a3 + 8) = v8;
    if (v16)
    {
      v17 = 1.5;
    }

    v18 = v25[3];
    *(a3 + 48) = v25[2];
    *(a3 + 64) = v18;
    *(a3 + 80) = v25[4];
    v19 = v26;
    v20 = v25[1];
    *(a3 + 16) = v25[0];
    *(a3 + 32) = v20;
    v21 = v28;
    *(a3 + 96) = v19;
    *(a3 + 104) = v21;
    *(a3 + 112) = v22;
    *(a3 + 120) = v11;
    *(a3 + 128) = v13;
    *(a3 + 136) = v17;
  }

  return result;
}

uint64_t Models.ToastAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.ToastAction.title.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t Models.ToastAction.message.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t Models.ToastAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45BA0, &qword_1DB51D258);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB46DCA8();
  sub_1DB50BE40();
  v11 = v3[1];
  v19 = *v3;
  v20 = v11;
  v18[15] = 0;
  sub_1DB37BCC8();

  sub_1DB50B8A0();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v19) = 1;
    sub_1DB46E428();
    sub_1DB50B8A0();
    v12 = v3[13];
    v13 = v3[14];
    LOBYTE(v19) = 2;
    sub_1DB50B800();
    v14 = v3[15];
    v15 = v3[16];
    LOBYTE(v19) = 3;
    sub_1DB50B800();
    v16 = v3[17];
    LOBYTE(v19) = 4;
    sub_1DB50B880();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DB46E428()
{
  result = qword_1ECC45BA8;
  if (!qword_1ECC45BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BA8);
  }

  return result;
}

__n128 Models.ToastAction.init(actionMetrics:title:message:duration:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>, double a7@<D0>)
{
  v16 = &_s12_EmptySourceVN;
  v17 = &off_1EECE8048;
  MediaArtwork.init(_:)(&v15, &a6[1]);
  result = *a1;
  *a6 = *a1;
  a6[6].n128_u64[1] = a2;
  a6[7].n128_u64[0] = a3;
  a6[7].n128_u64[1] = a4;
  a6[8].n128_u64[0] = a5;
  a6[8].n128_f64[1] = a7;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1DB46E57C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1DB46E5C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB46E64C()
{
  result = qword_1ECC45BB0;
  if (!qword_1ECC45BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BB0);
  }

  return result;
}

unint64_t sub_1DB46E6A4()
{
  result = qword_1ECC45BB8;
  if (!qword_1ECC45BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BB8);
  }

  return result;
}

unint64_t sub_1DB46E6FC()
{
  result = qword_1ECC45BC0;
  if (!qword_1ECC45BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BC0);
  }

  return result;
}

uint64_t sub_1DB46E750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

void sub_1DB46E918(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1DB46E9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DB509B10();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

unint64_t Bag.Stubs.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t Bag.Stubs.withArray(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1DB50A980();
  v10[3] = sub_1DB336FD4(0, &qword_1ECC45BD0, 0x1E695DEC8);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1DB50A650();
  v7 = v6;
  sub_1DB300B14(v10, v9);

  sub_1DB30D454(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t Bag.Stubs.withBool(_:forKey:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v11[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v11[0] = v5;
  *a2 = v4;
  v6 = sub_1DB50A650();
  v8 = v7;
  sub_1DB300B14(v11, v10);

  sub_1DB30D454(v10, v6, v8);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t Bag.Stubs.withDouble(_:forKey:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v11[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v11[0] = v5;
  *a1 = v4;
  v6 = sub_1DB50A650();
  v8 = v7;
  sub_1DB300B14(v11, v10);

  sub_1DB30D454(v10, v6, v8);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t Bag.Stubs.withInteger(_:forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v11[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v11[0] = v5;
  *a2 = v4;
  v6 = sub_1DB50A650();
  v8 = v7;
  sub_1DB300B14(v11, v10);

  sub_1DB30D454(v10, v6, v8);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t Bag.Stubs.withString(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1DB50A620();
  v10[3] = sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1DB50A650();
  v7 = v6;
  sub_1DB300B14(v10, v9);

  sub_1DB30D454(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t Bag.Stubs.withURL(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1DB509BC0();
  v10[3] = sub_1DB336FD4(0, &qword_1ECC45BE8, 0x1E695DFF8);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1DB50A650();
  v7 = v6;
  sub_1DB300B14(v10, v9);

  sub_1DB30D454(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t Bag.Stubs.withDictionary(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1DB50A490();
  v10[3] = sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1DB50A650();
  v7 = v6;
  sub_1DB300B14(v10, v9);

  sub_1DB30D454(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

void Bag.init(mockProfile:stubs:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v28[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1DB509DD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = *a2;
  v15 = [objc_allocWithZone(MEMORY[0x1E698CB38]) init];

  v16 = sub_1DB50A490();

  [v15 setData_];

  sub_1DB509D10();
  v17 = sub_1DB509D40();
  (*(v6 + 8))(v9, v5);
  [v15 setExpirationDate_];

  v18 = [objc_opt_self() currentProcess];
  [v15 setProcessInfo_];

  v19 = sub_1DB50A620();
  [v15 setProfile_];

  v20 = sub_1DB50A620();
  [v15 setProfileVersion_];

  v28[0] = 0;
  v21 = [v15 buildWithError_];
  if (v21)
  {
    v22 = v21;
    v23 = v28[0];

    *v27 = v22;
    v24 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v25 = v28[0];
    sub_1DB509B20();

    swift_willThrow();
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52F840);
    swift_getErrorValue();
    sub_1DB50BA00();
    sub_1DB50B580();
    __break(1u);
  }
}

id sub_1DB46F4C8(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7JetCore8ProxyBag_bag];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_1DB50A650();
    v6 = sub_1DB50A620();
  }

  return v6;
}

id sub_1DB46F880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxyBag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of NetRequestEncoder.encodeRequest(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DB306AF4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DB46FA44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v13 = *(v3 - 2);
    v14 = *(v3 - 1);
    v15 = *v3;
    if (v12 <= 2)
    {
      if (*i)
      {
        if (v12 == 1)
        {
          if (v15 != 1)
          {
            goto LABEL_35;
          }

          v16 = *(v3 - 2);
          sub_1DB31EB94(*(i - 2), *(i - 1), 1);
          sub_1DB31EB94(v13, v14, 1);
          if (*&v10 != *&v13)
          {
            return 0;
          }
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_35;
          }

          sub_1DB31EB94(*(i - 2), *(i - 1), 2);
          sub_1DB31EB94(v13, v14, 2);
          if (v10 != v13)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          goto LABEL_35;
        }

        sub_1DB31EB94(*(i - 2), *(i - 1), 0);
        sub_1DB31EB94(v13, v14, 0);
        if ((v13 ^ v10))
        {
          return 0;
        }
      }

      goto LABEL_6;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      if (v15 != 4)
      {
        goto LABEL_32;
      }

      sub_1DB314BBC(*(v3 - 2), *(v3 - 1), 4);
      sub_1DB314BBC(v10, v11, 4);
      sub_1DB314BBC(v13, v14, 4);
      sub_1DB314BBC(v10, v11, 4);
      v17 = sub_1DB46FA44(v10, v13);
      sub_1DB31EB94(v10, v11, 4);
      sub_1DB31EB94(v13, v14, 4);
      sub_1DB31EB94(v13, v14, 4);
      sub_1DB31EB94(v10, v11, 4);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15 != 5)
      {
LABEL_32:
        v20 = *(i - 2);
        goto LABEL_34;
      }

      sub_1DB314BBC(*(v3 - 2), *(v3 - 1), 5);
      sub_1DB314BBC(v10, v11, 5);
      sub_1DB314BBC(v13, v14, 5);
      sub_1DB314BBC(v10, v11, 5);
      v18 = sub_1DB33C710(v10, v13);
      sub_1DB31EB94(v10, v11, 5);
      sub_1DB31EB94(v13, v14, 5);
      sub_1DB31EB94(v13, v14, 5);
      sub_1DB31EB94(v10, v11, 5);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_6:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v15 == 3)
  {
    if (v10 == v13 && v11 == v14)
    {
      sub_1DB314BBC(*(i - 2), *(i - 1), 3);
      sub_1DB314BBC(v10, v11, 3);
      sub_1DB31EB94(v10, v11, 3);
      sub_1DB31EB94(v10, v11, 3);
    }

    else
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = sub_1DB50BA30();
      sub_1DB314BBC(v13, v14, 3);
      sub_1DB314BBC(v10, v11, 3);
      sub_1DB31EB94(v10, v11, 3);
      sub_1DB31EB94(v13, v14, 3);
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_6;
  }

  v21 = *(i - 1);
LABEL_34:
  sub_1DB314BBC(*(i - 2), *(i - 1), *i);

LABEL_35:
  sub_1DB314BBC(v13, v14, v15);
  sub_1DB31EB94(v10, v11, v12);
  sub_1DB31EB94(v13, v14, v15);
  sub_1DB31EB94(v10, v11, v12);
  return 0;
}

uint64_t sub_1DB46FE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DB50BA30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

JetCore::JetPackPath __swiftcall JetPackPath.init(_:)(Swift::String a1)
{
  v38 = v1;
  v41[0] = 47;
  v41[1] = 0xE100000000000000;
  v40 = v41;
  result.components._rawValue = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB3F1A78, v39, a1._countAndFlagsBits, a1._object, v41);
  rawValue = result.components._rawValue;
  v4 = *(result.components._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = result.components._rawValue + 56;
    v37 = result.components._rawValue + 56;
    do
    {
      v8 = &v7[32 * v6];
      v9 = v6;
      while (1)
      {
        if (v9 >= rawValue[2])
        {
          __break(1u);
          goto LABEL_33;
        }

        v10 = *(v8 - 3);
        v11 = *(v8 - 2);
        if ((v11 ^ v10) >= 0x4000)
        {
          v12 = *(v8 - 1);
          v13 = *v8;
          v14 = v12 == 46 && v13 == 0xE100000000000000;
          v15 = v14 && v10 >> 16 == 0;
          if (!v15 || v11 >> 16 != 1)
          {
            result.components._rawValue = sub_1DB50B8E0();
            if ((result.components._rawValue & 1) == 0)
            {
              break;
            }
          }
        }

        ++v9;
        v8 += 32;
        if (v4 == v9)
        {
          goto LABEL_23;
        }
      }

      result.components._rawValue = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v5;
      if ((result.components._rawValue & 1) == 0)
      {
        result.components._rawValue = sub_1DB34142C(0, v5[2] + 1, 1);
        v5 = v41[0];
      }

      v18 = v5[2];
      v17 = v5[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v21 = v18 + 1;
        v36 = v18;
        result.components._rawValue = sub_1DB34142C((v17 > 1), v18 + 1, 1);
        v18 = v36;
        v19 = v21;
        v5 = v41[0];
      }

      v6 = v9 + 1;
      v5[2] = v19;
      v20 = &v5[4 * v18];
      v20[4] = v10;
      v20[5] = v11;
      v20[6] = v12;
      v20[7] = v13;
      v7 = v37;
    }

    while (v4 - 1 != v9);
  }

LABEL_23:

  v22 = v5[2];
  if (v22)
  {
    v41[0] = MEMORY[0x1E69E7CC0];
    result.components._rawValue = sub_1DB34130C(0, v22, 0);
    v23 = 0;
    v24 = v41[0];
    v25 = v5 + 7;
    while (v23 < v5[2])
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;

      v30 = MEMORY[0x1E1285BF0](v26, v27, v28, v29);
      v32 = v31;

      v41[0] = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        result.components._rawValue = sub_1DB34130C((v33 > 1), v34 + 1, 1);
        v24 = v41[0];
      }

      ++v23;
      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v25 += 4;
      if (v22 == v23)
      {

        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *v38 = v24;
  }

  return result;
}

JetCore::JetPackPath sub_1DB47015C()
{
  v0._countAndFlagsBits = 0x736A2E707061;
  v0._object = 0xE600000000000000;
  return JetPackPath.init(_:)(v0);
}

uint64_t static JetPackPath.sourcePath.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC42140 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECC45C00;
}

JetCore::JetPackPath __swiftcall JetPackPath.appending(_:)(JetCore::JetPackPath a1)
{
  v3 = v1;
  v4 = *a1.components._rawValue;
  v6 = *v2;

  result.components._rawValue = sub_1DB3992E4(v4);
  *v3 = v6;
  return result;
}

uint64_t JetPackPath.string.getter()
{
  if (!*(*v0 + 16))
  {
    return 46;
  }

  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB330B04();
  v1 = sub_1DB50A5E0();

  return v1;
}

uint64_t JetPackPath.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1E12871F0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1DB50A740();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t JetPackPath.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_1DB50A740();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1DB50BD30();
}

uint64_t sub_1DB47040C()
{
  v1 = *v0;
  result = MEMORY[0x1E12871F0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1DB50A740();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DB470488()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_1DB50A740();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1DB50BD30();
}

unint64_t sub_1DB470520()
{
  result = qword_1ECC45C08;
  if (!qword_1ECC45C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45C08);
  }

  return result;
}

uint64_t JetPackResourceBundle.fileData(atPath:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  JetPackPath.init(_:)(v8);
  v9 = (*(a4 + 16))(&v11, a3, a4);

  return v9;
}

uint64_t JetPackResourceBundle.version.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50A6B0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (*(a2 + 8))(0x6E6F6973726576, 0xE700000000000000, a1, a2, v6);
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  v10 = v7;
  v11 = v8;
  sub_1DB50A690();
  v12 = sub_1DB50A670();
  sub_1DB32E340(v10, v11);
  return v12;
}

uint64_t InMemoryJetPackResourceBundle.data(withName:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 16 * v4;
  v7 = *v6;
  sub_1DB30C1AC(*v6, *(v6 + 8));
  return v7;
}

uint64_t InMemoryJetPackResourceBundle.fileData(atPath:)(uint64_t *a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1DB30EFC0(*a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 56) + 16 * v3;
  v6 = *v5;
  sub_1DB30C1AC(*v5, *(v5 + 8));
  return v6;
}

uint64_t InMemoryJetPackResourceBundle.contentsOfDirectory(atPath:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v25 = (v2 + 40);
  v24 = MEMORY[0x1E69E7CC0];
  v26 = v3;
  v27 = v2;
LABEL_5:
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v28 = *(*(v3 + 48) + ((v10 << 9) | (8 * v12)));
    v13 = *(v28 + 16);
    v14 = *(v2 + 16);
    v15 = v13 - v14;
    if (v13 >= v14)
    {
      if (v13)
      {
        v16 = *(*(v3 + 48) + ((v10 << 9) | (8 * v12)));
        v17 = (v28 + 40);
        v18 = v25;
        while (v14)
        {
          result = *(v17 - 1);
          if (result != *(v18 - 1) || *v17 != *v18)
          {
            result = sub_1DB50BA30();
            if ((result & 1) == 0)
            {
              v3 = v26;
              v2 = v27;
              goto LABEL_5;
            }
          }

          --v14;
          v17 += 2;
          v18 += 2;
          if (!--v13)
          {
            break;
          }
        }
      }

      v3 = v26;
      v2 = v27;
      if (v15 == 1)
      {

        v20 = v24;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DB34144C(0, *(v24 + 16) + 1, 1);
          v20 = v24;
        }

        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          result = sub_1DB34144C((v21 > 1), v22 + 1, 1);
          v23 = v22 + 1;
          v20 = v24;
        }

        *(v20 + 16) = v23;
        v24 = v20;
        v2 = v27;
        *(v20 + 8 * v22 + 32) = v28;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v24;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for InMemoryJetPackResourceBundle()
{
  result = qword_1ECC45C10;
  if (!qword_1ECC45C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB470B58()
{
  sub_1DB470BF4();
  if (v0 <= 0x3F)
  {
    sub_1DB470CAC();
    if (v1 <= 0x3F)
    {
      sub_1DB377878();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DB470BF4()
{
  if (!qword_1ECC45C20)
  {
    sub_1DB470C58();
    v0 = sub_1DB50A540();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC45C20);
    }
  }
}

unint64_t sub_1DB470C58()
{
  result = qword_1ECC45C28;
  if (!qword_1ECC45C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45C28);
  }

  return result;
}

void sub_1DB470CAC()
{
  if (!qword_1ECC45C30)
  {
    v0 = sub_1DB50A540();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC45C30);
    }
  }
}

uint64_t DiskJetPackResourceBundle.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url;
  v5 = sub_1DB509CA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DiskJetPackResourceBundle.data(withName:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 16 * v4;
  v7 = *v6;
  sub_1DB30C1AC(*v6, *(v6 + 8));
  return v7;
}

uint64_t DiskJetPackResourceBundle.fileData(atPath:)(uint64_t *a1)
{
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  DiskJetPackResourceBundle.fileURL(atPath:)(&v11, v8);
  if (!v2)
  {
    v1 = sub_1DB509CB0();
    (*(v5 + 8))(v8, v4);
  }

  return v1;
}

uint64_t DiskJetPackResourceBundle.fileURL(atPath:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *a1;
  v14 = *(v2 + 8);
  v22 = v5[2];
  v23 = v14;
  v21 = OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url;
  v22(&v20 - v11, v14 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v4, v10);
  if (*(v13 + 16))
  {
    v26 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
    sub_1DB330B04();
    sub_1DB50A5E0();
  }

  sub_1DB509BD0();

  v15 = v5[1];
  v15(v12, v4);
  (v22)(v8, v23 + v21, v4);
  v16 = v24;
  v17 = sub_1DB3DC428();
  if (v16)
  {
    v15(v8, v4);
  }

  else
  {
    v18 = v17;
    result = (v15)(v8, v4);
    if (v18)
    {
      return result;
    }

    sub_1DB471704();
    swift_allocError();
    swift_willThrow();
  }

  return (v15)(v25, v4);
}

void *DiskJetPackResourceBundle.contentsOfDirectory(atPath:)(void **a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = [objc_opt_self() defaultManager];
  v30[0] = v8;
  DiskJetPackResourceBundle.fileURL(atPath:)(v30, v7);
  if (v1)
  {
  }

  else
  {
    sub_1DB509C40();
    (*(v4 + 8))(v7, v3);
    v12 = sub_1DB50A620();

    v30[0] = 0;
    v13 = [v9 contentsOfDirectoryAtPath:v12 error:v30];

    v14 = v30[0];
    if (v13)
    {
      v15 = sub_1DB50A9A0();
      v16 = v14;

      v17 = *(v15 + 16);
      if (v17)
      {
        v30[0] = MEMORY[0x1E69E7CC0];
        sub_1DB34144C(0, v17, 0);
        v7 = v30[0];
        v27[1] = v15;
        v18 = (v15 + 40);
        do
        {
          v19 = *(v18 - 1);
          v20 = *v18;
          swift_bridgeObjectRetain_n();
          v21._countAndFlagsBits = v19;
          v21._object = v20;
          JetPackPath.init(_:)(v21);
          v22 = v29;
          v28 = v8;

          sub_1DB3992E4(v22);

          v23 = v28;
          v30[0] = v7;
          v25 = v7[2];
          v24 = v7[3];
          if (v25 >= v24 >> 1)
          {
            sub_1DB34144C((v24 > 1), v25 + 1, 1);
            v7 = v30[0];
          }

          v7[2] = v25 + 1;
          v7[v25 + 4] = v23;
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      else
      {

        v7 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v26 = v30[0];
      sub_1DB509B20();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1DB4715BC(uint64_t *a1)
{
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  DiskJetPackResourceBundle.fileURL(atPath:)(&v11, v8);
  if (!v2)
  {
    v1 = sub_1DB509CB0();
    (*(v5 + 8))(v8, v4);
  }

  return v1;
}

unint64_t sub_1DB471704()
{
  result = qword_1ECC45C38;
  if (!qword_1ECC45C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45C38);
  }

  return result;
}

uint64_t type metadata accessor for DiskJetPackResourceBundle()
{
  result = qword_1ECC45C40;
  if (!qword_1ECC45C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB4717CC()
{
  sub_1DB470CAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JetPackResourceBundleDiskLocation();
    if (v1 <= 0x3F)
    {
      sub_1DB377878();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Lazy.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DB50B120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v11 - v8;
  (*(v5 + 16))(&v11 - v8, a1, v4, v7);
  sub_1DB35B5F8(v9, v4, &v12);
  result = (*(v5 + 8))(a1, v4);
  *a2 = v12;
  return result;
}

uint64_t Lazy.wrappedValue.getter(uint64_t a1)
{
  v5 = *v1;
  v2 = *(a1 + 16);
  sub_1DB50B120();
  v3 = type metadata accessor for LazyValueWrapper();

  sub_1DB35BAA8(v3);
}

uint64_t Lazy.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1DB472944(a1, a2);
  v4 = *(a2 + 16);
  v5 = sub_1DB50B120();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Lazy.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = sub_1DB50B120();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  Lazy.wrappedValue.getter(a2);
  return sub_1DB471BE8;
}

void sub_1DB471BE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1DB472944(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1DB472944((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Lazy.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  sub_1DB50B120();
  result = sub_1DB35B504(sub_1DB4729C4, v8, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1DB471D70@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00]();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v7();
  if (!v2)
  {
    (*(v5 + 32))(a2, v9, a1);
    return (*(v5 + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t Lazy.description.getter(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_1DB50B120();
  type metadata accessor for LazyValueWrapper();

  swift_getWitnessTable();
  sub_1DB50BA10();

  return 0;
}

uint64_t Lazy<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1DB50B120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  Lazy.wrappedValue.getter(a2);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  sub_1DB50A5B0();
  return (*(v9 + 8))(v8, v3);
}

uint64_t Lazy<A>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1DB3171C0(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v13[1];
  *(v10 + 32) = v13[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v14;
  *(v10 + 72) = v9;
  sub_1DB50B120();
  sub_1DB35B504(sub_1DB4729E4, v10, v13);
  result = sub_1DB3151CC(a1);
  *a5 = *&v13[0];
  return result;
}

uint64_t sub_1DB472178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1DB3171C0(a1, v17);
  v14[0] = a2;
  v10 = *(a4 + 8);

  v10(v17, v14, a3, a4);
  if (!v5)
  {
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v17);
  sub_1DB3A1B94(v17, v14);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v12 + 8))(a3, v5, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_1DB3A1C04(v14);
  }

  swift_willThrow();
  return sub_1DB3A1C04(v17);
}

uint64_t static Lazy<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v51 = *(a3 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50B120();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v42 - v10;
  v12 = *(v7 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = type metadata accessor for Lazy();
  Lazy.wrappedValue.getter(v22);
  Lazy.wrappedValue.getter(v22);
  v48 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = v12[2];
  v24(v11, v21, v7);
  v49 = v23;
  v25 = &v11[v23];
  v26 = v7;
  v24(v25, v18, v7);
  v27 = *(v51 + 48);
  v50 = a3;
  if (v27(v11, 1, a3) != 1)
  {
    v43 = v21;
    v30 = v46;
    v31 = v26;
    v24(v46, v11, v26);
    v32 = v49;
    v33 = v50;
    v34 = v27(&v11[v49], 1, v50);
    v35 = v51;
    v36 = (v51 + 8);
    if (v34 != 1)
    {
      v38 = v44;
      (*(v51 + 32))(v44, &v11[v32], v33);
      v29 = sub_1DB50A610();
      v39 = *(v35 + 8);
      v39(v38, v33);
      v40 = v12[1];
      v40(v18, v31);
      v40(v43, v31);
      v39(v30, v33);
      v40(v11, v31);
      return v29 & 1;
    }

    v37 = v12[1];
    v37(v18, v31);
    v37(v43, v31);
    (*v36)(v30, v33);
    goto LABEL_6;
  }

  v28 = v12[1];
  v28(v18, v26);
  v28(v21, v26);
  if (v27(&v11[v49], 1, v50) != 1)
  {
LABEL_6:
    (*(v47 + 8))(v11, v48);
    v29 = 0;
    return v29 & 1;
  }

  v28(v11, v26);
  v29 = 1;
  return v29 & 1;
}

uint64_t Lazy<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1DB50B120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  Lazy.wrappedValue.getter(a2);
  sub_1DB50B140();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Lazy<A>.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_1DB50BCF0();
  Lazy<A>.hash(into:)(v4, a1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4728F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  Lazy<A>.hash(into:)(v6, a2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB472944(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v4 = *(a2 + 16);
  sub_1DB50B120();
  v5 = type metadata accessor for LazyValueWrapper();

  sub_1DB35C32C(a1, v5);
}

uint64_t sub_1DB4729C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1DB471D70(v1[2], a1);
}

uint64_t sub_1DB472A68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AsyncActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v34 - v11;
  v12 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v34 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, v5, a3, v21);
  (*(v14 + 16))(v17, a1, AssociatedTypeWitness);
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = (v19 + v23 + *(v14 + 80)) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 16) = a3;
  *(v25 + 24) = v26;
  (*(v18 + 32))(v25 + v23, v22, a3);
  (*(v14 + 32))(v25 + v24, v17, AssociatedTypeWitness);
  *(v25 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = 0;
  v30 = sub_1DB50ABA0();
  v31 = v37;
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = &unk_1DB51D780;
  v32[5] = v25;
  v32[6] = v27;

  sub_1DB419B9C(0, 0, v31, &unk_1DB51D788, v32);

  return v27;
}

uint64_t sub_1DB472E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DB306AF4;

  return v16(a1, a3, a4, a5, a6);
}

uint64_t sub_1DB472F88(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v7 + *(*(v6 - 8) + 64);
  v9 = *(v5 + 8);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DB30C7A0;

  return sub_1DB472E3C(a1, v1 + v7, v1 + v11, v12, v6, v5);
}

uint64_t sub_1DB473120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB306AF4;

  return sub_1DB419790(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of AsyncActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DB306AF4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t static URLRequestEncoder.PropertyScope.allProperties.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45CD0, &unk_1DB51D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v1 = _s7JetCore35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1DB4733E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45CD0, &unk_1DB51D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v1 = _s7JetCore35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  swift_arrayDestroy();
  return v1;
}

uint64_t URLRequestEncoder.encodeRequest(fromContentsOf:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1DB509790() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1DB5097A0();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1DB50A6B0();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_1DB509CA0();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB473630, 0, 0);
}

uint64_t sub_1DB473630()
{
  v1 = v0[3];
  (*(v0[12] + 16))(v0[13], v1, v0[11]);
  sub_1DB509820();
  v2 = type metadata accessor for NetRequest();
  v3 = (v1 + v2[5]);
  v4 = *v3;
  v5 = v3[1];

  sub_1DB5097C0();
  v6 = *(v1 + v2[6]);
  sub_1DB5097D0();
  v7 = *(v1 + v2[7]);

  sub_1DB509800();
  v8 = *(v1 + v2[8]);
  sub_1DB5097E0();
  v9 = (v1 + v2[10]);
  if (v9[1])
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];
    v13 = *v9;
    sub_1DB50A690();
    sub_1DB50A660();
    v15 = v14;
    (*(v11 + 8))(v10, v12);
    if (v15 >> 60 == 15)
    {
      v16 = v0[13];
      v17 = v0[10];
      v19 = v0[6];
      v18 = v0[7];
      v20 = v0[4];
      v21 = v0[5];
      v22 = v0[2];
      sub_1DB509780();
      sub_1DB34DB68(MEMORY[0x1E69E7CC0]);
      sub_1DB344214();
      sub_1DB509B00();
      sub_1DB509770();
      (*(v19 + 8))(v18, v21);
      swift_willThrow();
      v23 = sub_1DB509860();
      (*(*(v23 - 8) + 8))(v22, v23);

      v24 = v0[1];
      goto LABEL_6;
    }

    v25 = v0[2];
    sub_1DB509840();
  }

  v26 = v0[13];
  v27 = v0[10];
  v28 = v0[7];
  v29 = v0[4];

  v24 = v0[1];
LABEL_6:

  return v24();
}

uint64_t sub_1DB4738B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return URLRequestEncoder.encodeRequest(fromContentsOf:)(a1, a2);
}

uint64_t sub_1DB47399C@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v7 + 8 * a1;
    *a3 = *(v11 + 32);
    result = memmove((v11 + 32), (v11 + 40), 8 * (v9 - 1 - a1));
    *(v7 + 16) = v10;
    *v3 = v7;
  }

  return result;
}

uint64_t sub_1DB473A30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB3A6D54(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DB473ABC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v6;
    while (v8 < *(v3 + 16))
    {
      v9 = *(v3 + 32 + 8 * v8);
      v10 = *(*v9 + 88);

      if ((v10(v11) & 1) == 0 || (v19[0] = a2, v12 = (*(*v9 + 104))(v19), (v10(v12) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DB302EC8(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1DB302EC8((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v8;
        v6 = v8 + 1;
        if (v4 - 1 != v8)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v8;

      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v15 = *(v7 + 2);
    if (!v15)
    {
    }

    while (v15 <= *(v7 + 2))
    {
      v16 = v15 - 1;
      v17 = *&v7[8 * v15 + 24];
      swift_beginAccess();
      sub_1DB47399C(v17, sub_1DB3A6CDC, &v20);
      swift_endAccess();

      v15 = v16;
      if (!v16)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB473D00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v6;
    while (v8 < *(v3 + 16))
    {
      v9 = *(v3 + 32 + 8 * v8);
      v10 = *(*v9 + 88);

      if ((v10(v11) & 1) == 0 || (v12 = (*(*v9 + 104))(a2), (v10(v12) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DB302EC8(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1DB302EC8((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v8;
        v6 = v8 + 1;
        if (v4 - 1 != v8)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v8;

      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v15 = *(v7 + 2);
    if (!v15)
    {
    }

    while (v15 <= *(v7 + 2))
    {
      v16 = v15 - 1;
      v17 = *&v7[8 * v15 + 24];
      swift_beginAccess();
      sub_1DB47399C(v17, sub_1DB3A6D40, &v19);
      swift_endAccess();

      v15 = v16;
      if (!v16)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB473F3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(v3 + 8);
  if (!*(v6 + 16) || (v8 = result, result = sub_1DB314CBC(result, a2), (v9 & 1) == 0))
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
LABEL_10:
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v15;
    *(a3 + 24) = v14;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
    return result;
  }

  v10 = *(v6 + 56) + 48 * result;
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = v8;
  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  v16 = *(v10 + 32);
  v17 = *(v10 + 40);
  v19 = *(v4 + 16);
  v18 = (v4 + 16);
  v28 = v13;
  v20 = sub_1DB36E7F8(v13, a2, v19);
  if ((v21 & 1) == 0)
  {
    v22 = v20;

    sub_1DB473A30(v22);

    v23 = *v18;

    result = swift_isUniquelyReferenced_nonNull_native();
    v29 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1DB303F58(0, *(v23 + 16) + 1, 1, v23);
      v23 = result;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      result = sub_1DB303F58((v24 > 1), v25 + 1, 1, v23);
      v26 = v25 + 1;
      v23 = result;
    }

    *(v23 + 16) = v26;
    v27 = v23 + 16 * v25;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    *v18 = v23;
    goto LABEL_10;
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4741A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v11 = *a1;
  v10 = a1[1];
  v45 = a1[2];
  v46 = v11;
  v44 = *(a1 + 3);

  sub_1DB30C4B8(&v45, v43, &qword_1ECC45CE0, &qword_1DB51D858);
  sub_1DB475368(&v44, v43);
  sub_1DB30C4B8(&v46, v43, &qword_1ECC45CE8, &unk_1DB51D860);
  sub_1DB381E6C(a1, a2, a3, &v38);
  v12 = v39;
  if (!v39)
  {
    v26 = *(v4[1] + 16);
    if (v26)
    {
      v27 = *v4 >= v26;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = v4[2];
      if (v28[2])
      {
        v29 = v28[4];
        v30 = v28[5];

        sub_1DB4759B4(0, 1);
        sub_1DB30FC7C(v29, v30, v43);

        sub_1DB30623C(v43, &qword_1ECC45CD8, &qword_1DB51D850);
      }
    }

    v31 = v4[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    v32 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1DB303F58(0, *(v31 + 16) + 1, 1, v31);
      v31 = result;
    }

    v34 = *(v31 + 16);
    v33 = *(v31 + 24);
    if (v34 >= v33 >> 1)
    {
      result = sub_1DB303F58((v33 > 1), v34 + 1, 1, v31);
      v31 = result;
    }

    v23 = 0;
    v13 = 0;
    v14 = 0;
    *(v31 + 16) = v34 + 1;
    v35 = v31 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = a3;
    v5[2] = v31;
    v24 = 0uLL;
    goto LABEL_19;
  }

  v37 = v38;
  v36 = v40;
  v13 = v41;
  v14 = v42;
  v15 = (v4 + 2);
  v16 = sub_1DB36E7F8(a2, a3, v4[2]);
  if ((v17 & 1) == 0)
  {
    sub_1DB473A30(v16);

    v18 = *v15;

    result = swift_isUniquelyReferenced_nonNull_native();
    v20 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1DB303F58(0, *(v18 + 16) + 1, 1, v18);
      v18 = result;
    }

    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    v23 = v37;
    v24 = v36;
    if (v22 >= v21 >> 1)
    {
      result = sub_1DB303F58((v21 > 1), v22 + 1, 1, v18);
      v24 = v36;
      v23 = v37;
      v18 = result;
    }

    *(v18 + 16) = v22 + 1;
    v25 = v18 + 16 * v22;
    *(v25 + 32) = v20;
    *(v25 + 40) = a3;
    *v15 = v18;
LABEL_19:
    *a4 = v23;
    *(a4 + 8) = v12;
    *(a4 + 16) = v24;
    *(a4 + 32) = v13;
    *(a4 + 40) = v14;
    return result;
  }

  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB474514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(v3 + 8);
  result = sub_1DB314CBC(a1, a2);
  if ((v9 & 1) == 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_7;
  }

  v10 = result;
  v24 = a1;
  v11 = *(v4 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + 8);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DB312CF4();
  }

  v14 = *(*(v13 + 48) + 16 * v10 + 8);

  v15 = *(v13 + 56) + 48 * v10;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  sub_1DB310F5C(v10, v13);
  *(v4 + 8) = v13;
  v22 = sub_1DB36E7F8(v24, a2, *(v4 + 16));
  if ((v23 & 1) == 0)
  {
    sub_1DB473A30(v22);

LABEL_7:
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = v18;
    *(a3 + 24) = v19;
    *(a3 + 32) = v20;
    *(a3 + 40) = v21;
    return result;
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

id sub_1DB4746F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = type metadata accessor for PageRenderEventActivityChange();
  v9 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB473F3C(a2, a3, v41);
  if (v41[1])
  {
    sub_1DB30623C(v41, &qword_1ECC45CD8, &qword_1DB51D850);
    sub_1DB473F3C(a2, a3, &v42);
    v39 = v42;
    v40[0] = v43[0];
    *(v40 + 9) = *(v43 + 9);
    if (*(&v42 + 1) && (sub_1DB350378(a4), *(&v39 + 1)))
    {
      v36 = a4;
      v37 = v4;
      v35 = v39;
      v47 = v39;
      v48 = v40[0];
      v49 = *&v40[1];
      v50 = BYTE8(v40[1]) & 1;
      sub_1DB4741A8(&v47, a2, a3, &v44);
      sub_1DB30623C(&v44, &qword_1ECC45CD8, &qword_1DB51D850);
      v5 = v37;

      a4 = v36;
    }

    else
    {
      sub_1DB474514(a2, a3, &v47);
      result = sub_1DB30623C(&v47, &qword_1ECC45CD8, &qword_1DB51D850);
    }

    if (qword_1EE30E190 != -1)
    {
      result = swift_once();
    }

    if (byte_1EE30E198 == 1)
    {
      if (qword_1ECC42020 != -1)
      {
        swift_once();
      }

      v13 = qword_1ECC67910;
      *v11 = a4;
      v11[1] = a2;
      v11[2] = a3;
      swift_storeEnumTagMultiPayload();
      v14 = *(v13 + 16);

      [v14 lock];
      sub_1DB473D00(v13, v11);
      if (v5)
      {

        result = [v14 unlock];
        __break(1u);
      }

      else
      {
        [v14 unlock];
        return sub_1DB47530C(v11);
      }
    }
  }

  else
  {
    v15 = a4;
    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    v16 = a3;
    sub_1DB50BEB0();
    v17 = *(&v48 + 1);
    v38 = v49;
    v37 = __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v51 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001DB52A9C0;
    v19._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(&v43[0] + 1) = MEMORY[0x1E69E6530];
    *&v42 = v15;
    sub_1DB30C4B8(&v42, &v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v44 = 0u;
    v45 = 0u;
    sub_1DB301D4C(&v39, &v44);
    v46 = 0;
    v20 = v51;
    v21 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[40 * v23];
    v25 = v44;
    v26 = v45;
    v24[64] = v46;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v51 = v20;
    sub_1DB30623C(&v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v27._countAndFlagsBits = 0x697669746361202CLL;
    v27._object = 0xEF20726F66207974;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(&v43[0] + 1) = &type metadata for OperationID;
    *&v42 = v21;
    *(&v42 + 1) = v16;
    sub_1DB30C4B8(&v42, &v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v44 = 0u;
    v45 = 0u;

    sub_1DB301D4C(&v39, &v44);
    v46 = 0;
    v28 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
      v51 = v28;
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[40 * v30];
    v32 = v44;
    v33 = v45;
    v31[64] = v46;
    *(v31 + 2) = v32;
    *(v31 + 3) = v33;
    v51 = v28;
    sub_1DB30623C(&v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v34._countAndFlagsBits = 0x756F6620746F6E20;
    v34._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    *(v18 + 32) = v51;
    Logger.error(_:)(v18, v17, v38);

    return __swift_destroy_boxed_opaque_existential_0(&v47);
  }

  return result;
}

id sub_1DB474CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = type metadata accessor for PageRenderEventActivityChange();
  v9 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB473F3C(a2, a3, v41);
  if (v41[1])
  {
    sub_1DB30623C(v41, &qword_1ECC45CD8, &qword_1DB51D850);
    sub_1DB473F3C(a2, a3, &v42);
    v39 = v42;
    v40[0] = v43[0];
    *(v40 + 9) = *(v43 + 9);
    if (*(&v42 + 1) && (sub_1DB350A48(a4), *(&v39 + 1)))
    {
      v36 = a4;
      v37 = v4;
      v35 = v39;
      v47 = v39;
      v48 = v40[0];
      v49 = *&v40[1];
      v50 = BYTE8(v40[1]) & 1;
      sub_1DB4741A8(&v47, a2, a3, &v44);
      sub_1DB30623C(&v44, &qword_1ECC45CD8, &qword_1DB51D850);
      v5 = v37;

      a4 = v36;
    }

    else
    {
      sub_1DB474514(a2, a3, &v47);
      result = sub_1DB30623C(&v47, &qword_1ECC45CD8, &qword_1DB51D850);
    }

    if (qword_1EE30E190 != -1)
    {
      result = swift_once();
    }

    if (byte_1EE30E198 == 1)
    {
      if (qword_1ECC42020 != -1)
      {
        swift_once();
      }

      v13 = qword_1ECC67910;
      *v11 = a4;
      v11[1] = a2;
      v11[2] = a3;
      swift_storeEnumTagMultiPayload();
      v14 = *(v13 + 16);

      [v14 lock];
      sub_1DB473D00(v13, v11);
      if (v5)
      {

        result = [v14 unlock];
        __break(1u);
      }

      else
      {
        [v14 unlock];
        return sub_1DB47530C(v11);
      }
    }
  }

  else
  {
    v15 = a4;
    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    v16 = a3;
    sub_1DB50BEB0();
    v17 = *(&v48 + 1);
    v38 = v49;
    v37 = __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v51 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001DB52A8F0;
    v19._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(&v43[0] + 1) = MEMORY[0x1E69E6530];
    *&v42 = v15;
    sub_1DB30C4B8(&v42, &v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v44 = 0u;
    v45 = 0u;
    sub_1DB301D4C(&v39, &v44);
    v46 = 0;
    v20 = v51;
    v21 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[40 * v23];
    v25 = v44;
    v26 = v45;
    v24[64] = v46;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v51 = v20;
    sub_1DB30623C(&v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v27._countAndFlagsBits = 0x697669746361202CLL;
    v27._object = 0xEF20726F66207974;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(&v43[0] + 1) = &type metadata for OperationID;
    *&v42 = v21;
    *(&v42 + 1) = v16;
    sub_1DB30C4B8(&v42, &v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v44 = 0u;
    v45 = 0u;

    sub_1DB301D4C(&v39, &v44);
    v46 = 0;
    v28 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
      v51 = v28;
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[40 * v30];
    v32 = v44;
    v33 = v45;
    v31[64] = v46;
    *(v31 + 2) = v32;
    *(v31 + 3) = v33;
    v51 = v28;
    sub_1DB30623C(&v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v34._countAndFlagsBits = 0x756F6620746F6E20;
    v34._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    *(v18 + 32) = v51;
    Logger.error(_:)(v18, v17, v38);

    return __swift_destroy_boxed_opaque_existential_0(&v47);
  }

  return result;
}

uint64_t type metadata accessor for PageRenderEventActivityChange()
{
  result = qword_1ECC45CF0;
  if (!qword_1ECC45CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB47530C(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderEventActivityChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4753C4(uint64_t a1, uint64_t a2)
{
  v61 = sub_1DB50A3A0();
  v63 = *(v61 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v58 - v10;
  v11 = type metadata accessor for PageRenderEventActivityChange();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v58 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v58 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v58 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D10, &qword_1DB51D8B8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v58 - v26;
  v29 = (&v58 + *(v28 + 56) - v26);
  sub_1DB475BBC(a1, &v58 - v26);
  sub_1DB475BBC(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1DB475BBC(v27, v17);
      v35 = v17[1];
      v36 = v17[2];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_30;
      }

      if (*v17 == *v29)
      {
        if (v35 != v29[1] || v36 != v29[2])
        {
          goto LABEL_20;
        }

        goto LABEL_31;
      }

LABEL_28:
      v39 = 0;
      goto LABEL_32;
    }

    sub_1DB475BBC(v27, v14);
    v40 = *v14;
    v41 = *(v14 + 1);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D18, &qword_1DB51D8C0) + 48);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v63 + 8))(&v14[v42], v61);
      goto LABEL_30;
    }

    v43 = v29[1];
    v59 = *v29;
    v44 = *(v63 + 32);
    v45 = &v14[v42];
    v46 = v61;
    v44(v62, v45, v61);
    v47 = v29 + v42;
    v48 = v60;
    v44(v60, v47, v46);
    if (v40 == v59 && v41 == v43)
    {
    }

    else
    {
      v50 = sub_1DB50BA30();

      v39 = 0;
      if ((v50 & 1) == 0)
      {
LABEL_39:
        v56 = *(v63 + 8);
        v56(v48, v46);
        v56(v62, v46);
        goto LABEL_40;
      }
    }

    v51 = *(v63 + 16);
    v51(v6, v62, v46);
    v52 = sub_1DB50A6E0();
    v54 = v53;
    v51(v6, v48, v46);
    if (v52 == sub_1DB50A6E0() && v54 == v55)
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_1DB50BA30();
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1DB475BBC(v27, v20);
    v31 = v20[1];
    v32 = v20[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_30;
    }

    v34 = v29[2];
    if (*v20 == *v29)
    {
      v33 = v29[1];
LABEL_16:
      if (v31 != v33 || v32 != v34)
      {
LABEL_20:
        v39 = sub_1DB50BA30();
LABEL_32:

LABEL_40:
        sub_1DB47530C(v27);
        return v39 & 1;
      }

LABEL_31:
      v39 = 1;
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  sub_1DB475BBC(v27, v23);
  v31 = *v23;
  v32 = v23[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    v33 = *v29;
    v34 = v29[1];
    goto LABEL_16;
  }

LABEL_30:

  sub_1DB30623C(v27, &qword_1ECC45D10, &qword_1DB51D8B8);
  v39 = 0;
  return v39 & 1;
}

unint64_t sub_1DB4758F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DB4759B4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1DB303F58(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1DB4758F4(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1DB475A74()
{
  sub_1DB475AF4();
  if (v0 <= 0x3F)
  {
    sub_1DB475B54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DB475AF4()
{
  if (!qword_1ECC45D00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC45D00);
    }
  }
}

void sub_1DB475B54()
{
  if (!qword_1ECC45D08)
  {
    sub_1DB50A3A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC45D08);
    }
  }
}

uint64_t sub_1DB475BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderEventActivityChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JSONDateFormat.date(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1DB476330();
  v5 = sub_1DB50A620();

  [v4 setDateFormat_];

  v6 = sub_1DB50A620();
  v7 = [v4 dateFromString_];

  if (v7)
  {
    sub_1DB509DB0();

    v8 = 0;
    v4 = v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1DB509DD0();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

unint64_t JSONDateFormat.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001FLL;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t JSONDateFormat.string(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_1DB509DD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  sub_1DB476604(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC43838, &unk_1DB513310);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_1DB476330();
    v15 = sub_1DB50A620();

    [v14 setDateFormat_];

    v16 = sub_1DB509D40();
    v17 = [v14 stringFromDate_];

    v18 = sub_1DB50A650();
    (*(v8 + 8))(v11, v7);
    return v18;
  }
}

JetCore::JSONDateFormat_optional __swiftcall JSONDateFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB476068(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = "invocationPoints";
  }

  else
  {
    v5 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v8 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  else
  {
    v8 = "invocationPoints";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DB50BA30();
  }

  return v10 & 1;
}

uint64_t sub_1DB476118()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47619C()
{
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB47620C()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47628C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50B680();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DB4762EC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  else
  {
    v3 = "invocationPoints";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id sub_1DB476330()
{
  v0 = sub_1DB509E40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
  v5 = sub_1DB50B0D0();
  v6 = objc_opt_self();
  v7 = [v6 currentThread];
  v8 = [v7 threadDictionary];

  v9 = v5;
  v10 = [v8 objectForKeyedSubscript_];

  if (v10)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_1DB30623C(v20, &qword_1ECC426B0, &qword_1DB50EEB0);
    goto LABEL_8;
  }

  sub_1DB336FD4(0, &qword_1ECC45D28, 0x1E696AB78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1DB509E10();
    v12 = sub_1DB509E30();
    (*(v1 + 8))(v4, v0);
    [v11 setLocale_];

    v13 = [v6 currentThread];
    v14 = [v13 threadDictionary];

    v15 = v9;
    [v14 setObject:v11 forKeyedSubscript:v15];

    return v11;
  }

  return v17[1];
}

uint64_t sub_1DB476604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB476678()
{
  result = qword_1ECC45D20;
  if (!qword_1ECC45D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D20);
  }

  return result;
}

Swift::Bool __swiftcall ComponentID.isChild(of:)(JetCore::ShelfID of)
{
  v2 = *(of.parent.value._countAndFlagsBits + 16);
  v3 = *(of.parent.value._countAndFlagsBits + 24);
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1 == *of.parent.value._countAndFlagsBits && v1[1] == *(of.parent.value._countAndFlagsBits + 8);
  if (v6 || (v7 = sub_1DB50BA30(), result = 0, (v7 & 1) != 0))
  {
    if (v4 == v2 && v5 == v3)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

Swift::Bool __swiftcall ComponentID.isChild(of:)(JetCore::PageID of)
{
  if (*v1 == *of.value._countAndFlagsBits && v1[1] == *(of.value._countAndFlagsBits + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t static ComponentID.forItems(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  *a2 = 0;
  *(a2 + 8) = sub_1DB476944;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
}

uint64_t sub_1DB476830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a1;

  v13 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v13);

  *a6 = a2;
  a6[1] = a3;
  a6[2] = a4;
  a6[3] = a5;
  a6[4] = 35;
  a6[5] = 0xE100000000000000;
  v15 = v12 + 1;
  if (v12 == -1)
  {

    sub_1DB3DBC04("JetCore/ComponentID.swift", 25, 2, 49, a2, a3, a4, a5);

    v15 = 0;
  }

  *a1 = v15;
  return result;
}

void __swiftcall ComponentID.init(at:in:)(JetCore::ComponentID *__return_ptr retstr, Swift::UInt64 at, JetCore::ShelfID in)
{
  v7 = *in.parent.value._countAndFlagsBits;
  v4 = *(in.parent.value._countAndFlagsBits + 16);
  v5 = *(in.parent.value._countAndFlagsBits + 24);
  v6 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v6);

  retstr->value._countAndFlagsBits = 35;
  retstr->value._object = 0xE100000000000000;
  retstr->parent.parent = v7;
  retstr->parent.value._countAndFlagsBits = v4;
  retstr->parent.value._object = v5;
}

void __swiftcall ComponentID.init(randomIn:)(JetCore::ComponentID *__return_ptr retstr, JetCore::ShelfID randomIn)
{
  countAndFlagsBits = randomIn.parent.value._countAndFlagsBits;
  v4 = sub_1DB509E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *countAndFlagsBits;
  v9 = *(countAndFlagsBits + 16);
  v10 = *(countAndFlagsBits + 24);
  sub_1DB509DF0();
  v11 = sub_1DB509DE0();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v22 = v11;
  v23 = v13;
  v20 = 45;
  v21 = 0xE100000000000000;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1DB301E30();
  v14 = sub_1DB50B1A0();
  v16 = v15;

  retstr->value._countAndFlagsBits = v14;
  retstr->value._object = v16;
  retstr->parent.parent = v17;
  retstr->parent.value._countAndFlagsBits = v9;
  retstr->parent.value._object = v10;
}

__n128 ComponentID.init<A>(id:kind:in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v14 = *a4;
  v11 = a4[1].n128_u64[0];
  v12 = a4[1].n128_u64[1];
  sub_1DB50A910();
  MEMORY[0x1E1285C70](a1, a2);

  (*(*(a5 - 8) + 8))(a3, a5);
  a6[2].n128_u64[0] = v15;
  a6[2].n128_u64[1] = v16;
  result = v14;
  *a6 = v14;
  a6[1].n128_u64[0] = v11;
  a6[1].n128_u64[1] = v12;
  return result;
}

uint64_t sub_1DB476C28@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1DB50B3D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB324840(0x746E65726170, 0xE600000000000000, 1, a2);
  sub_1DB38BBA0(a1, v12, v33);
  if (v3)
  {
  }

  v15 = *a1;
  v14 = a1[1];
  if (v14 == *(*a1 + 16))
  {
    sub_1DB324840(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1DB50B3C0();
    v16 = sub_1DB50B3E0();
    swift_allocError();
    v18 = v17;
    (*(v8 + 16))(v17, v11, v7);
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
    swift_willThrow();
    (*(v8 + 8))(v11, v7);
  }

  v32 = v33[3];
  v34 = v33[1];
  v19 = v33[0];
  v20 = v33[2];

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v31 = v19;
    if (v14 < *(v15 + 16))
    {
      v21 = (v15 + 32 * v14);
      v22 = v21[6];
      v23 = v21[7];
      v25 = v21[4];
      v24 = v21[5];
      a1[1] = v14 + 1;

      v26 = MEMORY[0x1E1285BF0](v25, v24, v22, v23);
      v28 = v27;

      v29 = v34;
      *a3 = v31;
      a3[1] = v29;
      v30 = v32;
      a3[2] = v20;
      a3[3] = v30;
      a3[4] = v26;
      a3[5] = v28;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ComponentID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DB50B3D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v11 = sub_1DB50BA40();
  v42 = v6;
  v33 = 45;
  v34 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v11);
  *(&v28 - 2) = &v33;
  v14 = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB3F1A78, (&v28 - 4), v12, v13, &v28);
  v39 = v14;
  v40 = 0;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1DB50BDB0();
  sub_1DB476C28(&v39, v16, &v33);
  v18 = v34;
  v19 = v36;
  v30 = v35;
  v31 = v33;
  v29 = v37;
  v32 = v38;
  v20 = *(v14 + 16);

  if (v40 == v20)
  {
    __swift_destroy_boxed_opaque_existential_0(v41);
    v21 = v30;
    *a2 = v31;
    a2[1] = v18;
    a2[2] = v21;
    a2[3] = v19;
    v22 = v32;
    a2[4] = v29;
    a2[5] = v22;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v40 >= v20)
  {
    __break(1u);
  }

  else
  {
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v24 = sub_1DB50B3E0();
    swift_allocError();
    v26 = v25;
    v27 = v42;
    (*(v42 + 16))(v25, v9, v5);
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
    (*(v27 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t ComponentID.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v4, v5);
  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v6, v7);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t ComponentID.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ComponentID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t ComponentID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB47748C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB477510()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t sub_1DB47757C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB47762C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t _s7JetCore11ComponentIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DB50BA30() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DB50BA30() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1DB50BA30();
}

unint64_t sub_1DB47775C()
{
  result = qword_1ECC45D30;
  if (!qword_1ECC45D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D30);
  }

  return result;
}

unint64_t sub_1DB4777C0()
{
  result = qword_1ECC45D38;
  if (!qword_1ECC45D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D40, &qword_1DB51DAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D38);
  }

  return result;
}
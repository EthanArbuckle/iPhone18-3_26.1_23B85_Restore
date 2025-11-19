uint64_t JetPackAssetSession.jetPack(urlRequest:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4437EC, 0, 0);
}

uint64_t sub_1DB4437EC()
{
  v1 = v0[3];
  if (sub_1DB509B50())
  {
    v2 = v0[3];
    v3 = sub_1DB509C30();
    v5 = v4;
    v0[5] = v4;
    sub_1DB509CA0();
    sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
    v6 = sub_1DB50B8F0();
    v8 = v7;
    v0[6] = v7;
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_1DB443998;
    v10 = v0[4];
    v11 = v0[2];

    return sub_1DB443368(v11, v3, v5, v6, v8);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_1DB443AE0;
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return sub_1DB4463F0(v16, v14);
  }
}

uint64_t sub_1DB443998()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB443BD4, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1DB443AE0()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB443BD4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB443C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 250) = a4;
  *(v5 + 336) = a3;
  *(v5 + 344) = v4;
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB443C68, 0, 0);
}

uint64_t sub_1DB443C68()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000012;
  v2 = *(v0 + 250);
  sub_1DB50BEB0();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v29 = sub_1DB301BC0(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000003ALL;
  v6._object = 0x80000001DB52F460;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v7 = 0xEF726F7272452072;
        v1 = 0x656E6961746E6F43;
      }

      else
      {
        v7 = 0x80000001DB52F4A0;
        v1 = 0xD00000000000001CLL;
      }
    }

    else if (v2 == 4)
    {
      v7 = 0x80000001DB52F4C0;
    }

    else
    {
      v7 = 0xE700000000000000;
      v1 = 0x74756F656D6954;
    }
  }

  else if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = 0x80000001DB52F4E0;
      v1 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xEF68637469777320;
      v1 = 0x6C6C696B20676142;
    }
  }

  else if (v2)
  {
    v7 = 0xEE00726F72724520;
    v1 = 0x6573616261746144;
  }

  else
  {
    v7 = 0xE800000000000000;
    v1 = 0x726F727245637078;
  }

  *(v0 + 280) = MEMORY[0x1E69E6158];
  *(v0 + 256) = v1;
  *(v0 + 264) = v7;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v8 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 344);
  v12 = *(v0 + 250);
  *(v8 + 2) = v10 + 1;
  v13 = &v8[40 * v10];
  v14 = *(v0 + 216);
  v15 = *(v0 + 232);
  v13[64] = *(v0 + 248);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v8;
  Logger.warning(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v17 = v11[21];
  v18 = v11[22];
  __swift_project_boxed_opaque_existential_1(v11 + 18, v17);
  *(v0 + 249) = 0x706050402030100uLL >> (8 * v12);
  v19 = *(v18 + 8);
  v20 = sub_1DB468B08();
  v19(v0 + 249, &type metadata for JetPackClientFallbackErrorLog, v20, v17, v18);
  v21 = type metadata accessor for JetPackAssetDiskCache(0);
  v22 = JetPackAssetDiskCache.__allocating_init()();
  *(v0 + 40) = v21;
  *(v0 + 48) = &protocol witness table for JetPackAssetDiskCache;
  *(v0 + 16) = v22;
  *(v0 + 80) = &type metadata for JetPackAssetStandardCachePolicy;
  *(v0 + 88) = &protocol witness table for JetPackAssetStandardCachePolicy;
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  v23 = swift_task_alloc();
  *(v0 + 352) = v23;
  *v23 = v0;
  v23[1] = sub_1DB444138;
  v24 = *(v0 + 336);
  v25 = *(v0 + 344);
  v26 = *(v0 + 320);
  v27 = *(v0 + 328);

  return sub_1DB444354(v26, v27, v24, v0 + 96, v0 + 136);
}

uint64_t sub_1DB444138()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = sub_1DB4442D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 136));
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v4 = sub_1DB44425C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB44425C()
{
  sub_1DB30623C(v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4442D0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  v1 = v0[45];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB444354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[42] = a3;
  v6[43] = v5;
  v6[40] = a1;
  v6[41] = a2;
  v9 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v6[44] = v9;
  v6[45] = *(v9 + 64);
  v6[46] = swift_task_alloc();
  v10 = type metadata accessor for URLJetPackAssetRequest();
  v6[47] = v10;
  v11 = *(v10 - 8);
  v6[48] = v11;
  v6[49] = *(v11 + 64);
  v6[50] = swift_task_alloc();
  v12 = sub_1DB50A230();
  v6[51] = v12;
  v13 = *(v12 - 8);
  v6[52] = v13;
  v14 = *(v13 + 64) + 15;
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  sub_1DB30BE90(a4, (v6 + 2));
  sub_1DB30BE90(a5, (v6 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB444510, 0, 0);
}

uint64_t sub_1DB444510()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v2 = sub_1DB50A270();
  __swift_project_value_buffer(v2, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v5 = *(v0 + 432);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "Perform JetPack Request", "", v6, 2u);
    MEMORY[0x1E1288220](v6, -1, -1);
  }

  v9 = *(v0 + 424);
  v8 = *(v0 + 432);
  v10 = *(v0 + 408);
  v11 = *(v0 + 416);

  (*(v11 + 16))(v9, v8, v10);
  v12 = sub_1DB50A2C0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 440) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 376);
  v16 = *(v0 + 328);
  sub_1DB50BEB0();
  v47 = *(v0 + 208);
  v48 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB50EE90;
  v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v18._object = 0x80000001DB52F170;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 280) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  sub_1DB468D18(v16, boxed_opaque_existential_0, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v20 = v49;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1DB301BC0(0, *(v49 + 2) + 1, 1, v49);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
  }

  v23 = *(v0 + 400);
  v24 = *(v0 + 384);
  v25 = *(v0 + 368);
  v44 = *(v0 + 392);
  v45 = *(v0 + 360);
  v43 = *(v0 + 352);
  v46 = *(v0 + 344);
  v26 = *(v0 + 328);
  v27 = *(v0 + 336);
  *(v20 + 2) = v22 + 1;
  v28 = &v20[40 * v22];
  v29 = *(v0 + 216);
  v30 = *(v0 + 232);
  v28[64] = *(v0 + 248);
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  *(v17 + 32) = v20;
  Logger.info(_:)(v17, v48, v47);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB468D18(v26, v23, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB468D18(v27, v25, type metadata accessor for URLJetPackAssetFetcher);
  v32 = (*(v24 + 80) + 96) & ~*(v24 + 80);
  v33 = (v44 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v43 + 80) + v33 + 8) & ~*(v43 + 80);
  v35 = swift_allocObject();
  *(v0 + 448) = v35;
  v36 = *(v0 + 144);
  v35[3] = *(v0 + 128);
  v35[4] = v36;
  v35[5] = *(v0 + 160);
  v37 = *(v0 + 112);
  v35[1] = *(v0 + 96);
  v35[2] = v37;
  sub_1DB468D80(v23, v35 + v32, type metadata accessor for URLJetPackAssetRequest);
  *(v35 + v33) = v46;
  sub_1DB468D80(v25, v35 + v34, type metadata accessor for URLJetPackAssetFetcher);

  v38 = swift_task_alloc();
  *(v0 + 456) = v38;
  *v38 = v0;
  v38[1] = sub_1DB444A48;
  v39 = *(v0 + 344);
  v40 = *(v0 + 320);
  v41 = *(v0 + 328);

  return sub_1DB446F3C(v40, v41, &unk_1DB51CC78, v35);
}

uint64_t sub_1DB444A48()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_1DB444C50;
  }

  else
  {
    v5 = *(v2 + 448);

    v4 = sub_1DB444B64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB444B64()
{
  v1 = v0[54];
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[46];
  sub_1DB4662E0(v0[55], "Perform JetPack Request");

  (*(v3 + 8))(v1, v4);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB444C50()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[50];
  v8 = v0[46];

  sub_1DB4662E0(v2, "Perform JetPack Request");

  (*(v6 + 8))(v3, v5);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v9 = v0[1];
  v10 = v0[58];

  return v9();
}

uint64_t sub_1DB444D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[57] = a3;
  v6[58] = v5;
  v6[55] = a1;
  v6[56] = a2;
  v9 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v6[59] = v9;
  v6[60] = *(v9 + 64);
  v6[61] = swift_task_alloc();
  v10 = sub_1DB50A230();
  v6[62] = v10;
  v11 = *(v10 - 8);
  v6[63] = v11;
  v12 = *(v11 + 64) + 15;
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  sub_1DB30BE90(a4, (v6 + 2));
  sub_1DB30BE90(a5, (v6 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB444E9C, 0, 0);
}

uint64_t sub_1DB444E9C()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 520);
  v2 = sub_1DB50A270();
  __swift_project_value_buffer(v2, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v5 = *(v0 + 520);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "Perform JetPack Request", "", v6, 2u);
    MEMORY[0x1E1288220](v6, -1, -1);
  }

  v8 = *(v0 + 520);
  v10 = *(v0 + 504);
  v9 = *(v0 + 512);
  v11 = *(v0 + 496);

  (*(v10 + 16))(v9, v8, v11);
  v12 = sub_1DB50A2C0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 528) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 448);
  sub_1DB50BEB0();
  v48 = *(v0 + 208);
  v49 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v17._object = 0x80000001DB52F170;
  v17._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v0 + 400) = &type metadata for SilverBulletJetPackAssetRequest;
  v18 = swift_allocObject();
  *(v0 + 376) = v18;
  v19 = *(v15 + 32);
  v20 = *(v15 + 16);
  *(v18 + 16) = *v15;
  *(v18 + 32) = v20;
  *(v18 + 48) = v19;
  sub_1DB30C4B8(v0 + 376, v0 + 408, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB467318(v15, v0 + 256);
  sub_1DB30C2D8(v0 + 408, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v21 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1DB301BC0(0, *(v50 + 2) + 1, 1, v50);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
  }

  v24 = *(v0 + 488);
  v25 = *(v0 + 472);
  v46 = *(v0 + 480);
  v47 = *(v0 + 464);
  v26 = *(v0 + 448);
  v27 = *(v0 + 456);
  *(v21 + 2) = v23 + 1;
  v28 = &v21[40 * v23];
  v29 = *(v0 + 216);
  v30 = *(v0 + 232);
  v28[64] = *(v0 + 248);
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  sub_1DB30623C(v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  *(v16 + 32) = v21;
  Logger.info(_:)(v16, v49, v48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  v32 = *(v26 + 32);
  v33 = *(v26 + 16);
  *(v0 + 296) = *v26;
  *(v0 + 312) = v33;
  *(v0 + 328) = v32;
  sub_1DB468D18(v27, v24, type metadata accessor for SilverBulletJetPackAssetFetcher);
  v34 = (*(v25 + 80) + 144) & ~*(v25 + 80);
  v35 = swift_allocObject();
  v36 = *(v0 + 144);
  *(v35 + 48) = *(v0 + 128);
  *(v35 + 64) = v36;
  v37 = *(v0 + 160);
  v38 = *(v0 + 112);
  *(v35 + 16) = *(v0 + 96);
  *(v35 + 32) = v38;
  v39 = *(v0 + 296);
  v40 = *(v0 + 312);
  *(v35 + 80) = v37;
  *(v35 + 96) = v39;
  *(v0 + 536) = v35;
  *(v35 + 112) = v40;
  *(v35 + 128) = *(v0 + 328);
  *(v35 + 136) = v47;
  sub_1DB468D80(v24, v35 + v34, type metadata accessor for SilverBulletJetPackAssetFetcher);
  sub_1DB467318(v26, v0 + 336);

  v41 = swift_task_alloc();
  *(v0 + 544) = v41;
  *v41 = v0;
  v41[1] = sub_1DB4453A4;
  v42 = *(v0 + 464);
  v43 = *(v0 + 440);
  v44 = *(v0 + 448);

  return sub_1DB44738C(v43, v44, &unk_1DB51C938, v35);
}

uint64_t sub_1DB4453A4()
{
  v2 = *(*v1 + 544);
  v3 = *(*v1 + 536);
  v6 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_1DB4455B0;
  }

  else
  {
    v4 = sub_1DB4454D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4454D4()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  sub_1DB4662E0(v0[66], "Perform JetPack Request");

  (*(v3 + 8))(v1, v4);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB4455B0()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  sub_1DB4662E0(v0[66], "Perform JetPack Request");

  (*(v3 + 8))(v1, v4);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v6 = v0[1];
  v7 = v0[69];

  return v6();
}

uint64_t sub_1DB44568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[44] = a7;
  v8[45] = v7;
  v8[42] = a3;
  v8[43] = a6;
  v8[40] = a1;
  v8[41] = a2;
  v11 = *(a6 - 8);
  v8[46] = v11;
  v8[47] = *(v11 + 64);
  v8[48] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[49] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[50] = v13;
  v8[51] = *(v13 + 64);
  v8[52] = swift_task_alloc();
  v14 = sub_1DB50A230();
  v8[53] = v14;
  v15 = *(v14 - 8);
  v8[54] = v15;
  v16 = *(v15 + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  sub_1DB30BE90(a4, (v8 + 2));
  sub_1DB30BE90(a5, (v8 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB44586C, 0, 0);
}

uint64_t sub_1DB44586C()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 448);
  v2 = sub_1DB50A270();
  __swift_project_value_buffer(v2, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v5 = *(v0 + 448);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "Perform JetPack Request", "", v6, 2u);
    MEMORY[0x1E1288220](v6, -1, -1);
  }

  v9 = *(v0 + 440);
  v8 = *(v0 + 448);
  v10 = *(v0 + 424);
  v11 = *(v0 + 432);

  (*(v11 + 16))(v9, v8, v10);
  v12 = sub_1DB50A2C0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 456) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 392);
  v15 = *(v0 + 400);
  v17 = *(v0 + 328);
  sub_1DB50BEB0();
  v53 = *(v0 + 208);
  v54 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  v55 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v19._object = 0x80000001DB52F170;
  v19._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v0 + 280) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  v52 = *(v15 + 16);
  v52(boxed_opaque_existential_0, v17, v16);
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v21 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1DB301BC0(0, *(v55 + 2) + 1, 1, v55);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
  }

  v24 = *(v0 + 416);
  v25 = *(v0 + 400);
  v26 = *(v0 + 384);
  v49 = *(v0 + 408);
  v27 = *(v0 + 368);
  v50 = *(v0 + 352);
  v51 = *(v0 + 360);
  v48 = *(v0 + 344);
  v28 = *(v0 + 328);
  v46 = *(v0 + 392);
  v47 = *(v0 + 336);
  *(v21 + 2) = v23 + 1;
  v29 = &v21[40 * v23];
  v30 = *(v0 + 216);
  v31 = *(v0 + 232);
  v29[64] = *(v0 + 248);
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  *(v18 + 32) = v21;
  Logger.info(_:)(v18, v54, v53);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB30C4B8(v0 + 16, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  v52(v24, v28, v46);
  (*(v27 + 16))(v26, v47, v48);
  v33 = (*(v25 + 80) + 112) & ~*(v25 + 80);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v27 + 80) + v34 + 8) & ~*(v27 + 80);
  v36 = swift_allocObject();
  *(v0 + 464) = v36;
  *(v36 + 16) = v48;
  *(v36 + 24) = v50;
  v37 = *(v0 + 144);
  *(v36 + 64) = *(v0 + 128);
  *(v36 + 80) = v37;
  *(v36 + 96) = *(v0 + 160);
  v38 = *(v0 + 112);
  *(v36 + 32) = *(v0 + 96);
  *(v36 + 48) = v38;
  (*(v25 + 32))(v36 + v33, v24, v46);
  *(v36 + v34) = v51;
  (*(v27 + 32))(v36 + v35, v26, v48);

  v39 = swift_task_alloc();
  *(v0 + 472) = v39;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v39 = v0;
  v39[1] = sub_1DB445DDC;
  v41 = *(v0 + 392);
  v42 = *(v0 + 360);
  v43 = *(v0 + 320);
  v44 = *(v0 + 328);

  return sub_1DB447820(v43, v44, &unk_1DB51CC20, v36, v41, AssociatedConformanceWitness);
}

uint64_t sub_1DB445DDC()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_1DB445FE4;
  }

  else
  {
    v5 = *(v2 + 464);

    v4 = sub_1DB445EF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB445EF8()
{
  v1 = v0[56];
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[48];
  sub_1DB4662E0(v0[57], "Perform JetPack Request");

  (*(v3 + 8))(v1, v4);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB445FE4()
{
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[53];
  v6 = v0[54];
  v7 = v0[52];
  v8 = v0[48];

  sub_1DB4662E0(v2, "Perform JetPack Request");

  (*(v6 + 8))(v3, v5);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v9 = v0[1];
  v10 = v0[60];

  return v9();
}

uint64_t JetPackAssetSession.jetPack(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4460FC, 0, 0);
}

uint64_t sub_1DB4460FC()
{
  v1 = v0[3];
  if (sub_1DB509B50())
  {
    v2 = v0[3];
    v3 = sub_1DB509C30();
    v5 = v4;
    v0[5] = v4;
    sub_1DB509CA0();
    sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
    v6 = sub_1DB50B8F0();
    v8 = v7;
    v0[6] = v7;
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_1DB4462A8;
    v10 = v0[4];
    v11 = v0[2];

    return sub_1DB443368(v11, v3, v5, v6, v8);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_1DB46955C;
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return sub_1DB4463F0(v16, v14);
  }
}

uint64_t sub_1DB4462A8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4695DC, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1DB4463F0(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for URLJetPackAssetRequest();
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v3[38] = *(v5 + 64);
  v3[39] = swift_task_alloc();
  v6 = sub_1DB50A230();
  v3[40] = v6;
  v7 = *(v6 - 8);
  v3[41] = v7;
  v8 = *(v7 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB446524, 0, 0);
}

uint64_t sub_1DB446524()
{
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = sub_1DB50A270();
  __swift_project_value_buffer(v2, qword_1EE30E178);
  sub_1DB50A250();
  sub_1DB50A200();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v5 = *(v0 + 344);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "Perform JetPack Asset Daemon Request", "", v6, 2u);
    MEMORY[0x1E1288220](v6, -1, -1);
  }

  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v10 = *(v0 + 320);
  v11 = *(v0 + 328);

  (*(v11 + 16))(v9, v8, v10);
  v12 = sub_1DB50A2C0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 352) = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 272);
  sub_1DB50BEB0();
  v48 = *(v0 + 48);
  v49 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  v50 = sub_1DB301BC0(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0xD00000000000002FLL;
  v17._object = 0x80000001DB52F500;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = sub_1DB509CA0();
  *(v0 + 160) = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v15, v18);
  sub_1DB30C4B8(v0 + 136, v0 + 168, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_1DB30C2D8(v0 + 168, v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 88) = 0;
  v20 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1DB301BC0(0, *(v50 + 2) + 1, 1, v50);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
  }

  v23 = *(v0 + 288);
  v24 = *(v0 + 272);
  *(v20 + 2) = v22 + 1;
  v25 = &v20[40 * v22];
  v26 = *(v0 + 56);
  v27 = *(v0 + 72);
  v25[64] = *(v0 + 88);
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v28._object = 0x80000001DB52F530;
  v28._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  v29 = *(v24 + *(v23 + 20));
  *(v0 + 224) = &type metadata for JetPackAssetRequestSourcePolicy;
  *(v0 + 200) = v29;
  sub_1DB30C4B8(v0 + 200, v0 + 232, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1DB30C2D8(v0 + 232, v0 + 96, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
  }

  v31 = *(v20 + 2);
  v30 = *(v20 + 3);
  if (v31 >= v30 >> 1)
  {
    v20 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v20);
  }

  v32 = *(v0 + 304);
  v33 = *(v0 + 312);
  v34 = *(v0 + 296);
  v36 = *(v0 + 272);
  v35 = *(v0 + 280);
  *(v20 + 2) = v31 + 1;
  v37 = &v20[40 * v31];
  v38 = *(v0 + 96);
  v39 = *(v0 + 112);
  v37[64] = *(v0 + 128);
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  sub_1DB30623C(v0 + 200, &qword_1ECC426B0, &qword_1DB50EEB0);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  *(v16 + 32) = v20;
  Logger.info(_:)(v16, v49, v48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB468D18(v36, v33, type metadata accessor for URLJetPackAssetRequest);
  v41 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v42 = swift_allocObject();
  *(v0 + 360) = v42;
  *(v42 + 16) = v35;
  sub_1DB468D80(v33, v42 + v41, type metadata accessor for URLJetPackAssetRequest);

  v43 = swift_task_alloc();
  *(v0 + 368) = v43;
  *v43 = v0;
  v43[1] = sub_1DB446AD8;
  v44 = *(v0 + 272);
  v45 = *(v0 + 280);
  v46 = *(v0 + 264);

  return sub_1DB446F3C(v46, v44, &unk_1DB51CC58, v42);
}

uint64_t sub_1DB446AD8()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_1DB446CB4;
  }

  else
  {
    v5 = *(v2 + 360);

    v4 = sub_1DB446BF4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB446BF4()
{
  v1 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  sub_1DB4662E0(v0[44], "Perform JetPack Asset Daemon Request");

  (*(v3 + 8))(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB446CB4()
{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[39];

  sub_1DB4662E0(v2, "Perform JetPack Asset Daemon Request");

  (*(v6 + 8))(v3, v5);

  v8 = v0[1];
  v9 = v0[47];

  return v8();
}

uint64_t sub_1DB446D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB446DA0, 0, 0);
}

uint64_t sub_1DB446DA0()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 104), *(v0[3] + 128));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DB446E48;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1DB486FD0(v3, v2);
}

uint64_t sub_1DB446E48()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB446F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB446F64, 0, 0);
}

uint64_t sub_1DB446F64()
{
  v13 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + 16);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1DB468C40((v2 + 16), &v12);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v12;
  *(v0 + 64) = v12;

  v5 = *(MEMORY[0x1E69E86A8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = type metadata accessor for JetPackAsset(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  *v6 = v0;
  v6[1] = sub_1DB4470B4;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v9, v4, v7, v8, v10);
}

uint64_t sub_1DB4470B4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1DB4472B0;
  }

  else
  {
    v3 = sub_1DB4471C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DB4471C8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock(v2 + 6);
  sub_1DB4695A4(&v2[4]);
  if (v1)
  {
    v4 = (v0[7] + 24);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = v0[8];
    os_unfair_lock_unlock((v0[7] + 24));

    v6 = v0[1];

    v6();
  }
}

uint64_t sub_1DB4472B0()
{
  v1 = v0[7];
  v2 = v0[3];
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v1 + 6);
  sub_1DB468C74(&v1[4]);
  v3 = v0[8];
  os_unfair_lock_unlock((v0[7] + 24));

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1DB44738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1DB4473C0, 0, 0);
}

uint64_t sub_1DB4473C0()
{
  v13 = v0;
  v1 = *(*(v0 + 160) + 16);
  *(v0 + 168) = v1;
  v2 = swift_task_alloc();
  v3 = *(v0 + 144);
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v3;
  os_unfair_lock_lock((v1 + 24));
  sub_1DB4674D4((v1 + 16), &v12);
  os_unfair_lock_unlock((v1 + 24));
  v4 = v12;
  *(v0 + 176) = v12;

  v5 = *(MEMORY[0x1E69E86A8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = type metadata accessor for JetPackAsset(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  *v6 = v0;
  v6[1] = sub_1DB447510;
  v9 = *(v0 + 136);
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v9, v4, v7, v8, v10);
}

uint64_t sub_1DB447510()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1DB447728;
  }

  else
  {
    v3 = sub_1DB447624;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DB447624()
{
  *(v0 + 96) = *(v0 + 16);
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  *(swift_task_alloc() + 16) = v0 + 96;
  os_unfair_lock_lock(v2 + 6);
  sub_1DB46958C(&v2[4]);
  if (v1)
  {
    v5 = (*(v0 + 168) + 24);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    v6 = *(v0 + 176);
    os_unfair_lock_unlock((*(v0 + 168) + 24));

    v7 = *(v0 + 8);

    v7();
  }
}

uint64_t sub_1DB447728()
{
  *(v0 + 56) = *(v0 + 16);
  v1 = *(v0 + 168);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v0 + 72) = *(v0 + 32);
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(swift_task_alloc() + 16) = v0 + 56;
  os_unfair_lock_lock(v1 + 6);
  sub_1DB467524(&v1[4]);
  v4 = *(v0 + 176);
  os_unfair_lock_unlock((*(v0 + 168) + 24));

  v5 = *(v0 + 8);
  v6 = *(v0 + 192);

  return v5();
}

uint64_t sub_1DB447820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB44784C, 0, 0);
}

uint64_t sub_1DB44784C()
{
  v14 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 64) + 16);
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1DB46765C((v2 + 16), &v13);
  os_unfair_lock_unlock((v2 + 24));
  v5 = v13;
  *(v0 + 72) = v13;

  v6 = *(MEMORY[0x1E69E86A8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = type metadata accessor for JetPackAsset(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  *v7 = v0;
  v7[1] = sub_1DB4479A0;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v10, v5, v8, v9, v11);
}

uint64_t sub_1DB4479A0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1DB447B28;
  }

  else
  {
    v3 = sub_1DB447AB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB447AB4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  sub_1DB46230C(v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB447B28()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  sub_1DB46230C(v0[8]);

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t sub_1DB447B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB447BC0, 0, 0);
}

uint64_t sub_1DB447BC0()
{
  sub_1DB466224(*(v0 + 432) + 24, v0 + 176);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 240);
    *(v0 + 144) = *(v0 + 224);
    *(v0 + 160) = v1;
    v2 = *(v0 + 208);
    *(v0 + 112) = *(v0 + 192);
    *(v0 + 128) = v2;
    *(v0 + 96) = *(v0 + 176);
    if (*(v0 + 120))
    {
      v3 = *(v0 + 144);
      *(v0 + 48) = *(v0 + 128);
      *(v0 + 64) = v3;
      *(v0 + 80) = *(v0 + 160);
      v4 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 96);
      *(v0 + 32) = v4;
      sub_1DB30C4B8(v0 + 16, v0 + 256, &qword_1ECC45910, &qword_1DB51C4A0);
      v5 = swift_task_alloc();
      *(v0 + 440) = v5;
      *v5 = v0;
      v5[1] = sub_1DB447EB0;
      v6 = *(v0 + 424);
      v7 = *(v0 + 432);
      v8 = *(v0 + 408);
      v9 = *(v0 + 416);

      return sub_1DB444D44(v8, v9, v6, v0 + 256, v0 + 296);
    }
  }

  else
  {
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB46625C(v0 + 176);
  }

  sub_1DB30623C(v0 + 96, &qword_1ECC45918, &qword_1DB51C4F0);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v12 = *(v0 + 360);
  v11 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  *(v0 + 400) = MEMORY[0x1E69E6158];
  *(v0 + 376) = 0xD000000000000094;
  *(v0 + 384) = 0x80000001DB52EF60;
  *(v14 + 48) = 0u;
  *(v14 + 32) = 0u;
  sub_1DB30C2D8(v0 + 376, v14 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v14 + 64) = 0;
  *(v13 + 32) = v14;
  Logger.error(_:)(v13, v12, v11);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  sub_1DB46628C();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DB447EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v6 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_1DB447FD4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 296));
    __swift_destroy_boxed_opaque_existential_0((v2 + 256));
    v4 = sub_1DB4695E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB447FD4()
{
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v1 = v0[56];
  v2 = v0[1];

  return v2();
}

uint64_t JetPackAssetSession.jetPack<A>(for:fetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB448080, 0, 0);
}

uint64_t sub_1DB448080()
{
  sub_1DB466224(*(v0 + 448) + 24, v0 + 176);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 240);
    *(v0 + 144) = *(v0 + 224);
    *(v0 + 160) = v1;
    v2 = *(v0 + 208);
    *(v0 + 112) = *(v0 + 192);
    *(v0 + 128) = v2;
    *(v0 + 96) = *(v0 + 176);
    if (*(v0 + 120))
    {
      v3 = *(v0 + 144);
      *(v0 + 48) = *(v0 + 128);
      *(v0 + 64) = v3;
      *(v0 + 80) = *(v0 + 160);
      v4 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 96);
      *(v0 + 32) = v4;
      sub_1DB30C4B8(v0 + 16, v0 + 256, &qword_1ECC45910, &qword_1DB51C4A0);
      v5 = swift_task_alloc();
      *(v0 + 456) = v5;
      *v5 = v0;
      v5[1] = sub_1DB448374;
      v6 = *(v0 + 440);
      v7 = *(v0 + 448);
      v8 = *(v0 + 424);
      v9 = *(v0 + 432);
      v10 = *(v0 + 408);
      v11 = *(v0 + 416);

      return sub_1DB44568C(v10, v11, v8, v0 + 256, v0 + 296, v9, v6);
    }
  }

  else
  {
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB46625C(v0 + 176);
  }

  sub_1DB30623C(v0 + 96, &qword_1ECC45918, &qword_1DB51C4F0);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  *(v0 + 400) = MEMORY[0x1E69E6158];
  *(v0 + 376) = 0xD000000000000094;
  *(v0 + 384) = 0x80000001DB52EF60;
  *(v16 + 48) = 0u;
  *(v16 + 32) = 0u;
  sub_1DB30C2D8(v0 + 376, v16 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v16 + 64) = 0;
  *(v15 + 32) = v16;
  Logger.error(_:)(v15, v14, v13);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  sub_1DB46628C();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DB448374()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v6 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_1DB448498;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 296));
    __swift_destroy_boxed_opaque_existential_0((v2 + 256));
    v4 = sub_1DB4695E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB448498()
{
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v1 = v0[58];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB44851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB448544, 0, 0);
}

uint64_t sub_1DB448544()
{
  sub_1DB50AC80();
  v11 = *(v0 + 24);
  v1 = *(v11 + 24);
  v2 = *(v11 + 32);
  v10 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v11, v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v11;
  *(v3 + 32) = v10;
  v4 = *(v2 + 64);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for JetPackAsset(0);
  *v6 = v0;
  v6[1] = sub_1DB448710;
  v8 = *(v0 + 16);

  return v12(v8, &unk_1DB51CC88, v3, v7, v1, v2);
}

uint64_t sub_1DB448710()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB44884C, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DB44884C()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4488B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4488DC, 0, 0);
}

uint64_t sub_1DB4488DC()
{
  sub_1DB50AC80();
  v11 = *(v0 + 24);
  v12 = *(v0 + 56);
  v1 = *(v11 + 24);
  v2 = *(v11 + 32);
  v10 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v11, v1);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v3[1] = v12;
  v3[2] = v11;
  v3[3] = v10;
  v4 = *(v2 + 64);
  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = type metadata accessor for JetPackAsset(0);
  *v6 = v0;
  v6[1] = sub_1DB448AB4;
  v8 = *(v0 + 16);

  return (v13)(v8, &unk_1DB51CC30, v3, v7, v1, v2);
}

uint64_t sub_1DB448AB4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB448BF0, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DB448BF0()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB448C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[193] = a5;
  v5[192] = a4;
  v5[191] = a3;
  v5[190] = a2;
  v5[189] = a1;
  v6 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v5[194] = v6;
  v5[195] = *(v6 + 64);
  v5[196] = swift_task_alloc();
  v7 = type metadata accessor for URLJetPackAssetRequest();
  v5[197] = v7;
  v8 = *(v7 - 8);
  v5[198] = v8;
  v5[199] = *(v8 + 64);
  v5[200] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750) - 8) + 64) + 15;
  v5[201] = swift_task_alloc();
  v10 = type metadata accessor for JetPackAsset(0);
  v5[202] = v10;
  v11 = *(v10 - 8);
  v5[203] = v11;
  v12 = *(v11 + 64) + 15;
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v5[206] = swift_task_alloc();
  v5[207] = swift_task_alloc();
  v5[208] = swift_task_alloc();
  v5[209] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v5[210] = swift_task_alloc();
  v5[211] = swift_task_alloc();
  v5[212] = swift_task_alloc();
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v5[215] = swift_task_alloc();
  v5[216] = swift_task_alloc();
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB448EF4, 0, 0);
}

uint64_t sub_1DB448EF4()
{
  v1 = v0[218];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[191];
  v5 = v0[190];
  v6 = *(v2 + 56);
  v0[219] = v6;
  v0[220] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  v0[221] = sub_1DB509CA0();
  v0[222] = sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
  v9 = sub_1DB50B8F0();
  v11 = v10;
  v0[223] = v10;
  v12 = *(v8 + 16);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[224] = v14;
  *v14 = v0;
  v14[1] = sub_1DB4490D0;
  v15 = v0[217];

  return v17(v15, v9, v11, v7, v8);
}

uint64_t sub_1DB4490D0()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v7 = *v1;
  *(*v1 + 1800) = v0;

  if (v0)
  {
    v4 = sub_1DB44AA00;
  }

  else
  {
    v5 = *(v2 + 1784);

    v4 = sub_1DB4491EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DB4491EC()
{
  v210 = v0;
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  sub_1DB30C2D8(*(v0 + 1736), v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30C4B8(v1, v2, &qword_1ECC46F20, qword_1DB5105D0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1728);
  if (v5 == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC46F20, qword_1DB5105D0);
    v177 = *(v0 + 1800);
  }

  else
  {
    sub_1DB468D80(v6, *(v0 + 1672), type metadata accessor for JetPackAsset);
    if (qword_1EE30E1A8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 1800);
    v13 = *(v0 + 1776);
    v14 = *(v0 + 1768);
    v15 = *(v0 + 1528);
    v16 = qword_1EE312DD8;
    *(v0 + 1472) = sub_1DB50B8F0();
    *(v0 + 1480) = v17;
    v18 = *(v16 + 16);
    *(swift_task_alloc() + 16) = v0 + 1472;
    os_unfair_lock_lock((v18 + 24));
    sub_1DB469568((v18 + 16), v209);
    os_unfair_lock_unlock((v18 + 24));
    if (v12)
    {
      return;
    }

    v67 = v209[0];

    if (v67)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v204 = *(v0 + 1760);
      v198 = *(v0 + 1752);
      v68 = *(v0 + 1744);
      v69 = *(v0 + 1616);
      v70 = *(v0 + 1520);
      sub_1DB50BEB0();
      v71 = *(v0 + 280);
      v72 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1DB50EE90;
      *(v0 + 1368) = MEMORY[0x1E69E6158];
      *(v0 + 1344) = 0xD000000000000054;
      *(v0 + 1352) = 0x80000001DB52F340;
      *(v74 + 48) = 0u;
      *(v74 + 32) = 0u;
      sub_1DB30C2D8(v0 + 1344, v74 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v74 + 64) = 0;
      *(v73 + 32) = v74;
      Logger.error(_:)(v73, v71, v72);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      sub_1DB30623C(v68, &qword_1ECC46F20, qword_1DB5105D0);
      v198(v68, 1, 1, v69);
      v75 = v70[3];
      v76 = v70[4];
      __swift_project_boxed_opaque_existential_1(v70, v75);
      v77 = *(v76 + 24);
      v205 = (v77 + *v77);
      v78 = v77[1];
      v79 = swift_task_alloc();
      *(v0 + 1808) = v79;
      *v79 = v0;
      v79[1] = sub_1DB44BFEC;
      v80 = *(v0 + 1672);

      v205(v80, v75, v76);
      return;
    }

    sub_1DB467374(*(v0 + 1672), type metadata accessor for JetPackAsset);
    v177 = 0;
  }

  v7 = *(v0 + 1744);
  v8 = *(v0 + 1624);
  v9 = *(v0 + 1616);
  v10 = *(v8 + 48);
  *(v0 + 1824) = v10;
  *(v0 + 1832) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v7, 1, v9))
  {
    v11 = 0;
  }

  else
  {
    v19 = v7 + *(v9 + 20);
    v11 = *(v19 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v171 = v11;
  *(v0 + 689) = v11 & 1;
  v20 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v7, v20, &qword_1ECC46F20, qword_1DB5105D0);
  v197 = v10;
  if (v10(v20, 1, v9) == 1)
  {
    v21 = 4;
  }

  else
  {
    v22 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v22, type metadata accessor for JetPackAsset);
    v23 = *(v0 + 360);
    v24 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v23);
    v25 = *(v24 + 8);
    v26 = v24;
    v10 = v197;
    v25(v209, v22, v23, v26);
    v21 = LOBYTE(v209[0]);
    sub_1DB467374(v22, type metadata accessor for JetPackAsset);
  }

  v203 = v21;
  *(v0 + 690) = v21;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v27 = (v0 + 776);
  v28 = *(v0 + 1744);
  v29 = *(v0 + 1712);
  v30 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v186 = *(v0 + 408);
  v191 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v191);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DB50EE90;
  v209[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1DB30C4B8(v28, v29, &qword_1ECC46F20, qword_1DB5105D0);
  v33 = v10(v29, 1, v30);
  v34 = *(v0 + 1712);
  if (v33 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v34, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v27 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v36 = v209[0];
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

  v39 = (v0 + 856);
  v40 = (v0 + 1056);
  *(v36 + 2) = v38 + 1;
  v41 = &v36[40 * v38];
  v42 = *v27;
  v43 = *(v0 + 792);
  v41[64] = *(v0 + 808);
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v209[0] = v36;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v44._countAndFlagsBits = 0x3D73757461747320;
  v44._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  if (v203 == 4)
  {
    v45 = 0;
    *v40 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v40 = v203;
    v45 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v45;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v39 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v46 = v209[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1DB301BC0(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1DB301BC0((v47 > 1), v48 + 1, 1, v46);
  }

  v49 = *(v0 + 1576);
  v50 = *(v0 + 1528);
  *(v46 + 2) = v48 + 1;
  v51 = &v46[40 * v48];
  v52 = *v39;
  v53 = *(v0 + 872);
  v51[64] = *(v0 + 888);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  v209[0] = v46;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v31 + 32) = v209[0];
  Logger.info(_:)(v31, v191, v186);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v55 = *(v49 + 20);
  LOBYTE(v209[0]) = *(v50 + v55);
  v56 = sub_1DB42E620();
  v57 = v197;
  if (v203 != 4 && (v56 & 1) != 0)
  {
    v58 = *(v0 + 1744);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1616);
    v61 = swift_allocBox();
    v63 = v62;
    sub_1DB30C4B8(v58, v59, &qword_1ECC46F20, qword_1DB5105D0);
    v64 = v59;
    v57 = v197;
    v65 = v197(v64, 1, v60);
    v66 = *(v0 + 1704);
    if (v65 == 1)
    {
      sub_1DB30623C(v66, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      v81 = v61;
      sub_1DB468D80(v66, v63, type metadata accessor for JetPackAsset);
      if (v203 < 2 && (v171 & 1) == 0)
      {
        v201 = v63;
        sub_1DB50BEB0();
        v144 = *(v0 + 320);
        v194 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v144);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v146 + 48) = 0u;
        *(v146 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v146 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v146 + 64) = 0;
        *(v145 + 32) = v146;
        Logger.info(_:)(v145, v144, v194);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v203 - 1 < 2)
        {
          LOBYTE(v209[0]) = *(v50 + v55);
          if (sub_1DB42E724())
          {
            v147 = *(v0 + 1608);
            v207 = v147;
            v148 = *(v0 + 1600);
            v149 = *(v0 + 1568);
            v189 = *(v0 + 1592);
            v195 = *(v0 + 1560);
            v181 = *(v0 + 1584);
            v184 = *(v0 + 1552);
            v150 = *(v0 + 1544);
            v151 = *(v0 + 1536);
            v152 = *(v0 + 1528);
            v153 = *(v0 + 1520);
            *(v201 + *(*(v0 + 1616) + 40)) = 1;
            v154 = sub_1DB50ABA0();
            (*(*(v154 - 8) + 56))(v147, 1, 1, v154);
            sub_1DB468D18(v152, v148, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v150, v149, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v153, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v155 = (*(v181 + 80) + 40) & ~*(v181 + 80);
            v156 = (v189 + *(v184 + 80) + v155) & ~*(v184 + 80);
            v157 = (v195 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
            v158 = swift_allocObject();
            v158[2] = 0;
            v158[3] = 0;
            v158[4] = v151;
            sub_1DB468D80(v148, v158 + v155, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v149, v158 + v156, type metadata accessor for URLJetPackAssetFetcher);
            *(v158 + v157) = v81;
            v159 = (v158 + ((v157 + 15) & 0xFFFFFFFFFFFFFFF8));
            v160 = *(v0 + 80);
            v159[3] = *(v0 + 64);
            v159[4] = v160;
            v161 = *(v0 + 48);
            v159[1] = *(v0 + 32);
            v159[2] = v161;
            *v159 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v207, &unk_1DB51CC98, v158);
          }
        }

        v162 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v201, v162, type metadata accessor for JetPackAsset);

        goto LABEL_79;
      }
    }
  }

  LOBYTE(v209[0]) = *(v50 + v55);
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v83 = 0;
    swift_willThrow();
LABEL_63:
    v122 = *(v0 + 1736);
    v123 = *(v0 + 1728);
    v124 = *(v0 + 1720);
    v125 = *(v0 + 1712);
    v126 = *(v0 + 1704);
    v127 = *(v0 + 1696);
    v128 = *(v0 + 1688);
    v129 = *(v0 + 1680);
    v172 = *(v0 + 1672);
    v173 = *(v0 + 1664);
    v175 = *(v0 + 1656);
    v178 = *(v0 + 1648);
    v180 = *(v0 + 1640);
    v183 = *(v0 + 1632);
    v188 = *(v0 + 1608);
    v193 = *(v0 + 1600);
    v200 = *(v0 + 1568);
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v130 = *(v0 + 8);
LABEL_64:

    v130();
    return;
  }

  if (v203 == 3)
  {
    v82 = *(v0 + 1760);
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
  }

  sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB30BE90(v0 + 96, v0 + 176);
  sub_1DB30BE90(v0 + 136, v0 + 216);
  sub_1DB50AC80();
  if (v177)
  {
    v84 = *(v0 + 1832);
    v85 = *(v0 + 1824);
    v86 = *(v0 + 1744);
    v87 = *(v0 + 1680);
    v88 = *(v0 + 1616);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    sub_1DB30C4B8(v86, v87, &qword_1ECC46F20, qword_1DB5105D0);
    if (v85(v87, 1, v88) == 1)
    {
      sub_1DB30623C(*(v0 + 1680), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_62:
      v121 = *(v0 + 1696);
      swift_willThrow();
      sub_1DB30623C(v121, &qword_1ECC46F20, qword_1DB5105D0);
      goto LABEL_63;
    }

    v98 = *(v0 + 690);
    sub_1DB468D80(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
    if (v98 == 4 || *(v0 + 690) || *(v0 + 689) != 1)
    {
      sub_1DB467374(*(v0 + 1632), type metadata accessor for JetPackAsset);
      goto LABEL_62;
    }

    v99 = *(v0 + 1848);
    v100 = *(v0 + 1840);
    sub_1DB50BEB0();
    v101 = *(v0 + 560);
    v102 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v101);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1DB50EE90;
    v209[0] = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v104._countAndFlagsBits = 0xD000000000000025;
    v104._object = 0x80000001DB52F200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v104);
    swift_getErrorValue();
    v105 = *(v0 + 1376);
    v106 = *(v0 + 1384);
    *(v0 + 952) = v106;
    v107 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
    (*(*(v106 - 8) + 16))(v107, v105, v106);
    sub_1DB30C4B8(v0 + 928, v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    sub_1DB30C2D8(v0 + 896, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 688) = 0;
    v108 = v209[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_1DB301BC0(0, *(v108 + 2) + 1, 1, v108);
    }

    v110 = *(v108 + 2);
    v109 = *(v108 + 3);
    if (v110 >= v109 >> 1)
    {
      v108 = sub_1DB301BC0((v109 > 1), v110 + 1, 1, v108);
    }

    v111 = *(v0 + 1848);
    v112 = *(v0 + 1840);
    v199 = *(v0 + 1632);
    v187 = *(v0 + 1696);
    v192 = *(v0 + 1512);
    *(v108 + 2) = v110 + 1;
    v113 = &v108[40 * v110];
    v114 = *(v0 + 656);
    v115 = *(v0 + 672);
    v113[64] = *(v0 + 688);
    *(v113 + 2) = v114;
    *(v113 + 3) = v115;
    v209[0] = v108;
    sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
    v116._countAndFlagsBits = 0;
    v116._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v116);
    *(v103 + 32) = v209[0];
    Logger.error(_:)(v103, v101, v102);

    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    sub_1DB50BEB0();
    v117 = *(v0 + 600);
    v118 = *(v0 + 608);
    __swift_project_boxed_opaque_existential_1((v0 + 576), v117);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1DB50EE90;
    *(v0 + 984) = MEMORY[0x1E69E6158];
    *(v0 + 960) = 0xD000000000000075;
    *(v0 + 968) = 0x80000001DB52F230;
    *(v120 + 48) = 0u;
    *(v120 + 32) = 0u;
    sub_1DB30C2D8(v0 + 960, v120 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v120 + 64) = 0;
    *(v119 + 32) = v120;
    Logger.warning(_:)(v119, v117, v118);

    sub_1DB30623C(v187, &qword_1ECC46F20, qword_1DB5105D0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 576));
    sub_1DB468D80(v199, v192, type metadata accessor for JetPackAsset);
LABEL_79:
    v163 = *(v0 + 1736);
    v164 = *(v0 + 1728);
    v165 = *(v0 + 1720);
    v166 = *(v0 + 1712);
    v167 = *(v0 + 1704);
    v168 = *(v0 + 1696);
    v169 = *(v0 + 1688);
    v170 = *(v0 + 1680);
    v174 = *(v0 + 1672);
    v176 = *(v0 + 1664);
    v179 = *(v0 + 1656);
    v182 = *(v0 + 1648);
    v185 = *(v0 + 1640);
    v190 = *(v0 + 1632);
    v196 = *(v0 + 1608);
    v202 = *(v0 + 1600);
    v208 = *(v0 + 1568);
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v130 = *(v0 + 8);
    goto LABEL_64;
  }

  v89 = *(v0 + 1696);
  v90 = *(v0 + 1688);
  v91 = *(v0 + 1616);
  sub_1DB50BEB0();
  v92 = *(v0 + 520);
  v206 = *(v0 + 528);
  v93 = v57;
  __swift_project_boxed_opaque_existential_1((v0 + 496), v92);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1DB50EE90;
  v209[0] = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v95._countAndFlagsBits = 0xD000000000000032;
  v95._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v95);
  sub_1DB30C4B8(v89, v90, &qword_1ECC46F20, qword_1DB5105D0);
  v96 = v93(v90, 1, v91);
  v97 = *(v0 + 1688);
  if (v96 == 1)
  {
    sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v131 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1DB468D80(v97, v131, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 848) = 0;
  v132 = v209[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v132 = sub_1DB301BC0(0, *(v132 + 2) + 1, 1, v132);
  }

  v134 = *(v132 + 2);
  v133 = *(v132 + 3);
  if (v134 >= v133 >> 1)
  {
    v132 = sub_1DB301BC0((v133 > 1), v134 + 1, 1, v132);
  }

  *(v132 + 2) = v134 + 1;
  v135 = &v132[40 * v134];
  v136 = *(v0 + 816);
  v137 = *(v0 + 832);
  v135[64] = *(v0 + 848);
  *(v135 + 2) = v136;
  *(v135 + 3) = v137;
  v209[0] = v132;
  sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
  v138._countAndFlagsBits = 0;
  v138._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v138);
  *(v94 + 32) = v209[0];
  Logger.info(_:)(v94, v92, v206);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v139 = swift_task_alloc();
  *(v0 + 1856) = v139;
  *v139 = v0;
  v139[1] = sub_1DB44EB00;
  v140 = *(v0 + 1696);
  v141 = *(v0 + 1648);
  v142 = *(v0 + 1544);
  v143 = *(v0 + 1528);

  sub_1DB41BE7C(v141, v143, v140, v0 + 456);
}

uint64_t sub_1DB44AA00()
{
  v158 = v0;
  v1 = (v0 + 696);
  v2 = *(v0 + 1784);

  v3 = *(v0 + 1800);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v4 = *(v0 + 640);
  v5 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v157 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  v7._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 1424);
  v9 = *(v0 + 1432);
  *(v0 + 1336) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1312));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_1DB30C4B8(v0 + 1312, v0 + 1216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 1216, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v11 = v157;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v157 + 2) + 1, 1, v157);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = *v1;
  v16 = *(v0 + 712);
  v14[64] = *(v0 + 728);
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v157 = v11;
  sub_1DB30623C(v0 + 1312, &qword_1ECC426B0, &qword_1DB50EEB0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v6 + 32) = v11;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v18 = *(v0 + 1744);
  v19 = *(v0 + 1624);
  v20 = *(v0 + 1616);
  v21 = *(v19 + 48);
  *(v0 + 1824) = v21;
  *(v0 + 1832) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v149 = v21;
  if (v21(v18, 1, v20))
  {
    v22 = 0;
  }

  else
  {
    v23 = v18 + *(v20 + 20);
    v22 = *(v23 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v129 = v22;
  *(v0 + 689) = v22 & 1;
  v24 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v18, v24, &qword_1ECC46F20, qword_1DB5105D0);
  if (v149(v24, 1, v20) == 1)
  {
    v25 = 4;
  }

  else
  {
    v26 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v26, type metadata accessor for JetPackAsset);
    v27 = *(v0 + 360);
    v28 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v27);
    (*(v28 + 8))(&v157, v26, v27, v28);
    v25 = v157;
    sub_1DB467374(v26, type metadata accessor for JetPackAsset);
  }

  *(v0 + 690) = v25;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v29 = (v0 + 776);
  v30 = *(v0 + 1744);
  v31 = *(v0 + 1712);
  v32 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v139 = *(v0 + 400);
  v143 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v139);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1DB50EE90;
  v157 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v34._countAndFlagsBits = 0x7341646568636163;
  v34._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  sub_1DB30C4B8(v30, v31, &qword_1ECC46F20, qword_1DB5105D0);
  v35 = v149(v31, 1, v32);
  v36 = *(v0 + 1712);
  if (v35 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    v37 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v36, v37, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v29 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v38 = v157;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
  }

  v41 = (v0 + 856);
  v42 = (v0 + 1056);
  *(v38 + 2) = v40 + 1;
  v43 = &v38[40 * v40];
  v44 = *v29;
  v45 = *(v0 + 792);
  v43[64] = *(v0 + 808);
  *(v43 + 2) = v44;
  *(v43 + 3) = v45;
  v157 = v38;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v46._countAndFlagsBits = 0x3D73757461747320;
  v46._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  if (v25 == 4)
  {
    v47 = 0;
    *v42 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v42 = v25;
    v47 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v47;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v41 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v48 = v157;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_1DB301BC0(0, *(v48 + 2) + 1, 1, v48);
  }

  v50 = *(v48 + 2);
  v49 = *(v48 + 3);
  if (v50 >= v49 >> 1)
  {
    v48 = sub_1DB301BC0((v49 > 1), v50 + 1, 1, v48);
  }

  v51 = *(v0 + 1576);
  v52 = *(v0 + 1528);
  *(v48 + 2) = v50 + 1;
  v53 = &v48[40 * v50];
  v54 = *v41;
  v55 = *(v0 + 872);
  v53[64] = *(v0 + 888);
  *(v53 + 2) = v54;
  *(v53 + 3) = v55;
  v157 = v48;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v56);
  *(v33 + 32) = v157;
  Logger.info(_:)(v33, v139, v143);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v57 = *(v51 + 20);
  LOBYTE(v157) = *(v52 + v57);
  v58 = sub_1DB42E620();
  if (v25 != 4 && (v58 & 1) != 0)
  {
    v59 = *(v0 + 1744);
    v60 = *(v0 + 1704);
    v61 = *(v0 + 1616);
    v62 = swift_allocBox();
    v64 = v63;
    sub_1DB30C4B8(v59, v60, &qword_1ECC46F20, qword_1DB5105D0);
    v65 = v149(v60, 1, v61);
    v66 = *(v0 + 1704);
    if (v65 == 1)
    {
      sub_1DB30623C(v66, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v66, v64, type metadata accessor for JetPackAsset);
      if (v25 < 2 && (v129 & 1) == 0)
      {
        sub_1DB50BEB0();
        v101 = *(v0 + 320);
        v154 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v101);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v103 + 48) = 0u;
        *(v103 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v103 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v103 + 64) = 0;
        *(v102 + 32) = v103;
        Logger.info(_:)(v102, v101, v154);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v25 - 1 < 2)
        {
          LOBYTE(v157) = *(v52 + v57);
          if (sub_1DB42E724())
          {
            v104 = *(v0 + 1608);
            v105 = *(v0 + 1600);
            v106 = *(v0 + 1568);
            v137 = *(v0 + 1584);
            v141 = v106;
            v151 = *(v0 + 1560);
            v155 = v104;
            v144 = *(v0 + 1552);
            v147 = *(v0 + 1592);
            v107 = *(v0 + 1544);
            v108 = *(v0 + 1536);
            v109 = *(v0 + 1528);
            v110 = *(v0 + 1520);
            *(v64 + *(*(v0 + 1616) + 40)) = 1;
            v111 = sub_1DB50ABA0();
            (*(*(v111 - 8) + 56))(v104, 1, 1, v111);
            sub_1DB468D18(v109, v105, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v107, v106, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v110, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v112 = (*(v137 + 80) + 40) & ~*(v137 + 80);
            v113 = (v147 + v144[80] + v112) & ~v144[80];
            v114 = (v151 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
            v115 = swift_allocObject();
            v115[2] = 0;
            v115[3] = 0;
            v115[4] = v108;
            sub_1DB468D80(v105, v115 + v112, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v141, v115 + v113, type metadata accessor for URLJetPackAssetFetcher);
            *(v115 + v114) = v62;
            v116 = (v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8));
            v117 = *(v0 + 80);
            v116[3] = *(v0 + 64);
            v116[4] = v117;
            v118 = *(v0 + 48);
            v116[1] = *(v0 + 32);
            v116[2] = v118;
            *v116 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v155, &unk_1DB51CC98, v115);
          }
        }

        v119 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v64, v119, type metadata accessor for JetPackAsset);

        v120 = *(v0 + 1736);
        v121 = *(v0 + 1728);
        v122 = *(v0 + 1720);
        v123 = *(v0 + 1712);
        v124 = *(v0 + 1704);
        v125 = *(v0 + 1696);
        v126 = *(v0 + 1688);
        v127 = *(v0 + 1680);
        v131 = *(v0 + 1672);
        v133 = *(v0 + 1664);
        v135 = *(v0 + 1656);
        v138 = *(v0 + 1648);
        v142 = *(v0 + 1640);
        v145 = *(v0 + 1632);
        v148 = *(v0 + 1608);
        v152 = *(v0 + 1600);
        v156 = *(v0 + 1568);
        sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

        v86 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v157) = *(v52 + v57);
  if (sub_1DB42E724())
  {
    if (v25 == 3)
    {
      v67 = *(v0 + 1760);
      (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
    sub_1DB30BE90(v0 + 96, v0 + 176);
    sub_1DB30BE90(v0 + 136, v0 + 216);
    sub_1DB50AC80();
    v69 = *(v0 + 1696);
    v70 = *(v0 + 1688);
    v71 = *(v0 + 1616);
    sub_1DB50BEB0();
    v72 = *(v0 + 520);
    v73 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v72);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1DB50EE90;
    v157 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v75._countAndFlagsBits = 0xD000000000000032;
    v75._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v75);
    sub_1DB30C4B8(v69, v70, &qword_1ECC46F20, qword_1DB5105D0);
    v76 = v149(v70, 1, v71);
    v77 = *(v0 + 1688);
    if (v76 == 1)
    {
      sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1024) = 0u;
      *(v0 + 1040) = 0u;
    }

    else
    {
      *(v0 + 1048) = *(v0 + 1616);
      v88 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
      sub_1DB468D80(v77, v88, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 848) = 0;
    v89 = v157;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_1DB301BC0(0, *(v89 + 2) + 1, 1, v89);
    }

    v91 = *(v89 + 2);
    v90 = *(v89 + 3);
    if (v91 >= v90 >> 1)
    {
      v89 = sub_1DB301BC0((v90 > 1), v91 + 1, 1, v89);
    }

    *(v89 + 2) = v91 + 1;
    v92 = &v89[40 * v91];
    v93 = *(v0 + 816);
    v94 = *(v0 + 832);
    v92[64] = *(v0 + 848);
    *(v92 + 2) = v93;
    *(v92 + 3) = v94;
    v157 = v89;
    sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v95);
    *(v74 + 32) = v157;
    Logger.info(_:)(v74, v72, v73);

    __swift_destroy_boxed_opaque_existential_0((v0 + 496));
    *(v0 + 480) = &type metadata for SystemDateProvider;
    *(v0 + 488) = &protocol witness table for SystemDateProvider;
    v96 = swift_task_alloc();
    *(v0 + 1856) = v96;
    *v96 = v0;
    v96[1] = sub_1DB44EB00;
    v97 = *(v0 + 1696);
    v98 = *(v0 + 1648);
    v99 = *(v0 + 1544);
    v100 = *(v0 + 1528);

    return sub_1DB41BE7C(v98, v100, v97, v0 + 456);
  }

  sub_1DB46628C();
  swift_allocError();
  *v68 = 0;
  swift_willThrow();
  v78 = *(v0 + 1736);
  v79 = *(v0 + 1728);
  v80 = *(v0 + 1720);
  v81 = *(v0 + 1712);
  v82 = *(v0 + 1704);
  v83 = *(v0 + 1696);
  v84 = *(v0 + 1688);
  v85 = *(v0 + 1680);
  v128 = *(v0 + 1672);
  v130 = *(v0 + 1664);
  v132 = *(v0 + 1656);
  v134 = *(v0 + 1648);
  v136 = *(v0 + 1640);
  v140 = *(v0 + 1632);
  v146 = *(v0 + 1608);
  v150 = *(v0 + 1600);
  v153 = *(v0 + 1568);
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v86 = *(v0 + 8);
LABEL_43:

  return v86();
}

uint64_t sub_1DB44BFEC()
{
  v2 = *(*v1 + 1808);
  v5 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v3 = sub_1DB44D500;
  }

  else
  {
    v3 = sub_1DB44C100;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB44C100()
{
  v181 = v0;
  sub_1DB467374(*(v0 + 1672), type metadata accessor for JetPackAsset);
  v151 = *(v0 + 1816);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v2 + 48);
  *(v0 + 1824) = v4;
  *(v0 + 1832) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v145 = v5;
  *(v0 + 689) = v5 & 1;
  v7 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v1, v7, &qword_1ECC46F20, qword_1DB5105D0);
  v171 = v4;
  if (v4(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v10);
    v12 = *(v11 + 8);
    v13 = v11;
    v4 = v171;
    v12(&v180, v9, v10, v13);
    v8 = v180;
    sub_1DB467374(v9, type metadata accessor for JetPackAsset);
  }

  v176 = v8;
  *(v0 + 690) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v14 = (v0 + 776);
  v15 = *(v0 + 1744);
  v16 = *(v0 + 1712);
  v17 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v160 = *(v0 + 408);
  v165 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v165);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  v180 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v19._countAndFlagsBits = 0x7341646568636163;
  v19._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  sub_1DB30C4B8(v15, v16, &qword_1ECC46F20, qword_1DB5105D0);
  v20 = v4(v16, 1, v17);
  v21 = *(v0 + 1712);
  if (v20 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v21, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v14 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v23 = v180;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
  }

  v26 = (v0 + 856);
  v27 = (v0 + 1056);
  *(v23 + 2) = v25 + 1;
  v28 = &v23[40 * v25];
  v29 = *v14;
  v30 = *(v0 + 792);
  v28[64] = *(v0 + 808);
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  v180 = v23;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31._countAndFlagsBits = 0x3D73757461747320;
  v31._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  if (v176 == 4)
  {
    v32 = 0;
    *v27 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v27 = v176;
    v32 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v32;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v26 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v33 = v180;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
  }

  v36 = *(v0 + 1576);
  v37 = *(v0 + 1528);
  *(v33 + 2) = v35 + 1;
  v38 = &v33[40 * v35];
  v39 = *v26;
  v40 = *(v0 + 872);
  v38[64] = *(v0 + 888);
  *(v38 + 2) = v39;
  *(v38 + 3) = v40;
  v180 = v33;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  *(v18 + 32) = v180;
  Logger.info(_:)(v18, v165, v160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v42 = *(v36 + 20);
  LOBYTE(v180) = *(v37 + v42);
  v43 = sub_1DB42E620();
  v44 = v171;
  if (v176 != 4 && (v43 & 1) != 0)
  {
    v45 = *(v0 + 1744);
    v46 = *(v0 + 1704);
    v47 = *(v0 + 1616);
    v48 = swift_allocBox();
    v50 = v49;
    sub_1DB30C4B8(v45, v46, &qword_1ECC46F20, qword_1DB5105D0);
    v51 = v46;
    v44 = v171;
    v52 = v171(v51, 1, v47);
    v53 = *(v0 + 1704);
    if (v52 == 1)
    {
      sub_1DB30623C(v53, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      v54 = v48;
      sub_1DB468D80(v53, v50, type metadata accessor for JetPackAsset);
      if (v176 < 2 && (v145 & 1) == 0)
      {
        v174 = v50;
        sub_1DB50BEB0();
        v118 = *(v0 + 320);
        v168 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v118);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v120 + 48) = 0u;
        *(v120 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v120 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v120 + 64) = 0;
        *(v119 + 32) = v120;
        Logger.info(_:)(v119, v118, v168);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v176 - 1 < 2)
        {
          LOBYTE(v180) = *(v37 + v42);
          if (sub_1DB42E724())
          {
            v121 = *(v0 + 1608);
            v178 = v121;
            v122 = *(v0 + 1600);
            v123 = *(v0 + 1568);
            v163 = *(v0 + 1592);
            v169 = *(v0 + 1560);
            v155 = *(v0 + 1584);
            v158 = *(v0 + 1552);
            v124 = *(v0 + 1544);
            v125 = *(v0 + 1536);
            v126 = *(v0 + 1528);
            v127 = *(v0 + 1520);
            *(v174 + *(*(v0 + 1616) + 40)) = 1;
            v128 = sub_1DB50ABA0();
            (*(*(v128 - 8) + 56))(v121, 1, 1, v128);
            sub_1DB468D18(v126, v122, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v124, v123, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v127, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v129 = (*(v155 + 80) + 40) & ~*(v155 + 80);
            v130 = (v163 + *(v158 + 80) + v129) & ~*(v158 + 80);
            v131 = (v169 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
            v132 = swift_allocObject();
            v132[2] = 0;
            v132[3] = 0;
            v132[4] = v125;
            sub_1DB468D80(v122, v132 + v129, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v123, v132 + v130, type metadata accessor for URLJetPackAssetFetcher);
            *(v132 + v131) = v54;
            v133 = (v132 + ((v131 + 15) & 0xFFFFFFFFFFFFFFF8));
            v134 = *(v0 + 80);
            v133[3] = *(v0 + 64);
            v133[4] = v134;
            v135 = *(v0 + 48);
            v133[1] = *(v0 + 32);
            v133[2] = v135;
            *v133 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v178, &unk_1DB51CC98, v132);
          }
        }

        v136 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v174, v136, type metadata accessor for JetPackAsset);

        goto LABEL_66;
      }
    }
  }

  LOBYTE(v180) = *(v37 + v42);
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
LABEL_50:
    v95 = *(v0 + 1736);
    v96 = *(v0 + 1728);
    v97 = *(v0 + 1720);
    v98 = *(v0 + 1712);
    v99 = *(v0 + 1704);
    v100 = *(v0 + 1696);
    v101 = *(v0 + 1688);
    v102 = *(v0 + 1680);
    v146 = *(v0 + 1672);
    v147 = *(v0 + 1664);
    v149 = *(v0 + 1656);
    v152 = *(v0 + 1648);
    v154 = *(v0 + 1640);
    v157 = *(v0 + 1632);
    v162 = *(v0 + 1608);
    v167 = *(v0 + 1600);
    v173 = *(v0 + 1568);
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v103 = *(v0 + 8);
LABEL_51:

    return v103();
  }

  if (v176 == 3)
  {
    v55 = *(v0 + 1760);
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
  }

  sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB30BE90(v0 + 96, v0 + 176);
  sub_1DB30BE90(v0 + 136, v0 + 216);
  sub_1DB50AC80();
  if (v151)
  {
    v57 = *(v0 + 1832);
    v58 = *(v0 + 1824);
    v59 = *(v0 + 1744);
    v60 = *(v0 + 1680);
    v61 = *(v0 + 1616);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    sub_1DB30C4B8(v59, v60, &qword_1ECC46F20, qword_1DB5105D0);
    if (v58(v60, 1, v61) == 1)
    {
      sub_1DB30623C(*(v0 + 1680), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_49:
      v94 = *(v0 + 1696);
      swift_willThrow();
      sub_1DB30623C(v94, &qword_1ECC46F20, qword_1DB5105D0);
      goto LABEL_50;
    }

    v71 = *(v0 + 690);
    sub_1DB468D80(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
    if (v71 == 4 || *(v0 + 690) || *(v0 + 689) != 1)
    {
      sub_1DB467374(*(v0 + 1632), type metadata accessor for JetPackAsset);
      goto LABEL_49;
    }

    v72 = *(v0 + 1848);
    v73 = *(v0 + 1840);
    sub_1DB50BEB0();
    v74 = *(v0 + 560);
    v75 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v74);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1DB50EE90;
    v180 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v77._countAndFlagsBits = 0xD000000000000025;
    v77._object = 0x80000001DB52F200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v77);
    swift_getErrorValue();
    v78 = *(v0 + 1376);
    v79 = *(v0 + 1384);
    *(v0 + 952) = v79;
    v80 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
    (*(*(v79 - 8) + 16))(v80, v78, v79);
    sub_1DB30C4B8(v0 + 928, v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    sub_1DB30C2D8(v0 + 896, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 688) = 0;
    v81 = v180;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1DB301BC0(0, *(v81 + 2) + 1, 1, v81);
    }

    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1DB301BC0((v82 > 1), v83 + 1, 1, v81);
    }

    v84 = *(v0 + 1848);
    v85 = *(v0 + 1840);
    v172 = *(v0 + 1632);
    v161 = *(v0 + 1696);
    v166 = *(v0 + 1512);
    *(v81 + 2) = v83 + 1;
    v86 = &v81[40 * v83];
    v87 = *(v0 + 656);
    v88 = *(v0 + 672);
    v86[64] = *(v0 + 688);
    *(v86 + 2) = v87;
    *(v86 + 3) = v88;
    v180 = v81;
    sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v89);
    *(v76 + 32) = v180;
    Logger.error(_:)(v76, v74, v75);

    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    sub_1DB50BEB0();
    v90 = *(v0 + 600);
    v91 = *(v0 + 608);
    __swift_project_boxed_opaque_existential_1((v0 + 576), v90);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1DB50EE90;
    *(v0 + 984) = MEMORY[0x1E69E6158];
    *(v0 + 960) = 0xD000000000000075;
    *(v0 + 968) = 0x80000001DB52F230;
    *(v93 + 48) = 0u;
    *(v93 + 32) = 0u;
    sub_1DB30C2D8(v0 + 960, v93 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v93 + 64) = 0;
    *(v92 + 32) = v93;
    Logger.warning(_:)(v92, v90, v91);

    sub_1DB30623C(v161, &qword_1ECC46F20, qword_1DB5105D0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 576));
    sub_1DB468D80(v172, v166, type metadata accessor for JetPackAsset);
LABEL_66:
    v137 = *(v0 + 1736);
    v138 = *(v0 + 1728);
    v139 = *(v0 + 1720);
    v140 = *(v0 + 1712);
    v141 = *(v0 + 1704);
    v142 = *(v0 + 1696);
    v143 = *(v0 + 1688);
    v144 = *(v0 + 1680);
    v148 = *(v0 + 1672);
    v150 = *(v0 + 1664);
    v153 = *(v0 + 1656);
    v156 = *(v0 + 1648);
    v159 = *(v0 + 1640);
    v164 = *(v0 + 1632);
    v170 = *(v0 + 1608);
    v175 = *(v0 + 1600);
    v179 = *(v0 + 1568);
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v103 = *(v0 + 8);
    goto LABEL_51;
  }

  v62 = *(v0 + 1696);
  v63 = *(v0 + 1688);
  v64 = *(v0 + 1616);
  sub_1DB50BEB0();
  v65 = *(v0 + 520);
  v177 = *(v0 + 528);
  v66 = v44;
  __swift_project_boxed_opaque_existential_1((v0 + 496), v65);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1DB50EE90;
  v180 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v68._countAndFlagsBits = 0xD000000000000032;
  v68._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v68);
  sub_1DB30C4B8(v62, v63, &qword_1ECC46F20, qword_1DB5105D0);
  v69 = v66(v63, 1, v64);
  v70 = *(v0 + 1688);
  if (v69 == 1)
  {
    sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v105 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1DB468D80(v70, v105, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 848) = 0;
  v106 = v180;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v106 = sub_1DB301BC0(0, *(v106 + 2) + 1, 1, v106);
  }

  v108 = *(v106 + 2);
  v107 = *(v106 + 3);
  if (v108 >= v107 >> 1)
  {
    v106 = sub_1DB301BC0((v107 > 1), v108 + 1, 1, v106);
  }

  *(v106 + 2) = v108 + 1;
  v109 = &v106[40 * v108];
  v110 = *(v0 + 816);
  v111 = *(v0 + 832);
  v109[64] = *(v0 + 848);
  *(v109 + 2) = v110;
  *(v109 + 3) = v111;
  v180 = v106;
  sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v112);
  *(v67 + 32) = v180;
  Logger.info(_:)(v67, v65, v177);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v113 = swift_task_alloc();
  *(v0 + 1856) = v113;
  *v113 = v0;
  v113[1] = sub_1DB44EB00;
  v114 = *(v0 + 1696);
  v115 = *(v0 + 1648);
  v116 = *(v0 + 1544);
  v117 = *(v0 + 1528);

  return sub_1DB41BE7C(v115, v117, v114, v0 + 456);
}

uint64_t sub_1DB44D500()
{
  v157 = v0;
  v1 = (v0 + 696);
  sub_1DB467374(*(v0 + 1672), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1816);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 640);
  v4 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v156 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1424);
  v8 = *(v0 + 1432);
  *(v0 + 1336) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1312));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 1312, v0 + 1216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 1216, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v10 = v156;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v156 + 2) + 1, 1, v156);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 712);
  v13[64] = *(v0 + 728);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v156 = v10;
  sub_1DB30623C(v0 + 1312, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v17 = *(v0 + 1744);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1616);
  v20 = *(v18 + 48);
  *(v0 + 1824) = v20;
  *(v0 + 1832) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v148 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v128 = v21;
  *(v0 + 689) = v21 & 1;
  v23 = *(v0 + 1720);
  sub_1DB30BE90(*(v0 + 1520) + 40, v0 + 336);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v148(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1664);
    sub_1DB468D80(*(v0 + 1720), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v26);
    (*(v27 + 8))(&v156, v25, v26, v27);
    v24 = v156;
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 690) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 776);
  v29 = *(v0 + 1744);
  v30 = *(v0 + 1712);
  v31 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EE30C918;
  sub_1DB50BEB0();
  v138 = *(v0 + 400);
  v142 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v138);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DB50EE90;
  v156 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v33._countAndFlagsBits = 0x7341646568636163;
  v33._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  sub_1DB30C4B8(v29, v30, &qword_1ECC46F20, qword_1DB5105D0);
  v34 = v148(v30, 1, v31);
  v35 = *(v0 + 1712);
  if (v34 == 1)
  {
    sub_1DB30623C(*(v0 + 1712), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    v36 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1DB468D80(v35, v36, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1152, v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v28 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1120, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v37 = v156;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
  }

  v40 = (v0 + 856);
  v41 = (v0 + 1056);
  *(v37 + 2) = v39 + 1;
  v42 = &v37[40 * v39];
  v43 = *v28;
  v44 = *(v0 + 792);
  v42[64] = *(v0 + 808);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  v156 = v37;
  sub_1DB30623C(v0 + 1152, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v46;
  sub_1DB30C4B8(v0 + 1056, v0 + 992, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v40 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 992, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v47 = v156;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DB301BC0(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DB301BC0((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1576);
  v51 = *(v0 + 1528);
  *(v47 + 2) = v49 + 1;
  v52 = &v47[40 * v49];
  v53 = *v40;
  v54 = *(v0 + 872);
  v52[64] = *(v0 + 888);
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  v156 = v47;
  sub_1DB30623C(v0 + 1056, &qword_1ECC426B0, &qword_1DB50EEB0);
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v55);
  *(v32 + 32) = v156;
  Logger.info(_:)(v32, v138, v142);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v56 = *(v50 + 20);
  LOBYTE(v156) = *(v51 + v56);
  v57 = sub_1DB42E620();
  if (v24 != 4 && (v57 & 1) != 0)
  {
    v58 = *(v0 + 1744);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1616);
    v61 = swift_allocBox();
    v63 = v62;
    sub_1DB30C4B8(v58, v59, &qword_1ECC46F20, qword_1DB5105D0);
    v64 = v148(v59, 1, v60);
    v65 = *(v0 + 1704);
    if (v64 == 1)
    {
      sub_1DB30623C(v65, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v65, v63, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v128 & 1) == 0)
      {
        sub_1DB50BEB0();
        v100 = *(v0 + 320);
        v153 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v100);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_1DB50EE90;
        *(v0 + 1304) = MEMORY[0x1E69E6158];
        *(v0 + 1280) = 0xD000000000000012;
        *(v0 + 1288) = 0x80000001DB52F320;
        *(v102 + 48) = 0u;
        *(v102 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1280, v102 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v102 + 64) = 0;
        *(v101 + 32) = v102;
        Logger.info(_:)(v101, v100, v153);

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        if (v24 - 1 < 2)
        {
          LOBYTE(v156) = *(v51 + v56);
          if (sub_1DB42E724())
          {
            v103 = *(v0 + 1608);
            v104 = *(v0 + 1600);
            v105 = *(v0 + 1568);
            v136 = *(v0 + 1584);
            v140 = v105;
            v150 = *(v0 + 1560);
            v154 = v103;
            v143 = *(v0 + 1552);
            v146 = *(v0 + 1592);
            v106 = *(v0 + 1544);
            v107 = *(v0 + 1536);
            v108 = *(v0 + 1528);
            v109 = *(v0 + 1520);
            *(v63 + *(*(v0 + 1616) + 40)) = 1;
            v110 = sub_1DB50ABA0();
            (*(*(v110 - 8) + 56))(v103, 1, 1, v110);
            sub_1DB468D18(v108, v104, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D18(v106, v105, type metadata accessor for URLJetPackAssetFetcher);
            sub_1DB30C4B8(v109, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
            v111 = (*(v136 + 80) + 40) & ~*(v136 + 80);
            v112 = (v146 + v143[80] + v111) & ~v143[80];
            v113 = (v150 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
            v114 = swift_allocObject();
            v114[2] = 0;
            v114[3] = 0;
            v114[4] = v107;
            sub_1DB468D80(v104, v114 + v111, type metadata accessor for URLJetPackAssetRequest);
            sub_1DB468D80(v140, v114 + v112, type metadata accessor for URLJetPackAssetFetcher);
            *(v114 + v113) = v61;
            v115 = (v114 + ((v113 + 15) & 0xFFFFFFFFFFFFFFF8));
            v116 = *(v0 + 80);
            v115[3] = *(v0 + 64);
            v115[4] = v116;
            v117 = *(v0 + 48);
            v115[1] = *(v0 + 32);
            v115[2] = v117;
            *v115 = *(v0 + 16);

            sub_1DB4DD85C(0, 0, v154, &unk_1DB51CC98, v114);
          }
        }

        v118 = *(v0 + 1512);
        swift_beginAccess();
        sub_1DB468D18(v63, v118, type metadata accessor for JetPackAsset);

        v119 = *(v0 + 1736);
        v120 = *(v0 + 1728);
        v121 = *(v0 + 1720);
        v122 = *(v0 + 1712);
        v123 = *(v0 + 1704);
        v124 = *(v0 + 1696);
        v125 = *(v0 + 1688);
        v126 = *(v0 + 1680);
        v130 = *(v0 + 1672);
        v132 = *(v0 + 1664);
        v134 = *(v0 + 1656);
        v137 = *(v0 + 1648);
        v141 = *(v0 + 1640);
        v144 = *(v0 + 1632);
        v147 = *(v0 + 1608);
        v151 = *(v0 + 1600);
        v155 = *(v0 + 1568);
        sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

        v85 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v156) = *(v51 + v56);
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      v66 = *(v0 + 1760);
      (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1744), *(v0 + 1696), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1520), v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
    sub_1DB30BE90(v0 + 96, v0 + 176);
    sub_1DB30BE90(v0 + 136, v0 + 216);
    sub_1DB50AC80();
    v68 = *(v0 + 1696);
    v69 = *(v0 + 1688);
    v70 = *(v0 + 1616);
    sub_1DB50BEB0();
    v71 = *(v0 + 520);
    v72 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v71);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1DB50EE90;
    v156 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v74._countAndFlagsBits = 0xD000000000000032;
    v74._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v74);
    sub_1DB30C4B8(v68, v69, &qword_1ECC46F20, qword_1DB5105D0);
    v75 = v148(v69, 1, v70);
    v76 = *(v0 + 1688);
    if (v75 == 1)
    {
      sub_1DB30623C(*(v0 + 1688), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1024) = 0u;
      *(v0 + 1040) = 0u;
    }

    else
    {
      *(v0 + 1048) = *(v0 + 1616);
      v87 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
      sub_1DB468D80(v76, v87, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1024, v0 + 1088, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    sub_1DB30C2D8(v0 + 1088, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 848) = 0;
    v88 = v156;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_1DB301BC0(0, *(v88 + 2) + 1, 1, v88);
    }

    v90 = *(v88 + 2);
    v89 = *(v88 + 3);
    if (v90 >= v89 >> 1)
    {
      v88 = sub_1DB301BC0((v89 > 1), v90 + 1, 1, v88);
    }

    *(v88 + 2) = v90 + 1;
    v91 = &v88[40 * v90];
    v92 = *(v0 + 816);
    v93 = *(v0 + 832);
    v91[64] = *(v0 + 848);
    *(v91 + 2) = v92;
    *(v91 + 3) = v93;
    v156 = v88;
    sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v94);
    *(v73 + 32) = v156;
    Logger.info(_:)(v73, v71, v72);

    __swift_destroy_boxed_opaque_existential_0((v0 + 496));
    *(v0 + 480) = &type metadata for SystemDateProvider;
    *(v0 + 488) = &protocol witness table for SystemDateProvider;
    v95 = swift_task_alloc();
    *(v0 + 1856) = v95;
    *v95 = v0;
    v95[1] = sub_1DB44EB00;
    v96 = *(v0 + 1696);
    v97 = *(v0 + 1648);
    v98 = *(v0 + 1544);
    v99 = *(v0 + 1528);

    return sub_1DB41BE7C(v97, v99, v96, v0 + 456);
  }

  sub_1DB46628C();
  swift_allocError();
  *v67 = 0;
  swift_willThrow();
  v77 = *(v0 + 1736);
  v78 = *(v0 + 1728);
  v79 = *(v0 + 1720);
  v80 = *(v0 + 1712);
  v81 = *(v0 + 1704);
  v82 = *(v0 + 1696);
  v83 = *(v0 + 1688);
  v84 = *(v0 + 1680);
  v127 = *(v0 + 1672);
  v129 = *(v0 + 1664);
  v131 = *(v0 + 1656);
  v133 = *(v0 + 1648);
  v135 = *(v0 + 1640);
  v139 = *(v0 + 1632);
  v145 = *(v0 + 1608);
  v149 = *(v0 + 1600);
  v152 = *(v0 + 1568);
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v85 = *(v0 + 8);
LABEL_43:

  return v85();
}

uint64_t sub_1DB44EB00()
{
  v2 = *v1;
  v3 = *(*v1 + 1856);
  v6 = *v1;
  *(*v1 + 1864) = v0;

  if (v0)
  {
    v4 = sub_1DB44EF68;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 456));
    v4 = sub_1DB44EC1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB44EC1C()
{
  v1 = v0[207];
  v2 = v0[202];
  sub_1DB468D80(v0[206], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v14 = v0[25];
    v15 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v14);
    v16 = *(v15 + 8);
    v32 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[234] = v18;
    *v18 = v0;
    v18[1] = sub_1DB44F654;
    v19 = v0[207];
    v20 = v0[205];

    return v32(v20, v19, v14, v15);
  }

  else
  {
    v5 = v0[212];
    sub_1DB468D80(v0[207], v0[189], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    sub_1DB30623C(v5, &qword_1ECC46F20, qword_1DB5105D0);
    v6 = v0[217];
    v7 = v0[216];
    v8 = v0[215];
    v9 = v0[214];
    v10 = v0[213];
    v11 = v0[212];
    v21 = v0[211];
    v22 = v0[210];
    v23 = v0[209];
    v24 = v0[208];
    v25 = v0[207];
    v26 = v0[206];
    v27 = v0[205];
    v28 = v0[204];
    v29 = v0[201];
    v30 = v0[200];
    v31 = v0[196];
    sub_1DB30623C(v0[218], &qword_1ECC46F20, qword_1DB5105D0);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DB44EF68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1744);
  v5 = *(v0 + 1680);
  v6 = *(v0 + 1616);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_1DB30C4B8(v4, v5, &qword_1ECC46F20, qword_1DB5105D0);
  v69 = v1;
  if (v3(v5, 1, v6) == 1)
  {
    sub_1DB30623C(*(v0 + 1680), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_12:
    v40 = *(v0 + 1696);
    swift_willThrow();
    sub_1DB30623C(v40, &qword_1ECC46F20, qword_1DB5105D0);
    v41 = *(v0 + 1736);
    v42 = *(v0 + 1728);
    v43 = *(v0 + 1720);
    v44 = *(v0 + 1712);
    v45 = *(v0 + 1704);
    v46 = *(v0 + 1696);
    v48 = *(v0 + 1688);
    v49 = *(v0 + 1680);
    v50 = *(v0 + 1672);
    v52 = *(v0 + 1664);
    v54 = *(v0 + 1656);
    v56 = *(v0 + 1648);
    v58 = *(v0 + 1640);
    v61 = *(v0 + 1632);
    v64 = *(v0 + 1608);
    v66 = *(v0 + 1600);
    v68 = *(v0 + 1568);
    sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

    v39 = *(v0 + 8);
    goto LABEL_13;
  }

  v7 = *(v0 + 690);
  sub_1DB468D80(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
  if (v7 == 4 || *(v0 + 690) || *(v0 + 689) != 1)
  {
    sub_1DB467374(*(v0 + 1632), type metadata accessor for JetPackAsset);
    goto LABEL_12;
  }

  v8 = *(v0 + 1848);
  v9 = *(v0 + 1840);
  sub_1DB50BEB0();
  v10 = *(v0 + 560);
  v11 = *(v0 + 568);
  __swift_project_boxed_opaque_existential_1((v0 + 536), v10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50EE90;
  v71 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v13._object = 0x80000001DB52F200;
  v13._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  swift_getErrorValue();
  v14 = *(v0 + 1376);
  v15 = *(v0 + 1384);
  *(v0 + 952) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v14, v15);
  sub_1DB30C4B8(v0 + 928, v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 896, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v17 = v71;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1DB301BC0(0, *(v71 + 2) + 1, 1, v71);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
  }

  v20 = *(v0 + 1848);
  v21 = *(v0 + 1840);
  v22 = *(v0 + 1696);
  v59 = *(v0 + 1512);
  v62 = *(v0 + 1632);
  *(v17 + 2) = v19 + 1;
  v23 = &v17[40 * v19];
  v24 = *(v0 + 656);
  v25 = *(v0 + 672);
  v23[64] = *(v0 + 688);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v12 + 32) = v17;
  Logger.error(_:)(v12, v10, v11);

  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  sub_1DB50BEB0();
  v27 = *(v0 + 600);
  v28 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v27);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DB50EE90;
  *(v0 + 984) = MEMORY[0x1E69E6158];
  *(v0 + 960) = 0xD000000000000075;
  *(v0 + 968) = 0x80000001DB52F230;
  *(v30 + 48) = 0u;
  *(v30 + 32) = 0u;
  sub_1DB30C2D8(v0 + 960, v30 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v30 + 64) = 0;
  *(v29 + 32) = v30;
  Logger.warning(_:)(v29, v27, v28);

  sub_1DB30623C(v22, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  sub_1DB468D80(v62, v59, type metadata accessor for JetPackAsset);
  v31 = *(v0 + 1736);
  v32 = *(v0 + 1728);
  v33 = *(v0 + 1720);
  v34 = *(v0 + 1712);
  v35 = *(v0 + 1704);
  v36 = *(v0 + 1696);
  v37 = *(v0 + 1688);
  v38 = *(v0 + 1680);
  v51 = *(v0 + 1672);
  v53 = *(v0 + 1664);
  v55 = *(v0 + 1656);
  v57 = *(v0 + 1648);
  v60 = *(v0 + 1640);
  v63 = *(v0 + 1632);
  v65 = *(v0 + 1608);
  v67 = *(v0 + 1600);
  v70 = *(v0 + 1568);
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v39 = *(v0 + 8);
LABEL_13:

  return v39();
}

uint64_t sub_1DB44F654()
{
  v2 = *v1;
  v3 = *(*v1 + 1872);
  v6 = *v1;
  *(*v1 + 1880) = v0;

  if (v0)
  {
    v4 = sub_1DB44F96C;
  }

  else
  {
    sub_1DB467374(*(v2 + 1640), type metadata accessor for JetPackAsset);
    v4 = sub_1DB44F784;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB44F784()
{
  v1 = v0[212];
  sub_1DB468D80(v0[207], v0[189], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
  v2 = v0[217];
  v3 = v0[216];
  v4 = v0[215];
  v5 = v0[214];
  v6 = v0[213];
  v7 = v0[212];
  v10 = v0[211];
  v11 = v0[210];
  v12 = v0[209];
  v13 = v0[208];
  v14 = v0[207];
  v15 = v0[206];
  v16 = v0[205];
  v17 = v0[204];
  v18 = v0[201];
  v19 = v0[200];
  v20 = v0[196];
  sub_1DB30623C(v0[218], &qword_1ECC46F20, qword_1DB5105D0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB44F96C()
{
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  sub_1DB50BEB0();
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v39 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001DB52F2F0;
  v7._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 1400);
  v9 = *(v0 + 1408);
  *(v0 + 1208) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1184));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_1DB30C4B8(v0 + 1184, v0 + 1248, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  sub_1DB30C2D8(v0 + 1248, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 768) = 0;
  v11 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v39 + 2) + 1, 1, v39);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = *(v0 + 1880);
  *(v11 + 2) = v13 + 1;
  v15 = &v11[40 * v13];
  v16 = *(v0 + 736);
  v17 = *(v0 + 752);
  v15[64] = *(v0 + 768);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1DB30623C(v0 + 1184, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v6 + 32) = v11;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  v19 = *(v0 + 1696);
  sub_1DB468D80(*(v0 + 1656), *(v0 + 1512), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_1DB30623C(v19, &qword_1ECC46F20, qword_1DB5105D0);
  v20 = *(v0 + 1736);
  v21 = *(v0 + 1728);
  v22 = *(v0 + 1720);
  v23 = *(v0 + 1712);
  v24 = *(v0 + 1704);
  v25 = *(v0 + 1696);
  v28 = *(v0 + 1688);
  v29 = *(v0 + 1680);
  v30 = *(v0 + 1672);
  v31 = *(v0 + 1664);
  v32 = *(v0 + 1656);
  v33 = *(v0 + 1648);
  v34 = *(v0 + 1640);
  v35 = *(v0 + 1632);
  v36 = *(v0 + 1608);
  v37 = *(v0 + 1600);
  v38 = *(v0 + 1568);
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1DB44FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[206] = a5;
  v5[205] = a4;
  v5[204] = a3;
  v5[203] = a2;
  v5[202] = a1;
  v6 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v5[207] = v6;
  v5[208] = *(v6 + 64);
  v5[209] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750) - 8) + 64) + 15;
  v5[210] = swift_task_alloc();
  v8 = type metadata accessor for JetPackAsset(0);
  v5[211] = v8;
  v9 = *(v8 - 8);
  v5[212] = v9;
  v10 = *(v9 + 64) + 15;
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v5[215] = swift_task_alloc();
  v5[216] = swift_task_alloc();
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v5[219] = swift_task_alloc();
  v5[220] = swift_task_alloc();
  v5[221] = swift_task_alloc();
  v5[222] = swift_task_alloc();
  v5[223] = swift_task_alloc();
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  v5[226] = swift_task_alloc();
  v5[227] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB44FF8C, 0, 0);
}

uint64_t sub_1DB44FF8C()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1624);
  v6 = *(v2 + 56);
  *(v0 + 1824) = v6;
  *(v0 + 1832) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  *(v0 + 1560) = *v4;
  v9 = *(v4 + 2);
  *(v0 + 1840) = v9;
  v10 = *(v4 + 3);
  *(v0 + 1848) = v10;
  *(v0 + 1576) = *v4;
  v17 = *v4;
  sub_1DB46774C(v0 + 1560, v0 + 1512);
  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v9, v10);
  *(v0 + 1856) = *(&v17 + 1);
  v11 = *(v8 + 16);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 1864) = v13;
  *v13 = v0;
  v13[1] = sub_1DB45017C;
  v14 = *(v0 + 1808);

  return (v16)(v14, v17, *(&v17 + 1), v7, v8);
}

uint64_t sub_1DB45017C()
{
  v2 = *v1;
  v3 = *(*v1 + 1864);
  v7 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v4 = sub_1DB451A38;
  }

  else
  {
    v5 = *(v2 + 1856);

    v4 = sub_1DB450298;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DB450298()
{
  v200 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1688);
  sub_1DB30C2D8(*(v0 + 1808), v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30C4B8(v1, v2, &qword_1ECC46F20, qword_1DB5105D0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1800);
  if (v5 == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC46F20, qword_1DB5105D0);
    v175 = *(v0 + 1872);
  }

  else
  {
    sub_1DB468D80(v6, *(v0 + 1744), type metadata accessor for JetPackAsset);
    if (qword_1EE30E1A8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 1872);
    v13 = *(v0 + 1848);
    v14 = *(v0 + 1840);
    v15 = qword_1EE312DD8;
    v197 = *(v0 + 1576);
    sub_1DB46774C(v0 + 1560, v0 + 1528);
    MEMORY[0x1E1285C70](45, 0xE100000000000000);
    MEMORY[0x1E1285C70](v14, v13);
    v16 = *(&v197 + 1);
    *(v0 + 1544) = v197;
    *(v0 + 1552) = v16;
    v17 = *(v15 + 16);
    *(swift_task_alloc() + 16) = v0 + 1544;
    os_unfair_lock_lock((v17 + 24));
    sub_1DB467900((v17 + 16), &v197);
    os_unfair_lock_unlock((v17 + 24));
    if (v12)
    {
      return;
    }

    v60 = v197;

    if (v60)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v186 = *(v0 + 1824);
      v191 = *(v0 + 1832);
      v61 = *(v0 + 1816);
      v62 = *(v0 + 1688);
      v63 = *(v0 + 1624);
      sub_1DB50BEB0();
      v64 = *(v0 + 280);
      v65 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1DB50EE90;
      *(v0 + 1152) = MEMORY[0x1E69E6158];
      *(v0 + 1128) = 0xD000000000000054;
      *(v0 + 1136) = 0x80000001DB52F340;
      *(v67 + 48) = 0u;
      *(v67 + 32) = 0u;
      sub_1DB30C2D8(v0 + 1128, v67 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v67 + 64) = 0;
      *(v66 + 32) = v67;
      Logger.error(_:)(v66, v64, v65);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      sub_1DB30623C(v61, &qword_1ECC46F20, qword_1DB5105D0);
      v186(v61, 1, 1, v62);
      v68 = v63[3];
      v69 = v63[4];
      __swift_project_boxed_opaque_existential_1(v63, v68);
      v70 = *(v69 + 24);
      v192 = (v70 + *v70);
      v71 = v70[1];
      v72 = swift_task_alloc();
      *(v0 + 1880) = v72;
      *v72 = v0;
      v72[1] = sub_1DB452FC0;
      v73 = *(v0 + 1744);

      v192(v73, v68, v69);
      return;
    }

    sub_1DB467374(*(v0 + 1744), type metadata accessor for JetPackAsset);
    v175 = 0;
  }

  v7 = *(v0 + 1816);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1688);
  v10 = *(v8 + 48);
  *(v0 + 1896) = v10;
  *(v0 + 1904) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v190 = v10;
  if (v10(v7, 1, v9))
  {
    v11 = 0;
  }

  else
  {
    v18 = v7 + *(v9 + 20);
    v11 = *(v18 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v167 = v11;
  *(v0 + 649) = v11 & 1;
  v19 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v7, v19, &qword_1ECC46F20, qword_1DB5105D0);
  if (v190(v19, 1, v9) == 1)
  {
    v20 = 4;
  }

  else
  {
    v21 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v21, type metadata accessor for JetPackAsset);
    v22 = *(v0 + 560);
    v23 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v22);
    (*(v23 + 8))(&v197, v21, v22, v23);
    v20 = v197;
    sub_1DB467374(v21, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v20;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v24 = (v0 + 696);
  v25 = *(v0 + 1816);
  v26 = *(v0 + 1784);
  v27 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v181 = *(v0 + 608);
  v185 = *(v0 + 600);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v185);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DB50EE90;
  *&v197 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v29._countAndFlagsBits = 0x7341646568636163;
  v29._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  sub_1DB30C4B8(v25, v26, &qword_1ECC46F20, qword_1DB5105D0);
  v30 = v190(v26, 1, v27);
  v31 = *(v0 + 1784);
  if (v30 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v31, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v24 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v33 = v197;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
  }

  v36 = (v0 + 968);
  *(v33 + 2) = v35 + 1;
  v37 = &v33[40 * v35];
  v38 = *v24;
  v39 = *(v0 + 712);
  v37[64] = *(v0 + 728);
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  *&v197 = v33;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v40._countAndFlagsBits = 0x3D73757461747320;
  v40._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  if (v20 == 4)
  {
    v41 = 0;
    *v36 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v36 = v20;
    v41 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v41;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v42 = v197;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1DB301BC0(0, *(v42 + 2) + 1, 1, v42);
  }

  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_1DB301BC0((v43 > 1), v44 + 1, 1, v42);
  }

  v45 = *(v0 + 1632);
  *(v42 + 2) = v44 + 1;
  v46 = &v42[40 * v44];
  v47 = *(v0 + 656);
  v48 = *(v0 + 672);
  v46[64] = *(v0 + 688);
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  *&v197 = v42;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v28 + 32) = v197;
  Logger.info(_:)(v28, v185, v181);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v50 = *(v45 + 32);
  LOBYTE(v197) = v50;
  v51 = sub_1DB42E620();
  if (v20 != 4 && (v51 & 1) != 0)
  {
    v52 = *(v0 + 1816);
    v53 = *(v0 + 1776);
    v54 = *(v0 + 1688);
    v55 = swift_allocBox();
    v57 = v56;
    sub_1DB30C4B8(v52, v53, &qword_1ECC46F20, qword_1DB5105D0);
    v58 = v190(v53, 1, v54);
    v59 = *(v0 + 1776);
    if (v58 == 1)
    {
      sub_1DB30623C(v59, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v59, v57, type metadata accessor for JetPackAsset);
      if (v20 < 2 && (v167 & 1) == 0)
      {
        sub_1DB50BEB0();
        v139 = *(v0 + 480);
        v195 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v139);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v141 + 48) = 0u;
        *(v141 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v141 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v141 + 64) = 0;
        *(v140 + 32) = v141;
        Logger.info(_:)(v140, v139, v195);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v20 - 1 < 2)
        {
          LOBYTE(v197) = v50;
          if (sub_1DB42E724())
          {
            v142 = *(v0 + 1680);
            v143 = *(v0 + 1672);
            v144 = *(v0 + 1664);
            v145 = *(v0 + 1656);
            v146 = *(v0 + 1648);
            v188 = *(v0 + 1640);
            v147 = *(v0 + 1632);
            v148 = *(v0 + 1624);
            *(v57 + *(*(v0 + 1688) + 40)) = 1;
            v149 = sub_1DB50ABA0();
            (*(*(v149 - 8) + 56))(v142, 1, 1, v149);
            v150 = *(v147 + 16);
            v197 = *v147;
            v198 = v150;
            v199 = *(v147 + 32);
            sub_1DB468D18(v146, v143, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v148, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v151 = (*(v145 + 80) + 73) & ~*(v145 + 80);
            v152 = (v144 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
            v153 = swift_allocObject();
            *(v153 + 16) = 0;
            *(v153 + 24) = 0;
            *(v153 + 32) = v188;
            v154 = v198;
            *(v153 + 40) = v197;
            *(v153 + 56) = v154;
            *(v153 + 72) = v199;
            sub_1DB468D80(v143, v153 + v151, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v153 + v152) = v55;
            v155 = (v153 + ((v152 + 15) & 0xFFFFFFFFFFFFFFF8));
            v156 = *(v0 + 160);
            v155[3] = *(v0 + 144);
            v155[4] = v156;
            v157 = *(v0 + 128);
            v155[1] = *(v0 + 112);
            v155[2] = v157;
            *v155 = *(v0 + 96);

            sub_1DB467318(v147, v0 + 896);

            sub_1DB4DD85C(0, 0, v142, &unk_1DB51C988, v153);
          }
        }

        v158 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v57, v158, type metadata accessor for JetPackAsset);

        goto LABEL_79;
      }
    }
  }

  LOBYTE(v197) = v50;
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v75 = 0;
    swift_willThrow();
LABEL_63:
    v118 = *(v0 + 1808);
    v119 = *(v0 + 1800);
    v120 = *(v0 + 1792);
    v121 = *(v0 + 1784);
    v122 = *(v0 + 1776);
    v123 = *(v0 + 1768);
    v124 = *(v0 + 1760);
    v125 = *(v0 + 1752);
    v168 = *(v0 + 1744);
    v169 = *(v0 + 1736);
    v171 = *(v0 + 1728);
    v173 = *(v0 + 1720);
    v176 = *(v0 + 1712);
    v179 = *(v0 + 1704);
    v183 = *(v0 + 1680);
    v194 = *(v0 + 1672);
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v126 = *(v0 + 8);
LABEL_64:

    v126();
    return;
  }

  if (v20 == 3)
  {
    v74 = *(v0 + 1832);
    (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
  }

  v76 = *(v0 + 1632);
  sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v77 = *(v76 + 32);
  v78 = *(v76 + 16);
  *(v0 + 736) = *v76;
  *(v0 + 752) = v78;
  *(v0 + 768) = v77;
  sub_1DB30BE90(v0 + 16, v0 + 176);
  sub_1DB30BE90(v0 + 56, v0 + 216);
  sub_1DB50AC80();
  if (v175)
  {
    v79 = *(v0 + 1904);
    v80 = *(v0 + 1896);
    v81 = *(v0 + 1816);
    v82 = *(v0 + 1752);
    v83 = *(v0 + 1688);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_1DB30C4B8(v81, v82, &qword_1ECC46F20, qword_1DB5105D0);
    if (v80(v82, 1, v83) == 1)
    {
      sub_1DB30623C(*(v0 + 1752), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_62:
      v117 = *(v0 + 1768);
      swift_willThrow();
      sub_1DB30623C(v117, &qword_1ECC46F20, qword_1DB5105D0);
      goto LABEL_63;
    }

    v93 = *(v0 + 650);
    sub_1DB468D80(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
    if (v93 == 4 || *(v0 + 650) || *(v0 + 649) != 1)
    {
      sub_1DB467374(*(v0 + 1704), type metadata accessor for JetPackAsset);
      goto LABEL_62;
    }

    v94 = *(v0 + 1920);
    v95 = *(v0 + 1912);
    sub_1DB50BEB0();
    v96 = *(v0 + 520);
    v97 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v96);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1DB50EE90;
    *&v197 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v99._countAndFlagsBits = 0xD000000000000025;
    v99._object = 0x80000001DB52F200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v99);
    swift_getErrorValue();
    v100 = *(v0 + 1416);
    v101 = *(v0 + 1424);
    *(v0 + 1120) = v101;
    v102 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
    (*(*(v101 - 8) + 16))(v102, v100, v101);
    sub_1DB30C4B8(v0 + 1096, v0 + 1160, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    sub_1DB30C2D8(v0 + 1160, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 848) = 0;
    v103 = v197;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1DB301BC0(0, *(v103 + 2) + 1, 1, v103);
    }

    v105 = *(v103 + 2);
    v104 = *(v103 + 3);
    if (v105 >= v104 >> 1)
    {
      v103 = sub_1DB301BC0((v104 > 1), v105 + 1, 1, v103);
    }

    v106 = *(v0 + 1920);
    v107 = *(v0 + 1912);
    v108 = *(v0 + 1704);
    v178 = *(v0 + 1768);
    v182 = *(v0 + 1616);
    *(v103 + 2) = v105 + 1;
    v109 = &v103[40 * v105];
    v110 = *(v0 + 816);
    v111 = *(v0 + 832);
    v109[64] = *(v0 + 848);
    *(v109 + 2) = v110;
    *(v109 + 3) = v111;
    v193 = v108;
    *&v197 = v103;
    sub_1DB30623C(v0 + 1096, &qword_1ECC426B0, &qword_1DB50EEB0);
    v112._countAndFlagsBits = 0;
    v112._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v112);
    *(v98 + 32) = v197;
    Logger.error(_:)(v98, v96, v97);

    __swift_destroy_boxed_opaque_existential_0((v0 + 496));
    sub_1DB50BEB0();
    v114 = *(v0 + 440);
    v113 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v114);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1DB50EE90;
    *(v0 + 1248) = MEMORY[0x1E69E6158];
    *(v0 + 1224) = 0xD000000000000075;
    *(v0 + 1232) = 0x80000001DB52F230;
    *(v116 + 48) = 0u;
    *(v116 + 32) = 0u;
    sub_1DB30C2D8(v0 + 1224, v116 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v116 + 64) = 0;
    *(v115 + 32) = v116;
    Logger.warning(_:)(v115, v114, v113);

    sub_1DB30623C(v178, &qword_1ECC46F20, qword_1DB5105D0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 416));
    sub_1DB468D80(v193, v182, type metadata accessor for JetPackAsset);
LABEL_79:
    v159 = *(v0 + 1808);
    v160 = *(v0 + 1800);
    v161 = *(v0 + 1792);
    v162 = *(v0 + 1784);
    v163 = *(v0 + 1776);
    v164 = *(v0 + 1768);
    v165 = *(v0 + 1760);
    v166 = *(v0 + 1752);
    v170 = *(v0 + 1744);
    v172 = *(v0 + 1736);
    v174 = *(v0 + 1728);
    v177 = *(v0 + 1720);
    v180 = *(v0 + 1712);
    v184 = *(v0 + 1704);
    v189 = *(v0 + 1680);
    v196 = *(v0 + 1672);
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v126 = *(v0 + 8);
    goto LABEL_64;
  }

  v84 = (v0 + 856);
  v85 = *(v0 + 1768);
  v86 = *(v0 + 1760);
  v87 = *(v0 + 1688);
  sub_1DB50BEB0();
  v88 = *(v0 + 400);
  v187 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v88);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1DB50EE90;
  *&v197 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v90._countAndFlagsBits = 0xD000000000000032;
  v90._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v90);
  sub_1DB30C4B8(v85, v86, &qword_1ECC46F20, qword_1DB5105D0);
  v91 = v190(v86, 1, v87);
  v92 = *(v0 + 1760);
  if (v91 == 1)
  {
    sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1288) = 0u;
    *(v0 + 1304) = 0u;
  }

  else
  {
    *(v0 + 1312) = *(v0 + 1688);
    v127 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
    sub_1DB468D80(v92, v127, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v84 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v128 = v197;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v128 = sub_1DB301BC0(0, *(v128 + 2) + 1, 1, v128);
  }

  v130 = *(v128 + 2);
  v129 = *(v128 + 3);
  if (v130 >= v129 >> 1)
  {
    v128 = sub_1DB301BC0((v129 > 1), v130 + 1, 1, v128);
  }

  *(v128 + 2) = v130 + 1;
  v131 = &v128[40 * v130];
  v132 = *v84;
  v133 = *(v0 + 872);
  v131[64] = *(v0 + 888);
  *(v131 + 2) = v132;
  *(v131 + 3) = v133;
  *&v197 = v128;
  sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v134);
  *(v89 + 32) = v197;
  Logger.info(_:)(v89, v88, v187);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v135 = swift_task_alloc();
  *(v0 + 1928) = v135;
  *v135 = v0;
  v135[1] = sub_1DB4559DC;
  v136 = *(v0 + 1768);
  v137 = *(v0 + 1720);
  v138 = *(v0 + 1648);

  SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v137, v0 + 736, v136);
}

uint64_t sub_1DB451A38()
{
  v155 = v0;
  v1 = (v0 + 776);
  v2 = *(v0 + 1856);

  v3 = *(v0 + 1872);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  *&v152 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  v7._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 1464);
  v9 = *(v0 + 1472);
  *(v0 + 1280) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1256));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_1DB30C4B8(v0 + 1256, v0 + 1064, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1064, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v11 = v152;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v152 + 16) + 1, 1, v152);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = *v1;
  v16 = *(v0 + 792);
  v14[64] = *(v0 + 808);
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  *&v152 = v11;
  sub_1DB30623C(v0 + 1256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v6 + 32) = v11;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v18 = *(v0 + 1816);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1688);
  v21 = *(v19 + 48);
  *(v0 + 1896) = v21;
  *(v0 + 1904) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v145 = v21;
  if (v21(v18, 1, v20))
  {
    v22 = 0;
  }

  else
  {
    v23 = v18 + *(v20 + 20);
    v22 = *(v23 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v131 = v22;
  *(v0 + 649) = v22 & 1;
  v24 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v18, v24, &qword_1ECC46F20, qword_1DB5105D0);
  if (v145(v24, 1, v20) == 1)
  {
    v25 = 4;
  }

  else
  {
    v26 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v26, type metadata accessor for JetPackAsset);
    v27 = *(v0 + 560);
    v28 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v27);
    (*(v28 + 8))(&v152, v26, v27, v28);
    v25 = v152;
    sub_1DB467374(v26, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v25;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v29 = (v0 + 696);
  v30 = *(v0 + 1816);
  v31 = *(v0 + 1784);
  v32 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v33 = *(v0 + 600);
  v140 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v33);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DB50EE90;
  *&v152 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v35._countAndFlagsBits = 0x7341646568636163;
  v35._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v35);
  sub_1DB30C4B8(v30, v31, &qword_1ECC46F20, qword_1DB5105D0);
  v36 = v145(v31, 1, v32);
  v37 = *(v0 + 1784);
  if (v36 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    v38 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v37, v38, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v29 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v39 = v152;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1DB301BC0(0, *(v39 + 2) + 1, 1, v39);
  }

  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v39);
  }

  v42 = (v0 + 968);
  *(v39 + 2) = v41 + 1;
  v43 = &v39[40 * v41];
  v44 = *v29;
  v45 = *(v0 + 712);
  v43[64] = *(v0 + 728);
  *(v43 + 2) = v44;
  *(v43 + 3) = v45;
  *&v152 = v39;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v46._countAndFlagsBits = 0x3D73757461747320;
  v46._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  if (v25 == 4)
  {
    v47 = 0;
    *v42 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v42 = v25;
    v47 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v47;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v48 = v152;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_1DB301BC0(0, *(v48 + 2) + 1, 1, v48);
  }

  v50 = *(v48 + 2);
  v49 = *(v48 + 3);
  if (v50 >= v49 >> 1)
  {
    v48 = sub_1DB301BC0((v49 > 1), v50 + 1, 1, v48);
  }

  v51 = *(v0 + 1632);
  *(v48 + 2) = v50 + 1;
  v52 = &v48[40 * v50];
  v53 = *(v0 + 656);
  v54 = *(v0 + 672);
  v52[64] = *(v0 + 688);
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  *&v152 = v48;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v55);
  *(v34 + 32) = v152;
  Logger.info(_:)(v34, v33, v140);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v56 = *(v51 + 32);
  LOBYTE(v152) = v56;
  v57 = sub_1DB42E620();
  if (v25 != 4 && (v57 & 1) != 0)
  {
    v58 = *(v0 + 1816);
    v59 = *(v0 + 1776);
    v60 = *(v0 + 1688);
    v61 = swift_allocBox();
    v63 = v62;
    sub_1DB30C4B8(v58, v59, &qword_1ECC46F20, qword_1DB5105D0);
    v64 = v145(v59, 1, v60);
    v65 = *(v0 + 1776);
    if (v64 == 1)
    {
      sub_1DB30623C(v65, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v65, v63, type metadata accessor for JetPackAsset);
      if (v25 < 2 && (v131 & 1) == 0)
      {
        sub_1DB50BEB0();
        v102 = *(v0 + 480);
        v150 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v102);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v104 + 48) = 0u;
        *(v104 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v104 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v104 + 64) = 0;
        *(v103 + 32) = v104;
        Logger.info(_:)(v103, v102, v150);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v25 - 1 < 2)
        {
          LOBYTE(v152) = v56;
          if (sub_1DB42E724())
          {
            v105 = *(v0 + 1680);
            v106 = *(v0 + 1672);
            v107 = *(v0 + 1664);
            v108 = *(v0 + 1656);
            v109 = *(v0 + 1648);
            v147 = *(v0 + 1640);
            v110 = *(v0 + 1632);
            v111 = *(v0 + 1624);
            *(v63 + *(*(v0 + 1688) + 40)) = 1;
            v112 = sub_1DB50ABA0();
            (*(*(v112 - 8) + 56))(v105, 1, 1, v112);
            v113 = *(v110 + 16);
            v152 = *v110;
            v153 = v113;
            v154 = *(v110 + 32);
            sub_1DB468D18(v109, v106, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v111, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v114 = (*(v108 + 80) + 73) & ~*(v108 + 80);
            v115 = (v107 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
            v116 = swift_allocObject();
            *(v116 + 16) = 0;
            *(v116 + 24) = 0;
            *(v116 + 32) = v147;
            v117 = v153;
            *(v116 + 40) = v152;
            *(v116 + 56) = v117;
            *(v116 + 72) = v154;
            sub_1DB468D80(v106, v116 + v114, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v116 + v115) = v61;
            v118 = (v116 + ((v115 + 15) & 0xFFFFFFFFFFFFFFF8));
            v119 = *(v0 + 160);
            v118[3] = *(v0 + 144);
            v118[4] = v119;
            v120 = *(v0 + 128);
            v118[1] = *(v0 + 112);
            v118[2] = v120;
            *v118 = *(v0 + 96);

            sub_1DB467318(v110, v0 + 896);

            sub_1DB4DD85C(0, 0, v105, &unk_1DB51C988, v116);
          }
        }

        v121 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v63, v121, type metadata accessor for JetPackAsset);

        v122 = *(v0 + 1808);
        v123 = *(v0 + 1800);
        v124 = *(v0 + 1792);
        v125 = *(v0 + 1784);
        v126 = *(v0 + 1776);
        v127 = *(v0 + 1768);
        v128 = *(v0 + 1760);
        v129 = *(v0 + 1752);
        v133 = *(v0 + 1744);
        v135 = *(v0 + 1736);
        v137 = *(v0 + 1728);
        v139 = *(v0 + 1720);
        v142 = *(v0 + 1712);
        v144 = *(v0 + 1704);
        v148 = *(v0 + 1680);
        v151 = *(v0 + 1672);
        sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

        v88 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v152) = v56;
  if (sub_1DB42E724())
  {
    if (v25 == 3)
    {
      v66 = *(v0 + 1832);
      (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
    }

    v68 = *(v0 + 1632);
    sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v69 = *(v68 + 32);
    v70 = *(v68 + 16);
    *(v0 + 736) = *v68;
    *(v0 + 752) = v70;
    *(v0 + 768) = v69;
    sub_1DB30BE90(v0 + 16, v0 + 176);
    sub_1DB30BE90(v0 + 56, v0 + 216);
    sub_1DB50AC80();
    v71 = (v0 + 856);
    v72 = *(v0 + 1768);
    v73 = *(v0 + 1760);
    v74 = *(v0 + 1688);
    sub_1DB50BEB0();
    v75 = *(v0 + 400);
    v141 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), v75);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1DB50EE90;
    *&v152 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v77._countAndFlagsBits = 0xD000000000000032;
    v77._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v77);
    sub_1DB30C4B8(v72, v73, &qword_1ECC46F20, qword_1DB5105D0);
    v78 = v145(v73, 1, v74);
    v79 = *(v0 + 1760);
    if (v78 == 1)
    {
      sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = *(v0 + 1688);
      v90 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
      sub_1DB468D80(v79, v90, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v71 = 0u;
    *(v0 + 872) = 0u;
    sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 888) = 0;
    v91 = v152;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_1DB301BC0(0, *(v91 + 2) + 1, 1, v91);
    }

    v93 = *(v91 + 2);
    v92 = *(v91 + 3);
    if (v93 >= v92 >> 1)
    {
      v91 = sub_1DB301BC0((v92 > 1), v93 + 1, 1, v91);
    }

    *(v91 + 2) = v93 + 1;
    v94 = &v91[40 * v93];
    v95 = *v71;
    v96 = *(v0 + 872);
    v94[64] = *(v0 + 888);
    *(v94 + 2) = v95;
    *(v94 + 3) = v96;
    *&v152 = v91;
    sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v97);
    *(v76 + 32) = v152;
    Logger.info(_:)(v76, v75, v141);

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
    v98 = swift_task_alloc();
    *(v0 + 1928) = v98;
    *v98 = v0;
    v98[1] = sub_1DB4559DC;
    v99 = *(v0 + 1768);
    v100 = *(v0 + 1720);
    v101 = *(v0 + 1648);

    return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v100, v0 + 736, v99);
  }

  sub_1DB46628C();
  swift_allocError();
  *v67 = 0;
  swift_willThrow();
  v80 = *(v0 + 1808);
  v81 = *(v0 + 1800);
  v82 = *(v0 + 1792);
  v83 = *(v0 + 1784);
  v84 = *(v0 + 1776);
  v85 = *(v0 + 1768);
  v86 = *(v0 + 1760);
  v87 = *(v0 + 1752);
  v130 = *(v0 + 1744);
  v132 = *(v0 + 1736);
  v134 = *(v0 + 1728);
  v136 = *(v0 + 1720);
  v138 = *(v0 + 1712);
  v143 = *(v0 + 1704);
  v146 = *(v0 + 1680);
  v149 = *(v0 + 1672);
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v88 = *(v0 + 8);
LABEL_43:

  return v88();
}

uint64_t sub_1DB452FC0()
{
  v2 = *(*v1 + 1880);
  v5 = *v1;
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v3 = sub_1DB454440;
  }

  else
  {
    v3 = sub_1DB4530D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4530D4()
{
  v172 = v0;
  sub_1DB467374(*(v0 + 1744), type metadata accessor for JetPackAsset);
  v150 = *(v0 + 1888);
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v2 + 48);
  *(v0 + 1896) = v4;
  *(v0 + 1904) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v164 = v4;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v142 = v5;
  *(v0 + 649) = v5 & 1;
  v7 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v1, v7, &qword_1ECC46F20, qword_1DB5105D0);
  if (v164(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 560);
    v11 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v10);
    (*(v11 + 8))(&v169, v9, v10, v11);
    v8 = v169;
    sub_1DB467374(v9, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v12 = (v0 + 696);
  v13 = *(v0 + 1816);
  v14 = *(v0 + 1784);
  v15 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v156 = *(v0 + 608);
  v160 = *(v0 + 600);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v160);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  *&v169 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0x7341646568636163;
  v17._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  sub_1DB30C4B8(v13, v14, &qword_1ECC46F20, qword_1DB5105D0);
  v18 = v164(v14, 1, v15);
  v19 = *(v0 + 1784);
  if (v18 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v19, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v12 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v21 = v169;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
  }

  v24 = (v0 + 968);
  *(v21 + 2) = v23 + 1;
  v25 = &v21[40 * v23];
  v26 = *v12;
  v27 = *(v0 + 712);
  v25[64] = *(v0 + 728);
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  *&v169 = v21;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v28._countAndFlagsBits = 0x3D73757461747320;
  v28._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  if (v8 == 4)
  {
    v29 = 0;
    *v24 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v24 = v8;
    v29 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v29;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v30 = v169;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
  }

  v33 = *(v0 + 1632);
  *(v30 + 2) = v32 + 1;
  v34 = &v30[40 * v32];
  v35 = *(v0 + 656);
  v36 = *(v0 + 672);
  v34[64] = *(v0 + 688);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  *&v169 = v30;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v16 + 32) = v169;
  Logger.info(_:)(v16, v160, v156);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v38 = *(v33 + 32);
  LOBYTE(v169) = v38;
  v39 = sub_1DB42E620();
  if (v8 != 4 && (v39 & 1) != 0)
  {
    v40 = *(v0 + 1816);
    v41 = *(v0 + 1776);
    v42 = *(v0 + 1688);
    v43 = swift_allocBox();
    v45 = v44;
    sub_1DB30C4B8(v40, v41, &qword_1ECC46F20, qword_1DB5105D0);
    v46 = v164(v41, 1, v42);
    v47 = *(v0 + 1776);
    if (v46 == 1)
    {
      sub_1DB30623C(v47, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v47, v45, type metadata accessor for JetPackAsset);
      if (v8 < 2 && (v142 & 1) == 0)
      {
        sub_1DB50BEB0();
        v114 = *(v0 + 480);
        v167 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v114);
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v116 + 48) = 0u;
        *(v116 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v116 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v116 + 64) = 0;
        *(v115 + 32) = v116;
        Logger.info(_:)(v115, v114, v167);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v8 - 1 < 2)
        {
          LOBYTE(v169) = v38;
          if (sub_1DB42E724())
          {
            v117 = *(v0 + 1680);
            v118 = *(v0 + 1672);
            v119 = *(v0 + 1664);
            v120 = *(v0 + 1656);
            v121 = *(v0 + 1648);
            v162 = *(v0 + 1640);
            v122 = *(v0 + 1632);
            v123 = *(v0 + 1624);
            *(v45 + *(*(v0 + 1688) + 40)) = 1;
            v124 = sub_1DB50ABA0();
            (*(*(v124 - 8) + 56))(v117, 1, 1, v124);
            v125 = *(v122 + 16);
            v169 = *v122;
            v170 = v125;
            v171 = *(v122 + 32);
            sub_1DB468D18(v121, v118, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v123, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v126 = (*(v120 + 80) + 73) & ~*(v120 + 80);
            v127 = (v119 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
            v128 = swift_allocObject();
            *(v128 + 16) = 0;
            *(v128 + 24) = 0;
            *(v128 + 32) = v162;
            v129 = v170;
            *(v128 + 40) = v169;
            *(v128 + 56) = v129;
            *(v128 + 72) = v171;
            sub_1DB468D80(v118, v128 + v126, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v128 + v127) = v43;
            v130 = (v128 + ((v127 + 15) & 0xFFFFFFFFFFFFFFF8));
            v131 = *(v0 + 160);
            v130[3] = *(v0 + 144);
            v130[4] = v131;
            v132 = *(v0 + 128);
            v130[1] = *(v0 + 112);
            v130[2] = v132;
            *v130 = *(v0 + 96);

            sub_1DB467318(v122, v0 + 896);

            sub_1DB4DD85C(0, 0, v117, &unk_1DB51C988, v128);
          }
        }

        v133 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v45, v133, type metadata accessor for JetPackAsset);

        goto LABEL_66;
      }
    }
  }

  LOBYTE(v169) = v38;
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
LABEL_50:
    v92 = *(v0 + 1808);
    v93 = *(v0 + 1800);
    v94 = *(v0 + 1792);
    v95 = *(v0 + 1784);
    v96 = *(v0 + 1776);
    v97 = *(v0 + 1768);
    v98 = *(v0 + 1760);
    v99 = *(v0 + 1752);
    v143 = *(v0 + 1744);
    v144 = *(v0 + 1736);
    v146 = *(v0 + 1728);
    v148 = *(v0 + 1720);
    v151 = *(v0 + 1712);
    v154 = *(v0 + 1704);
    v158 = *(v0 + 1680);
    v166 = *(v0 + 1672);
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v100 = *(v0 + 8);
LABEL_51:

    return v100();
  }

  if (v8 == 3)
  {
    v48 = *(v0 + 1832);
    (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
  }

  v50 = *(v0 + 1632);
  sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v51 = *(v50 + 32);
  v52 = *(v50 + 16);
  *(v0 + 736) = *v50;
  *(v0 + 752) = v52;
  *(v0 + 768) = v51;
  sub_1DB30BE90(v0 + 16, v0 + 176);
  sub_1DB30BE90(v0 + 56, v0 + 216);
  sub_1DB50AC80();
  if (v150)
  {
    v53 = *(v0 + 1904);
    v54 = *(v0 + 1896);
    v55 = *(v0 + 1816);
    v56 = *(v0 + 1752);
    v57 = *(v0 + 1688);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_1DB30C4B8(v55, v56, &qword_1ECC46F20, qword_1DB5105D0);
    if (v54(v56, 1, v57) == 1)
    {
      sub_1DB30623C(*(v0 + 1752), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_49:
      v91 = *(v0 + 1768);
      swift_willThrow();
      sub_1DB30623C(v91, &qword_1ECC46F20, qword_1DB5105D0);
      goto LABEL_50;
    }

    v67 = *(v0 + 650);
    sub_1DB468D80(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
    if (v67 == 4 || *(v0 + 650) || *(v0 + 649) != 1)
    {
      sub_1DB467374(*(v0 + 1704), type metadata accessor for JetPackAsset);
      goto LABEL_49;
    }

    v68 = *(v0 + 1920);
    v69 = *(v0 + 1912);
    sub_1DB50BEB0();
    v70 = *(v0 + 520);
    v71 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v70);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1DB50EE90;
    *&v169 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v73._countAndFlagsBits = 0xD000000000000025;
    v73._object = 0x80000001DB52F200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v73);
    swift_getErrorValue();
    v74 = *(v0 + 1416);
    v75 = *(v0 + 1424);
    *(v0 + 1120) = v75;
    v76 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
    (*(*(v75 - 8) + 16))(v76, v74, v75);
    sub_1DB30C4B8(v0 + 1096, v0 + 1160, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;
    sub_1DB30C2D8(v0 + 1160, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 848) = 0;
    v77 = v169;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_1DB301BC0(0, *(v77 + 2) + 1, 1, v77);
    }

    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    if (v79 >= v78 >> 1)
    {
      v77 = sub_1DB301BC0((v78 > 1), v79 + 1, 1, v77);
    }

    v80 = *(v0 + 1920);
    v81 = *(v0 + 1912);
    v82 = *(v0 + 1704);
    v153 = *(v0 + 1768);
    v157 = *(v0 + 1616);
    *(v77 + 2) = v79 + 1;
    v83 = &v77[40 * v79];
    v84 = *(v0 + 816);
    v85 = *(v0 + 832);
    v83[64] = *(v0 + 848);
    *(v83 + 2) = v84;
    *(v83 + 3) = v85;
    v165 = v82;
    *&v169 = v77;
    sub_1DB30623C(v0 + 1096, &qword_1ECC426B0, &qword_1DB50EEB0);
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v86);
    *(v72 + 32) = v169;
    Logger.error(_:)(v72, v70, v71);

    __swift_destroy_boxed_opaque_existential_0((v0 + 496));
    sub_1DB50BEB0();
    v88 = *(v0 + 440);
    v87 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v88);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1DB50EE90;
    *(v0 + 1248) = MEMORY[0x1E69E6158];
    *(v0 + 1224) = 0xD000000000000075;
    *(v0 + 1232) = 0x80000001DB52F230;
    *(v90 + 48) = 0u;
    *(v90 + 32) = 0u;
    sub_1DB30C2D8(v0 + 1224, v90 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v90 + 64) = 0;
    *(v89 + 32) = v90;
    Logger.warning(_:)(v89, v88, v87);

    sub_1DB30623C(v153, &qword_1ECC46F20, qword_1DB5105D0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 416));
    sub_1DB468D80(v165, v157, type metadata accessor for JetPackAsset);
LABEL_66:
    v134 = *(v0 + 1808);
    v135 = *(v0 + 1800);
    v136 = *(v0 + 1792);
    v137 = *(v0 + 1784);
    v138 = *(v0 + 1776);
    v139 = *(v0 + 1768);
    v140 = *(v0 + 1760);
    v141 = *(v0 + 1752);
    v145 = *(v0 + 1744);
    v147 = *(v0 + 1736);
    v149 = *(v0 + 1728);
    v152 = *(v0 + 1720);
    v155 = *(v0 + 1712);
    v159 = *(v0 + 1704);
    v163 = *(v0 + 1680);
    v168 = *(v0 + 1672);
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v100 = *(v0 + 8);
    goto LABEL_51;
  }

  v58 = (v0 + 856);
  v59 = *(v0 + 1768);
  v60 = *(v0 + 1760);
  v61 = *(v0 + 1688);
  sub_1DB50BEB0();
  v62 = *(v0 + 400);
  v161 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v62);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1DB50EE90;
  *&v169 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v64._countAndFlagsBits = 0xD000000000000032;
  v64._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v64);
  sub_1DB30C4B8(v59, v60, &qword_1ECC46F20, qword_1DB5105D0);
  v65 = v164(v60, 1, v61);
  v66 = *(v0 + 1760);
  if (v65 == 1)
  {
    sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1288) = 0u;
    *(v0 + 1304) = 0u;
  }

  else
  {
    *(v0 + 1312) = *(v0 + 1688);
    v102 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
    sub_1DB468D80(v66, v102, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v58 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v103 = v169;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v103 = sub_1DB301BC0(0, *(v103 + 2) + 1, 1, v103);
  }

  v105 = *(v103 + 2);
  v104 = *(v103 + 3);
  if (v105 >= v104 >> 1)
  {
    v103 = sub_1DB301BC0((v104 > 1), v105 + 1, 1, v103);
  }

  *(v103 + 2) = v105 + 1;
  v106 = &v103[40 * v105];
  v107 = *v58;
  v108 = *(v0 + 872);
  v106[64] = *(v0 + 888);
  *(v106 + 2) = v107;
  *(v106 + 3) = v108;
  *&v169 = v103;
  sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v109);
  *(v63 + 32) = v169;
  Logger.info(_:)(v63, v62, v161);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v110 = swift_task_alloc();
  *(v0 + 1928) = v110;
  *v110 = v0;
  v110[1] = sub_1DB4559DC;
  v111 = *(v0 + 1768);
  v112 = *(v0 + 1720);
  v113 = *(v0 + 1648);

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v112, v0 + 736, v111);
}

uint64_t sub_1DB454440()
{
  v154 = v0;
  v1 = (v0 + 776);
  sub_1DB467374(*(v0 + 1744), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1888);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *&v151 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1472);
  *(v0 + 1280) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1256));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 1256, v0 + 1064, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1064, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v10 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v151 + 16) + 1, 1, v151);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 792);
  v13[64] = *(v0 + 808);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  *&v151 = v10;
  sub_1DB30623C(v0 + 1256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v17 = *(v0 + 1816);
  v18 = *(v0 + 1696);
  v19 = *(v0 + 1688);
  v20 = *(v18 + 48);
  *(v0 + 1896) = v20;
  *(v0 + 1904) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v144 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v130 = v21;
  *(v0 + 649) = v21 & 1;
  v23 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v144(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 560);
    v27 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v26);
    (*(v27 + 8))(&v151, v25, v26, v27);
    v24 = v151;
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 696);
  v29 = *(v0 + 1816);
  v30 = *(v0 + 1784);
  v31 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v32 = *(v0 + 600);
  v139 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v32);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1DB50EE90;
  *&v151 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v34._countAndFlagsBits = 0x7341646568636163;
  v34._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  sub_1DB30C4B8(v29, v30, &qword_1ECC46F20, qword_1DB5105D0);
  v35 = v144(v30, 1, v31);
  v36 = *(v0 + 1784);
  if (v35 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    v37 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v36, v37, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v28 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v38 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
  }

  v41 = (v0 + 968);
  *(v38 + 2) = v40 + 1;
  v42 = &v38[40 * v40];
  v43 = *v28;
  v44 = *(v0 + 712);
  v42[64] = *(v0 + 728);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  *&v151 = v38;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v46;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v47 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DB301BC0(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DB301BC0((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1632);
  *(v47 + 2) = v49 + 1;
  v51 = &v47[40 * v49];
  v52 = *(v0 + 656);
  v53 = *(v0 + 672);
  v51[64] = *(v0 + 688);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  *&v151 = v47;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v33 + 32) = v151;
  Logger.info(_:)(v33, v32, v139);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v55 = *(v50 + 32);
  LOBYTE(v151) = v55;
  v56 = sub_1DB42E620();
  if (v24 != 4 && (v56 & 1) != 0)
  {
    v57 = *(v0 + 1816);
    v58 = *(v0 + 1776);
    v59 = *(v0 + 1688);
    v60 = swift_allocBox();
    v62 = v61;
    sub_1DB30C4B8(v57, v58, &qword_1ECC46F20, qword_1DB5105D0);
    v63 = v144(v58, 1, v59);
    v64 = *(v0 + 1776);
    if (v63 == 1)
    {
      sub_1DB30623C(v64, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v64, v62, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v130 & 1) == 0)
      {
        sub_1DB50BEB0();
        v101 = *(v0 + 480);
        v149 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v101);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v103 + 48) = 0u;
        *(v103 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v103 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v103 + 64) = 0;
        *(v102 + 32) = v103;
        Logger.info(_:)(v102, v101, v149);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v24 - 1 < 2)
        {
          LOBYTE(v151) = v55;
          if (sub_1DB42E724())
          {
            v104 = *(v0 + 1680);
            v105 = *(v0 + 1672);
            v106 = *(v0 + 1664);
            v107 = *(v0 + 1656);
            v108 = *(v0 + 1648);
            v146 = *(v0 + 1640);
            v109 = *(v0 + 1632);
            v110 = *(v0 + 1624);
            *(v62 + *(*(v0 + 1688) + 40)) = 1;
            v111 = sub_1DB50ABA0();
            (*(*(v111 - 8) + 56))(v104, 1, 1, v111);
            v112 = *(v109 + 16);
            v151 = *v109;
            v152 = v112;
            v153 = *(v109 + 32);
            sub_1DB468D18(v108, v105, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v110, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v113 = (*(v107 + 80) + 73) & ~*(v107 + 80);
            v114 = (v106 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
            v115 = swift_allocObject();
            *(v115 + 16) = 0;
            *(v115 + 24) = 0;
            *(v115 + 32) = v146;
            v116 = v152;
            *(v115 + 40) = v151;
            *(v115 + 56) = v116;
            *(v115 + 72) = v153;
            sub_1DB468D80(v105, v115 + v113, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v115 + v114) = v60;
            v117 = (v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8));
            v118 = *(v0 + 160);
            v117[3] = *(v0 + 144);
            v117[4] = v118;
            v119 = *(v0 + 128);
            v117[1] = *(v0 + 112);
            v117[2] = v119;
            *v117 = *(v0 + 96);

            sub_1DB467318(v109, v0 + 896);

            sub_1DB4DD85C(0, 0, v104, &unk_1DB51C988, v115);
          }
        }

        v120 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v62, v120, type metadata accessor for JetPackAsset);

        v121 = *(v0 + 1808);
        v122 = *(v0 + 1800);
        v123 = *(v0 + 1792);
        v124 = *(v0 + 1784);
        v125 = *(v0 + 1776);
        v126 = *(v0 + 1768);
        v127 = *(v0 + 1760);
        v128 = *(v0 + 1752);
        v132 = *(v0 + 1744);
        v134 = *(v0 + 1736);
        v136 = *(v0 + 1728);
        v138 = *(v0 + 1720);
        v141 = *(v0 + 1712);
        v143 = *(v0 + 1704);
        v147 = *(v0 + 1680);
        v150 = *(v0 + 1672);
        sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

        v87 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v151) = v55;
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      v65 = *(v0 + 1832);
      (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
    }

    v67 = *(v0 + 1632);
    sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v68 = *(v67 + 32);
    v69 = *(v67 + 16);
    *(v0 + 736) = *v67;
    *(v0 + 752) = v69;
    *(v0 + 768) = v68;
    sub_1DB30BE90(v0 + 16, v0 + 176);
    sub_1DB30BE90(v0 + 56, v0 + 216);
    sub_1DB50AC80();
    v70 = (v0 + 856);
    v71 = *(v0 + 1768);
    v72 = *(v0 + 1760);
    v73 = *(v0 + 1688);
    sub_1DB50BEB0();
    v74 = *(v0 + 400);
    v140 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), v74);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1DB50EE90;
    *&v151 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v76._countAndFlagsBits = 0xD000000000000032;
    v76._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v76);
    sub_1DB30C4B8(v71, v72, &qword_1ECC46F20, qword_1DB5105D0);
    v77 = v144(v72, 1, v73);
    v78 = *(v0 + 1760);
    if (v77 == 1)
    {
      sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = *(v0 + 1688);
      v89 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
      sub_1DB468D80(v78, v89, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v70 = 0u;
    *(v0 + 872) = 0u;
    sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 888) = 0;
    v90 = v151;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_1DB301BC0(0, *(v90 + 2) + 1, 1, v90);
    }

    v92 = *(v90 + 2);
    v91 = *(v90 + 3);
    if (v92 >= v91 >> 1)
    {
      v90 = sub_1DB301BC0((v91 > 1), v92 + 1, 1, v90);
    }

    *(v90 + 2) = v92 + 1;
    v93 = &v90[40 * v92];
    v94 = *v70;
    v95 = *(v0 + 872);
    v93[64] = *(v0 + 888);
    *(v93 + 2) = v94;
    *(v93 + 3) = v95;
    *&v151 = v90;
    sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v96);
    *(v75 + 32) = v151;
    Logger.info(_:)(v75, v74, v140);

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
    v97 = swift_task_alloc();
    *(v0 + 1928) = v97;
    *v97 = v0;
    v97[1] = sub_1DB4559DC;
    v98 = *(v0 + 1768);
    v99 = *(v0 + 1720);
    v100 = *(v0 + 1648);

    return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v99, v0 + 736, v98);
  }

  sub_1DB46628C();
  swift_allocError();
  *v66 = 0;
  swift_willThrow();
  v79 = *(v0 + 1808);
  v80 = *(v0 + 1800);
  v81 = *(v0 + 1792);
  v82 = *(v0 + 1784);
  v83 = *(v0 + 1776);
  v84 = *(v0 + 1768);
  v85 = *(v0 + 1760);
  v86 = *(v0 + 1752);
  v129 = *(v0 + 1744);
  v131 = *(v0 + 1736);
  v133 = *(v0 + 1728);
  v135 = *(v0 + 1720);
  v137 = *(v0 + 1712);
  v142 = *(v0 + 1704);
  v145 = *(v0 + 1680);
  v148 = *(v0 + 1672);
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v87 = *(v0 + 8);
LABEL_43:

  return v87();
}

uint64_t sub_1DB4559DC()
{
  v2 = *(*v1 + 1928);
  v5 = *v1;
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v3 = sub_1DB455E2C;
  }

  else
  {
    v3 = sub_1DB455AF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB455AF0()
{
  v1 = v0[216];
  v2 = v0[211];
  sub_1DB468D80(v0[215], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v14 = v0[25];
    v15 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v14);
    v16 = *(v15 + 8);
    v31 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[243] = v18;
    *v18 = v0;
    v18[1] = sub_1DB4564F0;
    v19 = v0[216];
    v20 = v0[214];

    return v31(v20, v19, v14, v15);
  }

  else
  {
    v5 = v0[221];
    sub_1DB468D80(v0[216], v0[202], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    sub_1DB30623C(v5, &qword_1ECC46F20, qword_1DB5105D0);
    v6 = v0[226];
    v7 = v0[225];
    v8 = v0[224];
    v9 = v0[223];
    v10 = v0[222];
    v11 = v0[221];
    v21 = v0[220];
    v22 = v0[219];
    v23 = v0[218];
    v24 = v0[217];
    v25 = v0[216];
    v26 = v0[215];
    v27 = v0[214];
    v28 = v0[213];
    v29 = v0[210];
    v30 = v0[209];
    sub_1DB30623C(v0[227], &qword_1ECC46F20, qword_1DB5105D0);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DB455E2C()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1752);
  v6 = *(v0 + 1688);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB30C4B8(v4, v5, &qword_1ECC46F20, qword_1DB5105D0);
  v67 = v1;
  if (v3(v5, 1, v6) == 1)
  {
    sub_1DB30623C(*(v0 + 1752), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_12:
    v40 = *(v0 + 1768);
    swift_willThrow();
    sub_1DB30623C(v40, &qword_1ECC46F20, qword_1DB5105D0);
    v41 = *(v0 + 1808);
    v42 = *(v0 + 1800);
    v43 = *(v0 + 1792);
    v44 = *(v0 + 1784);
    v45 = *(v0 + 1776);
    v46 = *(v0 + 1768);
    v48 = *(v0 + 1760);
    v49 = *(v0 + 1752);
    v50 = *(v0 + 1744);
    v52 = *(v0 + 1736);
    v54 = *(v0 + 1728);
    v56 = *(v0 + 1720);
    v59 = *(v0 + 1712);
    v62 = *(v0 + 1704);
    v64 = *(v0 + 1680);
    v66 = *(v0 + 1672);
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v39 = *(v0 + 8);
    goto LABEL_13;
  }

  v7 = *(v0 + 650);
  sub_1DB468D80(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
  if (v7 == 4 || *(v0 + 650) || *(v0 + 649) != 1)
  {
    sub_1DB467374(*(v0 + 1704), type metadata accessor for JetPackAsset);
    goto LABEL_12;
  }

  v8 = *(v0 + 1920);
  v9 = *(v0 + 1912);
  sub_1DB50BEB0();
  v10 = *(v0 + 520);
  v11 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 496), v10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50EE90;
  v69 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v13._object = 0x80000001DB52F200;
  v13._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  swift_getErrorValue();
  v14 = *(v0 + 1416);
  v15 = *(v0 + 1424);
  *(v0 + 1120) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v14, v15);
  sub_1DB30C4B8(v0 + 1096, v0 + 1160, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1DB30C2D8(v0 + 1160, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 848) = 0;
  v17 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1DB301BC0(0, *(v69 + 2) + 1, 1, v69);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
  }

  v20 = *(v0 + 1920);
  v21 = *(v0 + 1912);
  v22 = *(v0 + 1768);
  v57 = *(v0 + 1616);
  v60 = *(v0 + 1704);
  *(v17 + 2) = v19 + 1;
  v23 = &v17[40 * v19];
  v24 = *(v0 + 816);
  v25 = *(v0 + 832);
  v23[64] = *(v0 + 848);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1DB30623C(v0 + 1096, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v12 + 32) = v17;
  Logger.error(_:)(v12, v10, v11);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  sub_1DB50BEB0();
  v27 = *(v0 + 440);
  v28 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v27);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DB50EE90;
  *(v0 + 1248) = MEMORY[0x1E69E6158];
  *(v0 + 1224) = 0xD000000000000075;
  *(v0 + 1232) = 0x80000001DB52F230;
  *(v30 + 48) = 0u;
  *(v30 + 32) = 0u;
  sub_1DB30C2D8(v0 + 1224, v30 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v30 + 64) = 0;
  *(v29 + 32) = v30;
  Logger.warning(_:)(v29, v27, v28);

  sub_1DB30623C(v22, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  sub_1DB468D80(v60, v57, type metadata accessor for JetPackAsset);
  v31 = *(v0 + 1808);
  v32 = *(v0 + 1800);
  v33 = *(v0 + 1792);
  v34 = *(v0 + 1784);
  v35 = *(v0 + 1776);
  v36 = *(v0 + 1768);
  v37 = *(v0 + 1760);
  v38 = *(v0 + 1752);
  v51 = *(v0 + 1744);
  v53 = *(v0 + 1736);
  v55 = *(v0 + 1728);
  v58 = *(v0 + 1720);
  v61 = *(v0 + 1712);
  v63 = *(v0 + 1704);
  v65 = *(v0 + 1680);
  v68 = *(v0 + 1672);
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v39 = *(v0 + 8);
LABEL_13:

  return v39();
}

uint64_t sub_1DB4564F0()
{
  v2 = *v1;
  v3 = *(*v1 + 1944);
  v6 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v4 = sub_1DB4567F8;
  }

  else
  {
    sub_1DB467374(*(v2 + 1712), type metadata accessor for JetPackAsset);
    v4 = sub_1DB456620;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB456620()
{
  v1 = v0[221];
  sub_1DB468D80(v0[216], v0[202], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
  v2 = v0[226];
  v3 = v0[225];
  v4 = v0[224];
  v5 = v0[223];
  v6 = v0[222];
  v7 = v0[221];
  v10 = v0[220];
  v11 = v0[219];
  v12 = v0[218];
  v13 = v0[217];
  v14 = v0[216];
  v15 = v0[215];
  v16 = v0[214];
  v17 = v0[213];
  v18 = v0[210];
  v19 = v0[209];
  sub_1DB30623C(v0[227], &qword_1ECC46F20, qword_1DB5105D0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB4567F8()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1920);
  v3 = *(v0 + 1912);
  sub_1DB50BEB0();
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 296), v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v38 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001DB52F2F0;
  v7._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 1440);
  v9 = *(v0 + 1448);
  *(v0 + 1376) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1352));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_1DB30C4B8(v0 + 1352, v0 + 1384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  sub_1DB30C2D8(v0 + 1384, v0 + 616, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 648) = 0;
  v11 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = *(v0 + 1952);
  *(v11 + 2) = v13 + 1;
  v15 = &v11[40 * v13];
  v16 = *(v0 + 616);
  v17 = *(v0 + 632);
  v15[64] = *(v0 + 648);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1DB30623C(v0 + 1352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v6 + 32) = v11;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  v19 = *(v0 + 1768);
  sub_1DB468D80(*(v0 + 1728), *(v0 + 1616), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB30623C(v19, &qword_1ECC46F20, qword_1DB5105D0);
  v20 = *(v0 + 1808);
  v21 = *(v0 + 1800);
  v22 = *(v0 + 1792);
  v23 = *(v0 + 1784);
  v24 = *(v0 + 1776);
  v25 = *(v0 + 1768);
  v28 = *(v0 + 1760);
  v29 = *(v0 + 1752);
  v30 = *(v0 + 1744);
  v31 = *(v0 + 1736);
  v32 = *(v0 + 1728);
  v33 = *(v0 + 1720);
  v34 = *(v0 + 1712);
  v35 = *(v0 + 1704);
  v36 = *(v0 + 1680);
  v37 = *(v0 + 1672);
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1DB456BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[140] = a7;
  v7[139] = a6;
  v7[138] = a5;
  v7[137] = a4;
  v7[136] = a3;
  v7[135] = a2;
  v7[134] = a1;
  v8 = *(a6 - 8);
  v7[141] = v8;
  v7[142] = *(v8 + 64);
  v7[143] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[144] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[145] = v10;
  v7[146] = *(v10 + 64);
  v7[147] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750) - 8) + 64) + 15;
  v7[148] = swift_task_alloc();
  v12 = type metadata accessor for JetPackAsset(0);
  v7[149] = v12;
  v13 = *(v12 - 8);
  v7[150] = v13;
  v14 = *(v13 + 64) + 15;
  v7[151] = swift_task_alloc();
  v7[152] = swift_task_alloc();
  v7[153] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v7[154] = swift_task_alloc();
  v7[155] = swift_task_alloc();
  v7[156] = swift_task_alloc();
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();
  v7[159] = swift_task_alloc();
  v7[160] = swift_task_alloc();
  v7[161] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB456E60, 0, 0);
}

uint64_t sub_1DB456E60()
{
  v1 = v0[161];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[144];
  v5 = v0[140];
  v6 = v0[139];
  v7 = v0[136];
  v8 = v0[135];
  v9 = *(v2 + 56);
  v0[162] = v9;
  v0[163] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v3);
  v10 = v8[3];
  v11 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[164] = AssociatedConformanceWitness;
  v13 = *(AssociatedConformanceWitness + 16);
  v0[165] = v13;
  v0[166] = (AssociatedConformanceWitness + 16) & 0xFFFFFFFFFFFFLL | 0x4839000000000000;
  v14 = v13(v4, AssociatedConformanceWitness);
  v16 = v15;
  v0[167] = v15;
  v17 = *(v11 + 16);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[168] = v19;
  *v19 = v0;
  v19[1] = sub_1DB45704C;
  v20 = v0[160];

  return v22(v20, v14, v16, v10, v11);
}

uint64_t sub_1DB45704C()
{
  v2 = *v1;
  v3 = *(*v1 + 1344);
  v7 = *v1;
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v4 = sub_1DB459334;
  }

  else
  {
    v5 = *(v2 + 1336);

    v4 = sub_1DB457168;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DB457168()
{
  v152 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);
  sub_1DB30C2D8(*(v0 + 1280), v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30C4B8(v1, v2, &qword_1ECC46F20, qword_1DB5105D0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1272);
  if (v5 == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC46F20, qword_1DB5105D0);
    goto LABEL_3;
  }

  sub_1DB468D80(v6, *(v0 + 1224), type metadata accessor for JetPackAsset);
  if (qword_1EE30E1A8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1352);
  v13 = *(v0 + 1328);
  v14 = *(v0 + 1088);
  v15 = qword_1EE312DD8;
  *(v0 + 1040) = (*(v0 + 1320))(*(v0 + 1152), *(v0 + 1312));
  *(v0 + 1048) = v16;
  v17 = *(v15 + 16);
  *(swift_task_alloc() + 16) = v0 + 1040;
  os_unfair_lock_lock((v17 + 24));
  sub_1DB469568((v17 + 16), v151);
  os_unfair_lock_unlock((v17 + 24));
  if (!v12)
  {
    v61 = v151[0];

    if ((v61 & 1) == 0)
    {
      sub_1DB467374(*(v0 + 1224), type metadata accessor for JetPackAsset);
LABEL_3:
      v7 = *(v0 + 1288);
      v8 = *(v0 + 1200);
      v9 = *(v0 + 1192);
      v10 = *(v8 + 48);
      *(v0 + 1376) = v10;
      *(v0 + 1384) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v141 = v10;
      if (v10(v7, 1, v9))
      {
        v11 = 0;
      }

      else
      {
        v18 = v7 + *(v9 + 20);
        v11 = *(v18 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
      }

      v127 = v11;
      *(v0 + 489) = v11 & 1;
      v19 = *(v0 + 1264);
      sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
      sub_1DB30C4B8(v7, v19, &qword_1ECC46F20, qword_1DB5105D0);
      if (v141(v19, 1, v9) == 1)
      {
        v20 = 4;
      }

      else
      {
        v21 = *(v0 + 1216);
        sub_1DB468D80(*(v0 + 1264), v21, type metadata accessor for JetPackAsset);
        v22 = *(v0 + 320);
        v23 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v22);
        (*(v23 + 8))(v151, v21, v22, v23);
        v20 = LOBYTE(v151[0]);
        sub_1DB467374(v21, type metadata accessor for JetPackAsset);
      }

      *(v0 + 490) = v20;
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 1288);
      v25 = *(v0 + 1256);
      v26 = *(v0 + 1192);
      *(v0 + 1392) = qword_1EE30C918;
      sub_1DB50BEB0();
      v133 = *(v0 + 368);
      v137 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 336), v137);
      *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DB50EE90;
      v151[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v28._countAndFlagsBits = 0x7341646568636163;
      v28._object = 0xEC0000003D746573;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      sub_1DB30C4B8(v24, v25, &qword_1ECC46F20, qword_1DB5105D0);
      v29 = v141(v25, 1, v26);
      v30 = *(v0 + 1256);
      if (v29 == 1)
      {
        sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
        *(v0 + 840) = 0u;
        *(v0 + 856) = 0u;
      }

      else
      {
        *(v0 + 864) = *(v0 + 1192);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
        sub_1DB468D80(v30, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
      }

      sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 528) = 0;
      v32 = v151[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DB301BC0(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v32);
      }

      v35 = (v0 + 712);
      *(v32 + 2) = v34 + 1;
      v36 = &v32[40 * v34];
      v37 = *(v0 + 496);
      v38 = *(v0 + 512);
      v36[64] = *(v0 + 528);
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v151[0] = v32;
      sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
      v39._countAndFlagsBits = 0x3D73757461747320;
      v39._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      if (v20 == 4)
      {
        v40 = 0;
        *v35 = 0;
        *(v0 + 720) = 0;
        *(v0 + 728) = 0;
      }

      else
      {
        *v35 = v20;
        v40 = &type metadata for JetPackAssetCacheStatus;
      }

      *(v0 + 736) = v40;
      sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 608) = 0;
      v41 = v151[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1DB301BC0(0, *(v41 + 2) + 1, 1, v41);
      }

      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1DB301BC0((v42 > 1), v43 + 1, 1, v41);
      }

      v44 = *(v0 + 1312);
      v45 = *(v0 + 1152);
      v46 = *(v0 + 1088);
      *(v41 + 2) = v43 + 1;
      v47 = &v41[40 * v43];
      v48 = *(v0 + 576);
      v49 = *(v0 + 592);
      v47[64] = *(v0 + 608);
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      v151[0] = v41;
      sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      *(v27 + 32) = v151[0];
      Logger.info(_:)(v27, v137, v133);

      __swift_destroy_boxed_opaque_existential_0((v0 + 336));
      v51 = *(v44 + 24);
      v51(v151, v45, v44);
      v52 = sub_1DB42E620();
      if (v20 != 4 && (v52 & 1) != 0)
      {
        v53 = *(v0 + 1288);
        v54 = *(v0 + 1248);
        v55 = *(v0 + 1192);
        v56 = swift_allocBox();
        v58 = v57;
        sub_1DB30C4B8(v53, v54, &qword_1ECC46F20, qword_1DB5105D0);
        v59 = v141(v54, 1, v55);
        v60 = *(v0 + 1248);
        if (v59 == 1)
        {
          sub_1DB30623C(v60, &qword_1ECC46F20, qword_1DB5105D0);
          swift_deallocBox();
        }

        else
        {
          sub_1DB468D80(v60, v58, type metadata accessor for JetPackAsset);
          v75 = v20 - 1;
          if (v20 <= 1 && (v127 & 1) == 0)
          {
            sub_1DB50BEB0();
            v96 = *(v0 + 400);
            v148 = *(v0 + 408);
            __swift_project_boxed_opaque_existential_1((v0 + 376), v96);
            v97 = swift_allocObject();
            *(v97 + 16) = xmmword_1DB50EE90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
            v98 = swift_allocObject();
            *(v98 + 16) = xmmword_1DB50EE90;
            *(v0 + 896) = MEMORY[0x1E69E6158];
            *(v0 + 872) = 0xD000000000000012;
            *(v0 + 880) = 0x80000001DB52F320;
            *(v98 + 48) = 0u;
            *(v98 + 32) = 0u;
            sub_1DB30C2D8(v0 + 872, v98 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
            *(v98 + 64) = 0;
            *(v97 + 32) = v98;
            Logger.info(_:)(v97, v96, v148);

            __swift_destroy_boxed_opaque_existential_0((v0 + 376));
            if (v75 <= 1)
            {
              v99 = *(v0 + 1088);
              v51(v151, *(v0 + 1152), *(v0 + 1312));
              if (sub_1DB42E724())
              {
                v100 = *(v0 + 1184);
                v101 = *(v0 + 1176);
                v102 = *(v0 + 1160);
                v103 = *(v0 + 1152);
                v104 = *(v0 + 1144);
                v126 = v104;
                v129 = *(v0 + 1136);
                v131 = *(v0 + 1168);
                v144 = *(v0 + 1128);
                v135 = *(v0 + 1096);
                v139 = v100;
                v125 = *(v0 + 1088);
                v123 = *(v0 + 1104);
                v124 = *(v0 + 1080);
                v105 = *(*(v0 + 1192) + 40);
                v106 = sub_1DB50ABA0();
                v149 = *(v0 + 1112);
                *(v58 + v105) = 1;
                (*(*(v106 - 8) + 56))(v100, 1, 1, v106);
                (*(v102 + 16))(v101, v125, v103);
                (*(v144 + 16))(v104, v123);
                sub_1DB30C4B8(v124, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
                v107 = (*(v102 + 80) + 56) & ~*(v102 + 80);
                v108 = (v131 + *(v144 + 80) + v107) & ~*(v144 + 80);
                v109 = (v129 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
                v110 = swift_allocObject();
                *(v110 + 16) = 0;
                *(v110 + 24) = 0;
                *(v110 + 32) = v149;
                *(v110 + 48) = v135;
                (*(v102 + 32))(v110 + v107, v101, v103);
                (*(v144 + 32))(v110 + v108, v126, v149);
                *(v110 + v109) = v56;
                v111 = (v110 + ((v109 + 15) & 0xFFFFFFFFFFFFFFF8));
                v112 = *(v0 + 160);
                v111[3] = *(v0 + 144);
                v111[4] = v112;
                v113 = *(v0 + 128);
                v111[1] = *(v0 + 112);
                v111[2] = v113;
                *v111 = *(v0 + 96);

                sub_1DB4DD85C(0, 0, v139, &unk_1DB51CC48, v110);
              }
            }

            v114 = *(v0 + 1072);
            swift_beginAccess();
            sub_1DB468D18(v58, v114, type metadata accessor for JetPackAsset);

            v115 = *(v0 + 1280);
            v116 = *(v0 + 1272);
            v117 = *(v0 + 1264);
            v118 = *(v0 + 1256);
            v119 = *(v0 + 1248);
            v120 = *(v0 + 1240);
            v121 = *(v0 + 1232);
            v122 = *(v0 + 1224);
            v132 = *(v0 + 1216);
            v136 = *(v0 + 1208);
            v140 = *(v0 + 1184);
            v145 = *(v0 + 1176);
            v150 = *(v0 + 1144);
            sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

            v87 = *(v0 + 8);
LABEL_46:

            v87();
            return;
          }
        }
      }

      v76 = *(v0 + 1088);
      v51(v151, *(v0 + 1152), *(v0 + 1312));
      if (sub_1DB42E724())
      {
        if (v20 == 3)
        {
          v77 = *(v0 + 1304);
          (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
        }

        else
        {
          sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
        }

        sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
        v88 = swift_task_alloc();
        *(v0 + 1408) = v88;
        *v88 = v0;
        v88[1] = sub_1DB4590AC;
        v89 = *(v0 + 1240);
        v90 = *(v0 + 1120);
        v91 = *(v0 + 1112);
        v92 = *(v0 + 1104);
        v93 = *(v0 + 1096);
        v94 = *(v0 + 1088);
        v95 = *(v0 + 1072);

        sub_1DB45DF88(v95, v94, v92, v89, v0 + 16, v0 + 56, v91, v90);
        return;
      }

      sub_1DB46628C();
      swift_allocError();
      *v78 = 0;
      swift_willThrow();
      v79 = *(v0 + 1280);
      v80 = *(v0 + 1272);
      v81 = *(v0 + 1264);
      v82 = *(v0 + 1256);
      v83 = *(v0 + 1248);
      v84 = *(v0 + 1240);
      v85 = *(v0 + 1232);
      v86 = *(v0 + 1224);
      v128 = *(v0 + 1216);
      v130 = *(v0 + 1208);
      v134 = *(v0 + 1184);
      v138 = *(v0 + 1176);
      v143 = *(v0 + 1144);
      sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

      v87 = *(v0 + 8);
      goto LABEL_46;
    }

    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    v146 = *(v0 + 1304);
    v142 = *(v0 + 1296);
    v62 = *(v0 + 1288);
    v63 = *(v0 + 1192);
    v64 = *(v0 + 1080);
    sub_1DB50BEB0();
    v65 = *(v0 + 280);
    v66 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1DB50EE90;
    *(v0 + 640) = MEMORY[0x1E69E6158];
    *(v0 + 616) = 0xD000000000000054;
    *(v0 + 624) = 0x80000001DB52F340;
    *(v68 + 48) = 0u;
    *(v68 + 32) = 0u;
    sub_1DB30C2D8(v0 + 616, v68 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v68 + 64) = 0;
    *(v67 + 32) = v68;
    Logger.error(_:)(v67, v65, v66);

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_1DB30623C(v62, &qword_1ECC46F20, qword_1DB5105D0);
    v142(v62, 1, 1, v63);
    v69 = v64[3];
    v70 = v64[4];
    __swift_project_boxed_opaque_existential_1(v64, v69);
    v71 = *(v70 + 24);
    v147 = (v71 + *v71);
    v72 = v71[1];
    v73 = swift_task_alloc();
    *(v0 + 1360) = v73;
    *v73 = v0;
    v73[1] = sub_1DB458294;
    v74 = *(v0 + 1224);

    v147(v74, v69, v70);
  }
}

uint64_t sub_1DB458294()
{
  v2 = *(*v1 + 1360);
  v5 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v3 = sub_1DB45A278;
  }

  else
  {
    v3 = sub_1DB4583A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4583A8()
{
  v124 = v0;
  sub_1DB467374(*(v0 + 1224), type metadata accessor for JetPackAsset);
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v2 + 48);
  *(v0 + 1376) = v4;
  *(v0 + 1384) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v116 = v4;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v102 = v5;
  *(v0 + 489) = v5 & 1;
  v7 = *(v0 + 1264);
  sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
  sub_1DB30C4B8(v1, v7, &qword_1ECC46F20, qword_1DB5105D0);
  if (v116(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1216);
    sub_1DB468D80(*(v0 + 1264), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 320);
    v11 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v10);
    (*(v11 + 8))(v123, v9, v10, v11);
    v8 = LOBYTE(v123[0]);
    sub_1DB467374(v9, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1288);
  v13 = *(v0 + 1256);
  v14 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EE30C918;
  sub_1DB50BEB0();
  v108 = *(v0 + 368);
  v112 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v112);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB50EE90;
  v123[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0x7341646568636163;
  v16._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  sub_1DB30C4B8(v12, v13, &qword_1ECC46F20, qword_1DB5105D0);
  v17 = v116(v13, 1, v14);
  v18 = *(v0 + 1256);
  if (v17 == 1)
  {
    sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1DB468D80(v18, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v20 = v123[0];
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

  v23 = (v0 + 712);
  *(v20 + 2) = v22 + 1;
  v24 = &v20[40 * v22];
  v25 = *(v0 + 496);
  v26 = *(v0 + 512);
  v24[64] = *(v0 + 528);
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v123[0] = v20;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v27._countAndFlagsBits = 0x3D73757461747320;
  v27._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  if (v8 == 4)
  {
    v28 = 0;
    *v23 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v23 = v8;
    v28 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v28;
  sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 608) = 0;
  v29 = v123[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
  }

  v32 = *(v0 + 1312);
  v33 = *(v0 + 1152);
  v34 = *(v0 + 1088);
  *(v29 + 2) = v31 + 1;
  v35 = &v29[40 * v31];
  v36 = *(v0 + 576);
  v37 = *(v0 + 592);
  v35[64] = *(v0 + 608);
  *(v35 + 2) = v36;
  *(v35 + 3) = v37;
  v123[0] = v29;
  sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  *(v15 + 32) = v123[0];
  Logger.info(_:)(v15, v112, v108);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v39 = *(v32 + 24);
  v39(v123, v33, v32);
  v40 = sub_1DB42E620();
  if (v8 != 4 && (v40 & 1) != 0)
  {
    v41 = *(v0 + 1288);
    v42 = *(v0 + 1248);
    v43 = *(v0 + 1192);
    v44 = swift_allocBox();
    v46 = v45;
    sub_1DB30C4B8(v41, v42, &qword_1ECC46F20, qword_1DB5105D0);
    v47 = v116(v42, 1, v43);
    v48 = *(v0 + 1248);
    if (v47 == 1)
    {
      sub_1DB30623C(v48, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v48, v46, type metadata accessor for JetPackAsset);
      v49 = v8 - 1;
      if (v8 <= 1 && (v102 & 1) == 0)
      {
        sub_1DB50BEB0();
        v71 = *(v0 + 400);
        v120 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v71);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1DB50EE90;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001DB52F320;
        *(v73 + 48) = 0u;
        *(v73 + 32) = 0u;
        sub_1DB30C2D8(v0 + 872, v73 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v73 + 64) = 0;
        *(v72 + 32) = v73;
        Logger.info(_:)(v72, v71, v120);

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        if (v49 <= 1)
        {
          v74 = *(v0 + 1088);
          v39(v123, *(v0 + 1152), *(v0 + 1312));
          if (sub_1DB42E724())
          {
            v75 = *(v0 + 1184);
            v76 = *(v0 + 1176);
            v77 = *(v0 + 1160);
            v78 = *(v0 + 1152);
            v79 = *(v0 + 1144);
            v101 = v79;
            v104 = *(v0 + 1136);
            v106 = *(v0 + 1168);
            v114 = v75;
            v118 = *(v0 + 1128);
            v110 = *(v0 + 1096);
            v100 = *(v0 + 1088);
            v98 = *(v0 + 1104);
            v99 = *(v0 + 1080);
            v80 = *(*(v0 + 1192) + 40);
            v81 = sub_1DB50ABA0();
            v121 = *(v0 + 1112);
            *(v46 + v80) = 1;
            (*(*(v81 - 8) + 56))(v75, 1, 1, v81);
            (*(v77 + 16))(v76, v100, v78);
            (*(v118 + 16))(v79, v98);
            sub_1DB30C4B8(v99, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v82 = (*(v77 + 80) + 56) & ~*(v77 + 80);
            v83 = (v106 + *(v118 + 80) + v82) & ~*(v118 + 80);
            v84 = (v104 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
            v85 = swift_allocObject();
            *(v85 + 16) = 0;
            *(v85 + 24) = 0;
            *(v85 + 32) = v121;
            *(v85 + 48) = v110;
            (*(v77 + 32))(v85 + v82, v76, v78);
            (*(v118 + 32))(v85 + v83, v101, v121);
            *(v85 + v84) = v44;
            v86 = (v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8));
            v87 = *(v0 + 160);
            v86[3] = *(v0 + 144);
            v86[4] = v87;
            v88 = *(v0 + 128);
            v86[1] = *(v0 + 112);
            v86[2] = v88;
            *v86 = *(v0 + 96);

            sub_1DB4DD85C(0, 0, v114, &unk_1DB51CC48, v85);
          }
        }

        v89 = *(v0 + 1072);
        swift_beginAccess();
        sub_1DB468D18(v46, v89, type metadata accessor for JetPackAsset);

        v90 = *(v0 + 1280);
        v91 = *(v0 + 1272);
        v92 = *(v0 + 1264);
        v93 = *(v0 + 1256);
        v94 = *(v0 + 1248);
        v95 = *(v0 + 1240);
        v96 = *(v0 + 1232);
        v97 = *(v0 + 1224);
        v107 = *(v0 + 1216);
        v111 = *(v0 + 1208);
        v115 = *(v0 + 1184);
        v119 = *(v0 + 1176);
        v122 = *(v0 + 1144);
        sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

        v61 = *(v0 + 8);
        goto LABEL_34;
      }
    }
  }

  v50 = *(v0 + 1088);
  v39(v123, *(v0 + 1152), *(v0 + 1312));
  if (sub_1DB42E724())
  {
    if (v8 == 3)
    {
      v51 = *(v0 + 1304);
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v63 = swift_task_alloc();
    *(v0 + 1408) = v63;
    *v63 = v0;
    v63[1] = sub_1DB4590AC;
    v64 = *(v0 + 1240);
    v65 = *(v0 + 1120);
    v66 = *(v0 + 1112);
    v67 = *(v0 + 1104);
    v68 = *(v0 + 1096);
    v69 = *(v0 + 1088);
    v70 = *(v0 + 1072);

    return sub_1DB45DF88(v70, v69, v67, v64, v0 + 16, v0 + 56, v66, v65);
  }

  sub_1DB46628C();
  swift_allocError();
  *v52 = 0;
  swift_willThrow();
  v53 = *(v0 + 1280);
  v54 = *(v0 + 1272);
  v55 = *(v0 + 1264);
  v56 = *(v0 + 1256);
  v57 = *(v0 + 1248);
  v58 = *(v0 + 1240);
  v59 = *(v0 + 1232);
  v60 = *(v0 + 1224);
  v103 = *(v0 + 1216);
  v105 = *(v0 + 1208);
  v109 = *(v0 + 1184);
  v113 = *(v0 + 1176);
  v117 = *(v0 + 1144);
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v61 = *(v0 + 8);
LABEL_34:

  return v61();
}

uint64_t sub_1DB4590AC()
{
  v2 = *v1;
  v3 = *(*v1 + 1408);
  v6 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {
    v4 = sub_1DB45B1D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_1DB4591D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4591D0()
{
  sub_1DB30623C(v0[155], &qword_1ECC46F20, qword_1DB5105D0);
  v1 = v0[160];
  v2 = v0[159];
  v3 = v0[158];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v9 = v0[154];
  v10 = v0[153];
  v11 = v0[152];
  v12 = v0[151];
  v13 = v0[148];
  v14 = v0[147];
  v15 = v0[143];
  sub_1DB30623C(v0[161], &qword_1ECC46F20, qword_1DB5105D0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB459334()
{
  v141 = v0;
  v1 = (v0 + 456);
  v2 = *(v0 + 1336);

  v3 = *(v0 + 1352);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v140[0] = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  v7._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 1016);
  v9 = *(v0 + 1024);
  *(v0 + 928) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 904));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_1DB30C4B8(v0 + 904, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 472) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 488) = 0;
  v11 = v140[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v140[0] + 2) + 1, 1, v140[0]);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = *v1;
  v16 = *(v0 + 472);
  v14[64] = *(v0 + 488);
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v140[0] = v11;
  sub_1DB30623C(v0 + 904, &qword_1ECC426B0, &qword_1DB50EEB0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v6 + 32) = v11;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v18 = *(v0 + 1288);
  v19 = *(v0 + 1200);
  v20 = *(v0 + 1192);
  v21 = *(v19 + 48);
  *(v0 + 1376) = v21;
  *(v0 + 1384) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v136 = v21;
  if (v21(v18, 1, v20))
  {
    v22 = 0;
  }

  else
  {
    v23 = v18 + *(v20 + 20);
    v22 = *(v23 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v118 = v22;
  *(v0 + 489) = v22 & 1;
  v24 = *(v0 + 1264);
  sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
  sub_1DB30C4B8(v18, v24, &qword_1ECC46F20, qword_1DB5105D0);
  if (v136(v24, 1, v20) == 1)
  {
    v25 = 4;
  }

  else
  {
    v26 = *(v0 + 1216);
    sub_1DB468D80(*(v0 + 1264), v26, type metadata accessor for JetPackAsset);
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v27);
    (*(v28 + 8))(v140, v26, v27, v28);
    v25 = LOBYTE(v140[0]);
    sub_1DB467374(v26, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v25;
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 1288);
  v30 = *(v0 + 1256);
  v31 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EE30C918;
  sub_1DB50BEB0();
  v122 = *(v0 + 368);
  v126 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v126);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DB50EE90;
  v140[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v33._countAndFlagsBits = 0x7341646568636163;
  v33._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  sub_1DB30C4B8(v29, v30, &qword_1ECC46F20, qword_1DB5105D0);
  v34 = v136(v30, 1, v31);
  v35 = *(v0 + 1256);
  if (v34 == 1)
  {
    sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    v36 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1DB468D80(v35, v36, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v37 = v140[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
  }

  v40 = (v0 + 712);
  *(v37 + 2) = v39 + 1;
  v41 = &v37[40 * v39];
  v42 = *(v0 + 496);
  v43 = *(v0 + 512);
  v41[64] = *(v0 + 528);
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v140[0] = v37;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v44._countAndFlagsBits = 0x3D73757461747320;
  v44._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  if (v25 == 4)
  {
    v45 = 0;
    *v40 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v40 = v25;
    v45 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v45;
  sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 608) = 0;
  v46 = v140[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1DB301BC0(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1DB301BC0((v47 > 1), v48 + 1, 1, v46);
  }

  v49 = *(v0 + 1312);
  v50 = *(v0 + 1152);
  v51 = *(v0 + 1088);
  *(v46 + 2) = v48 + 1;
  v52 = &v46[40 * v48];
  v53 = *(v0 + 576);
  v54 = *(v0 + 592);
  v52[64] = *(v0 + 608);
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  v140[0] = v46;
  sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v55);
  *(v32 + 32) = v140[0];
  Logger.info(_:)(v32, v126, v122);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v56 = *(v49 + 24);
  v56(v140, v50, v49);
  v57 = sub_1DB42E620();
  if (v25 != 4 && (v57 & 1) != 0)
  {
    v58 = *(v0 + 1288);
    v59 = *(v0 + 1248);
    v60 = *(v0 + 1192);
    v61 = swift_allocBox();
    v63 = v62;
    sub_1DB30C4B8(v58, v59, &qword_1ECC46F20, qword_1DB5105D0);
    v64 = v136(v59, 1, v60);
    v65 = *(v0 + 1248);
    if (v64 == 1)
    {
      sub_1DB30623C(v65, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v65, v63, type metadata accessor for JetPackAsset);
      v66 = v25 - 1;
      if (v25 <= 1 && (v118 & 1) == 0)
      {
        sub_1DB50BEB0();
        v88 = *(v0 + 400);
        v137 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v88);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1DB50EE90;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001DB52F320;
        *(v90 + 48) = 0u;
        *(v90 + 32) = 0u;
        sub_1DB30C2D8(v0 + 872, v90 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v90 + 64) = 0;
        *(v89 + 32) = v90;
        Logger.info(_:)(v89, v88, v137);

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        if (v66 <= 1)
        {
          v91 = *(v0 + 1088);
          v56(v140, *(v0 + 1152), *(v0 + 1312));
          if (sub_1DB42E724())
          {
            v92 = *(v0 + 1184);
            v93 = *(v0 + 1176);
            v124 = *(v0 + 1168);
            v128 = v92;
            v94 = *(v0 + 1160);
            v95 = *(v0 + 1152);
            v96 = *(v0 + 1144);
            v119 = v96;
            v121 = *(v0 + 1136);
            v131 = *(v0 + 1096);
            v134 = *(v0 + 1128);
            v117 = *(v0 + 1088);
            v115 = *(v0 + 1104);
            v116 = *(v0 + 1080);
            v97 = *(*(v0 + 1192) + 40);
            v98 = sub_1DB50ABA0();
            v138 = *(v0 + 1112);
            *(v63 + v97) = 1;
            (*(*(v98 - 8) + 56))(v92, 1, 1, v98);
            (*(v94 + 16))(v93, v117, v95);
            (*(v134 + 16))(v96, v115);
            sub_1DB30C4B8(v116, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v99 = (*(v94 + 80) + 56) & ~*(v94 + 80);
            v100 = (v124 + *(v134 + 80) + v99) & ~*(v134 + 80);
            v101 = (v121 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
            v102 = swift_allocObject();
            *(v102 + 16) = 0;
            *(v102 + 24) = 0;
            *(v102 + 32) = v138;
            *(v102 + 48) = v131;
            (*(v94 + 32))(v102 + v99, v93, v95);
            (*(v134 + 32))(v102 + v100, v119, v138);
            *(v102 + v101) = v61;
            v103 = (v102 + ((v101 + 15) & 0xFFFFFFFFFFFFFFF8));
            v104 = *(v0 + 160);
            v103[3] = *(v0 + 144);
            v103[4] = v104;
            v105 = *(v0 + 128);
            v103[1] = *(v0 + 112);
            v103[2] = v105;
            *v103 = *(v0 + 96);

            sub_1DB4DD85C(0, 0, v128, &unk_1DB51CC48, v102);
          }
        }

        v106 = *(v0 + 1072);
        swift_beginAccess();
        sub_1DB468D18(v63, v106, type metadata accessor for JetPackAsset);

        v107 = *(v0 + 1280);
        v108 = *(v0 + 1272);
        v109 = *(v0 + 1264);
        v110 = *(v0 + 1256);
        v111 = *(v0 + 1248);
        v112 = *(v0 + 1240);
        v113 = *(v0 + 1232);
        v114 = *(v0 + 1224);
        v125 = *(v0 + 1216);
        v129 = *(v0 + 1208);
        v132 = *(v0 + 1184);
        v135 = *(v0 + 1176);
        v139 = *(v0 + 1144);
        sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

        v78 = *(v0 + 8);
        goto LABEL_40;
      }
    }
  }

  v67 = *(v0 + 1088);
  v56(v140, *(v0 + 1152), *(v0 + 1312));
  if (sub_1DB42E724())
  {
    if (v25 == 3)
    {
      v68 = *(v0 + 1304);
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v80 = swift_task_alloc();
    *(v0 + 1408) = v80;
    *v80 = v0;
    v80[1] = sub_1DB4590AC;
    v81 = *(v0 + 1240);
    v82 = *(v0 + 1120);
    v83 = *(v0 + 1112);
    v84 = *(v0 + 1104);
    v85 = *(v0 + 1096);
    v86 = *(v0 + 1088);
    v87 = *(v0 + 1072);

    return sub_1DB45DF88(v87, v86, v84, v81, v0 + 16, v0 + 56, v83, v82);
  }

  sub_1DB46628C();
  swift_allocError();
  *v69 = 0;
  swift_willThrow();
  v70 = *(v0 + 1280);
  v71 = *(v0 + 1272);
  v72 = *(v0 + 1264);
  v73 = *(v0 + 1256);
  v74 = *(v0 + 1248);
  v75 = *(v0 + 1240);
  v76 = *(v0 + 1232);
  v77 = *(v0 + 1224);
  v120 = *(v0 + 1216);
  v123 = *(v0 + 1208);
  v127 = *(v0 + 1184);
  v130 = *(v0 + 1176);
  v133 = *(v0 + 1144);
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v78 = *(v0 + 8);
LABEL_40:

  return v78();
}

uint64_t sub_1DB45A278()
{
  v140 = v0;
  v1 = (v0 + 456);
  sub_1DB467374(*(v0 + 1224), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1368);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v139[0] = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1024);
  *(v0 + 928) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 904));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 904, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 472) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 488) = 0;
  v10 = v139[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v139[0] + 2) + 1, 1, v139[0]);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 472);
  v13[64] = *(v0 + 488);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v139[0] = v10;
  sub_1DB30623C(v0 + 904, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1200);
  v19 = *(v0 + 1192);
  v20 = *(v18 + 48);
  *(v0 + 1376) = v20;
  *(v0 + 1384) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v135 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v117 = v21;
  *(v0 + 489) = v21 & 1;
  v23 = *(v0 + 1264);
  sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v135(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1216);
    sub_1DB468D80(*(v0 + 1264), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 320);
    v27 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v26);
    (*(v27 + 8))(v139, v25, v26, v27);
    v24 = LOBYTE(v139[0]);
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1256);
  v30 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EE30C918;
  sub_1DB50BEB0();
  v121 = *(v0 + 368);
  v125 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v125);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DB50EE90;
  v139[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1DB30C4B8(v28, v29, &qword_1ECC46F20, qword_1DB5105D0);
  v33 = v135(v29, 1, v30);
  v34 = *(v0 + 1256);
  if (v33 == 1)
  {
    sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    v35 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1DB468D80(v34, v35, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v36 = v139[0];
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

  v39 = (v0 + 712);
  *(v36 + 2) = v38 + 1;
  v40 = &v36[40 * v38];
  v41 = *(v0 + 496);
  v42 = *(v0 + 512);
  v40[64] = *(v0 + 528);
  *(v40 + 2) = v41;
  *(v40 + 3) = v42;
  v139[0] = v36;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v43._countAndFlagsBits = 0x3D73757461747320;
  v43._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  if (v24 == 4)
  {
    v44 = 0;
    *v39 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v39 = v24;
    v44 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v44;
  sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 608) = 0;
  v45 = v139[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1DB301BC0(0, *(v45 + 2) + 1, 1, v45);
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_1DB301BC0((v46 > 1), v47 + 1, 1, v45);
  }

  v48 = *(v0 + 1312);
  v49 = *(v0 + 1152);
  v50 = *(v0 + 1088);
  *(v45 + 2) = v47 + 1;
  v51 = &v45[40 * v47];
  v52 = *(v0 + 576);
  v53 = *(v0 + 592);
  v51[64] = *(v0 + 608);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  v139[0] = v45;
  sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v31 + 32) = v139[0];
  Logger.info(_:)(v31, v125, v121);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v55 = *(v48 + 24);
  v55(v139, v49, v48);
  v56 = sub_1DB42E620();
  if (v24 != 4 && (v56 & 1) != 0)
  {
    v57 = *(v0 + 1288);
    v58 = *(v0 + 1248);
    v59 = *(v0 + 1192);
    v60 = swift_allocBox();
    v62 = v61;
    sub_1DB30C4B8(v57, v58, &qword_1ECC46F20, qword_1DB5105D0);
    v63 = v135(v58, 1, v59);
    v64 = *(v0 + 1248);
    if (v63 == 1)
    {
      sub_1DB30623C(v64, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v64, v62, type metadata accessor for JetPackAsset);
      v65 = v24 - 1;
      if (v24 <= 1 && (v117 & 1) == 0)
      {
        sub_1DB50BEB0();
        v87 = *(v0 + 400);
        v136 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v87);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_1DB50EE90;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001DB52F320;
        *(v89 + 48) = 0u;
        *(v89 + 32) = 0u;
        sub_1DB30C2D8(v0 + 872, v89 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v89 + 64) = 0;
        *(v88 + 32) = v89;
        Logger.info(_:)(v88, v87, v136);

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        if (v65 <= 1)
        {
          v90 = *(v0 + 1088);
          v55(v139, *(v0 + 1152), *(v0 + 1312));
          if (sub_1DB42E724())
          {
            v91 = *(v0 + 1184);
            v92 = *(v0 + 1176);
            v123 = *(v0 + 1168);
            v127 = v91;
            v93 = *(v0 + 1160);
            v94 = *(v0 + 1152);
            v95 = *(v0 + 1144);
            v118 = v95;
            v120 = *(v0 + 1136);
            v130 = *(v0 + 1096);
            v133 = *(v0 + 1128);
            v116 = *(v0 + 1088);
            v114 = *(v0 + 1104);
            v115 = *(v0 + 1080);
            v96 = *(*(v0 + 1192) + 40);
            v97 = sub_1DB50ABA0();
            v137 = *(v0 + 1112);
            *(v62 + v96) = 1;
            (*(*(v97 - 8) + 56))(v91, 1, 1, v97);
            (*(v93 + 16))(v92, v116, v94);
            (*(v133 + 16))(v95, v114);
            sub_1DB30C4B8(v115, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v98 = (*(v93 + 80) + 56) & ~*(v93 + 80);
            v99 = (v123 + *(v133 + 80) + v98) & ~*(v133 + 80);
            v100 = (v120 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
            v101 = swift_allocObject();
            *(v101 + 16) = 0;
            *(v101 + 24) = 0;
            *(v101 + 32) = v137;
            *(v101 + 48) = v130;
            (*(v93 + 32))(v101 + v98, v92, v94);
            (*(v133 + 32))(v101 + v99, v118, v137);
            *(v101 + v100) = v60;
            v102 = (v101 + ((v100 + 15) & 0xFFFFFFFFFFFFFFF8));
            v103 = *(v0 + 160);
            v102[3] = *(v0 + 144);
            v102[4] = v103;
            v104 = *(v0 + 128);
            v102[1] = *(v0 + 112);
            v102[2] = v104;
            *v102 = *(v0 + 96);

            sub_1DB4DD85C(0, 0, v127, &unk_1DB51CC48, v101);
          }
        }

        v105 = *(v0 + 1072);
        swift_beginAccess();
        sub_1DB468D18(v62, v105, type metadata accessor for JetPackAsset);

        v106 = *(v0 + 1280);
        v107 = *(v0 + 1272);
        v108 = *(v0 + 1264);
        v109 = *(v0 + 1256);
        v110 = *(v0 + 1248);
        v111 = *(v0 + 1240);
        v112 = *(v0 + 1232);
        v113 = *(v0 + 1224);
        v124 = *(v0 + 1216);
        v128 = *(v0 + 1208);
        v131 = *(v0 + 1184);
        v134 = *(v0 + 1176);
        v138 = *(v0 + 1144);
        sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

        v77 = *(v0 + 8);
        goto LABEL_40;
      }
    }
  }

  v66 = *(v0 + 1088);
  v55(v139, *(v0 + 1152), *(v0 + 1312));
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      v67 = *(v0 + 1304);
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v79 = swift_task_alloc();
    *(v0 + 1408) = v79;
    *v79 = v0;
    v79[1] = sub_1DB4590AC;
    v80 = *(v0 + 1240);
    v81 = *(v0 + 1120);
    v82 = *(v0 + 1112);
    v83 = *(v0 + 1104);
    v84 = *(v0 + 1096);
    v85 = *(v0 + 1088);
    v86 = *(v0 + 1072);

    return sub_1DB45DF88(v86, v85, v83, v80, v0 + 16, v0 + 56, v82, v81);
  }

  sub_1DB46628C();
  swift_allocError();
  *v68 = 0;
  swift_willThrow();
  v69 = *(v0 + 1280);
  v70 = *(v0 + 1272);
  v71 = *(v0 + 1264);
  v72 = *(v0 + 1256);
  v73 = *(v0 + 1248);
  v74 = *(v0 + 1240);
  v75 = *(v0 + 1232);
  v76 = *(v0 + 1224);
  v119 = *(v0 + 1216);
  v122 = *(v0 + 1208);
  v126 = *(v0 + 1184);
  v129 = *(v0 + 1176);
  v132 = *(v0 + 1144);
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v77 = *(v0 + 8);
LABEL_40:

  return v77();
}

uint64_t sub_1DB45B1D0()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1376);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB30C4B8(v3, v4, &qword_1ECC46F20, qword_1DB5105D0);
  if (v2(v4, 1, v5) == 1)
  {
    sub_1DB30623C(*(v0 + 1232), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_11:
    v39 = *(v0 + 1416);
    v40 = *(v0 + 1240);
    swift_willThrow();
    sub_1DB30623C(v40, &qword_1ECC46F20, qword_1DB5105D0);
    v64 = *(v0 + 1416);
    v41 = *(v0 + 1280);
    v42 = *(v0 + 1272);
    v43 = *(v0 + 1264);
    v44 = *(v0 + 1256);
    v45 = *(v0 + 1248);
    v46 = *(v0 + 1240);
    v48 = *(v0 + 1232);
    v49 = *(v0 + 1224);
    v51 = *(v0 + 1216);
    v54 = *(v0 + 1208);
    v57 = *(v0 + 1184);
    v59 = *(v0 + 1176);
    v62 = *(v0 + 1144);
    sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

    v38 = *(v0 + 8);
    goto LABEL_12;
  }

  v6 = *(v0 + 490);
  sub_1DB468D80(*(v0 + 1232), *(v0 + 1208), type metadata accessor for JetPackAsset);
  if (v6 || *(v0 + 489) != 1)
  {
    sub_1DB467374(*(v0 + 1208), type metadata accessor for JetPackAsset);
    goto LABEL_11;
  }

  v7 = *(v0 + 1416);
  v8 = *(v0 + 1400);
  v9 = *(v0 + 1392);
  sub_1DB50BEB0();
  v10 = *(v0 + 240);
  v60 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB50EE90;
  v65 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v12._object = 0x80000001DB52F200;
  v12._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  swift_getErrorValue();
  v13 = *(v0 + 968);
  v14 = *(v0 + 976);
  *(v0 + 704) = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v13, v14);
  sub_1DB30C4B8(v0 + 680, v0 + 744, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  sub_1DB30C2D8(v0 + 744, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 568) = 0;
  v16 = v65;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1DB301BC0(0, *(v65 + 2) + 1, 1, v65);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
  }

  v19 = *(v0 + 1416);
  v20 = *(v0 + 1400);
  v21 = *(v0 + 1392);
  v55 = *(v0 + 1208);
  v50 = *(v0 + 1240);
  v52 = *(v0 + 1072);
  *(v16 + 2) = v18 + 1;
  v22 = &v16[40 * v18];
  v23 = *(v0 + 536);
  v24 = *(v0 + 552);
  v22[64] = *(v0 + 568);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1DB30623C(v0 + 680, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v11 + 32) = v16;
  Logger.error(_:)(v11, v10, v60);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  sub_1DB50BEB0();
  v27 = *(v0 + 440);
  v26 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v27);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DB50EE90;
  *(v0 + 832) = MEMORY[0x1E69E6158];
  *(v0 + 808) = 0xD000000000000075;
  *(v0 + 816) = 0x80000001DB52F230;
  *(v29 + 48) = 0u;
  *(v29 + 32) = 0u;
  sub_1DB30C2D8(v0 + 808, v29 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v29 + 64) = 0;
  *(v28 + 32) = v29;
  Logger.warning(_:)(v28, v27, v26);

  sub_1DB30623C(v50, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  sub_1DB468D80(v55, v52, type metadata accessor for JetPackAsset);
  v30 = *(v0 + 1280);
  v31 = *(v0 + 1272);
  v32 = *(v0 + 1264);
  v33 = *(v0 + 1256);
  v34 = *(v0 + 1248);
  v35 = *(v0 + 1240);
  v36 = *(v0 + 1232);
  v37 = *(v0 + 1224);
  v53 = *(v0 + 1216);
  v56 = *(v0 + 1208);
  v58 = *(v0 + 1184);
  v61 = *(v0 + 1176);
  v63 = *(v0 + 1144);
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v38 = *(v0 + 8);
LABEL_12:

  return v38();
}

uint64_t sub_1DB45B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = a8;
  v8[80] = a6;
  v8[79] = a5;
  v9 = type metadata accessor for JetPackAsset(0);
  v8[82] = v9;
  v10 = *(v9 - 8);
  v8[83] = v10;
  v11 = *(v10 + 64) + 15;
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DB45B95C, 0, 0);
}

uint64_t sub_1DB45B95C()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 664);
  v32 = *(v0 + 656);
  v33 = *(v0 + 648);
  *(v0 + 720) = qword_1EE30C918;
  sub_1DB50BEB0();
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v4);
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  *(v0 + 440) = MEMORY[0x1E69E6158];
  *(v0 + 416) = 0xD000000000000020;
  *(v0 + 424) = 0x80000001DB52F3A0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB30C2D8(v0 + 416, v7 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  swift_beginAccess();
  sub_1DB468D18(v1, v2, type metadata accessor for JetPackAsset);
  (*(v3 + 56))(v2, 0, 1, v32);
  sub_1DB30C4B8(v33, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB30BE90(v0 + 16, v0 + 96);
  sub_1DB30BE90(v0 + 56, v0 + 136);
  sub_1DB50AC80();
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  sub_1DB50BEB0();
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v12);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  v34 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v15._countAndFlagsBits = 0xD000000000000032;
  v15._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  sub_1DB30C4B8(v8, v9, &qword_1ECC46F20, qword_1DB5105D0);
  v16 = (*(v10 + 48))(v9, 1, v11);
  v17 = *(v0 + 696);
  if (v16 == 1)
  {
    sub_1DB30623C(*(v0 + 696), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
  }

  else
  {
    *(v0 + 472) = *(v0 + 656);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
    sub_1DB468D80(v17, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 448, v0 + 480, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1DB30C2D8(v0 + 480, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 368) = 0;
  v19 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 336);
  v24 = *(v0 + 352);
  v22[64] = *(v0 + 368);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1DB30623C(v0 + 448, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 32) = v19;
  Logger.info(_:)(v14, v12, v13);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  *(v0 + 280) = &type metadata for SystemDateProvider;
  *(v0 + 288) = &protocol witness table for SystemDateProvider;
  v26 = swift_task_alloc();
  *(v0 + 736) = v26;
  *v26 = v0;
  v26[1] = sub_1DB45BF14;
  v27 = *(v0 + 704);
  v28 = *(v0 + 680);
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);

  return sub_1DB41BE7C(v28, v30, v27, v0 + 256);
}

uint64_t sub_1DB45BF14()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v6 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v4 = sub_1DB45C290;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 256));
    v4 = sub_1DB45C030;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB45C030()
{
  v1 = v0[86];
  v2 = v0[82];
  sub_1DB468D80(v0[85], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v11 = v0[15];
    v12 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v11);
    v13 = *(v12 + 8);
    v18 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[94] = v15;
    *v15 = v0;
    v15[1] = sub_1DB45C380;
    v16 = v0[86];
    v17 = v0[84];

    return v18(v17, v16, v11, v12);
  }

  else
  {
    sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
    v5 = v0[88];
    v6 = v0[87];
    v7 = v0[85];
    v8 = v0[84];
    sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1DB45C290()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v1 = v0[93];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB45C380()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v6 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = sub_1DB45C5B4;
  }

  else
  {
    sub_1DB467374(*(v2 + 672), type metadata accessor for JetPackAsset);
    v4 = sub_1DB45C4B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB45C4B0()
{
  sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[85];
  v4 = v0[84];
  sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB45C5B4()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  sub_1DB50BEB0();
  v4 = *(v0 + 320);
  v25 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 296), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v26 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52F2F0;
  v6._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 600);
  v8 = *(v0 + 608);
  *(v0 + 536) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 512));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 512, v0 + 544, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  sub_1DB30C2D8(v0 + 544, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 408) = 0;
  v10 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 760);
  v14 = *(v0 + 704);
  *(v10 + 2) = v12 + 1;
  v15 = &v10[40 * v12];
  v16 = *(v0 + 376);
  v17 = *(v0 + 392);
  v15[64] = *(v0 + 408);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1DB30623C(v0 + 512, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v4, v25);

  sub_1DB30623C(v14, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  v19 = *(v0 + 704);
  v20 = *(v0 + 696);
  v21 = *(v0 + 680);
  v22 = *(v0 + 672);
  sub_1DB467374(*(v0 + 688), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1DB45C8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = a8;
  v8[80] = a6;
  v8[79] = a5;
  v9 = type metadata accessor for JetPackAsset(0);
  v8[82] = v9;
  v10 = *(v9 - 8);
  v8[83] = v10;
  v11 = *(v10 + 64) + 15;
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DB45CA00, 0, 0);
}

uint64_t sub_1DB45CA00()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = *(v0 + 664);
  v32 = *(v0 + 704);
  v33 = *(v0 + 656);
  v35 = *(v0 + 648);
  v3 = *(v0 + 632);
  *(v0 + 720) = qword_1EE30C918;
  sub_1DB50BEB0();
  v4 = *(v0 + 200);
  v31 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v4);
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  *(v0 + 440) = MEMORY[0x1E69E6158];
  *(v0 + 416) = 0xD000000000000020;
  *(v0 + 424) = 0x80000001DB52F3A0;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_1DB30C2D8(v0 + 416, v6 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v6 + 64) = 0;
  *(v5 + 32) = v6;
  Logger.info(_:)(v5, v4, v31);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  swift_beginAccess();
  sub_1DB468D18(v1, v32, type metadata accessor for JetPackAsset);
  (*(v2 + 56))(v32, 0, 1, v33);
  sub_1DB30C4B8(v35, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  *(v0 + 296) = *v3;
  *(v0 + 312) = v8;
  *(v0 + 328) = v7;
  sub_1DB30BE90(v0 + 16, v0 + 96);
  sub_1DB30BE90(v0 + 56, v0 + 136);
  sub_1DB50AC80();
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  sub_1DB50BEB0();
  v13 = *(v0 + 240);
  v34 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v13);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  v36 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v15._countAndFlagsBits = 0xD000000000000032;
  v15._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  sub_1DB30C4B8(v9, v10, &qword_1ECC46F20, qword_1DB5105D0);
  v16 = (*(v11 + 48))(v10, 1, v12);
  v17 = *(v0 + 696);
  if (v16 == 1)
  {
    sub_1DB30623C(*(v0 + 696), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
  }

  else
  {
    *(v0 + 472) = *(v0 + 656);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
    sub_1DB468D80(v17, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 448, v0 + 480, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1DB30C2D8(v0 + 480, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 368) = 0;
  v19 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 336);
  v24 = *(v0 + 352);
  v22[64] = *(v0 + 368);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1DB30623C(v0 + 448, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 32) = v19;
  Logger.info(_:)(v14, v13, v34);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v26 = swift_task_alloc();
  *(v0 + 736) = v26;
  *v26 = v0;
  v26[1] = sub_1DB45CFD0;
  v27 = *(v0 + 704);
  v28 = *(v0 + 680);
  v29 = *(v0 + 640);

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v28, v0 + 296, v27);
}

uint64_t sub_1DB45CFD0()
{
  v2 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_1DB45D348;
  }

  else
  {
    v3 = sub_1DB45D0E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB45D0E4()
{
  v1 = v0[86];
  v2 = v0[82];
  sub_1DB468D80(v0[85], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v13 = v0[15];
    v14 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v13);
    v15 = *(v14 + 8);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[94] = v17;
    *v17 = v0;
    v17[1] = sub_1DB45D430;
    v18 = v0[86];
    v19 = v0[84];

    return v20(v19, v18, v13, v14);
  }

  else
  {
    v5 = v0[88];
    sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
    sub_1DB30623C(v5, &qword_1ECC46F20, qword_1DB5105D0);
    v6 = v0[88];
    v7 = v0[87];
    v8 = v0[86];
    v9 = v0[85];
    v10 = v0[84];
    sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1DB45D348()
{
  v1 = v0[93];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB45D430()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v6 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = sub_1DB45D668;
  }

  else
  {
    sub_1DB467374(*(v2 + 672), type metadata accessor for JetPackAsset);
    v4 = sub_1DB45D560;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB45D560()
{
  v1 = v0[88];
  sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
  sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB45D668()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  sub_1DB50BEB0();
  v4 = *(v0 + 280);
  v27 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v28 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52F2F0;
  v6._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 600);
  v8 = *(v0 + 608);
  *(v0 + 536) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 512));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 512, v0 + 544, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  sub_1DB30C2D8(v0 + 544, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 408) = 0;
  v10 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 760);
  v14 = *(v0 + 704);
  v15 = *(v0 + 688);
  *(v10 + 2) = v12 + 1;
  v16 = &v10[40 * v12];
  v17 = *(v0 + 376);
  v18 = *(v0 + 392);
  v16[64] = *(v0 + 408);
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  sub_1DB30623C(v0 + 512, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v4, v27);

  sub_1DB467374(v15, type metadata accessor for JetPackAsset);
  sub_1DB30623C(v14, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v20 = *(v0 + 704);
  v21 = *(v0 + 696);
  v22 = *(v0 + 688);
  v23 = *(v0 + 680);
  v24 = *(v0 + 672);
  sub_1DB30623C(v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1DB45D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = v15;
  v8[29] = v16;
  v8[26] = a6;
  v8[27] = a8;
  v8[24] = a4;
  v8[25] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v10 = type metadata accessor for JetPackAsset(0);
  v8[31] = v10;
  v11 = *(v10 - 8);
  v8[32] = v11;
  v12 = *(v11 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DB45DA9C, 0, 0);
}

uint64_t sub_1DB45DA9C()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[30];
  v18 = v0[31];
  v19 = v0[27];
  sub_1DB50BEB0();
  v4 = v0[15];
  v5 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1DB50EE90;
  v0[20] = v8;
  v0[17] = 0xD000000000000020;
  v0[18] = 0x80000001DB52F3A0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB30C2D8((v0 + 17), v7 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_beginAccess();
  sub_1DB468D18(v1, v3, type metadata accessor for JetPackAsset);
  (*(v2 + 56))(v3, 0, 1, v18);
  sub_1DB30C4B8(v19, (v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1DB45DD20;
  v10 = v0[33];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[26];
  v16 = v0[24];

  return sub_1DB45DF88(v10, v14, v15, v11, (v0 + 2), (v0 + 7), v13, v12);
}

uint64_t sub_1DB45DD20()
{
  v2 = *v1;
  v3 = (*v1)[35];
  v4 = (*v1)[30];
  v7 = *v1;
  (*v1)[36] = v0;

  sub_1DB30623C(v4, &qword_1ECC46F20, qword_1DB5105D0);
  if (v0)
  {
    v5 = sub_1DB45DF04;
  }

  else
  {
    sub_1DB467374(v2[33], type metadata accessor for JetPackAsset);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v5 = sub_1DB45DE94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB45DE94()
{
  v1 = v0[33];
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB45DF04()
{
  v1 = v0[33];
  v2 = v0[30];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[36];

  return v3();
}

uint64_t sub_1DB45DF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[56] = a7;
  v8[57] = a8;
  v8[54] = a3;
  v8[55] = a4;
  v8[52] = a1;
  v8[53] = a2;
  v11 = type metadata accessor for JetPackAsset(0);
  v8[58] = v11;
  v12 = *(v11 - 8);
  v8[59] = v12;
  v13 = *(v12 + 64) + 15;
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v8[63] = swift_task_alloc();
  sub_1DB30BE90(a5, (v8 + 2));
  sub_1DB30BE90(a6, (v8 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB45E0C8, 0, 0);
}

uint64_t sub_1DB45E0C8()
{
  sub_1DB50AC80();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 440);
  *(v0 + 512) = qword_1EE30C918;
  sub_1DB50BEB0();
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v5);
  *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v31 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v8._object = 0x80000001DB52F2B0;
  v8._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  sub_1DB30C4B8(v4, v1, &qword_1ECC46F20, qword_1DB5105D0);
  v9 = (*(v3 + 48))(v1, 1, v2);
  v10 = *(v0 + 504);
  if (v9 == 1)
  {
    sub_1DB30623C(*(v0 + 504), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
  }

  else
  {
    *(v0 + 280) = *(v0 + 464);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_1DB468D80(v10, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 176, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 208) = 0;
  v12 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
  }

  v30 = *(v0 + 456);
  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = *(v0 + 176);
  v17 = *(v0 + 192);
  v15[64] = *(v0 + 208);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v7 + 32) = v12;
  Logger.info(_:)(v7, v5, v6);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v19 = *(v30 + 24);
  v29 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v0 + 528) = v21;
  *v21 = v0;
  v21[1] = sub_1DB45E514;
  v22 = *(v0 + 488);
  v23 = *(v0 + 448);
  v24 = *(v0 + 456);
  v26 = *(v0 + 432);
  v25 = *(v0 + 440);
  v27 = *(v0 + 424);

  return v29(v22, v27, v25, v23, v24);
}

uint64_t sub_1DB45E514()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_1DB45EA40;
  }

  else
  {
    v3 = sub_1DB45E628;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}
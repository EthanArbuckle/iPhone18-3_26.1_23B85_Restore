uint64_t sub_1D5E8F230()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E8F330(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v3[12] = swift_task_alloc();
  v4 = sub_1D72585BC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for FormatService.CacheFormatFile(0);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v6 = sub_1D7261B9C();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8F514, 0, 0);
}

uint64_t sub_1D5E8F514()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = [*(v0 + 72) remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v13 = *(v10 + 8);
  *(v0 + 184) = v13;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    v14 = sub_1D5CF274C(*(v0 + 96), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_8:
    if (sub_1D5E53190(v14, v15))
    {
      [*(*(v0 + 88) + 136) d:*(v0 + 72) resetAssetHandle:?];
    }

    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v20 + 40);
    v23 = *(v20 + 48);
    v24 = swift_task_alloc();
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;
    *(v24 + 32) = v23;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v21;
    v25 = v21;
    v26 = sub_1D725B92C();
    *(v0 + 200) = sub_1D725BA8C();

    v27 = swift_task_alloc();
    *(v0 + 208) = v27;
    *v27 = v0;
    v27[1] = sub_1D5E8F908;
    v5 = v0 + 48;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v16 = *(v0 + 152);
  sub_1D5CEFF38(*(v0 + 96), v16, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 16));
  sub_1D5EA08F4(v16, type metadata accessor for FormatService.CacheFormatFile);
  type metadata accessor for FormatSnippet();
  v14 = swift_dynamicCast();
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_1D5E8F908()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D5E8FBF0;
  }

  else
  {

    v2 = sub_1D5E8FA24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E8FA24()
{
  v1 = v0[27];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = [v4 remoteURL];
  sub_1D72584EC();

  v8 = sub_1D5E96AF8(v5, v6, v2, v4, v3);
  v9 = v0[23];
  v10 = v0[15];
  v11 = v0[13];
  if (v1)
  {
    v9(v10, v0[13]);
    sub_1D5B952F8(v5, v6);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v8;
    sub_1D5B952F8(v5, v6);
    v9(v10, v11);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_1D5E8FBF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E8FC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[55] = type metadata accessor for FormatFile();
  v4[56] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v4[60] = v5;
  v4[61] = *(v5 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v6 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[65] = v6;
  v4[66] = *(v6 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v7 = sub_1D7261B9C();
  v4[69] = v7;
  v4[70] = *(v7 - 8);
  v4[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8FEDC, 0, 0);
}

uint64_t sub_1D5E8FEDC()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = *(v0 + 480);
  v10 = *(v0 + 488);
  v11 = *(v0 + 472);
  v12 = *(v0 + 416);
  *(v0 + 576) = *(*(v0 + 432) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v10 + 8);
  *(v0 + 584) = v14;
  *(v0 + 592) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v9);
  v15 = *(v6 + 48);
  *(v0 + 600) = v15;
  *(v0 + 608) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v7) == 1)
  {
    v16 = sub_1D5CF274C(*(v0 + 472), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_9:
    if (sub_1D5E53190(v16, v17))
    {
      [*(*(v0 + 432) + 136) d:*(v0 + 416) resetAssetHandle:?];
    }

    v26 = *(v0 + 416);
    v25 = *(v0 + 424);
    v27 = *(v25 + 40);
    v28 = *(v25 + 48);
    v29 = swift_task_alloc();
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    *(v29 + 32) = v28;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v26;
    v30 = v26;
    v31 = sub_1D725B92C();
    *(v0 + 616) = sub_1D725BA8C();

    v32 = swift_task_alloc();
    *(v0 + 624) = v32;
    *v32 = v0;
    v32[1] = sub_1D5E9037C;
    v5 = v0 + 368;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v18 = *(v0 + 544);
  sub_1D5CEFF38(*(v0 + 472), v18, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 336));
  sub_1D5EA08F4(v18, type metadata accessor for FormatService.CacheFormatFile);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 160) = 0u;
    v16 = sub_1D5E9E688(v0 + 232, &qword_1EC880158, &type metadata for FormatStyle);
    goto LABEL_9;
  }

  v19 = *(v0 + 408);
  *v19 = *(v0 + 160);
  v20 = *(v0 + 176);
  v21 = *(v0 + 192);
  v22 = *(v0 + 208);
  *(v19 + 64) = *(v0 + 224);
  *(v19 + 32) = v21;
  *(v19 + 48) = v22;
  *(v19 + 16) = v20;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D5E9037C()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_1D5E90C34;
  }

  else
  {

    v2 = sub_1D5E90498;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E90498()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 376);
  v51 = *(v0 + 368);
  v5 = [*(v0 + 416) remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  v50 = v4;
  if (v1(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 632);
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v7 = *(v0 + 600);
    if (v6)
    {
      v8 = *(v0 + 520);
      v9 = *(v0 + 464);

      v48 = v6;
      if (v7(v9, 1, v8) != 1)
      {
        sub_1D5CF274C(*(v0 + 464), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v41 = *(v0 + 536);
    v42 = *(v0 + 520);
    v43 = *(v0 + 464);
    v44 = *(v0 + 416);
    sub_1D5CEFF38(*(v0 + 448), v41, type metadata accessor for FormatFile);
    *(v41 + *(v42 + 20)) = v44;
    LODWORD(v41) = v7(v43, 1, v42);
    v45 = v44;
    if (v41 != 1)
    {
      sub_1D5CF274C(*(v0 + 464), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(*(v0 + 464), *(v0 + 536), type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C((v0 + 304));
  if (swift_dynamicCast())
  {
    v49 = *(v0 + 584);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v14 = *(v0 + 496);
    v13 = *(v0 + 504);
    v16 = *(v0 + 480);
    v15 = *(v0 + 488);
    v17 = *(v0 + 456);
    v18 = *(v0 + 408);
    v20 = *(v0 + 48);
    v19 = *(v0 + 64);
    v21 = *(v0 + 32);
    *(v18 + 64) = *(v0 + 80);
    *(v18 + 32) = v20;
    *(v18 + 48) = v19;
    *(v18 + 16) = v21;
    *v18 = *(v0 + 16);
    (*(v15 + 16))(v14, v13, v16);
    sub_1D5CEFE68(v10, v17, type metadata accessor for FormatService.CacheFormatFile);
    (*(v11 + 56))(v17, 0, 1, v12);
    sub_1D725B87C();
    sub_1D5B952F8(v51, v4);

    sub_1D5EA08F4(v10, type metadata accessor for FormatService.CacheFormatFile);
    v49(v13, v16);

    v22 = *(v0 + 8);
    goto LABEL_10;
  }

  v23 = *(v0 + 536);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  sub_1D5E9E688(v0 + 88, &qword_1EC880158, &type metadata for FormatStyle);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v24 = swift_allocError();
  *v25 = 0x745374616D726F46;
  v25[1] = 0xEB00000000656C79;
  v25[2] = 1635017028;
  v25[3] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v48 = v24;
  swift_willThrow();

  sub_1D5EA08F4(v23, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v26 = *(v0 + 504);
  v27 = *(v0 + 488);
  v46 = *(v0 + 480);
  v47 = *(v0 + 584);
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7270C10;
  v29 = sub_1D72583DC();
  v31 = v30;
  v32 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v33 = sub_1D5B7E2C0();
  *(v28 + 64) = v33;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  *(v0 + 400) = v48;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v34 = *(v0 + 384);
  v35 = *(v0 + 392);
  *(v28 + 96) = v32;
  *(v28 + 104) = v33;
  *(v28 + 72) = v34;
  *(v28 + 80) = v35;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v37 = v36;
  sub_1D5EA0810();
  v39 = *(v38 + 48);
  (*(v27 + 16))(v37, v26, v46);
  *(v37 + v39) = v48;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v51, v50);
  v47(v26, v46);

  v22 = *(v0 + 8);
LABEL_10:

  return v22();
}

uint64_t sub_1D5E90C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E90D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[74] = v3;
  v4[73] = a3;
  v4[72] = a2;
  v4[71] = a1;
  v4[75] = type metadata accessor for FormatFile();
  v4[76] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v4[80] = v5;
  v4[81] = *(v5 - 8);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v6 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[85] = v6;
  v4[86] = *(v6 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v7 = sub_1D7261B9C();
  v4[89] = v7;
  v4[90] = *(v7 - 8);
  v4[91] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E90F74, 0, 0);
}

uint64_t sub_1D5E90F74()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 648);
  v10 = *(v0 + 640);
  v11 = *(v0 + 632);
  v12 = *(v0 + 576);
  *(v0 + 736) = *(*(v0 + 592) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v9 + 8);
  *(v0 + 744) = v14;
  *(v0 + 752) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  v15 = *(v6 + 48);
  *(v0 + 760) = v15;
  *(v0 + 768) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v7) == 1)
  {
    v16 = sub_1D5CF274C(*(v0 + 632), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_9:
    if (sub_1D5E53190(v16, v17))
    {
      [*(*(v0 + 592) + 136) d:*(v0 + 576) resetAssetHandle:?];
    }

    v28 = *(v0 + 584);
    v29 = *(v0 + 576);
    v30 = *(v28 + 40);
    v31 = *(v28 + 48);
    v32 = swift_task_alloc();
    *(v32 + 16) = v29;
    *(v32 + 24) = v30;
    *(v32 + 32) = v31;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v29;
    v33 = v29;
    v34 = sub_1D725B92C();
    *(v0 + 776) = sub_1D725BA8C();

    v35 = swift_task_alloc();
    *(v0 + 784) = v35;
    *v35 = v0;
    v35[1] = sub_1D5E91440;
    v5 = v0 + 528;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v18 = (v0 + 240);
  v19 = *(v0 + 704);
  sub_1D5CEFF38(*(v0 + 632), v19, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 496));
  sub_1D5EA08F4(v19, type metadata accessor for FormatService.CacheFormatFile);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 329) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *v18 = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 441) = 0u;
    v16 = sub_1D5E9E688(v0 + 352, &qword_1EC880150, &type metadata for FormatSupplementary);
    goto LABEL_9;
  }

  v20 = *(v0 + 568);
  v21 = *v18;
  v22 = *(v0 + 272);
  v20[1] = *(v0 + 256);
  v20[2] = v22;
  *v20 = v21;
  v23 = *(v0 + 288);
  v24 = *(v0 + 304);
  v25 = *(v0 + 320);
  *(v20 + 89) = *(v0 + 329);
  v20[4] = v24;
  v20[5] = v25;
  v20[3] = v23;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D5E91440()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_1D5EA22A4;
  }

  else
  {

    v2 = sub_1D5E9155C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E9155C()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 680);
  v3 = *(v0 + 624);
  v53 = *(v0 + 528);
  v4 = *(v0 + 536);
  v5 = [*(v0 + 576) remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  v52 = v4;
  if (v1(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 792);
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v7 = *(v0 + 760);
    if (v6)
    {
      v8 = *(v0 + 680);
      v9 = *(v0 + 624);

      v50 = v6;
      if (v7(v9, 1, v8) != 1)
      {
        sub_1D5CF274C(*(v0 + 624), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v43 = *(v0 + 696);
    v44 = *(v0 + 680);
    v45 = *(v0 + 624);
    v46 = *(v0 + 576);
    sub_1D5CEFF38(*(v0 + 608), v43, type metadata accessor for FormatFile);
    *(v43 + *(v44 + 20)) = v46;
    LODWORD(v43) = v7(v45, 1, v44);
    v47 = v46;
    if (v43 != 1)
    {
      sub_1D5CF274C(*(v0 + 624), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(*(v0 + 624), *(v0 + 696), type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C((v0 + 464));
  if (swift_dynamicCast())
  {
    v51 = *(v0 + 744);
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 664);
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    v16 = *(v0 + 640);
    v17 = *(v0 + 616);
    v18 = *(v0 + 568);
    v20 = *(v0 + 80);
    v19 = *(v0 + 96);
    v21 = *(v0 + 64);
    *(v18 + 89) = *(v0 + 105);
    v18[4] = v20;
    v18[5] = v19;
    v18[3] = v21;
    v22 = *(v0 + 16);
    v23 = *(v0 + 48);
    v18[1] = *(v0 + 32);
    v18[2] = v23;
    *v18 = v22;
    (*(v15 + 16))(v14, v13, v16);
    sub_1D5CEFE68(v10, v17, type metadata accessor for FormatService.CacheFormatFile);
    (*(v11 + 56))(v17, 0, 1, v12);
    sub_1D725B87C();
    sub_1D5B952F8(v53, v4);

    sub_1D5EA08F4(v10, type metadata accessor for FormatService.CacheFormatFile);
    v51(v13, v16);

    v24 = *(v0 + 8);
    goto LABEL_10;
  }

  v25 = *(v0 + 696);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 105) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 217) = 0u;
  sub_1D5E9E688(v0 + 128, &qword_1EC880150, &type metadata for FormatSupplementary);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v26 = swift_allocError();
  *v27 = 0xD000000000000013;
  v27[1] = 0x80000001D73BF9F0;
  v27[2] = 1635017028;
  v27[3] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v50 = v26;
  swift_willThrow();

  sub_1D5EA08F4(v25, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v28 = *(v0 + 664);
  v29 = *(v0 + 648);
  v48 = *(v0 + 640);
  v49 = *(v0 + 744);
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D7270C10;
  v31 = sub_1D72583DC();
  v33 = v32;
  v34 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  v35 = sub_1D5B7E2C0();
  *(v30 + 64) = v35;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  *(v0 + 544) = 0;
  *(v0 + 552) = 0xE000000000000000;
  *(v0 + 560) = v50;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v36 = *(v0 + 544);
  v37 = *(v0 + 552);
  *(v30 + 96) = v34;
  *(v30 + 104) = v35;
  *(v30 + 72) = v36;
  *(v30 + 80) = v37;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v39 = v38;
  sub_1D5EA0810();
  v41 = *(v40 + 48);
  (*(v29 + 16))(v39, v28, v48);
  *(v39 + v41) = v50;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v53, v52);
  v49(v28, v48);

  v24 = *(v0 + 8);
LABEL_10:

  return v24();
}

uint64_t sub_1D5E91D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[61] = a3;
  v4[62] = v3;
  v4[59] = a1;
  v4[60] = a2;
  v4[63] = type metadata accessor for FormatFile();
  v4[64] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v4[68] = v5;
  v4[69] = *(v5 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v6 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[73] = v6;
  v4[74] = *(v6 - 8);
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v7 = sub_1D7261B9C();
  v4[77] = v7;
  v4[78] = *(v7 - 8);
  v4[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E91F80, 0, 0);
}

uint64_t sub_1D5E91F80()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 576);
  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 480);
  *(v0 + 640) = *(*(v0 + 496) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v9 + 8);
  *(v0 + 648) = v14;
  *(v0 + 656) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  v15 = *(v6 + 48);
  *(v0 + 664) = v15;
  *(v0 + 672) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v7) == 1)
  {
    v16 = sub_1D5CF274C(*(v0 + 536), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_9:
    if (sub_1D5E53190(v16, v17))
    {
      [*(*(v0 + 496) + 136) d:*(v0 + 480) resetAssetHandle:?];
    }

    v27 = *(v0 + 480);
    v26 = *(v0 + 488);
    v28 = *(v26 + 40);
    v29 = *(v26 + 48);
    v30 = swift_task_alloc();
    *(v30 + 16) = v27;
    *(v30 + 24) = v28;
    *(v30 + 32) = v29;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v27;
    v31 = v27;
    v32 = sub_1D725B92C();
    *(v0 + 680) = sub_1D725BA8C();

    v33 = swift_task_alloc();
    *(v0 + 688) = v33;
    *v33 = v0;
    v33[1] = sub_1D5E9243C;
    v5 = v0 + 432;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v18 = *(v0 + 608);
  sub_1D5CEFF38(*(v0 + 536), v18, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 400));
  sub_1D5EA08F4(v18, type metadata accessor for FormatService.CacheFormatFile);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0;
    v16 = sub_1D5E9E688(v0 + 280, &qword_1EC880148, &type metadata for FormatType);
    goto LABEL_9;
  }

  v19 = *(v0 + 472);
  v20 = *(v0 + 208);
  *v19 = *(v0 + 192);
  *(v19 + 16) = v20;
  v21 = *(v0 + 224);
  v22 = *(v0 + 240);
  v23 = *(v0 + 256);
  *(v19 + 80) = *(v0 + 272);
  *(v19 + 48) = v22;
  *(v19 + 64) = v23;
  *(v19 + 32) = v21;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D5E9243C()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_1D5E92D28;
  }

  else
  {

    v2 = sub_1D5E92558;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E92558()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 584);
  v3 = *(v0 + 528);
  v4 = *(v0 + 440);
  v52 = *(v0 + 432);
  v5 = [*(v0 + 480) remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  v51 = v4;
  if (v1(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 696);
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v7 = *(v0 + 664);
    if (v6)
    {
      v8 = *(v0 + 584);
      v9 = *(v0 + 528);

      v49 = v6;
      if (v7(v9, 1, v8) != 1)
      {
        sub_1D5CF274C(*(v0 + 528), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v42 = *(v0 + 600);
    v43 = *(v0 + 584);
    v44 = *(v0 + 528);
    v45 = *(v0 + 480);
    sub_1D5CEFF38(*(v0 + 512), v42, type metadata accessor for FormatFile);
    *(v42 + *(v43 + 20)) = v45;
    LODWORD(v42) = v7(v44, 1, v43);
    v46 = v45;
    if (v42 != 1)
    {
      sub_1D5CF274C(*(v0 + 528), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(*(v0 + 528), *(v0 + 600), type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C((v0 + 368));
  if (swift_dynamicCast())
  {
    v50 = *(v0 + 648);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v13 = *(v0 + 568);
    v14 = *(v0 + 560);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);
    v17 = *(v0 + 520);
    v18 = *(v0 + 472);
    v20 = *(v0 + 64);
    v19 = *(v0 + 80);
    v21 = *(v0 + 48);
    *(v18 + 80) = *(v0 + 96);
    *(v18 + 48) = v20;
    *(v18 + 64) = v19;
    *(v18 + 32) = v21;
    v22 = *(v0 + 32);
    *v18 = *(v0 + 16);
    *(v18 + 16) = v22;
    (*(v15 + 16))(v14, v13, v16);
    sub_1D5CEFE68(v10, v17, type metadata accessor for FormatService.CacheFormatFile);
    (*(v11 + 56))(v17, 0, 1, v12);
    sub_1D725B87C();
    sub_1D5B952F8(v52, v4);

    sub_1D5EA08F4(v10, type metadata accessor for FormatService.CacheFormatFile);
    v50(v13, v16);

    v23 = *(v0 + 8);
    goto LABEL_10;
  }

  v24 = *(v0 + 600);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0;
  sub_1D5E9E688(v0 + 104, &qword_1EC880148, &type metadata for FormatType);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v25 = swift_allocError();
  *v26 = 0x795474616D726F46;
  v26[1] = 0xEA00000000006570;
  v26[2] = 1635017028;
  v26[3] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v49 = v25;
  swift_willThrow();

  sub_1D5EA08F4(v24, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v27 = *(v0 + 568);
  v28 = *(v0 + 552);
  v47 = *(v0 + 544);
  v48 = *(v0 + 648);
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7270C10;
  v30 = sub_1D72583DC();
  v32 = v31;
  v33 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D5B7E2C0();
  *(v29 + 64) = v34;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  *(v0 + 448) = 0;
  *(v0 + 456) = 0xE000000000000000;
  *(v0 + 464) = v49;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v35 = *(v0 + 448);
  v36 = *(v0 + 456);
  *(v29 + 96) = v33;
  *(v29 + 104) = v34;
  *(v29 + 72) = v35;
  *(v29 + 80) = v36;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v38 = v37;
  sub_1D5EA0810();
  v40 = *(v39 + 48);
  (*(v28 + 16))(v38, v27, v47);
  *(v38 + v40) = v49;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v52, v51);
  v48(v27, v47);

  v23 = *(v0 + 8);
LABEL_10:

  return v23();
}

uint64_t sub_1D5E92D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E92E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[74] = v3;
  v4[73] = a3;
  v4[72] = a2;
  v4[71] = a1;
  v4[75] = type metadata accessor for FormatFile();
  v4[76] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v4[80] = v5;
  v4[81] = *(v5 - 8);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v6 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[85] = v6;
  v4[86] = *(v6 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v7 = sub_1D7261B9C();
  v4[89] = v7;
  v4[90] = *(v7 - 8);
  v4[91] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E93074, 0, 0);
}

uint64_t sub_1D5E93074()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 648);
  v10 = *(v0 + 640);
  v11 = *(v0 + 632);
  v12 = *(v0 + 576);
  *(v0 + 736) = *(*(v0 + 592) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v9 + 8);
  *(v0 + 744) = v14;
  *(v0 + 752) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  v15 = *(v6 + 48);
  *(v0 + 760) = v15;
  *(v0 + 768) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v7) == 1)
  {
    v16 = sub_1D5CF274C(*(v0 + 632), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_9:
    if (sub_1D5E53190(v16, v17))
    {
      [*(*(v0 + 592) + 136) d:*(v0 + 576) resetAssetHandle:?];
    }

    v28 = *(v0 + 584);
    v29 = *(v0 + 576);
    v30 = *(v28 + 40);
    v31 = *(v28 + 48);
    v32 = swift_task_alloc();
    *(v32 + 16) = v29;
    *(v32 + 24) = v30;
    *(v32 + 32) = v31;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v29;
    v33 = v29;
    v34 = sub_1D725B92C();
    *(v0 + 776) = sub_1D725BA8C();

    v35 = swift_task_alloc();
    *(v0 + 784) = v35;
    *v35 = v0;
    v35[1] = sub_1D5E93540;
    v5 = v0 + 528;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v18 = (v0 + 240);
  v19 = *(v0 + 704);
  sub_1D5CEFF38(*(v0 + 632), v19, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 496));
  sub_1D5EA08F4(v19, type metadata accessor for FormatService.CacheFormatFile);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 331) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *v18 = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 443) = 0u;
    v16 = sub_1D5E9E688(v0 + 352, &qword_1EC880140, &type metadata for FormatDecoration);
    goto LABEL_9;
  }

  v20 = *(v0 + 568);
  v21 = *v18;
  v22 = *(v0 + 272);
  v20[1] = *(v0 + 256);
  v20[2] = v22;
  *v20 = v21;
  v23 = *(v0 + 288);
  v24 = *(v0 + 304);
  v25 = *(v0 + 320);
  *(v20 + 91) = *(v0 + 331);
  v20[4] = v24;
  v20[5] = v25;
  v20[3] = v23;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D5E93540()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_1D5E93E3C;
  }

  else
  {

    v2 = sub_1D5E9365C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E9365C()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 680);
  v3 = *(v0 + 624);
  v53 = *(v0 + 528);
  v4 = *(v0 + 536);
  v5 = [*(v0 + 576) remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  v52 = v4;
  if (v1(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 792);
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v7 = *(v0 + 760);
    if (v6)
    {
      v8 = *(v0 + 680);
      v9 = *(v0 + 624);

      v50 = v6;
      if (v7(v9, 1, v8) != 1)
      {
        sub_1D5CF274C(*(v0 + 624), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v43 = *(v0 + 696);
    v44 = *(v0 + 680);
    v45 = *(v0 + 624);
    v46 = *(v0 + 576);
    sub_1D5CEFF38(*(v0 + 608), v43, type metadata accessor for FormatFile);
    *(v43 + *(v44 + 20)) = v46;
    LODWORD(v43) = v7(v45, 1, v44);
    v47 = v46;
    if (v43 != 1)
    {
      sub_1D5CF274C(*(v0 + 624), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(*(v0 + 624), *(v0 + 696), type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C((v0 + 464));
  if (swift_dynamicCast())
  {
    v51 = *(v0 + 744);
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 664);
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    v16 = *(v0 + 640);
    v17 = *(v0 + 616);
    v18 = *(v0 + 568);
    v20 = *(v0 + 80);
    v19 = *(v0 + 96);
    v21 = *(v0 + 64);
    *(v18 + 91) = *(v0 + 107);
    v18[4] = v20;
    v18[5] = v19;
    v18[3] = v21;
    v22 = *(v0 + 16);
    v23 = *(v0 + 48);
    v18[1] = *(v0 + 32);
    v18[2] = v23;
    *v18 = v22;
    (*(v15 + 16))(v14, v13, v16);
    sub_1D5CEFE68(v10, v17, type metadata accessor for FormatService.CacheFormatFile);
    (*(v11 + 56))(v17, 0, 1, v12);
    sub_1D725B87C();
    sub_1D5B952F8(v53, v4);

    sub_1D5EA08F4(v10, type metadata accessor for FormatService.CacheFormatFile);
    v51(v13, v16);

    v24 = *(v0 + 8);
    goto LABEL_10;
  }

  v25 = *(v0 + 696);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 107) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 219) = 0u;
  sub_1D5E9E688(v0 + 128, &qword_1EC880140, &type metadata for FormatDecoration);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v26 = swift_allocError();
  *v27 = 0xD000000000000010;
  v27[1] = 0x80000001D73BF9D0;
  v27[2] = 1635017028;
  v27[3] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v50 = v26;
  swift_willThrow();

  sub_1D5EA08F4(v25, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v28 = *(v0 + 664);
  v29 = *(v0 + 648);
  v48 = *(v0 + 640);
  v49 = *(v0 + 744);
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D7270C10;
  v31 = sub_1D72583DC();
  v33 = v32;
  v34 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  v35 = sub_1D5B7E2C0();
  *(v30 + 64) = v35;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  *(v0 + 544) = 0;
  *(v0 + 552) = 0xE000000000000000;
  *(v0 + 560) = v50;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v36 = *(v0 + 544);
  v37 = *(v0 + 552);
  *(v30 + 96) = v34;
  *(v30 + 104) = v35;
  *(v30 + 72) = v36;
  *(v30 + 80) = v37;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v39 = v38;
  sub_1D5EA0810();
  v41 = *(v40 + 48);
  (*(v29 + 16))(v39, v28, v48);
  *(v39 + v41) = v50;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v53, v52);
  v49(v28, v48);

  v24 = *(v0 + 8);
LABEL_10:

  return v24();
}

uint64_t sub_1D5E93E3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E93F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = type metadata accessor for FormatFile();
  v4[34] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = sub_1D7261B9C();
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E94180, 0, 0);
}

uint64_t sub_1D5E94180()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  v11 = *(v0 + 296);
  v12 = *(v0 + 240);
  *(v0 + 400) = *(*(v0 + 256) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v10 + 8);
  *(v0 + 408) = v14;
  *(v0 + 416) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v9);
  v15 = *(v7 + 48);
  *(v0 + 424) = v15;
  *(v0 + 432) = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v6) == 1)
  {
    v16 = sub_1D5CF274C(*(v0 + 296), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_9:
    if (sub_1D5E53190(v16, v17))
    {
      [*(*(v0 + 256) + 136) d:*(v0 + 240) resetAssetHandle:?];
    }

    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = *(v26 + 40);
    v29 = *(v26 + 48);
    v30 = swift_task_alloc();
    *(v30 + 16) = v27;
    *(v30 + 24) = v28;
    *(v30 + 32) = v29;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v27;
    v31 = v27;
    v32 = sub_1D725B92C();
    *(v0 + 440) = sub_1D725BA8C();

    v33 = swift_task_alloc();
    *(v0 + 448) = v33;
    *v33 = v0;
    v33[1] = sub_1D5E9460C;
    v5 = v0 + 192;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v18 = *(v0 + 368);
  sub_1D5CEFF38(*(v0 + 296), v18, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 160));
  sub_1D5EA08F4(v18, type metadata accessor for FormatService.CacheFormatFile);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 120) = 0;
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    v16 = sub_1D5EA0890(0, 0);
    goto LABEL_9;
  }

  v19 = *(v0 + 232);
  v20 = *(v0 + 80);
  v21 = *(v0 + 120);
  v22 = *(v0 + 88);
  v23 = *(v0 + 104);
  *v19 = *(v0 + 72);
  *(v19 + 8) = v20;
  *(v19 + 16) = v22;
  *(v19 + 32) = v23;
  *(v19 + 48) = v21;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D5E9460C()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1D5E94EBC;
  }

  else
  {

    v2 = sub_1D5E94728;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E94728()
{
  v1 = v0;
  v2 = v0[53];
  v3 = v0[43];
  v4 = v0[36];
  v5 = v0[30];
  v6 = v0[24];
  v7 = v0[25];
  v54 = v6;
  v8 = [v5 remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  if (v2(v4, 1, v3) == 1)
  {
    v9 = v1[57];
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v10 = v1[53];
    if (v9)
    {
      v11 = v1[43];
      v12 = v1[36];

      v52 = v9;
      if (v10(v12, 1, v11) != 1)
      {
        sub_1D5CF274C(v1[36], &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v45 = v1[45];
    v46 = v1[43];
    v47 = v1[36];
    v48 = v1[30];
    sub_1D5CEFF38(v1[34], v45, type metadata accessor for FormatFile);
    *(v45 + *(v46 + 20)) = v48;
    LODWORD(v45) = v10(v47, 1, v46);
    v49 = v48;
    if (v45 != 1)
    {
      sub_1D5CF274C(v1[36], &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(v1[36], v1[45], type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C(v1 + 8);
  if (swift_dynamicCast())
  {
    v53 = v1[51];
    v13 = v1[44];
    v14 = v1[45];
    v15 = v1[43];
    v17 = v1[40];
    v16 = v1[41];
    v19 = v1[38];
    v18 = v1[39];
    v20 = v1[35];
    v21 = v1[29];
    v22 = v1[3];
    v23 = v1[8];
    v24 = *(v1 + 2);
    v25 = *(v1 + 3);
    *v21 = v1[2];
    *(v21 + 8) = v22;
    *(v21 + 16) = v24;
    *(v21 + 32) = v25;
    *(v21 + 48) = v23;
    (*(v18 + 16))(v17, v16, v19);
    sub_1D5CEFE68(v14, v20, type metadata accessor for FormatService.CacheFormatFile);
    (*(v13 + 56))(v20, 0, 1, v15);
    sub_1D725B87C();
    sub_1D5B952F8(v54, v7);

    sub_1D5EA08F4(v14, type metadata accessor for FormatService.CacheFormatFile);
    v53(v16, v19);

    v26 = v1[1];
    goto LABEL_10;
  }

  v27 = v1[45];
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1[8] = 0;
  sub_1D5EA0890(0, 0);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v28 = swift_allocError();
  *v29 = 0xD000000000000012;
  v29[1] = 0x80000001D73BF9B0;
  v29[2] = 1635017028;
  v29[3] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v52 = v28;
  swift_willThrow();

  sub_1D5EA08F4(v27, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v30 = v1[41];
  v31 = v1[39];
  v50 = v1[38];
  v51 = v1[51];
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7270C10;
  v33 = sub_1D72583DC();
  v35 = v34;
  v36 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1D5B7E2C0();
  *(v32 + 64) = v37;
  v1[26] = 0;
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v1[27] = 0xE000000000000000;
  v1[28] = v52;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v38 = v1[26];
  v39 = v1[27];
  *(v32 + 96) = v36;
  *(v32 + 104) = v37;
  *(v32 + 72) = v38;
  *(v32 + 80) = v39;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v41 = v40;
  sub_1D5EA0810();
  v43 = *(v42 + 48);
  (*(v31 + 16))(v41, v30, v50);
  *(v41 + v43) = v52;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v54, v7);
  v51(v30, v50);

  v26 = v1[1];
LABEL_10:

  return v26();
}

uint64_t sub_1D5E94EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E94FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[10] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_1D5C2AB28(0);
  v5[17] = v7;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E95168, 0, 0);
}

uint64_t sub_1D5E95168()
{
  sub_1D5CEFE68(v0[3], v0[18], sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[18];
      v3 = v0[2];
      sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      v5 = *(v4 + 48);
      sub_1D5CEFF38(v2, v3, type metadata accessor for FormatPackage);
      sub_1D5E9EB74(0);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[11];
    v19 = v0[12];
    v20 = v0[9];
    sub_1D5CF23F8(v0[5], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[9];
    }

    else
    {
      v23 = v0[14];
      v36 = v21;
      v24 = v0[11];
      v25 = v0[12];
      v37 = v0[8];
      v26 = v0[7];
      v15(v23, v0[9], v24);
      sub_1D72583EC();
      (*(v25 + 16))(v26, v23, v24);
      (*(v25 + 56))(v26, 0, 1, v24);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v25 + 8))(v23, v24);
      if (v36(v37, 1, v24) != 1)
      {
        v33 = v0[15];
        v34 = v0[13];
        v35 = v0[11];
        v15(v34, v0[8], v35);
        v15(v33, v34, v35);
        goto LABEL_16;
      }

      v22 = v0[8];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[12] + 16))(v0[15], v0[16], v0[11]);
LABEL_16:
  v27 = swift_task_alloc();
  v0[19] = v27;
  *v27 = v0;
  v27[1] = sub_1D5E9572C;
  v28 = v0[15];
  v29 = v0[10];
  v30 = v0[6];
  v31 = v0[4];
  v32 = v0[2];

  return sub_1D5E8B2D0(v32, v28, v31, v30, v29);
}

uint64_t sub_1D5E9572C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1D5E9595C;
  }

  else
  {
    v2 = sub_1D5E95840;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E95840()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[10];
  v4 = *(v0[12] + 8);
  v4(v0[15], v2);
  sub_1D5EA08F4(v3, type metadata accessor for FormatMetadata);
  v4(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D5E9595C()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[10];
  v4 = *(v0[12] + 8);
  v4(v0[15], v2);
  sub_1D5EA08F4(v3, type metadata accessor for FormatMetadata);
  v4(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D5E95A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return sub_1D5E82C70(a1, a2, a4, a5);
}

uint64_t sub_1D5E95B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return sub_1D5E8389C(a1, a2, a4, a5);
}

uint64_t sub_1D5E95C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[10] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_1D5EA1328(0);
  v5[16] = v7;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E95DC0, 0, 0);
}

uint64_t sub_1D5E95DC0()
{
  sub_1D5CEFE68(v0[3], v0[17], sub_1D5EA1328);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[17];
      v3 = v0[2];
      sub_1D5E9D830(0, &qword_1EDF32E98, type metadata accessor for FormatSnippet, type metadata accessor for FormatMetadata);
      v5 = *(v4 + 48);
      v6 = *v2;
      sub_1D5C2C40C(0);
      sub_1D5CEFF38(v2 + v5, v3 + *(v7 + 36), type metadata accessor for FormatMetadata);
      *v3 = v6;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v8 = v0[1];

    return v8();
  }

  v9 = v0[17];
  v10 = v0[15];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[10];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v15 = *(v14 + 48);
  v16 = *(v12 + 32);
  v16(v10, v9, v11);
  sub_1D5CEFF38(v9 + v15, v13, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v17)
  {
  }

  else
  {
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[9];
    sub_1D5CF23F8(v0[5], v21, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v22 = *(v20 + 48);
    if (v22(v21, 1, v19) == 1)
    {
      v23 = v0[9];
    }

    else
    {
      v33 = v22;
      v24 = v0[12];
      v25 = v0[13];
      v26 = v0[11];
      v34 = v0[8];
      v27 = v0[7];
      v16(v25, v0[9], v26);
      sub_1D72583EC();
      (*(v24 + 16))(v27, v25, v26);
      (*(v24 + 56))(v27, 0, 1, v26);
      sub_1D725854C();

      sub_1D5CF274C(v27, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v24 + 8))(v25, v26);
      if (v33(v34, 1, v26) != 1)
      {
        v16(v0[14], v0[8], v0[11]);
        goto LABEL_16;
      }

      v23 = v0[8];
    }

    sub_1D5CF274C(v23, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[12] + 16))(v0[14], v0[15], v0[11]);
LABEL_16:
  v28 = *(v0[4] + 136);
  v29 = sub_1D725844C();
  v30 = [v28 assetHandleForURL:v29 lifetimeHint:1];
  v0[18] = v30;

  v31 = swift_task_alloc();
  v0[19] = v31;
  *v31 = v0;
  v31[1] = sub_1D5E96370;
  v32 = v0[6];

  return sub_1D5E8F330(v30, v32);
}

uint64_t sub_1D5E96370(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1D5E965F0;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_1D5E96498;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E96498()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 16);

  sub_1D5C2C40C(0);
  sub_1D5CEFE68(v6, v7 + *(v8 + 36), type metadata accessor for FormatMetadata);
  *v7 = v1;
  v9 = *(v5 + 8);
  v9(v2, v4);
  sub_1D5EA08F4(v6, type metadata accessor for FormatMetadata);
  v9(v3, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D5E965F0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E96710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return sub_1D5E844C8(a1, a2, a4, a5);
}

uint64_t sub_1D5E967D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return sub_1D5E850C8(a1, a2, a4, a5);
}

uint64_t sub_1D5E968A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return sub_1D5E85CDC(a1, a2, a4, a5);
}

uint64_t sub_1D5E96968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64684;

  return sub_1D5E868F8(a1, a2, a4, a5);
}

uint64_t sub_1D5E96A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return sub_1D5E873EC(a1, a2, a4, a5);
}

uint64_t sub_1D5E96AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v47[0] = a4;
  v51 = a1;
  v52 = a2;
  v6 = sub_1D72585BC();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v49 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v47 - v18;
  v20 = type metadata accessor for FormatService.CacheFormatFile(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  v25 = *(v57 + 480);
  v57 = a3;
  v47[1] = v25;
  sub_1D725B86C();
  v48 = v21;
  v26 = *(v21 + 48);
  if (v26(v19, 1, v20) == 1)
  {
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    v27 = v54;
    sub_1D725A69C();
    v28 = v27;
    if (v27)
    {

      if (v26(v19, 1, v20) != 1)
      {
        sub_1D5CF274C(v19, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    sub_1D5CEFF38(v12, v24, type metadata accessor for FormatFile);
    v44 = v47[0];
    *&v24[*(v20 + 20)] = v47[0];
    v45 = v26(v19, 1, v20);
    v46 = v44;
    if (v45 != 1)
    {
      sub_1D5CF274C(v19, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(v19, v24, type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C(&v58);
  type metadata accessor for FormatSnippet();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for FormatServiceError();
    sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
    v28 = swift_allocError();
    strcpy(v31, "FormatSnippet");
    *(v31 + 7) = -4864;
    *(v31 + 2) = 1635017028;
    *(v31 + 3) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D5EA08F4(v24, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
    type metadata accessor for FormatServiceOptions();
    sub_1D7262EBC();
    sub_1D5C384A0();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D7270C10;
    v33 = v57;
    v34 = sub_1D72583DC();
    v36 = v35;
    v37 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v38 = sub_1D5B7E2C0();
    *(v32 + 64) = v38;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    v59 = v28;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v39 = v58;
    *(v32 + 96) = v37;
    *(v32 + 104) = v38;
    *(v32 + 72) = v39;
    sub_1D725C30C();

    type metadata accessor for FormatServiceError();
    sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
    swift_allocError();
    v29 = v40;
    sub_1D5EA0810();
    v42 = *(v41 + 48);
    (*(v55 + 16))(v29, v33, v56);
    *(v29 + v42) = v28;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v29;
  }

  v29 = v59;
  (*(v55 + 16))(v50, v57, v56);
  v30 = v49;
  sub_1D5CEFE68(v24, v49, type metadata accessor for FormatService.CacheFormatFile);
  (*(v48 + 56))(v30, 0, 1, v20);
  sub_1D725B87C();

  sub_1D5EA08F4(v24, type metadata accessor for FormatService.CacheFormatFile);
  return v29;
}

uint64_t sub_1D5E9727C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for FormatContent(0) + 60));
  sub_1D72596FC();

  sub_1D72596DC();
  sub_1D72595EC();
  sub_1D72595CC();

  sub_1D72596CC();

  if (a2)
  {
    if (([swift_unknownObjectRetain() sponsoredFeedEligible] | v12))
    {
      *a3 = a2;
      a3[1] = v5;
      v6 = *MEMORY[0x1E69B40C8];
      v7 = sub_1D72608EC();
      v8 = *(v7 - 8);
      (*(v8 + 104))(a3, v6, v7);
      return (*(v8 + 56))(a3, 0, 1, v7);
    }

    swift_unknownObjectRelease();
  }

  if (*(v5 + 16))
  {
    *a3 = v5;
    v9 = *MEMORY[0x1E69B40D0];
    v7 = sub_1D72608EC();
    v8 = *(v7 - 8);
    (*(v8 + 104))(a3, v9, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  v11 = sub_1D72608EC();
  (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
}

uint64_t sub_1D5E974A4@<X0>(uint64_t a1@<X0>, id *a2@<X8>)
{
  sub_1D5CEFE68(a1, v19 + 1, sub_1D5E9D770);
  v4 = v20;
  if (v20)
  {
    v5 = v21;
    __swift_project_boxed_opaque_existential_1((v19 + 1), v20);
    (*(v5 + 48))(v19, v4, v5);
    v6 = LOBYTE(v19[0]);
    __swift_destroy_boxed_opaque_existential_1(v19 + 1);
    if (v6 != 30)
    {
      BYTE1(v19[0]) = v6;
      LOBYTE(v19[0]) = 24;
      v7 = FeedKind.rawValue.getter();
      v9 = v8;
      if (v7 == FeedKind.rawValue.getter() && v9 == v10)
      {

LABEL_12:
        v18 = *MEMORY[0x1E69B4088];
        v13 = sub_1D72607EC();
        v14 = *(v13 - 8);
        (*(v14 + 104))(a2, v18, v13);
        return (*(v14 + 56))(a2, 0, 1, v13);
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1D5EA08F4(v19 + 1, sub_1D5E9D770);
  }

  v11 = *(a1 + *(type metadata accessor for FormatServiceOptions() + 64));
  if (!v11 || !*(v11 + 24))
  {
    v15 = sub_1D72607EC();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  *a2 = FCFeedDescriptor.feedTag.getter();
  v12 = *MEMORY[0x1E69B4080];
  v13 = sub_1D72607EC();
  v14 = *(v13 - 8);
  (*(v14 + 104))(a2, v12, v13);
  return (*(v14 + 56))(a2, 0, 1, v13);
}

uint64_t sub_1D5E97748(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v35 = a2;
  v36 = sub_1D7260BFC();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72607EC();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D726080C();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726068C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D72606AC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v14 + 104))(v17, *MEMORY[0x1E69B4010], v13);
  sub_1D726069C();
  sub_1D5C2AF10(&qword_1EDF3AA20, 255, MEMORY[0x1E69B4028]);
  sub_1D72609FC();
  (*(v19 + 8))(v22, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v29 + 16))(v28, v35, v30);
  (*(v34 + 104))(v31, *MEMORY[0x1E69B4308], v36);
  sub_1D72608CC();
  v23 = v27;
  sub_1D72607FC();
  sub_1D5C2AF10(&qword_1EDF168B8, 255, MEMORY[0x1E69B40A0]);
  v24 = v32;
  sub_1D72609FC();
  return (*(v33 + 8))(v23, v24);
}

uint64_t sub_1D5E97B9C()
{
  sub_1D5EA08F4(v0 + 24, sub_1D5B81B04);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5E97BE8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FormatMetadata();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B197D8(v6);
  sub_1D5CF23F8(&v6[*(v3 + 36)], a1, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  return sub_1D5EA08F4(v6, type metadata accessor for FormatMetadata);
}

void sub_1D5E97CC0(void **a1)
{
  v2 = *(type metadata accessor for FormatService.ThemePackage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFB08(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D5E9814C(v5);
  *a1 = v3;
}

uint64_t dispatch thunk of FormatServiceType.resolveResult(content:pool:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5E97EA8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1D5E97EA8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of FormatServiceType.prefetch(content:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64680;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1D5E9814C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
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
        type metadata accessor for FormatService.ThemePackage(0);
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FormatService.ThemePackage(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D5E984CC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1D5E98278(0, v2, 1, a1);
  }
}

void sub_1D5E98278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for FormatService.ThemePackage(0);
  MEMORY[0x1EEE9AC00](v38, v8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v29 - v12);
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1D5CEFE68(v24, v18, type metadata accessor for FormatService.ThemePackage);
      sub_1D5CEFE68(v21, v13, type metadata accessor for FormatService.ThemePackage);
      v25 = *v18;
      v26 = *v13;
      sub_1D5EA08F4(v13, type metadata accessor for FormatService.ThemePackage);
      sub_1D5EA08F4(v18, type metadata accessor for FormatService.ThemePackage);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1D5CEFF38(v24, v37, type metadata accessor for FormatService.ThemePackage);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D5CEFF38(v27, v21, type metadata accessor for FormatService.ThemePackage);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D5E984CC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v124 = type metadata accessor for FormatService.ThemePackage(0);
  v9 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v10);
  v115 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v126 = (&v107 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v125 = (&v107 - v20);
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_129:
      v102 = sub_1D62FF50C(a4);
    }

    v127 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      v103 = v9;
      while (*a3)
      {
        v104 = *&v102[16 * a4];
        v105 = v102;
        v9 = *&v102[16 * a4 + 24];
        sub_1D5E98E04(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v9 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D62FF50C(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v105[16 * a4];
        *v106 = v104;
        *(v106 + 1) = v9;
        v127 = v105;
        sub_1D62FF480(a4 - 1);
        v102 = v127;
        a4 = *(v127 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v113 = a3;
  v111 = a4;
  v109 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v116 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *a3;
      v27 = *(v9 + 72);
      v5 = v26 + v27 * v25;
      v28 = v125;
      sub_1D5CEFE68(v5, v125, type metadata accessor for FormatService.ThemePackage);
      v29 = v126;
      sub_1D5CEFE68(v26 + v27 * v24, v126, type metadata accessor for FormatService.ThemePackage);
      v30 = *v28;
      v118 = *v29;
      v119 = v30;
      sub_1D5EA08F4(v29, type metadata accessor for FormatService.ThemePackage);
      sub_1D5EA08F4(v28, type metadata accessor for FormatService.ThemePackage);
      v110 = v24;
      v31 = v24 + 2;
      v120 = v27;
      v121 = v21;
      v32 = v26 + v27 * v31;
      while (v21 != v31)
      {
        LODWORD(v122) = v119 < v118;
        v33 = v125;
        sub_1D5CEFE68(v32, v125, type metadata accessor for FormatService.ThemePackage);
        v34 = v6;
        v35 = v126;
        sub_1D5CEFE68(v5, v126, type metadata accessor for FormatService.ThemePackage);
        v36 = *v33;
        v37 = *v35;
        v38 = v35;
        v6 = v34;
        sub_1D5EA08F4(v38, type metadata accessor for FormatService.ThemePackage);
        v21 = v121;
        sub_1D5EA08F4(v33, type metadata accessor for FormatService.ThemePackage);
        ++v31;
        v32 += v120;
        v5 += v120;
        if (((v122 ^ (v36 >= v37)) & 1) == 0)
        {
          v21 = v31 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v109;
      v24 = v110;
      a4 = v111;
      if (v119 < v118)
      {
        if (v21 < v110)
        {
          goto LABEL_126;
        }

        if (v110 < v21)
        {
          v39 = v120 * (v21 - 1);
          v40 = v21 * v120;
          v121 = v21;
          v41 = v21;
          v42 = v110;
          v43 = v110 * v120;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!v44)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_1D5CEFF38(v44 + v43, v115, type metadata accessor for FormatService.ThemePackage);
              if (v43 < v39 || v5 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D5CEFF38(v115, v44 + v39, type metadata accessor for FormatService.ThemePackage);
              a3 = v113;
            }

            ++v42;
            v39 -= v120;
            v40 -= v120;
            v43 += v120;
          }

          while (v42 < v41);
          v9 = v109;
          v24 = v110;
          a4 = v111;
          v21 = v121;
        }
      }
    }

    v45 = a3[1];
    if (v21 < v45)
    {
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_125;
      }

      if (v21 - v24 < a4)
      {
        if (__OFADD__(v24, a4))
        {
          goto LABEL_127;
        }

        if ((v24 + a4) >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v24 + a4;
        }

        if (v46 < v24)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v21 != v46)
        {
          break;
        }
      }
    }

    v47 = v21;
    if (v21 < v24)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v116;
    }

    else
    {
      v23 = sub_1D698BA94(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v23 + 2);
    v48 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      v23 = sub_1D698BA94((v48 > 1), a4 + 1, 1, v23);
    }

    *(v23 + 2) = v5;
    v49 = &v23[16 * a4];
    *(v49 + 4) = v24;
    *(v49 + 5) = v47;
    v50 = *v112;
    if (!*v112)
    {
      goto LABEL_134;
    }

    v117 = v47;
    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v23 + 4);
          v53 = *(v23 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v23[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v23[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v23[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v23[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v89 = v23;
        v90 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v51 + 40];
        sub_1D5E98E04(*a3 + *(v9 + 72) * v90, *a3 + *(v9 + 72) * *&v23[16 * v51 + 32], *a3 + *(v9 + 72) * v5, v50);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1D62FF50C(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v89[16 * a4];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v127 = v89;
        sub_1D62FF480(v51);
        v23 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v23[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v23[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v23[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v21 = a3[1];
    v22 = v117;
    a4 = v111;
    if (v117 >= v21)
    {
      goto LABEL_95;
    }
  }

  v108 = v6;
  v92 = *a3;
  v93 = *(v9 + 72);
  v94 = *a3 + v93 * (v21 - 1);
  v95 = -v93;
  v110 = v24;
  v96 = v24 - v21;
  v114 = v93;
  v122 = v92;
  v5 = v92 + v21 * v93;
  v117 = v46;
LABEL_85:
  v120 = v94;
  v121 = v21;
  v118 = v5;
  v119 = v96;
  v97 = v94;
  while (1)
  {
    v98 = v125;
    sub_1D5CEFE68(v5, v125, type metadata accessor for FormatService.ThemePackage);
    v99 = v126;
    sub_1D5CEFE68(v97, v126, type metadata accessor for FormatService.ThemePackage);
    a4 = *v98;
    v100 = *v99;
    sub_1D5EA08F4(v99, type metadata accessor for FormatService.ThemePackage);
    sub_1D5EA08F4(v98, type metadata accessor for FormatService.ThemePackage);
    if (a4 >= v100)
    {
LABEL_84:
      v21 = v121 + 1;
      v94 = v120 + v114;
      v96 = v119 - 1;
      v5 = v118 + v114;
      v47 = v117;
      if (v121 + 1 != v117)
      {
        goto LABEL_85;
      }

      v6 = v108;
      v9 = v109;
      a3 = v113;
      v24 = v110;
      if (v117 < v110)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    a4 = v123;
    sub_1D5CEFF38(v5, v123, type metadata accessor for FormatService.ThemePackage);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5CEFF38(a4, v97, type metadata accessor for FormatService.ThemePackage);
    v97 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D5E98E04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for FormatService.ThemePackage(0);
  MEMORY[0x1EEE9AC00](v46, v8);
  v48 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v47 = (&v38 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v42 = a1;
      v43 = a4;
      v41 = v27;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v44 = v29;
        v45 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v39;
            goto LABEL_58;
          }

          v31 = a3;
          v40 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v28 + v27;
          v34 = v47;
          sub_1D5CEFE68(v33, v47, type metadata accessor for FormatService.ThemePackage);
          v35 = v48;
          sub_1D5CEFE68(v30, v48, type metadata accessor for FormatService.ThemePackage);
          v36 = *v34;
          v37 = *v35;
          sub_1D5EA08F4(v35, type metadata accessor for FormatService.ThemePackage);
          sub_1D5EA08F4(v34, type metadata accessor for FormatService.ThemePackage);
          if (v36 < v37)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v45;
            v27 = v41;
            a1 = v42;
          }

          else
          {
            v30 = v45;
            v27 = v41;
            a1 = v42;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v44;
          if (v32 <= v43)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v31 < v44 || a3 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v26 = v40;
        }

        else
        {
          a2 = v45;
          v27 = v41;
          a1 = v42;
          v26 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v43);
    }

LABEL_57:
    v51 = a2;
    v49 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v44 = a3;
      do
      {
        v20 = v47;
        sub_1D5CEFE68(a2, v47, type metadata accessor for FormatService.ThemePackage);
        v21 = a2;
        v22 = v48;
        sub_1D5CEFE68(a4, v48, type metadata accessor for FormatService.ThemePackage);
        v23 = *v20;
        v24 = *v22;
        sub_1D5EA08F4(v22, type metadata accessor for FormatService.ThemePackage);
        sub_1D5EA08F4(v20, type metadata accessor for FormatService.ThemePackage);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
            a2 = v21;
          }

          else
          {
            v25 = v44;
            a2 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v21 + v14;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
          }

          else
          {
            v25 = v44;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v25);
    }
  }

LABEL_58:
  sub_1D62FF568(&v51, &v50, &v49);
}

unint64_t *sub_1D5E99300(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    sub_1D5E9DC0C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D5E9939C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D699772C(0, v2, 0);
  v3 = v34;
  v5 = v4 + 56;
  result = sub_1D7263B7C();
  v7 = result;
  v8 = 0;
  v27 = v4 + 64;
  v28 = v2;
  v29 = v4 + 56;
  v30 = v4;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v32 = v8;
    v33 = *(v4 + 36);
    v11 = (*(v4 + 48) + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    type metadata accessor for SportsDataVisualizationAllRequest();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v14 + 32) = 1;
    *(v14 + 48) = a2;
    sub_1D5B5A7A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v12;
    *(inited + 40) = v13;
    swift_bridgeObjectRetain_n();

    v16 = sub_1D5B86020(inited);
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    *(v14 + 40) = v16;

    v18 = *(v34 + 16);
    v17 = *(v34 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1D699772C((v17 > 1), v18 + 1, 1);
    }

    *(v34 + 16) = v18 + 1;
    v19 = v34 + 40 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 1;
    v4 = v30;
    v9 = 1 << *(v30 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v5 = v29;
    v20 = *(v29 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(v30 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1D5C25E1C(v7, v33, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v7, v33, 0);
    }

LABEL_4:
    v8 = v32 + 1;
    v7 = v9;
    if (v32 + 1 == v28)
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
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D5E99698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1D699772C(0, v2, 0);
  v3 = v28;
  v6 = a1 + 56;
  result = sub_1D7263B7C();
  v8 = result;
  v9 = 0;
  v24 = v2;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v9;
    v26 = *(a1 + 36);
    v12 = (*(a1 + 48) + 16 * v8);
    v13 = v12[1];
    v27 = *v12;
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);

    if (v15 >= v14 >> 1)
    {
      result = sub_1D699772C((v14 > 1), v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 40 * v15;
    *(v16 + 32) = v27;
    *(v16 + 40) = v13;
    *(v16 + 48) = 1;
    *(v16 + 56) = a2;
    *(v16 + 64) = 2;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v6 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v11);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 64 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D5C25E1C(v8, v26, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v8, v26, 0);
    }

LABEL_4:
    v9 = v25 + 1;
    v8 = v10;
    if (v25 + 1 == v24)
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
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D5E998E0(uint64_t a1)
{
  sub_1D5CEFE04(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v69 - v7;
  v9 = sub_1D725BD1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = &v69 - v16;
  v71 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v71, v17);
  v19 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C2AB28(0);
  v79 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v83 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v80 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v69 - v29;
  v85 = MEMORY[0x1E69E7CC8];
  v69 = a1;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_38:
    v67 = sub_1D5E50FEC(v69, &v85);
LABEL_40:

    return v67;
  }

  v32 = *(v28 + 80);
  v81 = *(v28 + 72);
  v78 = (v32 + 32) & ~v32;
  v33 = v69 + v78;
  v70 = (v10 + 48);
  v34 = MEMORY[0x1E69E7CC8];
  v72 = (v10 + 32);
  v76 = v9;
  v77 = v8;
  v75 = v13;
  v82 = &v69 - v29;
  while (1)
  {
    sub_1D5CEFE68(v33, v30, sub_1D5C2AB28);
    sub_1D5CEFE68(v30, v80, sub_1D5C2AB28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v36 = v74;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
        v38 = v80;
        sub_1D5CEFF38(v80 + *(v37 + 48), v19, type metadata accessor for FormatMetadata);
        sub_1D5EA08F4(v38, type metadata accessor for FormatPackage);
      }

      else
      {
        sub_1D725BD3C();
        v42 = *v70;
        if ((*v70)(v8, 1, v9) == 1)
        {
          sub_1D725BCDC();
          if (v42(v8, 1, v9) != 1)
          {
            sub_1D5CF274C(v8, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
          }
        }

        else
        {
          (*v72)(v73, v8, v9);
        }

        sub_1D725BD3C();
        if (v42(v36, 1, v9) == 1)
        {
          sub_1D725BCCC();
          if (v42(v36, 1, v9) != 1)
          {
            sub_1D5CF274C(v36, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
          }
        }

        else
        {
          (*v72)(v13, v36, v9);
        }

        v43 = v71;
        sub_1D725BD3C();
        *v19 = 0;
        v19[1] = 0;
        v44 = *v72;
        (*v72)(v19 + v43[5], v73, v9);
        v44(v19 + v43[6], v13, v9);
        v45 = MEMORY[0x1E69E7CD0];
        *(v19 + v43[8]) = MEMORY[0x1E69E7CD0];
        *(v19 + v43[9]) = v45;
        *(v19 + v43[10]) = v45;
        *(v19 + v43[11]) = v45;
      }
    }

    else
    {
      sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
      v40 = v80;
      sub_1D5CEFF38(v80 + *(v39 + 48), v19, type metadata accessor for FormatMetadata);
      v41 = sub_1D72585BC();
      (*(*(v41 - 8) + 8))(v40, v41);
    }

    v47 = *v19;
    v46 = v19[1];

    sub_1D5EA08F4(v19, type metadata accessor for FormatMetadata);
    if (!v46)
    {
      sub_1D5EA08F4(v82, sub_1D5C2AB28);
      v67 = v69;

      goto LABEL_40;
    }

    if (v34[2] && (v48 = sub_1D5B69D90(v47, v46), (v49 & 1) != 0))
    {
      v50 = *(v34[7] + 8 * v48);
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    sub_1D5CEFE68(v82, v83, sub_1D5C2AB28);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1D5D57998(0, v50[2] + 1, 1, v50);
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_1D5D57998(v51 > 1, v52 + 1, 1, v50);
    }

    v50[2] = v52 + 1;
    sub_1D5CEFF38(v83, v50 + v78 + v52 * v81, sub_1D5C2AB28);
    v53 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v53;
    v56 = sub_1D5B69D90(v47, v46);
    v57 = v53[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v34 = v84;
        if (v55)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D6D7D6E4();
        v34 = v84;
        if (v60)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D6D662F4(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_1D5B69D90(v47, v46);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_43;
      }

      v56 = v61;
      v34 = v84;
      if (v60)
      {
LABEL_3:
        *(v34[7] + 8 * v56) = v50;

        goto LABEL_4;
      }
    }

    v34[(v56 >> 6) + 8] |= 1 << v56;
    v63 = (v34[6] + 16 * v56);
    *v63 = v47;
    v63[1] = v46;
    *(v34[7] + 8 * v56) = v50;
    v64 = v34[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_42;
    }

    v34[2] = v66;
LABEL_4:
    v85 = v34;
    v30 = v82;
    sub_1D5EA08F4(v82, sub_1D5C2AB28);
    v33 += v81;
    --v31;
    v9 = v76;
    v8 = v77;
    v13 = v75;
    if (!v31)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D5E9A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatServiceOptions();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v35[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatContentSubgroupFilterContext();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v35[-1] - v22;
  sub_1D5CEFE68(a1, v15, type metadata accessor for FormatContent);
  sub_1D5CEFE68(a2, v11, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v15, v19, type metadata accessor for FormatContent);
  sub_1D5CEFE68(v11, &v19[v16[5]], type metadata accessor for FormatServiceOptions);
  v35[0] = a4;
  sub_1D5B5A7A0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&qword_1EDF1B0D0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer);
  sub_1D5E9D71C();
  *&v19[v16[6]] = sub_1D72623BC();
  *&v19[v16[7]] = a3;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v25 = sub_1D5EEDC00(0x2D70756F7267, 0xE600000000000000, ObjectType);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5CEFE68(v11, v35, sub_1D5E9D770);
  v26 = v36;
  if (v36)
  {
    v27 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v28 = (*(v27 + 8))(v15, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_1D5EA08F4(v35, sub_1D5E9D770);
    v28 = MEMORY[0x1E69E7CD0];
  }

  v29 = sub_1D5BA8750(v25, v28);

  sub_1D5EA08F4(v11, type metadata accessor for FormatServiceOptions);
  sub_1D5EA08F4(v15, type metadata accessor for FormatContent);
  *&v19[v16[8]] = v29;
  v30 = sub_1D5CEFF38(v19, v23, type metadata accessor for FormatContentSubgroupFilterContext);
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v34 - 2) = v23;

  v32 = sub_1D62EC934(sub_1D5E9D7D8, (&v34 - 4), a4);
  sub_1D5EA08F4(v23, type metadata accessor for FormatContentSubgroupFilterContext);
  return v32;
}

uint64_t sub_1D5E9A604(uint64_t a1, uint64_t *a2)
{
  sub_1D5E9EB74(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = (&v28 - v10);
  v32 = *(a1 + 16);
  if (v32)
  {
    v12 = 0;
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v34 = *(v9 + 72);
    v30 = v13;
    v31 = a1 + v13;
    v14 = MEMORY[0x1E69E7CC0];
    v29 = a2;
    while (1)
    {
      sub_1D5CEFE68(v31 + v34 * v12, v11, sub_1D5E9EB74);
      v15 = *a2;
      v16 = *v11;
      v17 = v11[1];
      if (*(*a2 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v18 = sub_1D7264A5C();
        v19 = -1 << *(v15 + 32);
        v20 = v18 & ~v19;
        if ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(v15 + 48) + 16 * v20);
            v23 = *v22 == v16 && v22[1] == v17;
            if (v23 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          sub_1D5EA08F4(v11, sub_1D5E9EB74);
          a2 = v29;
          goto LABEL_4;
        }

LABEL_14:

        a2 = v29;
      }

      sub_1D5B860D0(&v35, v16, v17);

      sub_1D5CEFF38(v11, v33, sub_1D5E9EB74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D69977A0(0, *(v14 + 16) + 1, 1);
        v14 = v36;
      }

      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D69977A0(v25 > 1, v26 + 1, 1);
        v14 = v36;
      }

      *(v14 + 16) = v26 + 1;
      sub_1D5CEFF38(v33, v14 + v30 + v26 * v34, sub_1D5E9EB74);
LABEL_4:
      if (++v12 == v32)
      {
        return v14;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D5E9A9D0()
{
  if (!qword_1EDF04A38)
  {
    sub_1D5B5A498(255, &qword_1EDF1AAF0);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04A38);
    }
  }
}

uint64_t objectdestroy_60Tm()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for FormatServiceOptions();
  v51 = *(*(v6 - 1) + 80);
  v7 = v4 + v5 + v51;

  v8 = v1 + v4;

  v9 = v2[5];
  v10 = sub_1D725891C();
  v47 = *(*(v10 - 8) + 8);
  v48 = v10;
  v47(v8 + v9);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v11 = v8 + v2[16];
  v12 = type metadata accessor for FormatWebEmbed.Resolved();
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    v45 = v7;
    v49 = v6;
    v46 = v1;

    v13 = v11 + v12[5];

    v14 = type metadata accessor for FormatWebEmbed();
    v15 = *(v14 + 20);
    v16 = sub_1D72585BC();
    v17 = *(v16 - 8);
    v44 = *(v17 + 8);
    v44(v13 + v15, v16);
    v18 = *(v14 + 24);
    if (!(*(v17 + 48))(v13 + v18, 1, v16))
    {
      v44(v13 + v18, v16);
    }

    v19 = v11 + v12[8];
    v20 = type metadata accessor for WebEmbedDataVisualization();
    v7 = v45;
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v21 = type metadata accessor for GenericDataVisualization();
        v44(v19 + *(v21 + 20), v16);
      }

      else
      {
      }
    }

    v22 = v12[9];
    sub_1D5B5D194();
    v24 = v23;
    v25 = *(v23 - 8);
    v1 = v46;
    v6 = v49;
    if (!(*(v25 + 48))(v11 + v22, 1, v23))
    {
      (*(v25 + 8))(v11 + v22, v24);
    }
  }

  v26 = v7 & ~v51;

  v27 = v2[21];
  v28 = sub_1D72608BC();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v8 + v27, 1, v28))
  {
    (*(v29 + 8))(v8 + v27, v28);
  }

  v30 = v1 + v26;
  if (*(v1 + v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + v26);
  }

  v31 = (v30 + v6[10]);
  v32 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    v50 = v6;

    v33 = type metadata accessor for FeedContext();
    v34 = v31 + v33[5];
    v35 = type metadata accessor for BundleSession();
    if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
    {
      (v47)(&v34[*(v35 + 20)], v48);
    }

    if (*(v31 + v33[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v31 + *(v32 + 20));
    v6 = v50;
  }

  v36 = type metadata accessor for FormatTransformData();

  v37 = v31 + *(v36 + 44);
  v38 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v39 = &v37[*(v38 + 24)];
    v40 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
    {

      v41 = *(v40 + 24);
      v42 = sub_1D72593CC();
      (*(*(v42 - 8) + 8))(&v39[v41], v42);
    }

    if (*&v37[*(v38 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

void sub_1D5E9B2C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5E9B350(uint64_t a1)
{
  v4 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5E62700(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_78Tm()
{
  v1 = type metadata accessor for FormatServiceOptions();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v2);
  }

  v4 = (v3 + v1[10]);
  v5 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = type metadata accessor for FeedContext();
    v7 = v4 + v6[5];
    v8 = type metadata accessor for BundleSession();
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v18 = *(v8 + 20);
      v9 = sub_1D725891C();
      (*(*(v9 - 8) + 8))(&v7[v18], v9);
    }

    if (*(v4 + v6[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v4 + *(v5 + 20));
  }

  v10 = type metadata accessor for FormatTransformData();

  v11 = v4 + *(v10 + 44);
  v12 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = &v11[*(v12 + 24)];
    v14 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 24);
      v16 = sub_1D72593CC();
      (*(*(v16 - 8) + 8))(&v13[v15], v16);
    }

    if (*&v11[*(v12 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5E9B7FC(uint64_t a1)
{
  v4 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5E62DD4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D5E9B8EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D5B64680;

  return sub_1D5E63354(a1, v13, v1 + v6, v1 + v9, v1 + v12, v14);
}

uint64_t sub_1D5E9BACC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E65F38(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9BC74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E6780C(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

void sub_1D5E9BE1C()
{
  if (!qword_1EDF1B7B0)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6C0);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B7B0);
    }
  }
}

uint64_t sub_1D5E9BE94(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E688A4(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9C03C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E697F8(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9C1E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E6B03C(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

void sub_1D5E9C38C()
{
  if (!qword_1EDF1B7E0)
  {
    sub_1D5B5534C(255, &qword_1EDF3C750);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B7E0);
    }
  }
}

uint64_t sub_1D5E9C404(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E6C5F4(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

void sub_1D5E9C5AC()
{
  if (!qword_1EDF1B7C0)
  {
    sub_1D5B5534C(255, &qword_1EDF3C700);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B7C0);
    }
  }
}

uint64_t sub_1D5E9C624(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64684;

  return sub_1D5E6D490(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

void sub_1D5E9C7CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7261E1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5E9C830(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E6E3E8(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9C9D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E6E7D4(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9CB80(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E6F8F4(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

void sub_1D5E9CD28()
{
  if (!qword_1EDF1B7A0)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B7A0);
    }
  }
}

uint64_t objectdestroy_90Tm()
{
  v1 = v0;
  v2 = (type metadata accessor for FormatContentPool() - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for FormatServiceOptions();
  v37 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = *(*(v5 - 1) + 64);
  v8 = type metadata accessor for FormatContent(0);
  v9 = *(*(v8 - 8) + 80);

  v10 = v2[29];
  v38 = sub_1D72608BC();
  v35 = *(v38 - 8);
  v36 = *(v35 + 48);
  if (!v36(v1 + v3 + v10, 1))
  {
    (*(v35 + 8))(v1 + v3 + v10, v38);
  }

  v11 = v7 + v9;
  v12 = v1 + v6;
  if (*(v1 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
  }

  v13 = v6 + v11;
  v14 = (v12 + v5[10]);
  v15 = type metadata accessor for FormatTransformKnobs();
  v39 = v9;
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v33 = v1;

    v16 = type metadata accessor for FeedContext();
    v17 = v14 + v16[5];
    v18 = type metadata accessor for BundleSession();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v32 = *(v18 + 20);
      v19 = sub_1D725891C();
      (*(*(v19 - 8) + 8))(&v17[v32], v19);
    }

    if (*(v14 + v16[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v14 + *(v15 + 20));
    v1 = v33;
    v9 = v39;
  }

  v20 = v13 & ~v9;
  v21 = type metadata accessor for FormatTransformData();

  v22 = v14 + *(v21 + 44);
  v23 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = v1;
    v25 = &v22[*(v23 + 24)];
    v26 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {

      v34 = *(v26 + 24);
      v27 = sub_1D72593CC();
      (*(*(v27 - 8) + 8))(&v25[v34], v27);
    }

    v1 = v24;
    if (*&v22[*(v23 + 44) + 32] != 1)
    {
    }
  }

  v28 = *(v8 + 20);
  v29 = sub_1D725891C();
  (*(*(v29 - 8) + 8))(v1 + v20 + v28, v29);

  v30 = *(v8 + 44);
  if (!(v36)(v1 + v20 + v30, 1, v38))
  {
    (*(v35 + 8))(v1 + v20 + v30, v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5E9D4B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContentPool() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FormatContent(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E71338(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

void sub_1D5E9D658()
{
  if (!qword_1EDF1AE20)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AE20);
    }
  }
}

unint64_t sub_1D5E9D71C()
{
  result = qword_1EDF29A78;
  if (!qword_1EDF29A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A78);
  }

  return result;
}

void sub_1D5E9D770()
{
  if (!qword_1EDF210B0)
  {
    sub_1D5B49474(255, &qword_1EDF210B8);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF210B0);
    }
  }
}

void sub_1D5E9D830(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5E9D944(void *a1)
{
  v3 = *(sub_1D72607EC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D72608EC() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1D5E97748(a1, v1 + v4, v7);
}

uint64_t sub_1D5E9DA18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[23];
  v4 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v3);
  return ResourceServiceType.fetchResources(identifiers:)(v2, v3, v4);
}

uint64_t sub_1D5E9DA70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[28];
  v4 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v3);
  return WebArchiveServiceType.resolve(webArchives:)(v2, v3, v4);
}

uint64_t sub_1D5E9DAC8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5E9B2C4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5E9DB3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5E9B2C4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5E9DB98(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2CA80(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D5E9DC0C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v25 = (v8 - 1) & v8;
LABEL_11:
    v21 = v10 | (v4 << 6);
    v13 = *(*(a3 + 56) + 8 * v21);
    v14 = a4[81];
    __swift_project_boxed_opaque_existential_1(a4 + 77, a4[80]);
    v24 = *(v14 + 24);

    v15 = v13;
    v16 = v24(v15);

    v8 = v25;
    if ((v16 & 1) == 0)
    {
      *(a1 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1D62CEE44(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v25 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1D5E9DDB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_1D5E99300(v15, v8, a1, a2);
      MEMORY[0x1DA6FD500](v15, -1, -1);

      return v13;
    }
  }

  MEMORY[0x1EEE9AC00](v10, v11);
  bzero(v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_1D5E9DC0C((v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

  return v13;
}

unint64_t sub_1D5E9DF74()
{
  result = qword_1EDF07B80;
  if (!qword_1EDF07B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07B80);
  }

  return result;
}

uint64_t sub_1D5E9DFC8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D5B64680;

  return sub_1D5E784F8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1D5E9E090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D5E78BF4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_412Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5E9E1A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D5E79098(a1, v4, v5, v6, v7, v8);
}

void sub_1D5E9E270()
{
  if (!qword_1EDF04880)
  {
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D72629FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04880);
    }
  }
}

uint64_t sub_1D5E9E2E8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D5B64680;

  return sub_1D5E7A278(a1, a2, v7, v6);
}

uint64_t sub_1D5E9E39C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleStatistic();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E9E400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64680;

  return sub_1D5E7ACA4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D5E9E4DC()
{
  if (!qword_1EDF04898)
  {
    sub_1D5CEFE04(255, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D72629FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04898);
    }
  }
}

unint64_t sub_1D5E9E58C()
{
  result = qword_1EC882B40;
  if (!qword_1EC882B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B40);
  }

  return result;
}

unint64_t sub_1D5E9E610()
{
  result = qword_1EDF3CED8[0];
  if (!qword_1EDF3CED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3CED8);
  }

  return result;
}

double sub_1D5E9E664(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1D7279980;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t sub_1D5E9E688(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B5A7A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D5E9E790()
{
  result = qword_1EDF1A6C8;
  if (!qword_1EDF1A6C8)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A6C8);
  }

  return result;
}

unint64_t sub_1D5E9E7F8()
{
  result = qword_1EDF3D218;
  if (!qword_1EDF3D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3D218);
  }

  return result;
}

uint64_t sub_1D5E9E84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D5E9E8C0(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E7B5F0(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5E9EA44()
{
  if (!qword_1EDF33840)
  {
    sub_1D5E9EB74(255);
    v0 = MEMORY[0x1E69E62F8];
    sub_1D5CEFE04(255, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
    sub_1D5E9EBBC();
    sub_1D5CBB104();
    sub_1D5CEFE04(255, &qword_1EDF1B360, sub_1D5C2C40C, v0);
    sub_1D5C2C988();
    sub_1D5CA46B8();
    sub_1D5CDEC24();
    sub_1D5C8CC30();
    sub_1D5CAF910();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDF33840);
    }
  }
}

void sub_1D5E9EBBC()
{
  if (!qword_1EDF1B380)
  {
    sub_1D5C2CA80(255, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B380);
    }
  }
}

uint64_t sub_1D5E9EC4C(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D5C2AB28(0);
  v15 = (v13 + *(*(v14 - 8) + 80) + 8) & ~*(*(v14 - 8) + 80);
  v16 = *(v1 + v7);
  v17 = *(v1 + v13);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1D5B64680;

  return sub_1D5E883D8(a1, v1 + v6, v16, v1 + v9, v1 + v12, v17, v1 + v15);
}

uint64_t sub_1D5E9EEA8(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E88FD8(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9F080(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E8952C(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9F258(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E89918(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9F430(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E89CE0(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9F608(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E8A0CC(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9F7E0(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E8A4B8(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5E9F9B8(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E8A8A4(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_503Tm()
{
  sub_1D5E9EB74(0);
  v47 = v1;
  v49 = *(*(v1 - 8) + 80);
  v2 = (v49 + 24) & ~v49;
  v3 = *(*(v1 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 80);
  v45 = *(*(v4 - 8) + 64);
  v6 = type metadata accessor for FormatServiceOptions();
  v53 = *(*(v6 - 8) + 80);

  v7 = v0 + v2;

  if (*(v0 + v2 + 168) >= 3uLL)
  {
  }

  v52 = v5;
  v48 = v6;
  v50 = v0;
  v44 = type metadata accessor for FormatPackage();
  v8 = v7 + v44[23];

  v9 = type metadata accessor for FormatCompilerOptions(0);
  v10 = v8 + *(v9 + 24);
  if (*(v10 + 8) != 1)
  {
  }

  v11 = v2 + v3;
  v12 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
  v13 = sub_1D725B76C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v10 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  v16 = *(v9 + 28);
  if (!v15(v8 + v16, 1, v13))
  {
    (*(v14 + 8))(v8 + v16, v13);
  }

  v51 = (v11 + v52) & ~v52;
  v46 = v45 + v53;

  v17 = v44[24];
  v18 = sub_1D725BD1C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(v7 + v17, v18);
  v21 = v44[25];
  if (!v15(v7 + v21, 1, v13))
  {
    (*(v14 + 8))(v7 + v21, v13);
  }

  v22 = v7 + *(v47 + 36);

  v23 = type metadata accessor for FormatMetadata();
  v20(v22 + v23[5], v18);
  v20(v22 + v23[6], v18);
  v24 = v23[7];
  if (!(*(v19 + 48))(v22 + v24, 1, v18))
  {
    v20(v22 + v24, v18);
  }

  v25 = (v51 + v46) & ~v53;

  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v50 + v51, 1, v26))
  {
    (*(v27 + 8))(v50 + v51, v26);
  }

  v28 = v50 + v25;
  if (*(v50 + v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v50 + v25);
  }

  v29 = (v28 + v48[10]);
  v30 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {

    v31 = type metadata accessor for FeedContext();
    v32 = v29 + v31[5];
    v33 = type metadata accessor for BundleSession();
    if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
    {
      v34 = *(v33 + 20);
      v35 = sub_1D725891C();
      (*(*(v35 - 8) + 8))(&v32[v34], v35);
    }

    if (*(v29 + v31[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v29 + *(v30 + 20));
  }

  v36 = type metadata accessor for FormatTransformData();

  v37 = v29 + *(v36 + 44);
  v38 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v39 = &v37[*(v38 + 24)];
    v40 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
    {

      v41 = *(v40 + 24);
      v42 = sub_1D72593CC();
      (*(*(v42 - 8) + 8))(&v39[v41], v42);
    }

    if (*&v37[*(v38 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5EA03E8(uint64_t a1)
{
  v3 = v2;
  sub_1D5E9EB74(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for FormatServiceOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5E8AEE4(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1D5EA05C0(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E96A30(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5EA0744()
{
  if (!qword_1EDF1B220)
  {
    sub_1D5C2CA80(255, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B220);
    }
  }
}

void sub_1D5EA0810()
{
  if (!qword_1EDF18AA8)
  {
    sub_1D72585BC();
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18AA8);
    }
  }
}

uint64_t sub_1D5EA0890(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D5EA08F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5EA0954(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E96968(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5EA0AD8()
{
  if (!qword_1EDF1B240)
  {
    sub_1D5C2CA80(255, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B240);
    }
  }
}

uint64_t sub_1D5EA0B68(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E968A0(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5EA0CEC()
{
  if (!qword_1EDF1B1C8)
  {
    sub_1D5C2CA80(255, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B1C8);
    }
  }
}

uint64_t sub_1D5EA0D7C(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E967D8(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5EA0F00()
{
  if (!qword_1EDF1B200)
  {
    sub_1D5C2CA80(255, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B200);
    }
  }
}

uint64_t sub_1D5EA0F90(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E96710(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5EA1114()
{
  if (!qword_1EDF1B188)
  {
    sub_1D5C2CA80(255, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B188);
    }
  }
}

uint64_t sub_1D5EA11A4(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E95C10(a1, a2, v12, v2 + v8, v2 + v11);
}

uint64_t sub_1D5EA1370(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E95B48(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5EA14F4()
{
  if (!qword_1EDF1B1E0)
  {
    sub_1D5C2CA80(255, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B1E0);
    }
  }
}

double sub_1D5EA1584(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D5EA15A0(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E95A80(a1, a2, v12, v2 + v8, v2 + v11);
}

void sub_1D5EA1724()
{
  if (!qword_1EDF1B1A8)
  {
    sub_1D5C2CA80(255, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B1A8);
    }
  }
}

void sub_1D5EA17B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for FormatMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_1D5EA181C(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D5EA1838(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5E94FAC(a1, a2, v12, v2 + v8, v2 + v11);
}

uint64_t sub_1D5EA19BC(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1D5C2AB28(0);
  v8 = (*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80);
  v9 = v8 + *(*(v7 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = (v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80);
  v12 = *(*(v10 - 8) + 64);
  v13 = *(type metadata accessor for FormatServiceOptions() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v2 + 16);
  v16 = *(v2 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v5 + 16) = v17;
  *v17 = v5;
  v17[1] = sub_1D5B64680;

  return sub_1D5E87FC4(a1, a2, v15, v2 + v8, v2 + v11, v2 + v14, v16);
}

uint64_t objectdestroy_490Tm()
{
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for FormatServiceOptions();
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);

  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = v0 + v5;
  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v5);
  }

  v9 = (v8 + v4[10]);
  v10 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = type metadata accessor for FeedContext();
    v12 = v9 + v11[5];
    v13 = type metadata accessor for BundleSession();
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v23 = *(v13 + 20);
      v14 = sub_1D725891C();
      (*(*(v14 - 8) + 8))(&v12[v23], v14);
    }

    if (*(v9 + v11[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v9 + *(v10 + 20));
  }

  v15 = type metadata accessor for FormatTransformData();

  v16 = v9 + *(v15 + 44);
  v17 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = &v16[*(v17 + 24)];
    v19 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {

      v20 = *(v19 + 24);
      v21 = sub_1D72593CC();
      (*(*(v21 - 8) + 8))(&v18[v20], v21);
    }

    if (*&v16[*(v17 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

void sub_1D5EA20AC()
{
  if (!qword_1EDF35ED8[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF35ED8);
    }
  }
}

void sub_1D5EA2130()
{
  sub_1D5C2AB28(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FormatPackageInventory();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t LayeredMediaRenderedViewModel.deinit()
{

  return v0;
}

uint64_t LayeredMediaRenderedViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D5EA23E8()
{
  sub_1D5B58150(319, &qword_1EC880180, &type metadata for FormatDerivedDataContextScope, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FormatDerivedDataOptionReferenceResolution(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5EA24BC()
{
  if (!qword_1EC880188)
  {
    sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880188);
    }
  }
}

uint64_t sub_1D5EA2548()
{
  sub_1D5EA24BC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1D5EA25E8(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D5B55860(0, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v35 - v8;
  v10 = type metadata accessor for FormatDerivedDataOption();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v38 = a1[2];
  v39 = v19;
  v20 = a1[1];
  v36 = *a1;
  v37 = v20;
  if (*(*(&v20 + 1) + 16) || (v21 = type metadata accessor for FormatDerivedDataResultOptionReference(0), v22 = *(v21 + 28), sub_1D5EA24BC(), (*(*(v23 - 8) + 56))(v18, 1, 1, v23), LOBYTE(v22) = sub_1D5EA3C24(v3 + v22, v18), sub_1D5D2CD48(v18, type metadata accessor for FormatDerivedDataOptionReferenceResolution), (v22 & 1) != 0))
  {
    sub_1D5B58150(0, &qword_1EC88F0D0, &type metadata for FormatDerivedDataOptionReference, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v25 = v3[1];
    v26 = v3[2];
    v28 = v3[3];
    v27 = v3[4];
    *(inited + 32) = v25;
    *(inited + 40) = v26;
    *(inited + 48) = v28;
    *(inited + 56) = v27;
    v40 = inited;
    v35[1] = v36;
    v35[2] = v37;
    v35[3] = v38;
    v35[4] = v39;

    sub_1D6AEC1FC(v25, v26, a2, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v29 = sub_1D5EA4340(v9, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption);
    }

    else
    {
      sub_1D5CEAA68(v9, v14, type metadata accessor for FormatDerivedDataOption);
      if (*(*(v14 + 6) + 16))
      {

        sub_1D6985B00(v31);
        v29 = sub_1D5D2CD48(v14, type metadata accessor for FormatDerivedDataOption);
        inited = v40;
      }

      else
      {
        v29 = sub_1D5D2CD48(v14, type metadata accessor for FormatDerivedDataOption);
      }
    }

    MEMORY[0x1EEE9AC00](v29, v30);
    *&v35[-2] = &v36;
    *(&v35[-2] + 1) = v3;
    *&v35[-1] = a2;
    v33 = sub_1D5EC9AD4(sub_1D5EA43B0, &v35[-3], inited);
  }

  else
  {
    sub_1D5B55860(0, &qword_1EC8801C0, type metadata accessor for FormatDerivedDataResultOptionReference, MEMORY[0x1E69E6F90]);
    v32 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D7273AE0;
    sub_1D5EA43D4(v3, v33 + v32, type metadata accessor for FormatDerivedDataResultOptionReference);
  }

  return v33;
}

uint64_t sub_1D5EA2AA8@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v38 = a4;
  v10 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v37 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[3];
  v41 = a1[2];
  v42 = v18;
  v40 = v20;
  v43 = sub_1D6C4FAC0(*(a2 + 3), *a3);
  v21 = *(a3 + 48);
  v49 = *(a3 + 40);
  v22 = *(a3 + 56);
  v39 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v23 = *(v39 + 28);
  sub_1D5EA43D4(a3 + v23, v13, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
  {
    v25 = a2[1];
    v45 = *a2;
    v46 = v25;
    v26 = a2[3];
    v47 = a2[2];
    v48 = v26;

    v27 = v41;

    sub_1D5DEA210(v49, v21, v22);
    v28 = v42;
    v29 = v19;
    v30 = v19;
    v31 = v40;
    v32 = v44;
    sub_1D6AEC490(v42, v29, v27, v38, v17);
    v33 = v17;
    v34 = v30;
    v35 = v49;
    if (v32)
    {

      result = sub_1D5DEA520(v35, v21, v22);
      *v37 = v32;
      return result;
    }
  }

  else
  {
    sub_1D5EA43D4(a3 + v23, v17, type metadata accessor for FormatDerivedDataOptionReferenceResolution);

    v27 = v41;

    v35 = v49;
    sub_1D5DEA210(v49, v21, v22);
    sub_1D5EA4340(v13, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
    v33 = v17;
    v34 = v19;
    v28 = v42;
    v31 = v40;
  }

  *a6 = v43;
  *(a6 + 8) = v28;
  *(a6 + 16) = v34;
  *(a6 + 24) = v27;
  *(a6 + 32) = v31;
  *(a6 + 40) = v35;
  *(a6 + 48) = v21;
  *(a6 + 56) = v22;
  return sub_1D5CEAA68(v33, a6 + *(v39 + 28), type metadata accessor for FormatDerivedDataOptionReferenceResolution);
}

uint64_t sub_1D5EA2D78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - v15;
  v17 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6907920(a1, *v2);
  v21 = *(v2 + 24);
  v22 = *(v2 + 32);
  sub_1D72621EC();
  sub_1D6C37A40(a1, v21);
  MEMORY[0x1DA6FC0B0](v22);
  MEMORY[0x1DA6FC0B0](*(v2 + 56));
  sub_1D72621EC();
  v23 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  sub_1D5EA43D4(v2 + *(v23 + 28), v20, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  if ((*(*(v24 - 8) + 48))(v20, 1, v24) == 1)
  {
    return sub_1D7264A2C();
  }

  sub_1D5EA3AFC(v20, v16);
  sub_1D7264A2C();
  sub_1D5EA3B90(v16, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D7264A2C();
  }

  else
  {
    sub_1D5CEAA68(v12, v8, type metadata accessor for FormatVersionRequirement);
    sub_1D7264A2C();
    sub_1D601DA30();
    sub_1D5D2CD48(v8, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5EA4340(v16, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
}

uint64_t sub_1D5EA309C()
{
  v1 = v0;
  v2 = type metadata accessor for FormatVersionRequirement(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25[-v13 - 8];
  v15 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D7264A0C();
  sub_1D6907920(v25, *v0);
  v19 = v0[3];
  v20 = v1[4];
  sub_1D72621EC();
  sub_1D6C37A40(v25, v19);
  MEMORY[0x1DA6FC0B0](v20);
  MEMORY[0x1DA6FC0B0](*(v1 + 56));
  sub_1D72621EC();
  v21 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  sub_1D5EA43D4(v1 + *(v21 + 28), v18, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  if ((*(*(v22 - 8) + 48))(v18, 1, v22) == 1)
  {
    sub_1D7264A2C();
  }

  else
  {
    sub_1D5EA3AFC(v18, v14);
    sub_1D7264A2C();
    sub_1D5EA3B90(v14, v10);
    if ((*(v3 + 48))(v10, 1, v2) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5CEAA68(v10, v6, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30();
      sub_1D5D2CD48(v6, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5EA4340(v14, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D5EA33E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v25 = type metadata accessor for FormatVersionRequirement(0);
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26[-v15 - 8];
  v17 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D7264A0C();
  sub_1D6907920(v26, *v2);
  v21 = v2[3];
  v22 = v4[4];
  sub_1D72621EC();
  sub_1D6C37A40(v26, v21);
  MEMORY[0x1DA6FC0B0](v22);
  MEMORY[0x1DA6FC0B0](*(v4 + 56));
  sub_1D72621EC();
  sub_1D5EA43D4(v4 + *(a2 + 28), v20, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  if ((*(*(v23 - 8) + 48))(v20, 1, v23) == 1)
  {
    sub_1D7264A2C();
  }

  else
  {
    sub_1D5EA3AFC(v20, v16);
    sub_1D7264A2C();
    sub_1D5EA3B90(v16, v12);
    if ((*(v5 + 48))(v12, 1, v25) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5CEAA68(v12, v8, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30();
      sub_1D5D2CD48(v8, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5EA4340(v16, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D5EA3724()
{
  v1 = type metadata accessor for FormatVersionRequirement(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA43D4(v0, v17, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    return sub_1D7264A2C();
  }

  sub_1D5EA3AFC(v17, v13);
  sub_1D7264A2C();
  sub_1D5EA3B90(v13, v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D7264A2C();
  }

  else
  {
    sub_1D5CEAA68(v9, v5, type metadata accessor for FormatVersionRequirement);
    sub_1D7264A2C();
    sub_1D601DA30();
    sub_1D5D2CD48(v5, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5EA4340(v13, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
}

uint64_t sub_1D5EA39EC()
{
  sub_1D7264A0C();
  sub_1D5EA3724();
  return sub_1D7264A5C();
}

uint64_t sub_1D5EA3A30()
{
  sub_1D7264A0C();
  sub_1D5EA3724();
  return sub_1D7264A5C();
}

uint64_t sub_1D5EA3AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5EA3AFC(uint64_t a1, uint64_t a2)
{
  sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EA3B90(uint64_t a1, uint64_t a2)
{
  sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EA3C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B55860(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - v9;
  sub_1D5EA4248();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA42DC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 56);
  sub_1D5EA43D4(a1, v23, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA43D4(a2, &v23[v25], type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  v27 = v26;
  v28 = *(*(v26 - 8) + 48);
  if (v28(v23, 1, v26) == 1)
  {
    v29 = 1;
    v30 = v28(&v23[v25], 1, v27);
    v31 = type metadata accessor for FormatDerivedDataOptionReferenceResolution;
    if (v30 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_1D5EA43D4(v23, v19, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  if (v28(&v23[v25], 1, v27) != 1)
  {
    v32 = *(v12 + 48);
    sub_1D5EA3AFC(v19, v15);
    sub_1D5EA3AFC(&v23[v25], &v15[v32]);
    v33 = *(v38 + 48);
    if (v33(v15, 1, v4) == 1)
    {
      if (v33(&v15[v32], 1, v4) == 1)
      {
        sub_1D5EA4340(v15, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
        v29 = 1;
LABEL_14:
        v31 = type metadata accessor for FormatDerivedDataOptionReferenceResolution;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1D5EA3B90(v15, v10);
      if (v33(&v15[v32], 1, v4) != 1)
      {
        v35 = v37;
        sub_1D5CEAA68(&v15[v32], v37, type metadata accessor for FormatVersionRequirement);
        v36 = sub_1D6024840(v10, v35);
        sub_1D5D2CD48(v35, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CD48(v10, type metadata accessor for FormatVersionRequirement);
        sub_1D5EA4340(v15, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
        v31 = type metadata accessor for FormatDerivedDataOptionReferenceResolution;
        if (v36)
        {
          v29 = 1;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      sub_1D5D2CD48(v10, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5D2CD48(v15, sub_1D5EA4248);
LABEL_13:
    v29 = 0;
    goto LABEL_14;
  }

  sub_1D5EA4340(v19, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
LABEL_6:
  v29 = 0;
  v31 = sub_1D5EA42DC;
LABEL_15:
  sub_1D5D2CD48(v23, v31);
  return v29;
}

uint64_t sub_1D5EA411C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D6338CBC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v8 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5E1E5A4(v4, v6) & 1) == 0)
  {
    return 0;
  }

  if (v5 != v7)
  {
    return 0;
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = v9;
  v21 = v10;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v16 = *(a2 + 40);
  v17 = v11;
  v18 = v12;
  sub_1D5DEA210(v19, v9, v10);
  sub_1D5DEA210(v16, v11, v12);
  v13 = _s8NewsFeed27FormatDerivedDataContextKeyO2eeoiySbAC_ACtFZ_0(&v19, &v16);
  sub_1D5DEA520(v16, v17, v18);
  sub_1D5DEA520(v19, v20, v21);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for FormatDerivedDataResultOptionReference(0) + 28);

  return sub_1D5EA3C24(a1 + v14, a2 + v14);
}

void sub_1D5EA4248()
{
  if (!qword_1EDF0CE38)
  {
    sub_1D5B55860(255, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF0CE38);
    }
  }
}

void sub_1D5EA42DC()
{
  if (!qword_1EC8801B0)
  {
    type metadata accessor for FormatDerivedDataOptionReferenceResolution(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8801B0);
    }
  }
}

uint64_t sub_1D5EA4340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B55860(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5EA43D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EA445C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v7 = sub_1D725BC7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v19 - v14;
  v16 = v3[1];
  v20 = *v3;

  sub_1D71C3968(a1, a2);

  if (!v4)
  {
    v20 = v16;

    sub_1D71C3968(a1, a2);

    sub_1D725BC3C();
    v18 = *(v8 + 8);
    v18(v11, v7);
    return (v18)(v15, v7);
  }

  return result;
}

uint64_t sub_1D5EA4628(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2())
  {
    return a4(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5EA4684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3())
  {
    return a5(a1, a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5EA46F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a3())
  {
    return a5(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5EA474C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3())
  {
    return a5(a1, a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _s8NewsFeed19FormatAndExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = static FormatExpression.== infix(_:_:)(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = static FormatExpression.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D5EA4894(uint64_t a1)
{
  result = sub_1D5EA48BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EA48BC()
{
  result = qword_1EC8801C8;
  if (!qword_1EC8801C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8801C8);
  }

  return result;
}

unint64_t sub_1D5EA4910(void *a1)
{
  a1[1] = sub_1D5C56F50();
  a1[2] = sub_1D5EA4948();
  result = sub_1D5EA499C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EA4948()
{
  result = qword_1EDF0FCA8;
  if (!qword_1EDF0FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FCA8);
  }

  return result;
}

unint64_t sub_1D5EA499C()
{
  result = qword_1EC8801D0;
  if (!qword_1EC8801D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8801D0);
  }

  return result;
}

uint64_t sub_1D5EA4A4C()
{
  v1 = *v0;
  v2 = 0x656D617266;
  v3 = 0x615272656E726F63;
  v4 = 0x6F43746365526975;
  if (v1 != 3)
  {
    v4 = 0x6957726564726F62;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6152776F64616873;
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

uint64_t sub_1D5EA4B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5EA5608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5EA4B2C(uint64_t a1)
{
  v2 = sub_1D5EA4E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EA4B68(uint64_t a1)
{
  v2 = sub_1D5EA4E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IssueCoverViewLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5EA5208(0, &qword_1EC8801D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  v12 = *(v3 + 4);
  v11 = *(v3 + 5);
  v13 = *(v3 + 6);
  v14 = *(v3 + 7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EA4E88();
  sub_1D7264B5C();
  v15 = v3[1];
  v19 = *v3;
  v20 = v15;
  v18 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5EA526C(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v19 = v12;
    v18 = 1;
    sub_1D5B578C4();
    sub_1D726443C();
    *&v19 = v11;
    v18 = 2;
    sub_1D726443C();
    *&v19 = v13;
    v18 = 3;
    type metadata accessor for UIRectCorner(0);
    sub_1D5EA526C(&qword_1EC8801F0, type metadata accessor for UIRectCorner);
    sub_1D726443C();
    *&v19 = v14;
    v18 = 4;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D5EA4E88()
{
  result = qword_1EC8801E0;
  if (!qword_1EC8801E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8801E0);
  }

  return result;
}

uint64_t IssueCoverViewLayoutAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5EA5208(0, &qword_1EC8801F8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EA4E88();
  sub_1D7264B0C();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v21 = 0;
    sub_1D5EA526C(&qword_1EDF1A740, type metadata accessor for CGRect);
    sub_1D726431C();
    v17 = v20;
    v18 = v19;
    v21 = 1;
    sub_1D5B57870();
    sub_1D726431C();
    v11 = v19;
    v21 = 2;
    sub_1D726431C();
    v12 = v19;
    type metadata accessor for UIRectCorner(0);
    v21 = 3;
    sub_1D5EA526C(&qword_1EDF1AC00, type metadata accessor for UIRectCorner);
    sub_1D726431C();
    v13 = v19;
    v21 = 4;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v15 = v19;
    v16 = v17;
    *a2 = v18;
    *(a2 + 16) = v16;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5EA5208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EA4E88();
    v7 = a3(a1, &type metadata for IssueCoverViewLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5EA526C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5EA52B8()
{
  result = qword_1EDF09AE8;
  if (!qword_1EDF09AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AE8);
  }

  return result;
}

unint64_t sub_1D5EA5310()
{
  result = qword_1EDF09AD0;
  if (!qword_1EDF09AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AD0);
  }

  return result;
}

unint64_t sub_1D5EA5368()
{
  result = qword_1EDF09AD8;
  if (!qword_1EDF09AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AD8);
  }

  return result;
}

unint64_t sub_1D5EA53C0()
{
  result = qword_1EDF09AF0;
  if (!qword_1EDF09AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AF0);
  }

  return result;
}

uint64_t sub_1D5EA5444()
{
  sub_1D5EA57C8();

  return sub_1D725A24C();
}

uint64_t sub_1D5EA54C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D5EA5504()
{
  result = qword_1EC880200;
  if (!qword_1EC880200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880200);
  }

  return result;
}

unint64_t sub_1D5EA555C()
{
  result = qword_1EC880208;
  if (!qword_1EC880208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880208);
  }

  return result;
}

unint64_t sub_1D5EA55B4()
{
  result = qword_1EC880210;
  if (!qword_1EC880210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880210);
  }

  return result;
}

uint64_t sub_1D5EA5608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152776F64616873 && a2 == 0xEC00000073756964 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43746365526975 && a2 == 0xEC00000072656E72 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6957726564726F62 && a2 == 0xEB00000000687464)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D5EA57C8()
{
  result = qword_1EDF09AE0;
  if (!qword_1EDF09AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AE0);
  }

  return result;
}

double FeedListeningProgress.progress.getter()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t FeedListeningProgress.rawState.getter@<X0>(void *a1@<X8>)
{
  v3 = 0;
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
  }

  *a1 = v3;
  v4 = *MEMORY[0x1E69D7868];
  v5 = sub_1D725D38C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

BOOL static FeedListeningProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D5EA5900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t sub_1D5EA5934@<X0>(void *a1@<X8>)
{
  v3 = 0;
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
  }

  *a1 = v3;
  v4 = *MEMORY[0x1E69D7868];
  v5 = sub_1D725D38C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedLayoutDirection(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FeedLayoutDirection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_1D5EA5A24(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D5EA5A64(uint64_t a1)
{
  result = sub_1D5EA5A8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EA5A8C()
{
  result = qword_1EC880218;
  if (!qword_1EC880218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880218);
  }

  return result;
}

unint64_t sub_1D5EA5AE0(void *a1)
{
  a1[1] = sub_1D5EA5B18();
  a1[2] = sub_1D5EA5B6C();
  result = sub_1D5EA5BC0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EA5B18()
{
  result = qword_1EC880220;
  if (!qword_1EC880220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880220);
  }

  return result;
}

unint64_t sub_1D5EA5B6C()
{
  result = qword_1EC880228;
  if (!qword_1EC880228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880228);
  }

  return result;
}

unint64_t sub_1D5EA5BC0()
{
  result = qword_1EC880230;
  if (!qword_1EC880230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880230);
  }

  return result;
}

uint64_t _s5FloatOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s5FloatOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D5EA5DE0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 8);
  v7 = *(v2 + 18);
  v8 = [a1 theme];
  if (!v7)
  {
    if (v8)
    {
      v13 = [v8 defaultHeadlineTemplate];
      swift_unknownObjectRelease();
      v10 = [v13 headlineTitleTextInfo];

      v11 = swift_allocObject();
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = [v10 font];
      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v7 != 1)
  {
    if (v8)
    {
      v14 = [v8 defaultHeadlineTemplate];
      swift_unknownObjectRelease();
      v10 = [v14 headlineBylineTextInfo];

      v11 = swift_allocObject();
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = [v10 font];
      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_17:
    v11 = swift_allocObject();
    v17 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [v8 defaultHeadlineTemplate];
  swift_unknownObjectRelease();
  v10 = [v9 headlineExcerptTextInfo];

  v11 = swift_allocObject();
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = [v10 font];
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_14:
  v15 = v12;
  v16 = [v12 fontName];

  if (!v16)
  {
LABEL_16:
    v17 = 0;
LABEL_18:
    v19 = 0xE000000000000000;
    goto LABEL_19;
  }

  v17 = sub_1D726207C();
  v19 = v18;

LABEL_19:
  *(v11 + 16) = v17;
  *(v11 + 24) = v19;
  *(v11 + 32) = v4;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;

  *a2 = v11 | 0x2000000000000000;
}

uint64_t sub_1D5EA607C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x63784574726F6873;
  v4 = 0xEC00000074707265;
  if (v2 != 1)
  {
    v3 = 0x656E694C7962;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x63784574726F6873;
  v8 = 0xEC00000074707265;
  if (*a2 != 1)
  {
    v7 = 0x656E694C7962;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D5EA6184()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EA6228()
{
  sub_1D72621EC();
}

uint64_t sub_1D5EA62B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EA6358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5EA746C();
  *a1 = result;
  return result;
}

void sub_1D5EA6388(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC00000074707265;
  v5 = 0x63784574726F6873;
  if (v2 != 1)
  {
    v5 = 0x656E694C7962;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_1D5EA64E0@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v86 = a1;
  v78 = a2;
  v2 = type metadata accessor for FormatInspectionItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v82 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v77 - v11;
  sub_1D5EA74B8();
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 3, 0);
  v17 = 0;
  v18 = v87;
  v84 = (v3 + 56);
  v81 = xmmword_1D727A940;
  v80 = xmmword_1D727A930;
  v79 = xmmword_1D727A920;
  do
  {
    v19 = byte_1F50F5D70[v17 + 32];
    v20 = [v86 theme];
    if (v19)
    {
      if (v19 == 1)
      {
        if (v20)
        {
          v21 = [v20 defaultHeadlineTemplate];
          swift_unknownObjectRelease();
          v22 = [v21 headlineExcerptTextInfo];

          v23 = swift_allocObject();
          if (v22)
          {
            v24 = [v22 font];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 fontName];

              if (v26)
              {
                v27 = sub_1D726207C();
                v29 = v28;

LABEL_21:
                *(v23 + 16) = v27;
                *(v23 + 24) = v29;
                *(v23 + 32) = 0xBFF0000000000000;
                *(v23 + 40) = 0;
                v48 = HIBYTE(v29) & 0xF;
                if ((v29 & 0x2000000000000000) == 0)
                {
                  v48 = v27 & 0xFFFFFFFFFFFFLL;
                }

                *(v23 + 48) = 3072;
                if (v48)
                {

                  *&v88 = v27;
                  *(&v88 + 1) = v29;
                  *&v89 = 0;
                  *(&v89 + 1) = MEMORY[0x1E69E6158];
                  v49 = *(v2 + 24);
                  v50 = v82;
                  sub_1D5EA7510(&v88, &v82[v49]);
                  v51 = type metadata accessor for FormatInspectionItem.Value(0);
                  swift_storeEnumTagMultiPayload();
                  (*(*(v51 - 8) + 56))(&v50[v49], 0, 1, v51);
                  v52 = v80;
LABEL_40:
                  *v50 = v52;
                  *(v50 + 2) = 0;
                  *(v50 + 3) = 0;
                  v68 = &v50[*(v2 + 28)];
                  *v68 = 0;
                  *(v68 + 1) = 0;
                  v68[16] = -1;
                  sub_1D5EA756C(&v88);
                  v64 = v50;
                  goto LABEL_43;
                }

                v88 = 0u;
                v89 = 0u;
                v53 = *(v2 + 24);
                v54 = type metadata accessor for FormatInspectionItem.Value(0);
                v55 = v82;
                (*(*(v54 - 8) + 56))(&v82[v53], 1, 1, v54);
                v56 = v80;
LABEL_42:
                *v55 = v56;
                *(v55 + 2) = 0;
                *(v55 + 3) = 0;
                v71 = &v55[*(v2 + 28)];
                *v71 = 0;
                *(v71 + 1) = 0;
                v71[16] = -1;
                v64 = v55;
                goto LABEL_43;
              }
            }
          }
        }

        else
        {
          v23 = swift_allocObject();
          v22 = 0;
        }

        v27 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_21;
      }

      if (v20)
      {
        v39 = [v20 defaultHeadlineTemplate];
        swift_unknownObjectRelease();
        v40 = [v39 headlineBylineTextInfo];

        v41 = swift_allocObject();
        if (v40)
        {
          v42 = [v40 font];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 fontName];

            if (v44)
            {
              v45 = sub_1D726207C();
              v47 = v46;

LABEL_36:
              *(v41 + 16) = v45;
              *(v41 + 24) = v47;
              *(v41 + 32) = 0xBFF0000000000000;
              *(v41 + 40) = 0;
              v65 = HIBYTE(v47) & 0xF;
              if ((v47 & 0x2000000000000000) == 0)
              {
                v65 = v45 & 0xFFFFFFFFFFFFLL;
              }

              *(v41 + 48) = 3072;
              if (v65)
              {

                *&v88 = v45;
                *(&v88 + 1) = v47;
                *&v89 = 0;
                *(&v89 + 1) = MEMORY[0x1E69E6158];
                v66 = *(v2 + 24);
                v50 = v83;
                sub_1D5EA7510(&v88, &v83[v66]);
                v67 = type metadata accessor for FormatInspectionItem.Value(0);
                swift_storeEnumTagMultiPayload();
                (*(*(v67 - 8) + 56))(&v50[v66], 0, 1, v67);
                v52 = v79;
                goto LABEL_40;
              }

              v88 = 0u;
              v89 = 0u;
              v69 = *(v2 + 24);
              v70 = type metadata accessor for FormatInspectionItem.Value(0);
              v55 = v83;
              (*(*(v70 - 8) + 56))(&v83[v69], 1, 1, v70);
              v56 = v79;
              goto LABEL_42;
            }
          }
        }
      }

      else
      {
        v41 = swift_allocObject();
        v40 = 0;
      }

      v45 = 0;
      v47 = 0xE000000000000000;
      goto LABEL_36;
    }

    if (!v20)
    {
      v32 = swift_allocObject();
      v31 = 0;
LABEL_27:

      v36 = 0;
      v38 = 0xE000000000000000;
      goto LABEL_28;
    }

    v30 = [v20 defaultHeadlineTemplate];
    swift_unknownObjectRelease();
    v31 = [v30 headlineTitleTextInfo];

    v32 = swift_allocObject();
    if (!v31)
    {
      goto LABEL_27;
    }

    v33 = [v31 font];
    if (!v33)
    {
      goto LABEL_27;
    }

    v34 = v33;
    v35 = [v33 fontName];

    if (!v35)
    {
      goto LABEL_27;
    }

    v36 = sub_1D726207C();
    v38 = v37;

LABEL_28:
    *(v32 + 16) = v36;
    *(v32 + 24) = v38;
    *(v32 + 32) = 0xBFF0000000000000;
    *(v32 + 40) = 0;
    v57 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v57 = v36 & 0xFFFFFFFFFFFFLL;
    }

    *(v32 + 48) = 3072;
    if (v57)
    {

      *&v88 = v36;
      *(&v88 + 1) = v38;
      *&v89 = 0;
      *(&v89 + 1) = MEMORY[0x1E69E6158];
      v58 = *(v2 + 24);
      sub_1D5EA7510(&v88, &v12[v58]);
      v59 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(&v12[v58], 0, 1, v59);
      *v12 = v81;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      v60 = &v12[*(v2 + 28)];
      *v60 = 0;
      *(v60 + 1) = 0;
      v60[16] = -1;
      sub_1D5EA756C(&v88);
    }

    else
    {

      v88 = 0u;
      v89 = 0u;
      v61 = *(v2 + 24);
      v62 = type metadata accessor for FormatInspectionItem.Value(0);
      (*(*(v62 - 8) + 56))(&v12[v61], 1, 1, v62);
      *v12 = v81;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      v63 = &v12[*(v2 + 28)];
      *v63 = 0;
      *(v63 + 1) = 0;
      v63[16] = -1;
    }

    v64 = v12;
LABEL_43:
    sub_1D5CED910(v64, v16, type metadata accessor for FormatInspectionItem);
    (*v84)(v16, 0, 1, v2);
    v87 = v18;
    v73 = *(v18 + 16);
    v72 = *(v18 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_1D69972A4(v72 > 1, v73 + 1, 1);
      v18 = v87;
    }

    ++v17;
    *(v18 + 16) = v73 + 1;
    sub_1D5CED910(v16, v18 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v73, sub_1D5EA74B8);
  }

  while (v17 != 3);
  sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v18, &v88);

  result = *&v88;
  v75 = v89;
  v76 = v78;
  *v78 = v88;
  v76[1] = v75;
  *(v76 + 4) = v90;
  return result;
}

uint64_t _s8NewsFeed16FormatTagBindingV4FontO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 18);
  if (!*(a1 + 18))
  {
    if (*(a2 + 18))
    {
      return 0;
    }

    a3.n128_u64[0] = *a1;
    if (v4 != v7)
    {
      return 0;
    }

    if ((v5 & 0xFF00) == 0xC00)
    {
      return (v8 & 0xFF00) == 0xC00;
    }

    if ((v8 & 0xFF00) == 0xC00)
    {
      return 0;
    }

    if (v5)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (v3 != v6)
      {
        return 0;
      }
    }

LABEL_34:
    v11 = FormatFontScalingStyle.rawValue.getter(a3);
    v13 = v12;
    if (v11 == FormatFontScalingStyle.rawValue.getter(v14) && v13 == v15)
    {

      return 1;
    }

    v16 = sub_1D72646CC();

    return (v16 & 1) != 0;
  }

  if (*(a1 + 18) != 1)
  {
    if (v9 != 2)
    {
      return 0;
    }

    a3.n128_u64[0] = *a1;
    if (v4 != v7)
    {
      return 0;
    }

    if ((v5 & 0xFF00) == 0xC00)
    {
      return (v8 & 0xFF00) == 0xC00;
    }

    if ((v8 & 0xFF00) == 0xC00)
    {
      return 0;
    }

    if (v5)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (v3 != v6)
      {
        return 0;
      }
    }

    goto LABEL_34;
  }

  if (v9 != 1)
  {
    return 0;
  }

  a3.n128_u64[0] = *a1;
  if (v4 != v7)
  {
    return 0;
  }

  if ((v5 & 0xFF00) != 0xC00)
  {
    if ((v8 & 0xFF00) == 0xC00)
    {
      return 0;
    }

    if (v5)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (v3 != v6)
      {
        return 0;
      }
    }

    goto LABEL_34;
  }

  return (v8 & 0xFF00) == 0xC00;
}

unint64_t sub_1D5EA7090(uint64_t a1)
{
  result = sub_1D5EA70B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EA70B8()
{
  result = qword_1EC880238;
  if (!qword_1EC880238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880238);
  }

  return result;
}

unint64_t sub_1D5EA710C(void *a1)
{
  a1[1] = sub_1D5EA7144();
  a1[2] = sub_1D5EA7198();
  result = sub_1D5EA71EC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EA7144()
{
  result = qword_1EDF110E8;
  if (!qword_1EDF110E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110E8);
  }

  return result;
}

unint64_t sub_1D5EA7198()
{
  result = qword_1EDF110F0;
  if (!qword_1EDF110F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110F0);
  }

  return result;
}

unint64_t sub_1D5EA71EC()
{
  result = qword_1EC880240;
  if (!qword_1EC880240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880240);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t _s4FontOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 19))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
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

uint64_t _s4FontOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D5EA7318()
{
  result = qword_1EC880248;
  if (!qword_1EC880248)
  {
    sub_1D5EA7370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880248);
  }

  return result;
}

void sub_1D5EA7370()
{
  if (!qword_1EC880250)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880250);
    }
  }
}

unint64_t sub_1D5EA73C4()
{
  result = qword_1EC880258;
  if (!qword_1EC880258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880258);
  }

  return result;
}

unint64_t sub_1D5EA7418()
{
  result = qword_1EDF11100;
  if (!qword_1EDF11100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11100);
  }

  return result;
}

uint64_t sub_1D5EA746C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1D5EA74B8()
{
  if (!qword_1EC880AB0)
  {
    type metadata accessor for FormatInspectionItem(255);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880AB0);
    }
  }
}

uint64_t WebEmbedFailureContext.contentDomain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebEmbedFailureContext.embedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebEmbedFailureContext.errorType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WebEmbedFailureContext.embedURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureContext() + 28);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WebEmbedFailureContext()
{
  result = qword_1EC880260;
  if (!qword_1EC880260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebEmbedFailureContext.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for WebEmbedFailureContext() + 32));

  return v1;
}

uint64_t WebEmbedFailureContext.contentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedFailureContext() + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1D5EA77A8(v4, v5, v6);
}

uint64_t sub_1D5EA77A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D5EA77BC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5EA77BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

double WebEmbedFailureContext.init(failureMessage:embedURL:location:dataVisualization:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v41 = a4;
  v9 = type metadata accessor for WebEmbedDataVisualization();
  *&v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10).n128_u64[0];
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 contentDomain];
  v15 = sub_1D726207C();
  v17 = v16;

  *a5 = v15;
  a5[1] = v17;
  v18 = [a1 embedName];
  v19 = sub_1D726207C();
  v21 = v20;

  a5[2] = v19;
  a5[3] = v21;
  v22 = [a1 errorType];
  v23 = sub_1D726207C();
  v25 = v24;

  a5[4] = v23;
  a5[5] = v25;
  v26 = type metadata accessor for WebEmbedFailureContext();
  v27 = v26[7];
  v28 = sub_1D72585BC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v40 = a2;
  v30(a5 + v27, a2, v28);
  if (a3)
  {
    v31 = [a3 context];
    v32 = sub_1D726207C();
    v34 = v33;
  }

  else
  {
    v34 = 0xE700000000000000;
    v32 = 0x6E776F6E6B6E75;
  }

  v35 = (a5 + v26[8]);
  *v35 = v32;
  v35[1] = v34;
  v36 = v41;
  sub_1D5EA7CD4(v41, v13, type metadata accessor for WebEmbedDataVisualization);
  sub_1D6D21264(v13, &v42);
  swift_unknownObjectRelease();

  sub_1D5EA7D3C(v36, type metadata accessor for WebEmbedDataVisualization);
  (*(v29 + 8))(v40, v28);
  v37 = v43;
  v38 = a5 + v26[9];
  result = *&v42;
  *v38 = v42;
  v38[16] = v37;
  return result;
}

double WebEmbedFailureContext.init(failureMessage:embedURL:location:puzzleResourceSource:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a2;
  v40 = a4;
  sub_1D5EA7C7C();
  *&v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10).n128_u64[0];
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 contentDomain];
  v15 = sub_1D726207C();
  v17 = v16;

  *a5 = v15;
  a5[1] = v17;
  v18 = [a1 embedName];
  v19 = sub_1D726207C();
  v21 = v20;

  a5[2] = v19;
  a5[3] = v21;
  v22 = [a1 errorType];
  v23 = sub_1D726207C();
  v25 = v24;

  a5[4] = v23;
  a5[5] = v25;
  v26 = type metadata accessor for WebEmbedFailureContext();
  v27 = v26[7];
  v28 = sub_1D72585BC();
  v29 = *(v28 - 8);
  (*(v29 + 16))(a5 + v27, a2, v28);
  v30 = [a3 context];
  v31 = sub_1D726207C();
  v33 = v32;

  v34 = (a5 + v26[8]);
  *v34 = v31;
  v34[1] = v33;
  v35 = v40;
  sub_1D5EA7CD4(v40, v13, sub_1D5EA7C7C);
  sub_1D6D2171C(v13, &v41);
  swift_unknownObjectRelease();

  sub_1D5EA7D3C(v35, sub_1D5EA7C7C);
  (*(v29 + 8))(v39, v28);
  v36 = v42;
  v37 = a5 + v26[9];
  result = *&v41;
  *v37 = v41;
  v37[16] = v36;
  return result;
}

void sub_1D5EA7C7C()
{
  if (!qword_1EDF2A1E8)
  {
    type metadata accessor for PuzzleResourceSource();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2A1E8);
    }
  }
}

uint64_t sub_1D5EA7CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EA7D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5EA7DC4()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    sub_1D5EA7E60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5EA7E60()
{
  if (!qword_1EC880270)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880270);
    }
  }
}

uint64_t sub_1D5EA7EB0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitterCachedOutput();
  result = sub_1D726393C();
  if (v1 <= 0x3F)
  {
    result = sub_1D725C37C();
    if (v2 <= 0x3F)
    {
      result = sub_1D725C34C();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D5EA8098(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *v1;
  v2[5] = *(*v1 + 88);
  v2[6] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2[7] = swift_getAssociatedTypeWitness();
  v2[8] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for FeedGroupEmitterOutput();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2[12] = swift_getAssociatedTypeWitness();
  v2[13] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[14] = AssociatedTypeWitness;
  v2[15] = *(AssociatedTypeWitness - 8);
  v2[16] = swift_task_alloc();
  v6 = sub_1D725C34C();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EA83A8, 0, 0);
}

uint64_t sub_1D5EA83A8()
{
  v98 = v0;
  v1 = *(v0[18] + 16);
  v1(v0[20], v0[4] + *(*v0[4] + 160), v0[17]);

  v2 = sub_1D725C36C();
  v3 = sub_1D726315C();

  if (sub_1D72638EC())
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v91 = v6;
    *v5 = 136446722;
    *(v5 + 4) = sub_1D5BC5100(*(v4 + *(*v4 + 144)), *(v4 + *(*v4 + 144) + 8), &v91);
    *(v5 + 12) = 2082;
    v7 = sub_1D6B6AE5C();
    v9 = v1;
    v10 = sub_1D5BC5100(v7, v8, &v91);

    *(v5 + 14) = v10;
    v1 = v9;
    *(v5 + 22) = 2082;
    v11 = sub_1D5C0BA9C();
    v13 = sub_1D5BC5100(v11, v12, &v91);

    *(v5 + 24) = v13;
    v14 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v2, v3, v14, "News.FeedService.EmitTask", "[%{public}s] %{public}s, %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[14];
  v84 = v0[6];
  v90 = v0[15];
  v20 = v0[4];
  v1(v0[19], v15, v16);
  sub_1D725C3BC();
  swift_allocObject();
  v0[21] = sub_1D725C3AC();
  (*(v17 + 8))(v15, v16);
  v21 = CACurrentMediaTime();
  sub_1D5C384A0();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7274590;
  v23 = (v20 + *(*v20 + 144));
  v25 = *v23;
  v24 = v23[1];
  v26 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1D5B7E2C0();
  *(v22 + 64) = v27;
  v80 = v25;
  v81 = v24;
  *(v22 + 32) = v25;
  *(v22 + 40) = v24;

  v28 = sub_1D6B6AE5C();
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 72) = v28;
  *(v22 + 80) = v29;
  v30 = sub_1D5C0BA9C();
  *(v22 + 136) = v26;
  *(v22 + 144) = v27;
  *(v22 + 112) = v30;
  *(v22 + 120) = v31;
  v32 = *(v20 + 32);
  v33 = *(v20 + 40);
  v34 = *(v20 + 48);
  v35 = *(v20 + 56);
  v36 = *(v20 + 64);
  v37 = *(v20 + 65);
  v91 = *(v20 + 24);
  v92 = v32;
  v93 = v33;
  v94 = v34;
  v95 = v35;
  v96 = v36;
  v97 = v37;
  v38 = FeedGroupEmitterSettings.description.getter();
  *(v22 + 176) = v26;
  *(v22 + 184) = v27;
  *(v22 + 152) = v38;
  *(v22 + 160) = v39;
  sub_1D7262EDC();
  sub_1D725C30C();

  sub_1D6B6AF78();
  sub_1D5C0354C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedGroupConfigType.rules<A>()(v19, v84, AssociatedConformanceWitness);
  (*(v90 + 8))(v18, v19);
  type metadata accessor for FeedGroupEmitterRule();
  v41 = sub_1D726274C();

  v0[2] = v41;
  v42 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v45 = sub_1D5B874E4(sub_1D5EACFDC, v20, v42, &type metadata for FeedGroupEmitterRuleOutput, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v44);

  v91 = v45;

  sub_1D5EACF70(&v91);

  v46 = v91;
  v0[22] = v91;
  if (*(v46 + 2))
  {
    v47 = *(v46 + 9);
    v48 = *(v46 + 10);
    if (!v46[88])
    {
      v56 = v0[10];
      v83 = v0[11];
      v86 = v0[9];
      v88 = v0[3];
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7274590;
      v58 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      *(v57 + 64) = v27;
      *(v57 + 32) = v25;
      *(v57 + 40) = v81;

      sub_1D5EAD0DC(v47, v48, 0);
      v59 = sub_1D6B6AE5C();
      *(v57 + 96) = v58;
      *(v57 + 104) = v27;
      *(v57 + 72) = v59;
      *(v57 + 80) = v60;
      v61 = sub_1D5C0BA9C();
      *(v57 + 136) = v58;
      *(v57 + 144) = v27;
      *(v57 + 112) = v61;
      *(v57 + 120) = v62;
      *(v57 + 176) = v58;
      *(v57 + 184) = v27;
      *(v57 + 152) = v47;
      *(v57 + 160) = v48;

      sub_1D7262EDC();
      sub_1D725C30C();

      *v83 = v47;
      v83[1] = v48;
      swift_storeEnumTagMultiPayload();
      sub_1D5EA930C(v83, v46, v88, v21);

      (*(v56 + 8))(v83, v86);
      goto LABEL_10;
    }

    v49 = MEMORY[0x1E69E6158];
    if (v46[88] == 1)
    {
      v50 = v0[10];
      v82 = v0[11];
      v85 = v0[9];
      v87 = v0[3];
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1D7274590;
      *(v51 + 56) = v49;
      *(v51 + 64) = v27;
      *(v51 + 32) = v25;
      *(v51 + 40) = v81;

      sub_1D5EAD0DC(v47, v48, 1u);
      v52 = sub_1D6B6AE5C();
      *(v51 + 96) = v49;
      *(v51 + 104) = v27;
      *(v51 + 72) = v52;
      *(v51 + 80) = v53;
      v54 = sub_1D5C0BA9C();
      *(v51 + 136) = v49;
      *(v51 + 144) = v27;
      *(v51 + 112) = v54;
      *(v51 + 120) = v55;
      *(v51 + 176) = v49;
      *(v51 + 184) = v27;
      *(v51 + 152) = v47;
      *(v51 + 160) = v48;

      sub_1D7262EDC();
      sub_1D725C30C();

      *v82 = v47;
      v82[1] = v48;
      swift_storeEnumTagMultiPayload();
      sub_1D5EA930C(v82, v46, v87, v21);

      (*(v50 + 8))(v82, v85);
LABEL_10:
      sub_1D5EA8F7C();

      v72 = v0[1];

      return v72();
    }

    if (v47 | v48)
    {
      v63 = v0[10];
      v64 = v0[11];
      v65 = v0[9];
      v89 = v0[3];
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1D7279970;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      *(v66 + 64) = v27;
      *(v66 + 32) = v80;
      *(v66 + 40) = v81;

      v68 = sub_1D6B6AE5C();
      *(v66 + 96) = v67;
      *(v66 + 104) = v27;
      *(v66 + 72) = v68;
      *(v66 + 80) = v69;
      v70 = sub_1D5C0BA9C();
      *(v66 + 136) = v67;
      *(v66 + 144) = v27;
      *(v66 + 112) = v70;
      *(v66 + 120) = v71;
      sub_1D7262EDC();
      sub_1D725C30C();

      sub_1D6EB5678(v64);
      sub_1D5EA930C(v64, v46, v89, v21);

      (*(v63 + 8))(v64, v65);
      goto LABEL_10;
    }
  }

  v74 = v0[4];
  v75 = type metadata accessor for FeedGroupEmitTask.InternalResult();
  v76 = type metadata accessor for FeedGroupEmitTaskResult();
  v77 = swift_task_alloc();
  v0[23] = v77;
  *(v77 + 2) = v74;
  v77[3] = v21;
  *(v77 + 4) = v46;
  v78 = swift_task_alloc();
  v0[24] = v78;
  *v78 = v0;
  v78[1] = sub_1D5EA8D8C;
  v79 = v0[3];
  v100 = v76;

  return MEMORY[0x1EEE6DD58](v79, v75, v76, 0, 0, &unk_1D727AC68, v77, v75);
}

void sub_1D5EA8D8C()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D5EA8ED0, 0, 0);
  }
}

uint64_t sub_1D5EA8ED0()
{
  sub_1D5EA8F7C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EA8F7C()
{
  v0 = sub_1D725C38C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725C34C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725C36C();
  sub_1D725C39C();
  v11 = sub_1D726314C();
  if (sub_1D72638EC())
  {

    sub_1D725C3CC();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v10, v11, v14, "News.FeedService.EmitTask", v12, v13, 2u);
    MEMORY[0x1DA6FD500](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_1D5EA91DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeedGroupEmitterRule();
  *(a3 + 24) = v6;
  *(a3 + 32) = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  v8 = *(a2 + 112);
  v9 = *(v8 + *(*v8 + 216));

  FeedGroupEmitterRule.evaluate(cursor:slots:)(v8, v9, v6, &v12);

  v10 = v13;
  result = *&v12;
  *(a3 + 40) = v12;
  *(a3 + 56) = v10;
  return result;
}

int *sub_1D5EA930C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FeedGroupEmitterOutput();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v24 - v12;
  (*(v14 + 16))(&v24 - v12, a1, v11);
  v15 = *(v4 + 16);
  v16 = *(v4 + 32);
  v17 = *(v4 + 40);
  v18 = *(v4 + 48);
  v19 = *(v4 + 56);
  v20 = *(v4 + 64);
  v21 = *(v4 + 65);
  v24 = *(v4 + 24);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;

  v22 = CACurrentMediaTime();
  return sub_1D71A8414(v13, v15, a2, &v24, a3, (v22 - a4) * 1000.0);
}

uint64_t sub_1D5EA9524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  *(v5 + 104) = a4;
  *(v5 + 96) = a5;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 72) = a1;
  v6 = *a3;
  v7 = sub_1D726289C();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = *(v6 + 88);
  *(v5 + 144) = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FeedGroupEmitterOutput();
  *(v5 + 152) = v8;
  *(v5 + 160) = *(v8 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = type metadata accessor for FeedGroupEmitTask.InternalResult();
  sub_1D726393C();
  *(v5 + 184) = swift_task_alloc();
  sub_1D5B73DC0();
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EA9798, 0, 0);
}

uint64_t sub_1D5EA9798()
{
  v1 = v0[24];
  v2 = v0[11];
  v3 = sub_1D726294C();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v0[25] = sub_1D5B49474(255, &qword_1EDF3C5D0);
  v6 = sub_1D72629FC();

  sub_1D6A9560C(v1, &unk_1D727AC78, v5);
  sub_1D5BA72C8(v1);
  if ((*(v2 + 48) & 1) == 0)
  {
    v7 = v0[24];
    v8 = v0[11];
    v9 = *(v8 + 40);
    v4(v7, 1, 1, v3);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = v9;

    sub_1D6A9560C(v7, &unk_1D727AC98, v10);
    sub_1D5BA72C8(v7);
  }

  v11 = v0[11];
  if ((*(v11 + 64) & 1) == 0)
  {
    v12 = v0[24];
    v13 = *(v11 + 56);
    v4(v12, 1, 1, v3);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    v14[5] = v13;

    sub_1D6A9560C(v12, &unk_1D727AC88, v14);
    sub_1D5BA72C8(v12);
  }

  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_1D5EA9A50;
  v16 = v0[23];

  return MEMORY[0x1EEE6DAC8](v16, 0, 0, v6);
}

uint64_t sub_1D5EA9A50()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D5EAA18C;
  }

  else
  {
    v2 = sub_1D5EA9B64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D5EA9B64()
{
  v1 = *(v0 + 184);
  if ((*(*(*(v0 + 176) - 8) + 48))(v1, 1) != 1)
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);
    if ((*(v26 + 48))(v1, 1, v25) != 1)
    {
      v42 = *(v0 + 96);
      v43 = *(v0 + 88);
      (*(v26 + 32))(*(v0 + 168), v1, v25);
      sub_1D5C384A0();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1D7279960;
      v45 = (v43 + *(*v43 + 144));
      v46 = *v45;
      v47 = v45[1];
      v48 = MEMORY[0x1E69E6158];
      *(v44 + 56) = MEMORY[0x1E69E6158];
      v49 = sub_1D5B7E2C0();
      *(v44 + 64) = v49;
      *(v44 + 32) = v46;
      *(v44 + 40) = v47;

      v50 = sub_1D6B6AE5C();
      *(v44 + 96) = v48;
      *(v44 + 104) = v49;
      *(v44 + 72) = v50;
      *(v44 + 80) = v51;
      v52 = sub_1D5C0BA9C();
      *(v44 + 136) = v48;
      *(v44 + 144) = v49;
      *(v44 + 112) = v52;
      *(v44 + 120) = v53;
      v54 = (CACurrentMediaTime() - v42) * 1000.0;
      if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v54 > -9.22337204e18)
        {
          if (v54 < 9.22337204e18)
          {
            v55 = *(v0 + 160);
            v56 = *(v0 + 168);
            v57 = *(v0 + 152);
            v58 = *(v0 + 104);
            v59 = *(v0 + 96);
            v65 = *(v0 + 80);
            v60 = *(v0 + 72);
            v61 = MEMORY[0x1E69E73D8];
            *(v44 + 176) = MEMORY[0x1E69E7360];
            *(v44 + 184) = v61;
            *(v44 + 152) = v54;
            v62 = sub_1D6EB56E0(v57);
            *(v44 + 216) = MEMORY[0x1E69E6158];
            *(v44 + 224) = v49;
            *(v44 + 192) = v62;
            *(v44 + 200) = v63;
            sub_1D7262EDC();
            sub_1D725C30C();

            sub_1D5EA930C(v56, v58, v60, v59);
            (*(v55 + 8))(v56, v57);
            v41 = v65;
            goto LABEL_16;
          }

LABEL_27:
          __break(1u);
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v27 = *(v0 + 96);
    v28 = *(v0 + 88);
    sub_1D7262E9C();
    sub_1D5C384A0();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D7274590;
    v30 = (v28 + *(*v28 + 144));
    v31 = *v30;
    v32 = v30[1];
    v33 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1D5B7E2C0();
    *(v29 + 64) = v34;
    *(v29 + 32) = v31;
    *(v29 + 40) = v32;

    v35 = sub_1D6B6AE5C();
    *(v29 + 96) = v33;
    *(v29 + 104) = v34;
    *(v29 + 72) = v35;
    *(v29 + 80) = v36;
    v37 = sub_1D5C0BA9C();
    *(v29 + 136) = v33;
    *(v29 + 144) = v34;
    *(v29 + 112) = v37;
    *(v29 + 120) = v38;
    v39 = (CACurrentMediaTime() - v27) * 1000.0;
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v39 > -9.22337204e18)
      {
        if (v39 < 9.22337204e18)
        {
          v15 = *(v0 + 160);
          v16 = *(v0 + 168);
          v17 = *(v0 + 152);
          v18 = *(v0 + 104);
          v19 = *(v0 + 96);
          v20 = *(v0 + 80);
          v21 = *(v0 + 72);
          v40 = MEMORY[0x1E69E73D8];
          *(v29 + 176) = MEMORY[0x1E69E7360];
          *(v29 + 184) = v40;
          *(v29 + 152) = v39;
          sub_1D725C30C();

          v23 = 0x80000001D73BFED0;
          v24 = 0xD000000000000011;
          goto LABEL_11;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 88);
  sub_1D7262EBC();
  sub_1D5C384A0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7274590;
  v5 = (v3 + *(*v3 + 144));
  v6 = *v5;
  v7 = v5[1];
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;

  v10 = sub_1D6B6AE5C();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v12 = sub_1D5C0BA9C();
  *(v4 + 136) = v8;
  *(v4 + 144) = v9;
  *(v4 + 112) = v12;
  *(v4 + 120) = v13;
  v14 = (CACurrentMediaTime() - v2) * 1000.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 168);
  v17 = *(v0 + 152);
  v18 = *(v0 + 104);
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v0 + 72);
  v22 = MEMORY[0x1E69E73D8];
  *(v4 + 176) = MEMORY[0x1E69E7360];
  *(v4 + 184) = v22;
  *(v4 + 152) = v14;
  sub_1D725C30C();

  v23 = 0x80000001D73BFE50;
  v24 = 0xD000000000000016;
LABEL_11:
  *v16 = v24;
  v16[1] = v23;
  swift_storeEnumTagMultiPayload();
  sub_1D5EA930C(v16, v18, v21, v19);
  (*(v15 + 8))(v16, v17);
  v41 = v20;
LABEL_16:
  sub_1D5EAC6B0(v41);

  v64 = *(v0 + 8);

  v64();
}

void sub_1D5EAA18C()
{
  v1 = *(v0 + 216);
  *(v0 + 48) = v1;
  v2 = v1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = *(v0 + 96);
    v27 = *(v0 + 88);

    sub_1D7262EBC();
    sub_1D5C384A0();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7279960;
    v29 = (v27 + *(*v27 + 144));
    v31 = *v29;
    v30 = v29[1];
    v32 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1D5B7E2C0();
    *(v28 + 64) = v33;
    *(v28 + 32) = v31;
    *(v28 + 40) = v30;

    v34 = sub_1D6B6AE5C();
    *(v28 + 96) = v32;
    *(v28 + 104) = v33;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    v36 = sub_1D5C0BA9C();
    *(v28 + 136) = v32;
    *(v28 + 144) = v33;
    *(v28 + 112) = v36;
    *(v28 + 120) = v37;
    v38 = (CACurrentMediaTime() - v26) * 1000.0;
    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v38 > -9.22337204e18)
      {
        if (v38 < 9.22337204e18)
        {
          v39 = *(v0 + 216);
          v41 = *(v0 + 160);
          v40 = *(v0 + 168);
          v42 = *(v0 + 96);
          v49 = *(v0 + 152);
          v51 = *(v0 + 104);
          v53 = *(v0 + 80);
          v48 = *(v0 + 72);
          v43 = MEMORY[0x1E69E73D8];
          *(v28 + 176) = MEMORY[0x1E69E7360];
          *(v28 + 184) = v43;
          *(v28 + 152) = v38;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0xE000000000000000;
          *(v0 + 56) = v39;
          sub_1D7263F9C();
          v44 = *(v0 + 16);
          v45 = *(v0 + 24);
          *(v28 + 216) = MEMORY[0x1E69E6158];
          *(v28 + 224) = v33;
          *(v28 + 192) = v44;
          *(v28 + 200) = v45;
          sub_1D725C30C();

          sub_1D7263D4C();
          *(v0 + 32) = 0;
          *(v0 + 40) = 0xE000000000000000;
          MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73BFD40);
          *(v0 + 64) = v39;
          sub_1D7263F9C();
          v46 = *(v0 + 40);
          *v40 = *(v0 + 32);
          v40[1] = v46;
          swift_storeEnumTagMultiPayload();
          sub_1D5EA930C(v40, v51, v48, v42);

          (*(v41 + 8))(v40, v49);
          v25 = v53;
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v3 = *(v0 + 96);
  v4 = *(v0 + 88);

  sub_1D7262E9C();
  sub_1D5C384A0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7274590;
  v6 = (v4 + *(*v4 + 144));
  v8 = *v6;
  v7 = v6[1];
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  *(v5 + 64) = v10;
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;

  v11 = sub_1D6B6AE5C();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  v13 = sub_1D5C0BA9C();
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 112) = v13;
  *(v5 + 120) = v14;
  v15 = (CACurrentMediaTime() - v3) * 1000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v18 = *(v0 + 152);
  v52 = *(v0 + 128);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 104);
  v22 = *(v0 + 96);
  v50 = *(v0 + 80);
  v23 = *(v0 + 72);
  v24 = MEMORY[0x1E69E73D8];
  *(v5 + 176) = MEMORY[0x1E69E7360];
  *(v5 + 184) = v24;
  *(v5 + 152) = v15;
  sub_1D725C30C();

  *v16 = 0xD000000000000011;
  v16[1] = 0x80000001D73BFDC0;
  swift_storeEnumTagMultiPayload();
  sub_1D5EA930C(v16, v21, v23, v22);
  (*(v17 + 8))(v16, v18);
  (*(v19 + 8))(v52, v20);

  v25 = v50;
LABEL_10:
  sub_1D5EAC6B0(v25);

  v47 = *(v0 + 8);

  v47();
}

uint64_t sub_1D5EAA6E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v4[10] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5EAA730, 0, 0);
}

uint64_t sub_1D5EAA730()
{
  if (*(v0[9] + 65) == 1)
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_1D5EAA850;

    return sub_1D5FE5980();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1D5EAA9C0;
    v4 = v0[8];

    return sub_1D5EAADC4(v4);
  }
}

uint64_t sub_1D5EAA850()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAAC3C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_1D5EAA9C0;
    v4 = v2[8];

    return sub_1D5EAADC4(v4);
  }
}

uint64_t sub_1D5EAA9C0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAAAF0, 0, 0);
  }
}

uint64_t sub_1D5EAAAF0()
{
  v1 = *(v0 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for FeedGroupEmitterOutput();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5EAAC3C()
{
  v1 = *(v0 + 96);
  *(v0 + 56) = v1;
  v2 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    if (v7 == 6 && v3 == 13 && !(v5 | v4 | v6))
    {

      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      *v8 = v0;
      v8[1] = sub_1D5EAA9C0;
      v9 = *(v0 + 64);

      return sub_1D5EAADC4(v9);
    }

    sub_1D5EAD330(v3, v4, v5, v6, v7);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}
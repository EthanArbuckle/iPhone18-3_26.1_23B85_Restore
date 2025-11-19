uint64_t static EventLogger.interval<A>(named:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a8;
  v34 = a7;
  v36 = a5;
  v37 = a6;
  v10 = sub_1ABF247E4();
  v11 = sub_1ABA7BB64(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - v15;
  v35 = *(a9 - 8);
  v17 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  static EventLogger.startInterval<A>(ofType:named:parent:)();
  v25 = v24;
  if (qword_1EB4CF6E8 != -1)
  {
    sub_1ABA7D7D8();
    v24 = swift_once();
  }

  v38 = v25;
  v39 = 0;
  MEMORY[0x1EEE9AC00](v24);
  *(&v30 - 6) = a9;
  *(&v30 - 5) = a10;
  v26 = v37;
  *(&v30 - 4) = v36;
  *(&v30 - 3) = v26;
  *(&v30 - 2) = v25;
  v27 = v40;
  sub_1ABF25384();
  if (v27)
  {
    v34(v27);
    if (sub_1ABA7E1E0(v16, 1, a9) == 1)
    {
      (*(v31 + 8))(v16, v32);
    }

    else
    {
      v28 = v35;
      (*(v35 + 32))(v20, v16, a9);
      static EventLogger.endInterval<A>(with:_:)();
      (*(v28 + 8))(v20, a9);
    }

    swift_willThrow();
  }

  else
  {
    static EventLogger.endInterval<A>(with:_:)();
    (*(v35 + 8))(v23, a9);
  }

  return v25;
}

void static EventLogger.startInterval<A>(ofType:named:parent:)()
{
  sub_1ABA7E2A8();
  v30 = v1;
  v3 = v2;
  v26 = v4;
  v27 = v6;
  v28 = v5;
  v8 = v7;
  v10 = v9;
  v29 = sub_1ABF21EB4();
  v11 = sub_1ABA7BB64(v29);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0();
  }

  sub_1ABA7F2A0();
  sub_1ABAA3120();
  v17 = v32;
  v18 = v33;
  sub_1ABA93E20(v31, v32);
  v19 = sub_1ABAA40B0();
  v21 = v20(v19, v10, v8, v3, v30, v17, v18);
  sub_1ABA84B54(v31);
  sub_1ABAA3120();
  sub_1ABAA2CCC();
  if (v26)
  {
    v22 = 0;
  }

  else
  {
    v22 = v27;
  }

  v23 = sub_1ABC3009C(v22);
  (*(v18 + 16))(v28, v16, v21, v10, v8, v23, v3, v30, v0, v18);
  v24 = sub_1ABAA4E3C();
  v25(v24);
  sub_1ABA84B54(v31);
  sub_1ABA7BC1C();
}

void static EventLogger.endInterval<A>(with:_:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1ABF21EB4();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0();
  }

  sub_1ABA7F2A0();
  sub_1ABA93E64(&qword_1ED86E090, v19);
  v17 = v20;
  v18 = v21;
  sub_1ABA93E20(v19, v20);
  sub_1ABF21E74();
  (*(v18 + 24))(v7, v16, v5, v3, v1, v17, v18);
  (*(v11 + 8))(v16, v8);
  sub_1ABA84B54(v19);
  sub_1ABA7BC1C();
}

uint64_t static EventLogger.interval<A>(file:function:line:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{

  v15 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v15);
  MEMORY[0x1AC5A9410](a3, a4);
  v16 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v16);
  v17 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v17);

  v18 = static EventLogger.interval<A>(named:parent:body:onThrow:)(a1, a2, a6, a7 & 1, a8, a9, a10, a11, a12, a13);

  return v18;
}

uint64_t sub_1ABC30DCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 281) = a4;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  *(v8 + 288) = a1;
  v9 = sub_1ABF21EB4();
  *(v8 + 344) = v9;
  v10 = *(v9 - 8);
  *(v8 + 352) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABC30EA8, 0, 0);
}

uint64_t sub_1ABC30EA8()
{
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0();
  }

  v1 = *(v0 + 352);
  v21 = *(v0 + 344);
  v20 = *(v0 + 281);
  v2 = *(v0 + 296);
  v18 = *(v0 + 368);
  v19 = *(v0 + 304);
  v3 = *(v0 + 288);
  sub_1ABA7F2A0();
  sub_1ABA93E64(&qword_1ED86E090, v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_1ABA93E20((v0 + 16), v4);
  v6 = *(v5 + 8);
  v7 = sub_1ABC34124();
  *(v0 + 376) = v7;
  v8 = v6(&type metadata for DictionaryEvent, v3, v2, &type metadata for DictionaryEvent, v7, v4, v5);
  *(v0 + 384) = v8;
  sub_1ABA84B54((v0 + 16));
  sub_1ABA93E64(&qword_1ED86E090, v0 + 56);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_1ABA93E20((v0 + 56), v9);
  sub_1ABF21E74();
  if (v20)
  {
    v11 = 0;
  }

  else
  {
    v11 = v19;
  }

  v12 = sub_1ABC3009C(v11);
  (*(v10 + 16))(&type metadata for DictionaryEvent, v18, v8, v3, v2, v12, &type metadata for DictionaryEvent, v7, v9, v10);
  v13 = *(v1 + 8);
  *(v0 + 392) = v13;
  *(v0 + 400) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v18, v21);
  sub_1ABA84B54((v0 + 56));
  if (qword_1EB4CF6E8 != -1)
  {
    sub_1ABA7D7D8();
    swift_once();
  }

  *(v0 + 272) = v8;
  *(v0 + 280) = 0;
  v14 = swift_task_alloc();
  *(v0 + 408) = v14;
  *(v14 + 16) = *(v0 + 312);
  *(v14 + 32) = v8;
  v15 = *(MEMORY[0x1E69E8950] + 4);
  v16 = swift_task_alloc();
  *(v0 + 416) = v16;
  *v16 = v0;
  v16[1] = sub_1ABC3116C;
  sub_1ABAA534C();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1ABC3116C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 424) = v0;

  v9 = *(v3 + 408);

  if (v0)
  {
    v10 = sub_1ABC313B4;
  }

  else
  {
    v10 = sub_1ABC31278;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1ABC31278()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 360);
  v15 = *(v0 + 400);
  v16 = *(v0 + 368);
  v5 = *(v0 + 344);
  *(v0 + 248) = *(v0 + 200);
  *(v0 + 256) = *(v0 + 208);
  sub_1ABA93E64(&qword_1ED86E090, v0 + 136);
  v6 = *(v0 + 168);
  sub_1ABA93E20((v0 + 136), *(v0 + 160));
  sub_1ABF21E74();
  v7 = *(v6 + 24);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  v1(v4, v5);
  sub_1ABA84B54((v0 + 136));
  v10 = *(v0 + 208);
  v11 = *(v0 + 216);

  sub_1ABA82A20();
  v13 = *(v0 + 384);

  return v12(v13);
}

uint64_t sub_1ABC313B4()
{
  v22 = v0;
  v1 = *(v0 + 336);
  (*(v0 + 328))(&v19, *(v0 + 424));
  v2 = v19;
  v3 = v20;
  v4 = v21;
  if (v20)
  {
    v17 = *(v0 + 392);
    v18 = *(v0 + 400);
    v14 = *(v0 + 384);
    v15 = *(v0 + 376);
    v5 = *(v0 + 360);
    v16 = *(v0 + 344);
    *(v0 + 224) = v19;
    *(v0 + 232) = v3;
    *(v0 + 240) = v4;
    sub_1ABA93E64(&qword_1ED86E090, v0 + 96);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    sub_1ABA93E20((v0 + 96), v7);
    sub_1ABF21E74();
    (*(v6 + 24))(v14, v5, v0 + 224, &type metadata for DictionaryEvent, v15, v7, v6);
    v17(v5, v16);
    sub_1ABAFEE5C(v2, v3);
    sub_1ABA84B54((v0 + 96));
  }

  else
  {
    sub_1ABAFEE5C(v19, 0);
  }

  v8 = *(v0 + 424);
  v9 = *(v0 + 360);
  v10 = *(v0 + 368);
  swift_willThrow();

  sub_1ABA7BBE0();
  v12 = *(v0 + 424);

  return v11();
}

uint64_t static EventLogger.interval<A>(named:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BBF8();
  *(v10 + 88) = a9;
  *(v10 + 96) = a10;
  *(v10 + 72) = v11;
  *(v10 + 80) = v12;
  *(v10 + 56) = v13;
  *(v10 + 64) = v14;
  *(v10 + 25) = v15;
  *(v10 + 40) = v16;
  *(v10 + 48) = v17;
  *(v10 + 32) = v18;
  v19 = sub_1ABF247E4();
  *(v10 + 104) = v19;
  v20 = *(v19 - 8);
  *(v10 + 112) = v20;
  v21 = *(v20 + 64) + 15;
  *(v10 + 120) = swift_task_alloc();
  v22 = *(a9 - 8);
  *(v10 + 128) = v22;
  v23 = *(v22 + 64) + 15;
  *(v10 + 136) = swift_task_alloc();
  *(v10 + 144) = swift_task_alloc();
  return sub_1ABAA3528();
}

uint64_t sub_1ABC31654()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 25);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  static EventLogger.startInterval<A>(ofType:named:parent:)();
  v8 = v7;
  *(v0 + 152) = v7;
  if (qword_1EB4CF6E8 != -1)
  {
    sub_1ABA7D7D8();
    swift_once();
  }

  *(v0 + 16) = v8;
  *(v0 + 24) = 0;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  v10 = *(v0 + 56);
  *(v9 + 16) = *(v0 + 88);
  *(v9 + 32) = v10;
  *(v9 + 48) = v8;
  v11 = *(MEMORY[0x1E69E8950] + 4);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_1ABC317AC;
  v13 = *(v0 + 144);
  v16 = *(v0 + 88);
  sub_1ABAA534C();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1ABC317AC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 176) = v0;

  v9 = *(v3 + 160);

  if (v0)
  {
    v10 = sub_1ABC3196C;
  }

  else
  {
    v10 = sub_1ABC318B8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1ABC318B8()
{
  sub_1ABA8C008();
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  static EventLogger.endInterval<A>(with:_:)();
  (*(v4 + 8))(v2, v7);

  sub_1ABA82A20();
  v9 = v0[19];

  return v8(v9);
}

uint64_t sub_1ABC3196C()
{
  v2 = (v0 + 120);
  v1 = *(v0 + 120);
  v4 = (v0 + 88);
  v3 = *(v0 + 88);
  v5 = *(v0 + 80);
  (*(v0 + 72))(*(v0 + 176));
  if (sub_1ABA7E1E0(v1, 1, v3) == 1)
  {
    v6 = v0 + 112;
    v4 = (v0 + 104);
  }

  else
  {
    v2 = (v0 + 136);
    v6 = v0 + 128;
    v7 = *(v0 + 152);
    v8 = *(v0 + 96);
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 120), *(v0 + 88));
    static EventLogger.endInterval<A>(with:_:)();
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 120);
  (*(*v6 + 8))(*v2, *v4);
  swift_willThrow();

  sub_1ABA7BBE0();
  v14 = *(v0 + 176);

  return v13();
}

uint64_t sub_1ABC31AB0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1ABA7FDA0;

  return v10(a1, a4);
}

uint64_t sub_1ABC31BB8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1ABAB2788;

  return v10(a1, a4);
}

uint64_t static EventLogger.interval<A>(file:function:line:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + 112) = a11;
  *(v11 + 80) = a9;
  *(v11 + 96) = a10;
  *(v11 + 64) = a6;
  *(v11 + 72) = a8;
  *(v11 + 144) = a7;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 24) = a1;
  return sub_1ABA7E724();
}

uint64_t sub_1ABC31CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 144);
  v12 = *(v10 + 48);
  v13 = *(v10 + 56);
  v14 = *(v10 + 40);
  v33 = *(v10 + 24);
  v34 = *(v10 + 32);

  v15 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v15);
  MEMORY[0x1AC5A9410](v14, v12);
  v16 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v16);
  *(v10 + 16) = v13;
  v17 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v17);

  *(v10 + 120) = v34;
  v18 = swift_task_alloc();
  *(v10 + 128) = v18;
  *v18 = v10;
  v18[1] = sub_1ABC31E28;
  v19 = *(v10 + 88);
  v20 = *(v10 + 96);
  v21 = *(v10 + 72);
  v22 = *(v10 + 80);
  v23 = *(v10 + 64);
  v36 = *(v10 + 104);
  v37 = *(v10 + 112);
  v24 = sub_1ABA7EDF8();

  return static EventLogger.interval<A>(named:parent:body:onThrow:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1ABC31E28()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);

    v10 = *(v7 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC31F68, 0, 0);
}

uint64_t sub_1ABC31F68()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 120);

  sub_1ABA7BBE0();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t static EventLogger.startInterval<A>(file:function:line:ofType:parent:)()
{
  sub_1ABA84160();

  v2 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v2);
  MEMORY[0x1AC5A9410](v1, v0);
  v3 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v3);
  v4 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v4);

  static EventLogger.startInterval<A>(ofType:named:parent:)();
  v6 = v5;

  return v6;
}

uint64_t sub_1ABC320CC()
{
  sub_1ABA8C008();
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0();
  }

  sub_1ABA7F2A0();
  sub_1ABA93E64(&qword_1ED86E090, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_1ABA93E20(v0 + 2, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1ABC3222C;

  return v7(v1, v2);
}

uint64_t sub_1ABC3222C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABC32318, 0, 0);
}

uint64_t sub_1ABC32318()
{
  sub_1ABA7BBF8();
  sub_1ABA84B54((v0 + 16));
  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC32370()
{
  v0 = sub_1ABAD219C(&qword_1EB4D5A58, &unk_1ABF4CC60);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1ABF25364();
  qword_1EB549590 = result;
  return result;
}

uint64_t EventLogger.Backend.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static EventLogger.select(backend:)(char *a1)
{
  v1 = *a1;
  if (qword_1ED86B790 != -1)
  {
    sub_1ABA7C1FC();
  }

  v2 = off_1EB4D0168;

  os_unfair_lock_lock(v2 + 6);
  *(*&v2[4]._os_unfair_lock_opaque + 16) = v1;
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t static EventLogger.unsafeReplaceBackend(with:)(char *a1)
{
  v1 = *a1;
  if (qword_1ED86B790 != -1)
  {
    sub_1ABA7C1FC();
  }

  v2 = off_1EB4D0168;

  os_unfair_lock_lock(v2 + 6);
  *(*&v2[4]._os_unfair_lock_opaque + 16) = v1;
  os_unfair_lock_unlock(v2 + 6);

  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0();
  }

  v3 = off_1EB4D0168;

  os_unfair_lock_lock(v3 + 6);
  if (*(*&v3[4]._os_unfair_lock_opaque + 16) == 1)
  {
    v4 = type metadata accessor for EventLogXPCWriter();
    swift_allocObject();
    sub_1ABC346AC();
    *&v8 = v5;
    v6 = &off_1F2086628;
  }

  else
  {
    v6 = &protocol witness table for NoOpWriter;
    v4 = &type metadata for NoOpWriter;
  }

  v9 = v4;
  v10 = v6;
  os_unfair_lock_unlock(v3 + 6);

  swift_beginAccess();
  sub_1ABA84B54(&qword_1ED86E090);
  sub_1ABA946C0(&v8, &qword_1ED86E090);
  return swift_endAccess();
}

uint64_t static EventLogger.unsafeReplaceBackend(with:)()
{
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0();
  }

  swift_beginAccess();
  v0 = sub_1ABA7EDF8();
  sub_1ABC33DD8(v0, v1);
  return swift_endAccess();
}

uint64_t sub_1ABC326AC()
{
  type metadata accessor for EventLogger.BackendSelectorHolder();
  swift_allocObject();
  v0 = sub_1ABC328DC();
  sub_1ABAD219C(&qword_1EB4D5A50, &unk_1ABF4CC50);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1EB4D0168 = result;
  return result;
}

uint64_t sub_1ABC32718()
{
  if (qword_1ED86B790 != -1)
  {
    sub_1ABA7C1FC();
  }

  v0 = off_1EB4D0168;

  os_unfair_lock_lock(v0 + 6);
  if (*(*&v0[4]._os_unfair_lock_opaque + 16) == 1)
  {
    v1 = type metadata accessor for EventLogXPCWriter();
    swift_allocObject();
    sub_1ABC346AC();
    qword_1ED86E090 = v2;
    v3 = &off_1F2086628;
  }

  else
  {
    v3 = &protocol witness table for NoOpWriter;
    v1 = &type metadata for NoOpWriter;
  }

  qword_1ED86E0A8 = v1;
  unk_1ED86E0B0 = v3;
  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1ABC32820()
{
  sub_1ABA8C008();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = sub_1ABA94A40(v8);
  *v9 = v10;
  v9[1] = sub_1ABAB2788;

  return sub_1ABC31BB8(v2, v5, v6, v7);
}

uint64_t sub_1ABC328DC()
{
  v1 = sub_1ABF23C04();
  v3 = sub_1ABC2FA2C(v1, v2);

  v4 = v3 != 2 && (v3 & 1) != 0;
  *(v0 + 16) = v4;
  return v0;
}

IntelligencePlatform::DictionaryEvent __swiftcall DictionaryEvent.init(variant:data:)(Swift::String variant, Swift::OpaquePointer data)
{
  *v2 = variant;
  *(v2 + 16) = data;
  result.variant = variant;
  result.data = data;
  return result;
}

uint64_t DictionaryEvent.variant.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DictionaryEvent.variant.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DictionaryEvent.data.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1ABC32A80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC32B48(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x746E6169726176;
  }
}

uint64_t sub_1ABC32B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC32A80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC32BA8(uint64_t a1)
{
  v2 = sub_1ABC33FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC32BE4(uint64_t a1)
{
  v2 = sub_1ABC33FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DictionaryEvent.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D59F8, &unk_1ABF4C968);
  v5 = sub_1ABA7BB64(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16 = v1[2];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC33FFC();
  sub_1ABF252E4();
  v20 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v18 = v16;
    v19 = 1;
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    sub_1ABAFFFEC(&qword_1EB4D2070);
    sub_1ABF24F84();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t DictionaryEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5A08, &qword_1ABF4C978);
  v6 = sub_1ABA7BB64(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC33FFC();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v10 = sub_1ABF24E14();
  v12 = v11;
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAFFFEC(&qword_1ED86B400);
  sub_1ABF24E64();
  v13 = sub_1ABA8E0A8();
  v14(v13);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v16;

  sub_1ABA84B54(a1);
}

uint64_t static EventLogger.instant(named:parent:variant:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v14 = sub_1ABC2FCB8(a1, a2, a3, a4 & 1, a5, a6, a7);

  return v14;
}

uint64_t static EventLogger.interval(named:parent:variant:body:onThrow:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v11[2] = a9;
  v11[3] = a10;
  v11[4] = a5;
  v11[5] = a6;
  return sub_1ABC301FC(a1, a2, a3, a4 & 1, sub_1ABC34050, v12, sub_1ABC34070, v11);
}

uint64_t sub_1ABC33154@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void *a4@<X8>)
{
  result = a3();
  if (!v4)
  {
    *a4 = a1;
    a4[1] = a2;
    a4[2] = result;
  }

  return result;
}

uint64_t static EventLogger.interval(file:function:line:parent:variant:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1ABA84160();
  v36 = v17;
  v37 = v18;

  v19 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v19);
  MEMORY[0x1AC5A9410](v15, v14);
  v20 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v20);
  v38 = v13;
  v21 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v21);

  v32 = a8;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a8;
  v30 = a9;
  v22 = sub_1ABC301FC(v36, v37, a6, a7 & 1, sub_1ABC3465C, v31, sub_1ABC34654, v26);

  return v22;
}

uint64_t static EventLogger.interval(named:parent:variant:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 72) = a9;
  *(v10 + 80) = a10;
  *(v10 + 56) = a7;
  *(v10 + 64) = a8;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 120) = a4;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 16) = a1;
  return sub_1ABAA3528();
}

uint64_t sub_1ABC33310()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 120);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v12 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = *(v0 + 72);
  *(v4 + 16) = v2;
  *(v4 + 24) = v12;
  *(v4 + 40) = v1;
  *(v0 + 96) = v5;
  *(v5 + 16) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = v12;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1ABC33454;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_1ABC30DCC(v10, v8, v9, v3 & 1, &unk_1ABF4C990, v4, sub_1ABC34654, v5);
}

uint64_t sub_1ABC33454()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[14] = v0;

  if (!v0)
  {
    v10 = v3[11];
    v9 = v3[12];

    sub_1ABA82A20();

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC33594, 0, 0);
}

uint64_t sub_1ABC33594()
{
  sub_1ABA7BBF8();
  v2 = v0[11];
  v1 = v0[12];

  sub_1ABA7BBE0();
  v4 = v0[14];

  return v3();
}

uint64_t sub_1ABC335F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[3] = a3;
  v5[4] = a4;
  v5[2] = a1;
  v10 = (a5 + *a5);
  v7 = a5[1];
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_1ABC336F4;

  return v10(a2);
}

uint64_t sub_1ABC336F4()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D1C8();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABC33828, 0, 0);
}

uint64_t sub_1ABC33828()
{
  sub_1ABA7BC04();
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = v0[3];
  v3[1] = v2;
  v3[2] = v1;
  sub_1ABA82A20();
  v6 = v4;

  return v6();
}

uint64_t sub_1ABC3389C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  result = a1();
  v8 = result;
  if (result)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v8;
  return result;
}

uint64_t static EventLogger.interval(file:function:line:parent:variant:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + 112) = a11;
  *(v11 + 80) = a9;
  *(v11 + 96) = a10;
  *(v11 + 64) = a6;
  *(v11 + 72) = a8;
  *(v11 + 152) = a7;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 24) = a1;
  return sub_1ABA7E724();
}

uint64_t sub_1ABC33930()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 152);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);

  v21 = *(v0 + 104);
  v22 = *(v0 + 80);
  v7 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v7);
  MEMORY[0x1AC5A9410](v6, v4);
  v8 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v8);
  *(v0 + 16) = v5;
  v9 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v9);

  *(v0 + 120) = v24;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v22;
  *(v10 + 40) = v1;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *(v11 + 16) = v21;
  *(v11 + 32) = v2;
  *(v11 + 40) = v22;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_1ABC33AF0;
  v13 = *(v0 + 64);
  v14 = sub_1ABA7EDF8();

  return sub_1ABC30DCC(v14, v15, v16, v17, v18, v10, v19, v11);
}

uint64_t sub_1ABC33AF0()
{
  sub_1ABA8C008();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 120);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  v9 = *(v4 + 136);
  v10 = *(v4 + 128);

  v12 = *(v7 + 8);
  if (!v0)
  {
    v11 = v3;
  }

  return v12(v11);
}

void static EventLogger.endInterval(with:variant:_:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v21 = sub_1ABF21EB4();
  v8 = sub_1ABA7BB64(v21);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v25[0] = v5;
  v25[1] = v3;
  v25[2] = v1;
  v16 = qword_1ED86B788;

  if (v16 != -1)
  {
    sub_1ABA8F3A0();
  }

  sub_1ABA7F2A0();
  sub_1ABA93E64(&qword_1ED86E090, v22);
  v17 = v23;
  v18 = v24;
  sub_1ABA93E20(v22, v23);
  sub_1ABF21E74();
  v19 = *(v18 + 24);
  v20 = sub_1ABC34124();
  v19(v7, v15, v25, &type metadata for DictionaryEvent, v20, v17, v18);
  (*(v10 + 8))(v15, v21);

  sub_1ABA84B54(v22);
  sub_1ABA7BC1C();
}

uint64_t *sub_1ABC33DD8(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

unint64_t sub_1ABC33FFC()
{
  result = qword_1EB4D5A00;
  if (!qword_1EB4D5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A00);
  }

  return result;
}

uint64_t sub_1ABC34090()
{
  sub_1ABA8C008();
  sub_1ABAA586C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA94A40(v0);
  *v1 = v2;
  v3 = sub_1ABA900C4(v1);

  return sub_1ABC335F8(v3, v4, v5, v6, v7);
}

unint64_t sub_1ABC34124()
{
  result = qword_1EB4D5A10;
  if (!qword_1EB4D5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A10);
  }

  return result;
}

unint64_t sub_1ABC3417C()
{
  result = qword_1EB4D5A18;
  if (!qword_1EB4D5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A18);
  }

  return result;
}

unint64_t sub_1ABC341D0(uint64_t a1)
{
  *(a1 + 8) = sub_1ABC34200();
  result = sub_1ABC34254();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC34200()
{
  result = qword_1EB4D5A20;
  if (!qword_1EB4D5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A20);
  }

  return result;
}

unint64_t sub_1ABC34254()
{
  result = qword_1EB4D5A28;
  if (!qword_1EB4D5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogger(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1ABC343C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC344A8()
{
  result = qword_1EB4D5A30;
  if (!qword_1EB4D5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A30);
  }

  return result;
}

unint64_t sub_1ABC34500()
{
  result = qword_1EB4D5A38;
  if (!qword_1EB4D5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A38);
  }

  return result;
}

unint64_t sub_1ABC34558()
{
  result = qword_1EB4D5A40;
  if (!qword_1EB4D5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A40);
  }

  return result;
}

uint64_t sub_1ABC345AC()
{
  sub_1ABA7BC04();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_1ABA94A40(v6);
  *v7 = v8;
  v7[1] = sub_1ABA7FDA0;

  return sub_1ABC31AB0(v2, v3, v4, v5);
}

void sub_1ABC346AC()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABF21CF4();
  v2 = sub_1ABA7BB64(v1);
  v50 = v3;
  v51 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - v8;
  sub_1ABA8409C();
  v9 = sub_1ABF246D4();
  v10 = sub_1ABA7BB64(v9);
  v53 = v11;
  v54 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C21C();
  v52 = v14;
  sub_1ABA8409C();
  v15 = sub_1ABF246C4();
  v16 = sub_1ABA7BBB0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = sub_1ABF238C4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1ABA7BC58();
  v21 = sub_1ABF21B34();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v0[2] = sub_1ABF21B24();

  sub_1ABF21B04();

  v24 = sub_1ABF21AF4();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v0[3] = sub_1ABF21AE4();
  v0[6] = [objc_allocWithZone(GDXPCEventLogService) init];
  sub_1ABAFF390(0, &qword_1EB4CF7B0, 0x1E69E9610);
  sub_1ABF238A4();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1ABC39DBC(&qword_1EB4CE680, MEMORY[0x1E69E8030]);
  sub_1ABAD219C(&qword_1EB4D5BB8, &unk_1ABF4D7C0);
  sub_1ABB55B28(&qword_1EB4CE700, &qword_1EB4D5BB8, &unk_1ABF4D7C0);
  sub_1ABF24964();
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8090], v54);
  v27 = v0;
  v0[5] = sub_1ABF246F4();
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED871EA8;
  v29 = sub_1ABED5424(0xD000000000000014, 0x80000001ABF8C900, 1852797802, 0xE400000000000000, qword_1ED871EA8);
  if (v29)
  {
    v30 = v29;
    v31 = v49;
    sub_1ABF21CA4();

    type metadata accessor for EventLogFilterManager();
    v33 = v50;
    v32 = v51;
    v34 = v48;
    (*(v50 + 16))(v48, v31, v51);
    v35 = EventLogFilterManager.__allocating_init(reading:)(v34);
    v37 = v36;
    (*(v33 + 8))(v31, v32, v35);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v38 = sub_1ABF237F4();
    sub_1ABA7AA24(v38, qword_1ED871B40);
    v39 = sub_1ABF237D4();
    v40 = sub_1ABF24674();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55 = v42;
      *v41 = 136315138;
      v43 = [v28 bundlePath];
      v44 = sub_1ABF23C04();
      v46 = v45;

      v47 = sub_1ABADD6D8(v44, v46, &v55);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_1ABA78000, v39, v40, "Failed to find Event Log policy file in %s", v41, 0xCu);
      sub_1ABA84B54(v42);
      MEMORY[0x1AC5AB8B0](v42, -1, -1);
      MEMORY[0x1AC5AB8B0](v41, -1, -1);
    }

    v37 = 0;
  }

  v27[4] = v37;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC34BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(v5 + 32))
  {
    return 0;
  }

  EventLogFilterManager.shouldAllowEvent<A>(ofType:withName:)(a1, a2, a3, a4, a5);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v8 = 0;
    MEMORY[0x1AC5AB8D0](&v8, 8);
    result = v8;
  }

  while (!v8);
  return result;
}

void sub_1ABC34C44()
{
  sub_1ABA7E2A8();
  v46 = v2;
  v47 = v1;
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1ABF23864();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v49 = v14;
  sub_1ABA8409C();
  v50 = sub_1ABF238C4();
  v15 = sub_1ABA7BB64(v50);
  v48 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = sub_1ABF21EB4();
  v23 = sub_1ABA7BB64(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v44 = *(v0 + 40);
    (*(v25 + 16))(&v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v22, v28);
    v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v42 = v8;
    v43 = v11;
    v31 = (v27 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = v0;
    *(v33 + 24) = v5;
    (*(v25 + 32))(v33 + v30, v29, v22);
    v34 = (v33 + v31);
    v35 = v47;
    *v34 = v45;
    v34[1] = v35;
    *(v33 + v32) = v46;
    v52[4] = sub_1ABC39D24;
    v52[5] = v33;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 1107296256;
    sub_1ABA7F2B8();
    v52[2] = v36;
    v52[3] = &unk_1F2098F68;
    v37 = _Block_copy(v52);

    sub_1ABF238A4();
    v51 = MEMORY[0x1E69E7CC0];
    sub_1ABA7D7EC();
    sub_1ABC39DBC(v38, v39);
    sub_1ABAD219C(&qword_1EB4D5BA8, &unk_1ABF4D7B0);
    sub_1ABB55B28(&qword_1EB4D5BB0, &qword_1EB4D5BA8, &unk_1ABF4D7B0);
    v40 = v49;
    v41 = v42;
    sub_1ABF24964();
    MEMORY[0x1AC5A9D40](0, v21, v40, v37);
    _Block_release(v37);
    (*(v43 + 8))(v40, v41);
    (*(v48 + 8))(v21, v50);
  }

  sub_1ABA7BC1C();
}

void sub_1ABC34FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v9 = sub_1ABF21E34();
  v10 = sub_1ABF23BD4();
  v25[0] = 0;
  LODWORD(a6) = [v8 logStartWithId:a2 timestamp:v9 name:v10 parent:a6 error:v25];

  v11 = v25[0];
  if (a6)
  {
    v12 = *MEMORY[0x1E69E9840];

    v13 = v11;
  }

  else
  {
    v14 = v25[0];
    v15 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B40);
    v17 = v15;
    v18 = sub_1ABF237D4();
    v19 = sub_1ABF24664();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1ABA78000, v18, v19, "Could not log start: %@", v20, 0xCu);
      sub_1ABB24B18(v21);
      MEMORY[0x1AC5AB8B0](v21, -1, -1);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
    }

    else
    {
    }

    v24 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1ABC3520C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1ABC35250()
{
  sub_1ABA7E2A8();
  v72 = v2;
  v73 = v1;
  v4 = v3;
  v71 = v5;
  v65 = v6;
  v8 = v7;
  v9 = sub_1ABF23864();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C21C();
  v69 = v15;
  sub_1ABA8409C();
  v70 = sub_1ABF238C4();
  v16 = sub_1ABA7BB64(v70);
  v68 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7C21C();
  v67 = v20;
  v64 = *(v4 - 8);
  v21 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = sub_1ABA97B48();
  v24 = sub_1ABA7BB64(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v8;
  if (v8)
  {
    v62 = v12;
    v63 = v9;
    sub_1ABAA262C();
    v30 = sub_1ABF21B14();
    v61 = *(v73 + 40);
    v31 = *(v26 + 16);
    v60 = v30;
    v59 = v32;
    v31(&v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v65, v23);
    v33 = v64;
    v34 = sub_1ABA969E8();
    v35(v34);
    v36 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v37 = (v28 + *(v33 + 80) + v36) & ~*(v33 + 80);
    v38 = swift_allocObject();
    v39 = v72;
    v40 = v73;
    *(v38 + 2) = v4;
    *(v38 + 3) = v39;
    v41 = v66;
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    (*(v26 + 32))(&v38[v36], v29, v23);
    (*(v33 + 32))(&v38[v37], v0, v4);
    v42 = &v38[(v21 + v37 + 7) & 0xFFFFFFFFFFFFFFF8];
    v43 = v59;
    *v42 = v60;
    v42[1] = v43;
    sub_1ABA8E930();
    v75[1] = 1107296256;
    sub_1ABA7F2B8();
    v75[2] = v44;
    v75[3] = &unk_1F2098F18;
    v45 = _Block_copy(v75);

    v46 = sub_1ABA90800();
    sub_1ABB0DBF0(v46, v47);
    sub_1ABF238A4();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1ABA7D7EC();
    sub_1ABC39DBC(v48, v49);
    v50 = sub_1ABAA030C();
    sub_1ABAD219C(v50, v51);
    sub_1ABB55B28(&qword_1EB4D5BB0, &qword_1EB4D5BA8, &unk_1ABF4D7B0);
    sub_1ABAA5880();
    v52 = v63;
    sub_1ABF24964();
    v53 = sub_1ABA7AD1C();
    MEMORY[0x1AC5A9D40](v53);
    _Block_release(v45);
    v54 = sub_1ABA90800();
    sub_1ABA96210(v54, v55);
    sub_1ABA94A50();
    v56(&unk_1ABF4D7B0, v52);
    v57 = sub_1ABAA22D8();
    v58(v57);
  }

  sub_1ABA7BC1C();
}

void sub_1ABC35680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  v12 = sub_1ABF21E34();
  v13 = (*(a8 + 40))(a7, a8);
  v14 = *(v13 + 16);
  if (v14)
  {
    v39 = v11;
    v40 = v12;
    v15 = a2;
    v41[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v16 = 32;
    do
    {
      v17 = *(v13 + v16);
      sub_1ABF251C4();
      sub_1ABF24B94();
      v18 = *(v41[0] + 2);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v16 += 8;
      --v14;
    }

    while (v14);

    a2 = v15;
    v11 = v39;
    v12 = v40;
  }

  else
  {
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v19 = sub_1ABF240C4();

  (*(a8 + 24))(a7, a8);
  v20 = sub_1ABF23BD4();

  (*(a8 + 32))(a7, a8);
  if (v21)
  {
    v22 = sub_1ABF23BD4();
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_1ABF21DB4();
  v41[0] = 0;
  v24 = [v11 logEndWithId:a2 timestamp:v12 dependencies:v19 payloadType:v20 payloadVariant:v22 payload:v23 error:v41];

  v25 = v41[0];
  if (v24)
  {
    v26 = *MEMORY[0x1E69E9840];

    v27 = v25;
  }

  else
  {
    v28 = v41[0];
    v29 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B40);
    v31 = v29;
    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1ABA78000, v32, v33, "Could not log end: %@", v34, 0xCu);
      sub_1ABB24B18(v35);
      MEMORY[0x1AC5AB8B0](v35, -1, -1);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
    }

    else
    {
    }

    v38 = *MEMORY[0x1E69E9840];
  }
}

void sub_1ABC35A7C()
{
  sub_1ABA7E2A8();
  v81 = v2;
  v82 = v1;
  v4 = v3;
  v80 = v5;
  v74 = v7;
  v75 = v6;
  v73 = v8;
  v70 = v9;
  v11 = v10;
  v12 = sub_1ABF23864();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v78 = v18;
  sub_1ABA8409C();
  v79 = sub_1ABF238C4();
  v19 = sub_1ABA7BB64(v79);
  v77 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v76 = v23;
  v71 = *(v4 - 8);
  v24 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1ABA97B48();
  v27 = sub_1ABA7BB64(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v11;
  if (v11)
  {
    v68 = v15;
    v69 = v12;
    sub_1ABAA262C();
    v33 = sub_1ABF21B14();
    v67 = *(v82 + 40);
    v34 = *(v29 + 16);
    v66 = v33;
    v65 = v35;
    v34(&v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v70, v26);
    v36 = v71;
    v37 = sub_1ABA969E8();
    v38(v37);
    v39 = (*(v29 + 80) + 48) & ~*(v29 + 80);
    v40 = (v31 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v36 + 80) + v80 + 8) & ~*(v36 + 80);
    v41 = (v24 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    v43 = v81;
    v44 = v82;
    *(v42 + 2) = v4;
    *(v42 + 3) = v43;
    v45 = v72;
    *(v42 + 4) = v44;
    *(v42 + 5) = v45;
    (*(v29 + 32))(&v42[v39], v32, v26);
    v46 = &v42[v40];
    v47 = v75;
    *v46 = v73;
    *(v46 + 1) = v47;
    *&v42[v80] = v74;
    (*(v36 + 32))(&v42[v70], v0, v4);
    v48 = &v42[v41];
    v49 = v65;
    *v48 = v66;
    v48[1] = v49;
    sub_1ABA8E930();
    v84[1] = 1107296256;
    sub_1ABA7F2B8();
    v84[2] = v50;
    v84[3] = &unk_1F2098EC8;
    v51 = _Block_copy(v84);

    v52 = sub_1ABA90800();
    sub_1ABB0DBF0(v52, v53);
    sub_1ABF238A4();
    v83 = MEMORY[0x1E69E7CC0];
    sub_1ABA7D7EC();
    sub_1ABC39DBC(v54, v55);
    v56 = sub_1ABAA030C();
    sub_1ABAD219C(v56, v57);
    sub_1ABB55B28(&qword_1EB4D5BB0, &qword_1EB4D5BA8, &unk_1ABF4D7B0);
    sub_1ABAA5880();
    v58 = v69;
    sub_1ABF24964();
    v59 = sub_1ABA7AD1C();
    MEMORY[0x1AC5A9D40](v59);
    _Block_release(v51);
    v60 = sub_1ABA90800();
    sub_1ABA96210(v60, v61);
    (*(v68 + 8))(&unk_1ABF4D7B0, v58);
    v62 = sub_1ABAA22D8();
    v63(v62);
  }

  sub_1ABA7BC1C();
}

void sub_1ABC35F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v43 = *(a1 + 48);
  v13 = sub_1ABF21E34();
  v14 = sub_1ABF23BD4();
  v15 = (*(a11 + 40))(a10, a11);
  v16 = *(v15 + 16);
  if (v16)
  {
    v41 = v14;
    v42 = v13;
    v17 = a6;
    v44[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v18 = 32;
    do
    {
      v19 = *(v15 + v18);
      sub_1ABF251C4();
      sub_1ABF24B94();
      v20 = *(v44[0] + 2);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v18 += 8;
      --v16;
    }

    while (v16);

    a6 = v17;
    v13 = v42;
    v14 = v41;
  }

  else
  {
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v21 = sub_1ABF240C4();

  (*(a11 + 24))(a10, a11);
  v22 = sub_1ABF23BD4();

  (*(a11 + 32))(a10, a11);
  if (v23)
  {
    v24 = sub_1ABF23BD4();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1ABF21DB4();
  v44[0] = 0;
  v26 = [v43 logInstantWithId:a2 timestamp:v13 name:v14 parent:a6 dependencies:v21 payloadType:v22 payloadVariant:v24 payload:v25 error:v44];

  v27 = v44[0];
  if (v26)
  {
    v28 = *MEMORY[0x1E69E9840];

    v29 = v27;
  }

  else
  {
    v30 = v44[0];
    v31 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v32 = sub_1ABF237F4();
    sub_1ABA7AA24(v32, qword_1ED871B40);
    v33 = v31;
    v34 = sub_1ABF237D4();
    v35 = sub_1ABF24664();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_1ABA78000, v34, v35, "Could not log instant: %@", v36, 0xCu);
      sub_1ABB24B18(v37);
      MEMORY[0x1AC5AB8B0](v37, -1, -1);
      MEMORY[0x1AC5AB8B0](v36, -1, -1);
    }

    else
    {
    }

    v40 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1ABC36338()
{
  v1 = *(v0 + 40);
  v6[4] = j_nullsub_1;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1ABC36408;
  v6[3] = &unk_1F2074878;
  v2 = _Block_copy(v6);

  v3 = sub_1ABA7D000();
  dispatch_sync(v3, v4);
  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABC36430()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return v0;
}

uint64_t sub_1ABC36470()
{
  sub_1ABC36430();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC36534()
{
  v2 = *v0;
  sub_1ABC36338();
  v3 = *(v1 + 8);

  return v3();
}

void *EventLogEntry.init(id:timestamp:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for EventLogEntry();
  v8 = *(v7 + 20);
  v9 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v9);
  (*(v10 + 32))(&a4[v8], a2);
  v11 = &a4[*(v7 + 24)];

  return memcpy(v11, a3, 0x51uLL);
}

uint64_t type metadata accessor for EventLogEntry()
{
  result = qword_1EB4CF358;
  if (!qword_1EB4CF358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABC36690(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581861 && a2 == 0xE300000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E6174736E69 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABC3679C(char a1)
{
  if (!a1)
  {
    return 0x7472617473;
  }

  if (a1 == 1)
  {
    return 6581861;
  }

  return 0x746E6174736E69;
}

uint64_t sub_1ABC367E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC36878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC36940(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1ABC36978(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC36A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC36690(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC36A50(uint64_t a1)
{
  v2 = sub_1ABC37130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36A8C(uint64_t a1)
{
  v2 = sub_1ABC37130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC36ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC367E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC36AF8(uint64_t a1)
{
  v2 = sub_1ABC37280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36B34(uint64_t a1)
{
  v2 = sub_1ABC37280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC36B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC36878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC36BB8(uint64_t a1)
{
  v2 = sub_1ABC37184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36BF4(uint64_t a1)
{
  v2 = sub_1ABC37184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC36C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC36978(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC36C60(uint64_t a1)
{
  v2 = sub_1ABC372D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36C9C(uint64_t a1)
{
  v2 = sub_1ABC372D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventLogEntry.EventData.encode(to:)()
{
  sub_1ABA7BCA8();
  v55 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D5A60, &qword_1ABF4CC70);
  v5 = sub_1ABA7BB64(v4);
  v49 = v6;
  v50 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v44 - v10;
  v47 = sub_1ABAD219C(&qword_1EB4D5A68, &qword_1ABF4CC78);
  sub_1ABA7BB64(v47);
  v46 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = sub_1ABAD219C(&qword_1EB4D5A70, &qword_1ABF4CC80);
  sub_1ABA7BB64(v17);
  v45 = v18;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v24 = sub_1ABAD219C(&qword_1EB4D5A78, &qword_1ABF4CC88);
  v25 = sub_1ABA7BB64(v24);
  v56 = v26;
  v57 = v25;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  v32 = *(v0 + 8);
  *&v53 = *v0;
  *(&v53 + 1) = v32;
  v33 = *(v0 + 24);
  v54 = *(v0 + 16);
  v35 = *(v0 + 32);
  v34 = *(v0 + 40);
  *&v51 = v33;
  *(&v51 + 1) = v35;
  *v52 = v34;
  v36 = *(v0 + 48);
  v44 = *(v0 + 64);
  *&v52[8] = v36;
  v37 = *(v0 + 80);
  v38 = v3[3];
  sub_1ABA93E20(v3, v38);
  sub_1ABC37130();
  sub_1ABF252E4();
  if (v37)
  {
    if (v37 == 1)
    {
      LOBYTE(v58) = 1;
      sub_1ABC37280();
      sub_1ABA900E8();
      v58 = v53;
      v59 = v54;
      v60 = v51;
      v61 = *v52;
      sub_1ABC3722C();
      v39 = v47;
      sub_1ABF24F84();
      v40 = *(v46 + 8);
      v41 = v16;
    }

    else
    {
      LOBYTE(v58) = 2;
      sub_1ABC37184();
      v42 = v48;
      sub_1ABA900E8();
      sub_1ABAA2948();
      sub_1ABC371D8();
      v39 = v50;
      v43 = v55;
      sub_1ABF24F84();
      if (!v43)
      {
        v58 = v51;
        v59 = *v52;
        v61 = v44;
        v60 = *&v52[8];
        sub_1ABC3722C();
        sub_1ABA9752C();
        sub_1ABF24F84();
      }

      sub_1ABA94A50();
      v41 = v42;
    }

    v40(v41, v39);
  }

  else
  {
    LOBYTE(v58) = 0;
    sub_1ABC372D4();
    sub_1ABA900E8();
    sub_1ABAA2948();
    sub_1ABC371D8();
    sub_1ABF24F84();
    (*(v45 + 8))(v23, v17);
  }

  (*(v56 + 8))(v31, v38);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC37130()
{
  result = qword_1EB4D5A80;
  if (!qword_1EB4D5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A80);
  }

  return result;
}

unint64_t sub_1ABC37184()
{
  result = qword_1EB4D5A88;
  if (!qword_1EB4D5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A88);
  }

  return result;
}

unint64_t sub_1ABC371D8()
{
  result = qword_1EB4D5A90;
  if (!qword_1EB4D5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A90);
  }

  return result;
}

unint64_t sub_1ABC3722C()
{
  result = qword_1EB4D5A98;
  if (!qword_1EB4D5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A98);
  }

  return result;
}

unint64_t sub_1ABC37280()
{
  result = qword_1EB4D5AA0;
  if (!qword_1EB4D5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AA0);
  }

  return result;
}

unint64_t sub_1ABC372D4()
{
  result = qword_1EB4D5AA8;
  if (!qword_1EB4D5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AA8);
  }

  return result;
}

void EventLogEntry.EventData.init(from:)()
{
  sub_1ABA7BCA8();
  v86 = v0;
  v3 = v2;
  v83 = v4;
  v81 = sub_1ABAD219C(&qword_1EB4D5AB0, &qword_1ABF4CC90);
  sub_1ABA7BB64(v81);
  v78 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v74 - v9;
  v80 = sub_1ABAD219C(&qword_1EB4D5AB8, &qword_1ABF4CC98);
  sub_1ABA7BB64(v80);
  v82 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1ABAD219C(&qword_1EB4D5AC0, &qword_1ABF4CCA0);
  sub_1ABA7BB64(v14);
  v79 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  v21 = sub_1ABAD219C(&qword_1EB4D5AC8, &unk_1ABF4CCA8);
  sub_1ABA7BB64(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BCE0();
  v27 = v3[3];
  v28 = v3[4];
  v85 = v3;
  sub_1ABA93E20(v3, v27);
  sub_1ABC37130();
  v29 = v86;
  sub_1ABF252C4();
  if (v29)
  {
    goto LABEL_10;
  }

  v76 = v20;
  v77 = v23;
  v86 = v1;
  v30 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v30, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_9;
  }

  v75 = 0;
  if (v32 < (v33 >> 1))
  {
    v34 = v21;
    LODWORD(v21) = *(v31 + v32);
    v35 = sub_1ABAD4E90(v32 + 1);
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    if (v37 == v39 >> 1)
    {
      v40 = v34;
      if (v21)
      {
        v79 = v35;
        LODWORD(v76) = v21;
        if (v21 == 1)
        {
          LOBYTE(v87) = 1;
          sub_1ABC37280();
          sub_1ABAA353C();
          v41 = v83;
          sub_1ABC38C40();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v53 = sub_1ABA97538();
          v54(v53);
          v55 = sub_1ABA7E738();
          v56(v55);
          v58 = v87;
          v59 = v88;
          v60 = v89;
          v62 = *(&v90 + 1);
          v61 = v90;
          *&v64 = *(&v91 + 1);
          v63 = v91;
          v65 = v85;
          LOBYTE(v21) = v76;
        }

        else
        {
          LOBYTE(v87) = 2;
          sub_1ABC37184();
          sub_1ABAA353C();
          v41 = v83;
          LOBYTE(v87) = 0;
          sub_1ABC38BEC();
          v52 = v81;
          sub_1ABF24E64();
          v21 = v77;
          v82 = v92;
          v71 = v52;
          v59 = v93;
          v60 = v94;
          sub_1ABC38C40();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v72 = sub_1ABA8B474();
          v73(v72, v71);
          (*(v21 + 8))(v86, v40);
          v61 = v87;
          v62 = v88;
          v63 = v89;
          v64 = v90;
          v57 = v91;
          v65 = v85;
          LOBYTE(v21) = v76;
          v58 = v82;
        }

        goto LABEL_16;
      }

      LOBYTE(v87) = 0;
      sub_1ABC372D4();
      v48 = v75;
      sub_1ABF24D94();
      if (!v48)
      {
        sub_1ABC38BEC();
        sub_1ABF24E64();
        v51 = v77;
        swift_unknownObjectRelease();
        v66 = sub_1ABA8B474();
        v67(v66, v14);
        v68 = *(v51 + 8);
        v69 = sub_1ABA95870();
        v70(v69);
        v58 = v87;
        v59 = v88;
        v60 = v89;
        v65 = v85;
        v41 = v83;
LABEL_16:
        *v41 = v58;
        *(v41 + 8) = v59;
        *(v41 + 16) = v60;
        *(v41 + 24) = v61;
        *(v41 + 32) = v62;
        *(v41 + 40) = v63;
        *(v41 + 48) = v64;
        *(v41 + 64) = v57;
        *(v41 + 80) = v21;
        sub_1ABA84B54(v65);
        goto LABEL_11;
      }

      sub_1ABA94A50();
      v49 = sub_1ABA95870();
      v50(v49);
      swift_unknownObjectRelease();
LABEL_10:
      sub_1ABA84B54(v85);
LABEL_11:
      sub_1ABA7BC90();
      return;
    }

    v21 = v34;
LABEL_9:
    v42 = sub_1ABF24B44();
    swift_allocError();
    v44 = v43;
    v45 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v44 = &type metadata for EventLogEntry.EventData;
    v46 = v86;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA94A50();
    v47(v46, v21);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t EventLogEntry.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventLogEntry() + 20);
  v4 = sub_1ABF21EB4();
  v5 = sub_1ABA7BBB0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t EventLogEntry.data.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for EventLogEntry() + 24);
  memcpy(__dst, (v1 + v3), 0x51uLL);
  memcpy(a1, (v1 + v3), 0x51uLL);
  return sub_1ABC38C94(__dst, &v5);
}

uint64_t EventLogEntry.Metadata.init(name:parent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t EventLogEntry.Metadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t EventLogEntry.Metadata.name.setter()
{
  sub_1ABA7FC9C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1ABC37CB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC37D7C(char a1)
{
  if (a1)
  {
    return 0x746E65726170;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1ABC37DA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABC37DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC37CB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC37E24(uint64_t a1)
{
  v2 = sub_1ABC38CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC37E60(uint64_t a1)
{
  v2 = sub_1ABC38CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventLogEntry.Metadata.encode(to:)()
{
  sub_1ABA7BCA8();
  v20 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D5AE0, &qword_1ABF4CCB8);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = *v0;
  v13 = v0[1];
  v19 = v0[2];
  v15 = *(v3 + 24);
  v14 = *(v3 + 32);
  v16 = sub_1ABA95870();
  sub_1ABA93E20(v16, v17);
  sub_1ABC38CCC();
  sub_1ABF252E4();
  v18 = v20;
  sub_1ABF24F34();
  if (!v18)
  {
    sub_1ABA7BF34();
    sub_1ABF24FA4();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

void EventLogEntry.Metadata.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D5AF0, &qword_1ABF4CCC0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC38CCC();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v10 = sub_1ABF24E14();
    v12 = v11;
    v13 = sub_1ABF24E84();
    v14 = sub_1ABA7BFF0();
    v15(v14);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v13;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t EventLogEntry.Payload.init(dependencies:payloadType:payloadVariant:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t EventLogEntry.Payload.dependencies.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EventLogEntry.Payload.payloadType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1ABA7D000();
}

uint64_t EventLogEntry.Payload.payloadType.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t EventLogEntry.Payload.payloadVariant.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1ABA7D000();
}

uint64_t EventLogEntry.Payload.payloadVariant.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t EventLogEntry.Payload.payload.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_1ABA7D000();
  sub_1ABB0DBF0(v3, v4);
  return sub_1ABA7D000();
}

uint64_t EventLogEntry.Payload.payload.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_1ABC383A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5464616F6C796170 && a2 == 0xEB00000000657079;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5664616F6C796170 && a2 == 0xEE00746E61697261;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABC38508(char a1)
{
  result = 0x6E65646E65706564;
  switch(a1)
  {
    case 1:
      result = 0x5464616F6C796170;
      break;
    case 2:
      result = 0x5664616F6C796170;
      break;
    case 3:
      result = 0x64616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC385A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABC385FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC383A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC38624(uint64_t a1)
{
  v2 = sub_1ABC38D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC38660(uint64_t a1)
{
  v2 = sub_1ABC38D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventLogEntry.Payload.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D5AF8, &unk_1ABF4CCC8);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v12 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v26 = v0[2];
  v27 = v11;
  v14 = v0[5];
  v24 = v0[4];
  v25 = v13;
  v22 = v0[6];
  v23 = v14;
  v16 = *(v2 + 24);
  v15 = *(v2 + 32);
  v17 = sub_1ABA90800();
  sub_1ABA93E20(v17, v18);
  v19 = sub_1ABC38D20();

  sub_1ABF252E4();
  v28 = v12;
  sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
  sub_1ABC0D68C(&qword_1EB4D4770);
  sub_1ABA7BF34();
  sub_1ABF24F84();

  if (!v19)
  {
    v21 = v22;
    v20 = v23;
    LOBYTE(v28) = 1;
    sub_1ABA7BF34();
    sub_1ABF24F34();
    LOBYTE(v28) = 2;
    sub_1ABA90800();
    sub_1ABA7BF34();
    sub_1ABF24ED4();
    v28 = v20;
    v29 = v21;
    sub_1ABB0DBF0(v20, v21);
    sub_1ABC38D74();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    sub_1ABA96210(v28, v29);
  }

  (*(v5 + 8))(v10, v3);
  sub_1ABA7BC90();
}

void EventLogEntry.Payload.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D5B08, &qword_1ABF4CCD8);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC38D20();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
    sub_1ABC0D68C(&qword_1EB4D47C8);
    sub_1ABA9752C();
    sub_1ABF24E64();
    v23 = v24;
    sub_1ABA9752C();
    v21 = sub_1ABF24E14();
    v22 = v10;
    LOBYTE(v24) = 2;
    v11 = sub_1ABF24DB4();
    v13 = v12;
    v20 = v11;
    sub_1ABC38DC8();
    sub_1ABA9752C();
    sub_1ABF24E64();
    v14 = sub_1ABA7BFF0();
    v15(v14);
    *v4 = v23;
    v4[1] = v21;
    v4[2] = v22;
    v4[3] = v20;
    v4[4] = v13;
    v4[5] = v24;
    v4[6] = v25;

    v16 = sub_1ABAA030C();
    sub_1ABB0DBF0(v16, v17);
    sub_1ABA84B54(v2);

    v18 = sub_1ABAA030C();
    sub_1ABA96210(v18, v19);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABC38BEC()
{
  result = qword_1EB4D5AD0;
  if (!qword_1EB4D5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AD0);
  }

  return result;
}

unint64_t sub_1ABC38C40()
{
  result = qword_1EB4D5AD8;
  if (!qword_1EB4D5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AD8);
  }

  return result;
}

unint64_t sub_1ABC38CCC()
{
  result = qword_1EB4D5AE8;
  if (!qword_1EB4D5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AE8);
  }

  return result;
}

unint64_t sub_1ABC38D20()
{
  result = qword_1EB4D5B00;
  if (!qword_1EB4D5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B00);
  }

  return result;
}

unint64_t sub_1ABC38D74()
{
  result = qword_1EB4D0230;
  if (!qword_1EB4D0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0230);
  }

  return result;
}

unint64_t sub_1ABC38DC8()
{
  result = qword_1EB4D0228;
  if (!qword_1EB4D0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0228);
  }

  return result;
}

uint64_t dispatch thunk of EventLogBackend.sync()()
{
  sub_1ABA7FC9C();
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ABB385FC;

  return v8(v1, v0);
}

uint64_t sub_1ABC38FEC()
{
  result = sub_1ABF21EB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC39070(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ABC390A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABC390DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABC39130(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogEntry.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogEntry.EventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABC39364(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1ABC39410(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC394F0()
{
  result = qword_1EB4D5B10;
  if (!qword_1EB4D5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B10);
  }

  return result;
}

unint64_t sub_1ABC39548()
{
  result = qword_1EB4D5B18;
  if (!qword_1EB4D5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B18);
  }

  return result;
}

unint64_t sub_1ABC395A0()
{
  result = qword_1EB4D5B20;
  if (!qword_1EB4D5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B20);
  }

  return result;
}

unint64_t sub_1ABC395F8()
{
  result = qword_1EB4D5B28;
  if (!qword_1EB4D5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B28);
  }

  return result;
}

unint64_t sub_1ABC39650()
{
  result = qword_1EB4D5B30;
  if (!qword_1EB4D5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B30);
  }

  return result;
}

unint64_t sub_1ABC396A8()
{
  result = qword_1EB4D5B38;
  if (!qword_1EB4D5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B38);
  }

  return result;
}

unint64_t sub_1ABC39700()
{
  result = qword_1EB4D5B40;
  if (!qword_1EB4D5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B40);
  }

  return result;
}

unint64_t sub_1ABC39758()
{
  result = qword_1EB4D5B48;
  if (!qword_1EB4D5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B48);
  }

  return result;
}

unint64_t sub_1ABC397B0()
{
  result = qword_1EB4D5B50;
  if (!qword_1EB4D5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B50);
  }

  return result;
}

unint64_t sub_1ABC39808()
{
  result = qword_1EB4D5B58;
  if (!qword_1EB4D5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B58);
  }

  return result;
}

unint64_t sub_1ABC39860()
{
  result = qword_1EB4D5B60;
  if (!qword_1EB4D5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B60);
  }

  return result;
}

unint64_t sub_1ABC398B8()
{
  result = qword_1EB4D5B68;
  if (!qword_1EB4D5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B68);
  }

  return result;
}

unint64_t sub_1ABC39910()
{
  result = qword_1EB4D5B70;
  if (!qword_1EB4D5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B70);
  }

  return result;
}

unint64_t sub_1ABC39968()
{
  result = qword_1EB4D5B78;
  if (!qword_1EB4D5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B78);
  }

  return result;
}

unint64_t sub_1ABC399C0()
{
  result = qword_1EB4D5B80;
  if (!qword_1EB4D5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B80);
  }

  return result;
}

unint64_t sub_1ABC39A18()
{
  result = qword_1EB4D5B88;
  if (!qword_1EB4D5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B88);
  }

  return result;
}

unint64_t sub_1ABC39A70()
{
  result = qword_1EB4D5B90;
  if (!qword_1EB4D5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B90);
  }

  return result;
}

unint64_t sub_1ABC39AC8()
{
  result = qword_1EB4D5B98;
  if (!qword_1EB4D5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B98);
  }

  return result;
}

void sub_1ABC39B1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1ABF21EB4();
  sub_1ABA7BBD0(v3);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (*(*(v1 - 8) + 80) + v8 + 8) & ~*(*(v1 - 8) + 80);
  v10 = (v0 + ((*(*(v1 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1ABC35F18(v0[4], v0[5], v0 + v5, *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), v0 + v9, *v10, v10[1], v1, v2);
}

void sub_1ABC39C34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1ABF21EB4();
  sub_1ABA7BBD0(v3);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_1ABA81898();
  v11 = (v10 + *(v9 + 80)) & ~*(v9 + 80);
  v13 = v0[4];
  v14 = v0[5];
  v15 = (v0 + ((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  sub_1ABC35680(v13, v14, v0 + v8, v0 + v11, v16, v17, v1, v2);
}

void sub_1ABC39D24()
{
  v1 = sub_1ABF21EB4();
  sub_1ABA7BBD0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = (v0 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v0 + v8);

  sub_1ABC34FB8(v9, v10, v0 + v6, v12, v13, v14);
}

uint64_t sub_1ABC39DBC(unint64_t *a1, void (*a2)(uint64_t))
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

double EventLogFilterManager.__allocating_init(reading:)(uint64_t a1)
{
  v2 = sub_1ABF21CF4();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = sub_1ABF217F4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABF217C4();
  v11 = sub_1ABF21D34();
  v13 = v12;
  sub_1ABC3A83C();
  sub_1ABF217D4();
  (*(v5 + 8))(a1, v2);
  sub_1ABA96210(v11, v13);

  v14 = swift_allocObject();
  result = *&v16;
  *(v14 + 16) = v16;
  return result;
}

void EventLogFilterManager.shouldAllowEvent<A>(ofType:withName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  (*(a5 + 24))(a4, a5);
  sub_1ABB130E0();
  LOBYTE(v6) = v7;

  if ((v6 & 1) == 0)
  {
    v8 = *(v5 + 24);

    sub_1ABB130E0();
  }
}

uint64_t sub_1ABC3A230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546465776F6C6C61 && a2 == 0xEC00000073657079;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6465776F6C6C61 && a2 == 0xEC00000073656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC3A304(char a1)
{
  if (a1)
  {
    return 0x4E6465776F6C6C61;
  }

  else
  {
    return 0x546465776F6C6C61;
  }
}

uint64_t sub_1ABC3A344(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABAD219C(&qword_1EB4D5BC8, &qword_1ABF4D8A8);
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v17 - v13;
  v15 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3A8F0();
  sub_1ABF252E4();
  v19 = a2;
  v18 = 0;
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABC3A944(&qword_1EB4CF7F8);
  sub_1ABA7F2CC();
  if (!v3)
  {
    v19 = a3;
    v18 = 1;
    sub_1ABA7F2CC();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_1ABC3A4CC(uint64_t *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5BC0, &qword_1ABF4D898);
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3A8F0();
  sub_1ABF252C4();
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  v14 = 0;
  sub_1ABC3A944(&unk_1ED86B980);
  sub_1ABA7D804();
  v12 = v15;
  v14 = 1;
  sub_1ABA7D804();
  (*(v5 + 8))(v9, v2);
  sub_1ABA84B54(a1);
  return v12;
}

uint64_t sub_1ABC3A6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC3A230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC3A6D4(uint64_t a1)
{
  v2 = sub_1ABC3A8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC3A710(uint64_t a1)
{
  v2 = sub_1ABC3A8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC3A74C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABC3A4CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t EventLogFilterManager.__allocating_init(allowTypePolicies:allowNamePolicies:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t EventLogFilterManager.init(allowTypePolicies:allowNamePolicies:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t EventLogFilterManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EventLogFilterManager.__deallocating_deinit()
{
  EventLogFilterManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABC3A83C()
{
  result = qword_1ED86B600;
  if (!qword_1ED86B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B600);
  }

  return result;
}

unint64_t sub_1ABC3A8F0()
{
  result = qword_1ED86B618;
  if (!qword_1ED86B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B618);
  }

  return result;
}

uint64_t sub_1ABC3A944(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogPolicies.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC3AA90()
{
  result = qword_1EB4D5BD0;
  if (!qword_1EB4D5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BD0);
  }

  return result;
}

unint64_t sub_1ABC3AAE8()
{
  result = qword_1ED86B608;
  if (!qword_1ED86B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B608);
  }

  return result;
}

unint64_t sub_1ABC3AB40()
{
  result = qword_1ED86B610;
  if (!qword_1ED86B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B610);
  }

  return result;
}

uint64_t EventViewDateType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABC3AC30()
{
  result = qword_1EB4D5BD8;
  if (!qword_1EB4D5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventViewDateType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

IntelligencePlatform::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 0xD)
  {
    v2 = 13;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1ABC3AD84@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter();
  *a1 = result;
  return result;
}

void static Exit.exit(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1ED871B40);
  v3 = sub_1ABF237D4();
  v4 = sub_1ABF24684();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1ABA78000, v3, v4, "Exiting with reason: %d", v5, 8u);
    MEMORY[0x1AC5AB8B0](v5, -1, -1);
  }

  _exit(v1);
}

unint64_t sub_1ABC3AE90()
{
  result = qword_1EB4D5BE0;
  if (!qword_1EB4D5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Exit(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABC3B0F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, a2, v6);
  v9 = sub_1ABAAEA48(v8, a2);
  (*(v4 + 8))(a1, a2);
  return v9;
}

uint64_t sub_1ABC3B1DC(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1ABC3B21C()
{
  sub_1ABB0B9E4();

  return swift_deallocClassInstance();
}

uint64_t ExpirableLazyBox.__allocating_init(cleanupAfter:tolerance:clock:initializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  ExpirableLazyBox.init(cleanupAfter:tolerance:clock:initializer:)(a1, a2, a3, a4, a5);
  return v13;
}

char *ExpirableLazyBox.init(cleanupAfter:tolerance:clock:initializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  *(v6 + 2) = a4;
  *(v6 + 3) = a5;
  v9 = v8[15];
  v10 = v8[10];
  sub_1ABA80B40();
  v12 = v11;
  (*(v13 + 16))(&v6[v14], v15, v10);
  v16 = *(*v6 + 136);
  v17 = v8[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1ABF247E4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v6[v16], a2, v19);
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(&v6[*(*v6 + 128)], a1, AssociatedTypeWitness);
  v22 = v8[11];
  v23 = type metadata accessor for ExpirableLazyBox.State();
  v29 = sub_1ABC3B1DC(0, 0);
  v24 = sub_1ABC3B0F4(&v29, v23);
  (*(v12 + 8))(a3, v10);
  (*(v20 + 8))(a2, v19);
  (*(v21 + 8))(a1, AssociatedTypeWitness);
  *(v6 + 4) = v24;
  return v6;
}

uint64_t sub_1ABC3B534(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v6);
  v10 = *a2;
  return ExpirableLazyBox.wrappedValue.setter(v8);
}

uint64_t ExpirableLazyBox.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[4];
  v13[2] = a1;
  sub_1ABA7F288();
  v6 = *(v5 + 80);
  sub_1ABA7F288();
  v8 = *(v7 + 88);
  sub_1ABA7F288();
  v10 = *(v9 + 96);
  v11 = type metadata accessor for ExpirableLazyBox.State();
  sub_1ABA7AEC8(sub_1ABC3B874, v13, v4, v11, MEMORY[0x1E69E7CA8] + 8);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t sub_1ABC3B6D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(*a3 + 88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - v9;
  v11 = *v8;
  if (*(*v8 + 24))
  {
    v12 = *(*v8 + 24);

    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242B4();
  }

  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  type metadata accessor for ExpirableLazyBox.Box();
  (*(v6 + 16))(v10, a2, v5);
  v15 = sub_1ABAAD0D0(v10);
  v16 = *(v11 + 16);
  *(v11 + 16) = v15;

  return sub_1ABA7B2EC(v11);
}

void (*ExpirableLazyBox.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_1ABAFDD10(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  sub_1ABA7D5F0();
  *(v5 + 8) = *(v4 + 88);
  sub_1ABA7BD7C();
  *(v6 + 16) = v7;
  v9 = *(v8 + 64);
  v3[3] = sub_1ABAFDD10(v9);
  v3[4] = sub_1ABAFDD10(v9);
  ExpirableLazyBox.wrappedValue.getter();
  return sub_1ABC3B964;
}

void sub_1ABC3B964(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    ExpirableLazyBox.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    ExpirableLazyBox.wrappedValue.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *ExpirableLazyBox.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  sub_1ABA7D5F0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 120)], *(v1 + 80));
  sub_1ABA7D5F0();
  v6 = *(v5 + 128);
  v7 = *(v1 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v6], AssociatedTypeWitness);
  sub_1ABA7D5F0();
  v10 = *(v9 + 136);
  v11 = sub_1ABF247E4();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  return v0;
}

uint64_t ExpirableLazyBox.__deallocating_deinit()
{
  ExpirableLazyBox.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC3BBC0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v12 = *(v3 - 8) + 64;
    v6 = *(a1 + 96);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = AssociatedTypeWitness;
    if (v8 <= 0x3F)
    {
      v13 = *(AssociatedTypeWitness - 8) + 64;
      v9 = sub_1ABF247E4();
      v4 = v9;
      if (v10 <= 0x3F)
      {
        v14 = *(v9 - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return v4;
}

uint64_t sub_1ABC3BD98(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABC3BE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABC3BE90();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1ABC3BE90()
{
  result = qword_1EB4D5BE8;
  if (!qword_1EB4D5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BE8);
  }

  return result;
}

uint64_t ExtendedTriple.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 ExtendedTriple.predicate.setter(__n128 *a1)
{
  sub_1ABA7E74C(a1);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);

  result = v8;
  *(v1 + 8) = v8;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t ExtendedTriple.relationshipPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 ExtendedTriple.relationshipPredicate.setter(__n128 *a1)
{
  sub_1ABA7E74C(a1);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);

  result = v8;
  *(v1 + 56) = v8;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t ExtendedTriple.object.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ExtendedTriple.object.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t static ExtendedTriple.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[6];
  v2 = a1[7];
  v4 = a1[8];
  v5 = a1[12];
  v6 = a1[13];
  v8 = a2[6];
  v7 = a2[7];
  v9 = a2[8];
  v10 = a1[1] == a2[1] && a1[2] == a2[2];
  v11 = a2[12];
  v12 = a2[13];
  if (v10)
  {
    if (v3 == v8)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v13 = sub_1ABF25054();
  result = 0;
  if ((v13 & 1) == 0 || v3 != v8)
  {
    return result;
  }

LABEL_10:
  v15 = v2 == v7 && v4 == v9;
  if (!v15 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v11 && v6 == v12)
  {
    return 1;
  }

  return sub_1ABF25054();
}

uint64_t sub_1ABC3C298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC3C44C(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC3C500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC3C298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC3C528(uint64_t a1)
{
  v2 = sub_1ABC3C89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC3C564(uint64_t a1)
{
  v2 = sub_1ABC3C89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtendedTriple.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5BF0, &qword_1ABF4DCA0);
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v23 - v10;
  v12 = *v1;
  v13 = v1[2];
  v14 = v1[3];
  v31 = v1[1];
  v32 = v13;
  v33 = v1[4];
  v39 = *(v1 + 20);
  v15 = v1[7];
  v29 = v1[6];
  v30 = v14;
  v16 = v1[8];
  v26 = v1[9];
  v27 = v1[10];
  v28 = v15;
  v25 = *(v1 + 44);
  v17 = v1[13];
  v23[1] = v1[12];
  v23[2] = v17;
  v24 = v16;
  v18 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3C89C();
  sub_1ABF252E4();
  v34 = v12;
  v40 = 0;
  sub_1ABAE8BC8();
  sub_1ABA7D598();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v2)
  {
    v20 = v28;
    v19 = v29;
    v34 = v31;
    v35 = v32;
    v36 = v30;
    v37 = v33;
    v38 = v39;
    v40 = 1;
    sub_1ABAA68CC();

    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    v34 = v19;
    v40 = 2;
    sub_1ABC3C8F0();
    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v34 = v20;
    v35 = v24;
    v21 = v27;
    v36 = v26;
    v37 = v27;
    v38 = v25;
    v40 = 3;

    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    if (!v21)
    {
      LOBYTE(v34) = 4;
      sub_1ABA7BF34();
      sub_1ABF24F34();
    }
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1ABC3C89C()
{
  result = qword_1EB4D5BF8;
  if (!qword_1EB4D5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BF8);
  }

  return result;
}

unint64_t sub_1ABC3C8F0()
{
  result = qword_1EB4DB360;
  if (!qword_1EB4DB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB360);
  }

  return result;
}

uint64_t ExtendedTriple.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5C00, &qword_1ABF4DCA8);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v26 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3C89C();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1ABAE8B74();
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v14 = v38;
  LOBYTE(__src[0]) = 1;
  sub_1ABAA6FE4();
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v35 = v14;
  v34 = v38;
  v36 = v39;
  v15 = v41;
  v33 = v40;
  v52 = v42;
  LOBYTE(__src[0]) = 2;
  sub_1ABC3CD80();
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v32 = v38;
  LOBYTE(__src[0]) = 3;
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v16 = v39;
  v30 = v38;
  v29 = v40;
  v31 = v41;
  v28 = v42;
  v53 = 4;
  sub_1ABA80B50();
  v17 = sub_1ABF24E14();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  __src[0] = v35;
  v21 = v34;
  __src[1] = v34;
  v22 = v36;
  __src[2] = v36;
  v23 = v16;
  v27 = v16;
  v24 = v33;
  __src[3] = v33;
  __src[4] = v15;
  LOWORD(__src[5]) = v52;
  __src[6] = v32;
  __src[7] = v30;
  __src[8] = v23;
  __src[9] = v29;
  __src[10] = v31;
  LOWORD(__src[11]) = v28;
  __src[12] = v17;
  __src[13] = v20;
  memcpy(a2, __src, 0x70uLL);
  sub_1ABB345D8(__src, &v38);
  sub_1ABA84B54(a1);
  v38 = v35;
  v39 = v21;
  v40 = v22;
  v41 = v24;
  v42 = v15;
  v43 = v52;
  v44 = v32;
  v45 = v30;
  v46 = v27;
  v47 = v29;
  v48 = v31;
  v49 = v28;
  v50 = v17;
  v51 = v20;
  return sub_1ABB34634(&v38);
}

unint64_t sub_1ABC3CD80()
{
  result = qword_1EB4DB370;
  if (!qword_1EB4DB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB370);
  }

  return result;
}

uint64_t sub_1ABC3CDD4()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1ABC3CE20(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC3CF04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABC3CF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ABC3CFC4()
{
  result = qword_1EB4D5C08;
  if (!qword_1EB4D5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C08);
  }

  return result;
}

unint64_t sub_1ABC3D01C()
{
  result = qword_1EB4D5C10;
  if (!qword_1EB4D5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C10);
  }

  return result;
}

unint64_t sub_1ABC3D074()
{
  result = qword_1EB4D5C18;
  if (!qword_1EB4D5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C18);
  }

  return result;
}

_BYTE *sub_1ABC3D0C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABC3D1C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABC3CDD4();
  *a2 = result;
  return result;
}

unint64_t sub_1ABC3D1F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABC3CE20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABC3D224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC3D50C();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABC3D270(uint64_t a1)
{
  v2 = sub_1ABC3D560();

  return MEMORY[0x1EEE09858](a1, v2);
}

unint64_t sub_1ABC3D2C0()
{
  result = qword_1EB4CF1B0;
  if (!qword_1EB4CF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1B0);
  }

  return result;
}

unint64_t sub_1ABC3D318()
{
  result = qword_1EB4D5C20;
  if (!qword_1EB4D5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C20);
  }

  return result;
}

uint64_t sub_1ABC3D36C(uint64_t a1)
{
  v2 = sub_1ABC3D2C0();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABC3D3B8(uint64_t a1)
{
  v2 = sub_1ABC3D2C0();

  return MEMORY[0x1EEE09A88](a1, v2);
}

unint64_t sub_1ABC3D408()
{
  result = qword_1EB4CF1C8;
  if (!qword_1EB4CF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1C8);
  }

  return result;
}

unint64_t sub_1ABC3D460()
{
  result = qword_1EB4CF1C0;
  if (!qword_1EB4CF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1C0);
  }

  return result;
}

unint64_t sub_1ABC3D4B8()
{
  result = qword_1EB4CF1D0;
  if (!qword_1EB4CF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1D0);
  }

  return result;
}

unint64_t sub_1ABC3D50C()
{
  result = qword_1EB4CF1A8;
  if (!qword_1EB4CF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1A8);
  }

  return result;
}

unint64_t sub_1ABC3D560()
{
  result = qword_1EB4CF1D8;
  if (!qword_1EB4CF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1D8);
  }

  return result;
}

__n128 sub_1ABC3D5B8@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 8))(&v29);
  v19 = v29;
  v4 = *(a1 + 16);
  v5 = sub_1ABA7BE8C();
  v6(v5);
  v7 = *(a1 + 24);
  v8 = sub_1ABA7BE8C();
  v9(v8);
  v10 = *(a1 + 32);
  v11 = sub_1ABA7BE8C();
  v12(v11);
  v13 = *(a1 + 40);
  v14 = sub_1ABA7BE8C();
  v16 = v15(v14);
  *a2 = v19;
  *(a2 + 8) = v25;
  *(a2 + 24) = v26;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v24;
  result = v20;
  *(a2 + 56) = v20;
  *(a2 + 72) = v21;
  *(a2 + 80) = v22;
  *(a2 + 88) = v23;
  *(a2 + 96) = v16;
  *(a2 + 104) = v18;
  return result;
}

BOOL sub_1ABC3D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6(&v14, AssociatedTypeWitness, a5);
  v8 = v14;
  v6(&v13, AssociatedTypeWitness, a5);
  if (v8 < v13)
  {
    return 1;
  }

  v6(&v14, AssociatedTypeWitness, a5);
  v10 = v14;
  v6(&v13, AssociatedTypeWitness, a5);
  if (v10 != v13)
  {
    return 0;
  }

  v11 = *(a5 + 24);
  v11(&v14, AssociatedTypeWitness, a5);
  v12 = v14;
  v11(&v13, AssociatedTypeWitness, a5);
  return v12 < v13;
}

uint64_t Fact.Object.asString.getter(uint64_t a1)
{
  v2 = sub_1ABA7BB64(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v9 = (v8 - v7);
  (*(v4 + 16))(v8 - v7);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v4 + 8))(v9, a1);
    return 0;
  }

  else
  {
    result = *v9;
    v11 = v9[1];
  }

  return result;
}

uint64_t Fact.Object.asEntityIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1ABA7BB64(a1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v10 = (v9 - v8);
  (*(v5 + 16))(v9 - v8);
  sub_1ABA7ECFC();
  result = swift_getEnumCaseMultiPayload();
  v12 = result;
  if (result == 2)
  {
    v16 = *v10;
  }

  else
  {
    v13 = *(v5 + 8);
    v14 = sub_1ABA7ECFC();
    result = v15(v14);
    v16 = 0;
  }

  *a2 = v16;
  *(a2 + 8) = v12 != 2;
  return result;
}

uint64_t Fact.Object.asSubentity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1ABA7BB64(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  (*(v6 + 16))(v10 - v9);
  sub_1ABA7ECFC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(a1 + 16);
    (*(*(v12 - 8) + 32))(a2, v11, v12);
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v16 = *(v6 + 8);
    v17 = sub_1ABA7ECFC();
    v18(v17);
    v15 = *(a1 + 16);
    v13 = a2;
    v14 = 1;
  }

  return sub_1ABA7B9B4(v13, v14, 1, v15);
}

uint64_t sub_1ABC3DC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(*(a2 + 16) - 8) + 16))(a3, a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1ABC3DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  swift_storeEnumTagMultiPayload();
}

uint64_t Fact.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t Fact.object.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Fact.Object();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_1ABC3DDD4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC3DE24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for Fact.Object();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC3DEA4(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = v4 + (((*(v3 + 80) & 0xF8) + 41) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v8 = 8 * v7;
  if (v7 > 3)
  {
    goto LABEL_10;
  }

  v10 = (a2 - 0x7FFFFFFF + ~(-1 << v8)) >> v8;
  if (v10 > 0xFFFE)
  {
    v9 = *(a1 + v7);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v10 <= 0xFE)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
LABEL_5:
    v5 = *(a1 + 1);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

LABEL_19:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v11) ^ 0x80000000;
}

void sub_1ABC3E010(char *a1, int a2, int a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = v7 + (((*(v6 + 80) & 0xF8) + 41) & ~(*(v6 + 80) & 0xF8) & 0x1F8) + 1;
  v9 = 8 * v8;
  if (a3 < 0)
  {
    if (v8 <= 3)
    {
      v11 = (a3 - 0x7FFFFFFF + ~(-1 << v9)) >> v9;
      if (v11 > 0xFFFE)
      {
        v10 = 4;
        if (a2 < 0)
        {
LABEL_17:
          v13 = a2 & 0x7FFFFFFF;
          if (v8 < 4)
          {
            v14 = (v13 >> v9) + 1;
            if (v8)
            {
              v15 = a2 & ~(-1 << v9);
              bzero(a1, v8);
              if (v8 == 3)
              {
                *a1 = v15;
                a1[2] = BYTE2(v15);
              }

              else if (v8 == 2)
              {
                *a1 = v15;
              }

              else
              {
                *a1 = v4;
              }
            }
          }

          else
          {
            bzero(a1, v8);
            *a1 = v13;
            v14 = 1;
          }

          switch(v10)
          {
            case 1:
              a1[v8] = v14;
              break;
            case 2:
              *&a1[v8] = v14;
              break;
            case 3:
              goto LABEL_39;
            case 4:
              *&a1[v8] = v14;
              break;
            default:
              return;
          }

          return;
        }
      }

      else
      {
        if (v11 < 0xFF)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }

        if (a2 < 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v10 = 1;
      if (a2 < 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v10 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }
  }

  switch(v10)
  {
    case 1:
      a1[v8] = 0;
      if (a2)
      {
        goto LABEL_29;
      }

      return;
    case 2:
      *&a1[v8] = 0;
      goto LABEL_28;
    case 3:
LABEL_39:
      __break(1u);
      return;
    case 4:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        *(a1 + 1) = (a2 - 1);
      }

      break;
  }
}

uint64_t sub_1ABC3E238(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC3E2B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1ABC3E3D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1ABC3E59C()
{
  result = sub_1ABF23C04();
  qword_1EB4D5C28 = result;
  unk_1EB4D5C30 = v1;
  return result;
}

uint64_t static GDFeatureKey.separator.getter()
{
  if (qword_1EB4D0380 != -1)
  {
    sub_1ABA8F3E4();
  }

  v0 = qword_1EB4D5C28;

  return v0;
}

void __swiftcall GDFeatureKey.init(string:)(GDFeatureKey_optional *__return_ptr retstr, Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = objc_autoreleasePoolPush();
  v18 = countAndFlagsBits;
  v19 = object;
  if (qword_1EB4D0380 != -1)
  {
    sub_1ABA8F3E4();
  }

  v16 = qword_1EB4D5C28;
  v17 = unk_1EB4D5C30;
  sub_1ABAE28EC();
  v5 = sub_1ABF24884();

  objc_autoreleasePoolPop(v4);
  v6 = v5[2];
  if (v6 > 1)
  {
    v8 = v5[4];
    v7 = v5[5];
    v10 = v5[6];
    v9 = v5[7];
    if (v6 == 2)
    {
      v11 = 0;
    }

    else
    {
      v12 = v5[8];
      v11 = v5[9];
    }

    v13 = sub_1ABF23BD4();

    v14 = sub_1ABF23BD4();

    if (v11)
    {
      v15 = sub_1ABF23BD4();
    }

    else
    {
      v15 = 0;
    }

    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithViewName:v13 featureName:v14 subidentifierName:{v15, v16, v17, v18, v19}];
  }

  else
  {
  }
}

Swift::Bool __swiftcall GDFeatureKey.isSubidentifierOf(parent:)(GDFeatureKey parent)
{
  isa = parent.super.isa;
  sub_1ABC3E97C(parent.super.isa);
  if (v3)
  {

    return 0;
  }

  sub_1ABC3E97C(v1);
  if (!v5)
  {
    return 0;
  }

  v6 = [v1 viewName];
  v7 = sub_1ABF23C04();
  v9 = v8;

  v10 = [(objc_class *)isa viewName];
  v11 = sub_1ABF23C04();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_1ABF25054();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [v1 featureName];
  v17 = sub_1ABF23C04();
  v19 = v18;

  v20 = [(objc_class *)isa featureName];
  v21 = sub_1ABF23C04();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {

    return 1;
  }

  else
  {
    v25 = sub_1ABF25054();

    return v25 & 1;
  }
}

uint64_t sub_1ABC3E97C(void *a1)
{
  v1 = [a1 subidentifierName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABC3E9F0()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4CF210);
  sub_1ABA7AA24(v0, qword_1EB4CF210);
  return sub_1ABF22CE4();
}

void sub_1ABC3EA50()
{
  sub_1ABA7BCA8();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABAA4E50(v17, v18, v19, v20, v21, v22, v23, v24, v37);
  v25 = v3[1];
  v38 = *v3;
  v39 = v25;
  v27 = v3[2];
  v26 = v3[3];
  v28 = qword_1EB4CF208;

  if (v28 != -1)
  {
    sub_1ABA7D854();
  }

  v29 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v29, qword_1EB4CF210);
  v30 = sub_1ABF22D14();
  v47 = v30;
  v48 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v46);
  sub_1ABA7F2F8();
  v44 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69A0130];
  v42 = v27;
  v43 = v26;
  v31 = sub_1ABF22424();
  v32 = MEMORY[0x1E699FE60];
  v50 = v31;
  v51 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v49);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v42);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v49);
  v47 = v30;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA80B5C();
  v44 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69A0130];
  v42 = v38;
  v43 = v39;
  v50 = v31;
  v51 = v32;
  sub_1ABA93DC0(v49);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v42);
  sub_1ABA84B54(v46);
  sub_1ABA8F404();
  sub_1ABAB47C4(v33, &qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABF225A4();
  v34 = *(v7 + 8);
  v34(v12, v4);
  sub_1ABA84B54(v49);
  sub_1ABA8E954();
  sub_1ABAB47C4(v35, &qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA9A480();
  sub_1ABF22754();
  v34(v15, v4);
  sub_1ABC3ED38(&unk_1ABF3A620, v40);
  v36 = sub_1ABAA5360();
  (v34)(v36);
  sub_1ABA7BC90();
}

uint64_t sub_1ABC3ED38(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D5C48, &qword_1ABF4E1A8);
  sub_1ABF22464();
  if (!v2)
  {
    if (v6 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      sub_1ABAFF390(0, &qword_1EB4CF7B8, 0x1E696ACD0);
      sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
      sub_1ABB0DBF0(v5, v6);
      a2 = sub_1ABF246B4();
      sub_1ABAC9310(v5, v6);
      sub_1ABAC9310(v5, v6);
    }
  }

  return a2;
}

void sub_1ABC3EE80()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v37 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v2 = sub_1ABA7BB64(v37);
  v36 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8E270(v8, v9, v10, v11, v12, v13, v14, v15, v34);
  v38 = v16;
  v49 = v17;
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  if (qword_1EB4CF208 != -1)
  {
    sub_1ABA7D854();
  }

  v20 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v20, qword_1EB4CF210);
  v21 = sub_1ABF22D14();
  v22 = MEMORY[0x1E69A0050];
  v44 = v21;
  v45 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v43);
  sub_1ABA7F2F8();
  v23 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69A0130];
  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69A0130];
  v39 = v18;
  v40 = v19;
  v25 = sub_1ABF22424();
  v26 = MEMORY[0x1E699FE60];
  v47 = v25;
  v48 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v46);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v39);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v46);
  v44 = v21;
  v45 = v22;
  sub_1ABA93DC0(v43);
  sub_1ABA80B5C();
  v41 = v23;
  v42 = v24;
  v39 = v38;
  v40 = v49;
  v47 = v25;
  v48 = v26;
  sub_1ABA93DC0(v46);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v39);
  sub_1ABA84B54(v43);
  sub_1ABA8F404();
  sub_1ABAB47C4(v27, v28, v29);
  sub_1ABF225A4();
  v30 = *(v36 + 8);
  v31 = sub_1ABA9EE9C();
  v30(v31);
  sub_1ABA84B54(v46);
  v44 = v21;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA818AC();
  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69A0130];
  v39 = 0;
  v40 = 0xE000000000000000;
  v47 = v25;
  v48 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v46);
  sub_1ABA9357C();
  sub_1ABF22B04();
  sub_1ABB6EEA4(&v39);
  sub_1ABA94A5C();
  sub_1ABF225A4();
  (v30)(v35, v37);
  sub_1ABA84B54(v46);
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABAD219C(&qword_1EB4D5C38, &qword_1ABF4E198);
  sub_1ABA9080C();
  v33 = sub_1ABA9EE9C();
  v30(v33);
  sub_1ABA99430();
  sub_1ABA7BC90();
}

void sub_1ABC3F284()
{
  sub_1ABA7BCA8();
  v46 = v0;
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA88E50();
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA88E50();
  v45 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABAA4E50(v17, v18, v19, v20, v21, v22, v23, v24, v41);
  v25 = v2[1];
  v42 = *v2;
  v27 = v2[2];
  v26 = v2[3];
  v28 = v2[4];
  v29 = v2[5];
  v43 = v28;
  v30 = qword_1EB4CF208;

  if (v30 != -1)
  {
    sub_1ABA7D854();
  }

  v31 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v31, qword_1EB4CF210);
  v32 = sub_1ABF22D14();
  v52 = v32;
  v53 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v51);
  sub_1ABA7F2F8();
  v49 = MEMORY[0x1E69E6158];
  v50 = MEMORY[0x1E69A0130];
  v47 = v27;
  v48 = v26;
  v33 = sub_1ABF22424();
  v55 = v33;
  v56 = MEMORY[0x1E699FE60];
  v34 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v54);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v47);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v54);
  v52 = v32;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA80B5C();
  v49 = MEMORY[0x1E69E6158];
  v50 = MEMORY[0x1E69A0130];
  v47 = v42;
  v48 = v25;
  v55 = v33;
  v56 = v34;
  sub_1ABA93DC0(v54);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v47);
  sub_1ABA84B54(v51);
  sub_1ABA8F404();
  sub_1ABAB47C4(v35, v36, v37);
  sub_1ABF225A4();
  v38 = *(v6 + 8);
  v38(v11, v3);
  sub_1ABA84B54(v54);
  v52 = v32;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA818AC();
  v49 = MEMORY[0x1E69E6158];
  v50 = MEMORY[0x1E69A0130];
  v47 = v43;
  v48 = v29;
  v55 = v33;
  v56 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v54);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v47);
  sub_1ABA94A5C();
  sub_1ABF225A4();
  v38(v44, v3);
  sub_1ABA84B54(v54);
  sub_1ABA8E954();
  sub_1ABAB47C4(v39, &qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA9A480();
  sub_1ABF22754();
  v38(v45, v3);
  sub_1ABC3ED38(v32, v46);
  v40 = sub_1ABAA5360();
  (v38)(v40);
  sub_1ABA7BC90();
}

void sub_1ABC3F664()
{
  sub_1ABA7BCA8();
  v52 = v0;
  v53 = v1;
  v51 = v2;
  v46 = v3;
  v5 = v4;
  v49 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v6 = sub_1ABA7BB64(v49);
  v48 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7AC18();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA8E270(v15, v16, v17, v18, v19, v20, v21, v22, v43);
  v65 = v23;
  v54 = v24;
  v26 = *(v5 + 16);
  v25 = *(v5 + 24);
  if (qword_1EB4CF208 != -1)
  {
    sub_1ABA7D854();
  }

  v27 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v27, qword_1EB4CF210);
  v28 = sub_1ABF22D14();
  v60 = v28;
  v61 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v59);
  sub_1ABA7F2F8();
  v29 = MEMORY[0x1E69E6158];
  v30 = MEMORY[0x1E69A0130];
  v57 = MEMORY[0x1E69E6158];
  v58 = MEMORY[0x1E69A0130];
  v55 = v26;
  v56 = v25;
  v44 = v25;
  v45 = v26;
  v31 = sub_1ABF22424();
  v32 = MEMORY[0x1E699FE60];
  v63 = v31;
  v64 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v62);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v55);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v62);
  v60 = v28;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA80B5C();
  v57 = v29;
  v58 = v30;
  v55 = v65;
  v56 = v54;
  v63 = v31;
  v64 = v32;
  sub_1ABA93DC0(v62);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v55);
  sub_1ABA84B54(v59);
  sub_1ABA8F404();
  v43 = sub_1ABAB47C4(v33, v34, v35);
  sub_1ABF225A4();
  v36 = *(v48 + 8);
  v36(v12, v49);
  sub_1ABA84B54(v62);
  v55 = v46;
  v60 = v28;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA818AC();
  v63 = v31;
  v64 = v32;
  sub_1ABA93DC0(v62);
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA7E760();
  sub_1ABAB47C4(v37, v38, &unk_1ABF3A8C0);
  sub_1ABF23EE4();
  sub_1ABA94A5C();
  v39 = v50;
  sub_1ABF225A4();
  v36(v47, v49);
  sub_1ABA84B54(v62);
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  *(&v43 - 6) = v39;
  *(&v43 - 5) = v65;
  v41 = v45;
  *(&v43 - 4) = v54;
  *(&v43 - 3) = v41;
  *(&v43 - 2) = v44;
  sub_1ABAD219C(&qword_1EB4D5C38, &qword_1ABF4E198);
  sub_1ABA9080C();
  v42 = sub_1ABA9EE9C();
  (v36)(v42);
  sub_1ABA99430();
  sub_1ABA7BC90();
}

void sub_1ABC3FAA4()
{
  sub_1ABA7BCA8();
  v12[2] = v0;
  v13 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v1 = sub_1ABA7BB64(v13);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v12 - v6;
  if (qword_1EB4CF208 != -1)
  {
    sub_1ABA7D854();
  }

  v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v8, qword_1EB4CF210);
  v14[3] = sub_1ABF22D14();
  v14[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v14);
  sub_1ABA818AC();
  v15[3] = sub_1ABF22424();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v15);
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA7E760();
  sub_1ABAB47C4(v9, v10, &unk_1ABF3A8C0);
  sub_1ABF23EE4();
  sub_1ABA84B54(v14);
  sub_1ABF22CA4();
  sub_1ABA84B54(v15);
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  v12[-2] = v7;
  sub_1ABAD219C(&qword_1EB4D5C38, &qword_1ABF4E198);
  sub_1ABF22464();
  (*(v3 + 8))(v7, v13);
  sub_1ABA99430();
  sub_1ABA7BC90();
}

double sub_1ABC3FD24@<D0>(sqlite3_stmt **a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  v3 = sub_1ABF222A4();
  if (!v1)
  {
    if (v3)
    {
      sub_1ABB36E48(a1);
    }

    else
    {
      result = 0.0;
      *a1 = xmmword_1ABF4E150;
    }
  }

  return result;
}

uint64_t sub_1ABC3FE08@<X0>(void *a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  result = sub_1ABF22294();
  if (!v1)
  {
    v4 = result;
    v9 = MEMORY[0x1E69E7CC8];
    result = sub_1ABAAB7C8(result);
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        *a1 = v9;
        return result;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1AC5AA170](i, v4);
        v7 = result;
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = v7;
      sub_1ABC3FF7C(&v9, &v8);
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1ABC3FF7C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1ABB32E40();
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_1ABB32E40();
    v10 = v9;
    v12 = v11;
    sub_1ABB32E40();
    v14 = v13;
    sub_1ABB33898(0x65756C6176, 0xE500000000000000, v16, v17, v18, v19, v20, v21, v34, v15, v37, v40, v42, v43, v44, v45, v46, v47, v48, v10);
    v22 = v38;
    v23 = v41;
    sub_1ABAFF390(0, &qword_1EB4CF7B8, 0x1E696ACD0);
    sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
    v24 = sub_1ABF246B4();
    v42 = v7;
    v43 = v8;
    v44 = v49;
    v45 = v12;
    v46 = v36;
    v47 = v14;
    if (v24)
    {
      v25 = v24;
      v26 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1ABAFB3A0(v25, &v42, isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32, v35, v36, *a1, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      sub_1ABA96210(v22, v23);

      sub_1ABBA1A84(&v42);
      *a1 = v39;
    }

    else
    {
      v33 = sub_1ABC25BFC(&v42);
      sub_1ABA96210(v38, v41);
      sub_1ABBA1A84(&v42);
    }
  }
}

uint64_t sub_1ABC401A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  *&v59 = a3;
  *(&v59 + 1) = a4;
  v58 = a2;
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  result = sub_1ABF22294();
  if (!v5)
  {
    v9 = result;
    v51 = a1;
    v10 = 0;
    v56 = result & 0xC000000000000001;
    v57 = sub_1ABAAB7C8(result);
    v55 = v9 & 0xFFFFFFFFFFFFFF8;
    v11 = MEMORY[0x1E69E7CC8];
    v53 = v9;
    v54 = "Box to be nil at this point";
    v50 = a5;
    while (1)
    {
      if (v57 == v10)
      {

        *a5 = v11;
        return result;
      }

      if (v56)
      {
        MEMORY[0x1AC5AA170](v10, v9);
      }

      else
      {
        if (v10 >= *(v55 + 16))
        {
          goto LABEL_26;
        }

        v12 = *(v9 + 8 * v10 + 32);
      }

      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_1ABB32E40();
      v14 = v13;
      v16 = v15;
      sub_1ABB33898(0x65756C6176, 0xE500000000000000, v17, v18, v19, v20, v21, v22, v49, v50, v51, v10 + 1, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1));
      v24 = v60[0];
      v23 = v60[1];
      sub_1ABAFF390(0, &qword_1EB4CF7B8, 0x1E696ACD0);
      sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
      v25 = sub_1ABF246B4();
      *&v61 = v51;
      *(&v61 + 1) = v58;
      v62 = v59;
      *&v63 = v14;
      *(&v63 + 1) = v16;
      if (v25)
      {
        v49 = v25;

        swift_isUniquelyReferenced_nonNull_native();
        v64 = v11;
        v29 = sub_1ABAFF5BC(&v61);
        if (__OFADD__(v11[2], (v30 & 1) == 0))
        {
          goto LABEL_27;
        }

        v31 = v29;
        v32 = v30;
        sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
        if (sub_1ABF24C64())
        {
          v33 = sub_1ABAFF5BC(&v61);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_29;
          }

          v31 = v33;
        }

        v11 = v64;
        if (v32)
        {
          v35 = v64[7];
          v36 = *(v35 + 8 * v31);
          *(v35 + 8 * v31) = v49;
          v37 = v49;
        }

        else
        {
          v64[(v31 >> 6) + 8] |= 1 << v31;
          v43 = (v11[6] + 48 * v31);
          v44 = v61;
          v45 = v63;
          v43[1] = v62;
          v43[2] = v45;
          *v43 = v44;
          *(v11[7] + 8 * v31) = v49;
          v46 = v11[2];
          v47 = __OFADD__(v46, 1);
          v48 = v46 + 1;
          if (v47)
          {
            goto LABEL_28;
          }

          v37 = v49;
          v11[2] = v48;
          sub_1ABAFF334(&v61, v60);
        }

        v9 = v53;
        sub_1ABA96210(v24, v23);
        sub_1ABBA1A84(&v61);

        a5 = v50;
        v10 = v52;
      }

      else
      {

        v26 = sub_1ABAFF5BC(&v61);
        v28 = v27;
        sub_1ABBA1A84(&v61);
        if (v28)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v60[0] = v11;
          v38 = v11[3];
          sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
          sub_1ABF24C64();
          v11 = v60[0];
          v39 = (*(v60[0] + 48) + 48 * v26);
          v40 = v39[1];
          v41 = v39[3];
          v42 = v39[5];

          sub_1ABBA0480();
          sub_1ABF24C84();

          sub_1ABA96210(v24, v23);
          a5 = v50;
          v10 = v52;
        }

        else
        {

          sub_1ABA96210(v24, v23);
          ++v10;
          a5 = v50;
        }

        v9 = v53;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_29:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t Features.FeatureFlag.rawValue.getter()
{
  v2 = *v0;
  Features.FeatureFlag.feature.getter();

  return sub_1ABF24AE4();
}

IntelligencePlatform::Features::FeatureFlag_optional __swiftcall Features.FeatureFlag.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v5 = v1;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  v7 = v7 && v6 == object;
  if (v7)
  {
    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 0;
LABEL_9:

    goto LABEL_10;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v10 == object)
  {
    v8 = 1;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 1;
    goto LABEL_9;
  }

  v8 = 2;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v12 == object)
  {
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 2;
    goto LABEL_9;
  }

  v8 = 3;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v14 == object)
  {
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 3;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v16 == object)
  {
    v8 = 4;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 4;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v18 == object)
  {
    v8 = 5;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 5;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v20 == object)
  {
    v8 = 6;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 6;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v22 == object)
  {
    v8 = 7;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 7;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v24 == object)
  {
    v8 = 8;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 8;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v26 == object)
  {
    v8 = 9;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 9;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v28 == object)
  {
    v8 = 10;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 10;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v30 == object)
  {
    v8 = 11;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 11;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v32 == object)
  {
    v8 = 12;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 12;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v34 == object)
  {
    v8 = 13;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 13;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v36 == object)
  {
    v8 = 14;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 14;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v38 == object)
  {
    v8 = 15;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 15;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v40 == object)
  {
    v8 = 16;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 16;
    goto LABEL_9;
  }

  v8 = 17;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v42 == object)
  {
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 17;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v44 == object)
  {
    v8 = 18;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 18;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v46 == object)
  {
    v8 = 19;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 19;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v48 == object)
  {
    v8 = 20;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 20;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v50 == object)
  {
    v8 = 21;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 21;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v52 == object)
  {
    v8 = 22;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 22;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v54 == object)
  {
    v8 = 23;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 23;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v56 == object)
  {
    v8 = 24;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 24;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v58 == object)
  {
    v8 = 25;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 25;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v60 == object)
  {
    v8 = 26;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 26;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v7 && v62 == object)
  {
    v8 = 27;
    goto LABEL_8;
  }

  sub_1ABA8F348();
  sub_1ABA7F240();
  if (v2)
  {
    v8 = 27;
    goto LABEL_9;
  }

  v8 = 28;
  if (sub_1ABF24AE4() == countAndFlagsBits && v64 == object)
  {
    goto LABEL_8;
  }

  v66 = sub_1ABA8F348();

  if (v66)
  {
    v8 = 28;
  }

  else
  {
    v8 = 29;
  }

LABEL_10:
  *v5 = v8;
  return result;
}

uint64_t sub_1ABC40ECC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACF18C();
}

unint64_t sub_1ABC40EDC()
{
  result = qword_1EB4D5C50;
  if (!qword_1EB4D5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C50);
  }

  return result;
}

uint64_t sub_1ABC40F54@<X0>(uint64_t *a1@<X8>)
{
  result = Features.FeatureFlag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABC41030()
{
  result = qword_1EB4D5C58;
  if (!qword_1EB4D5C58)
  {
    sub_1ABAE2850(&unk_1EB4D5C60, &qword_1ABF4E2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features.FeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1ABC411E8()
{
  result = qword_1ED86E448;
  if (!qword_1ED86E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86E448);
  }

  return result;
}

void __swiftcall SubFeatureIndex.init(view:feature:subidentifier:)(IntelligencePlatform::SubFeatureIndex *__return_ptr retstr, Swift::String view, Swift::String feature, Swift::String subidentifier)
{
  retstr->view = view;
  retstr->feature = feature;
  retstr->subidentifier = subidentifier;
}

void FeatureView.allFeatures(matchingSubidentifiers:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1ABC3FAA4();
}

void __swiftcall FeatureIndex.add(subidentifier:)(IntelligencePlatform::SubFeatureIndex *__return_ptr retstr, Swift::String subidentifier)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  retstr->view._countAndFlagsBits = v4;
  retstr->view._object = v3;
  retstr->feature._countAndFlagsBits = v5;
  retstr->feature._object = v6;
  retstr->subidentifier = subidentifier;
}

uint64_t FeatureIndex.view.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t FeatureIndex.feature.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

IntelligencePlatform::FeatureIndex __swiftcall FeatureIndex.init(view:feature:)(Swift::String view, Swift::String feature)
{
  *v2 = view;
  v2[1] = feature;
  result.feature = feature;
  result.view = view;
  return result;
}

uint64_t FeatureIndex.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v6 = v0[1];

  sub_1ABA7F32C();
  v3 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v3);
  return v5;
}

uint64_t static FeatureIndex.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1ABF25054(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1ABA7D000();

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t sub_1ABC41414(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC414DC(char a1)
{
  if (a1)
  {
    return 0x65727574616566;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_1ABC41514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC41414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC4153C(uint64_t a1)
{
  v2 = sub_1ABC416FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC41578(uint64_t a1)
{
  v2 = sub_1ABC416FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FeatureIndex.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D5C70, &qword_1ABF4E3C0);
  sub_1ABA7BB64(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABC416FC();
  sub_1ABF252E4();
  sub_1ABA8C0B8();
  if (!v1)
  {
    sub_1ABA8E804();
    sub_1ABA8C0B8();
  }

  (*(v16 + 8))(v10, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC416FC()
{
  result = qword_1EB4D5C78;
  if (!qword_1EB4D5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C78);
  }

  return result;
}

uint64_t FeatureIndex.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABF23D34();
  sub_1ABA7E378();

  return sub_1ABF23D34();
}

uint64_t FeatureIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void FeatureIndex.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D5C80, &qword_1ABF4E3C8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC416FC();
  sub_1ABA7C230();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v14 = sub_1ABA90108();
    v16 = v15;
    sub_1ABA8E804();
    v17 = sub_1ABA90108();
    v19 = v18;
    v20 = *(v7 + 8);
    v22 = v17;
    v20(v12, v5);
    *v4 = v14;
    v4[1] = v16;
    v4[2] = v22;
    v4[3] = v19;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABC419C8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1ABF25234();
  FeatureIndex.hash(into:)();
  return sub_1ABF25294();
}

uint64_t SubFeatureIndex.view.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t SubFeatureIndex.feature.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t SubFeatureIndex.subidentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1ABA7D000();
}

uint64_t SubFeatureIndex.featureIndex.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SubFeatureIndex.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7 = *v0;
  v8 = v0[1];

  sub_1ABA7F32C();
  v5 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v5);
  sub_1ABA7F32C();
  MEMORY[0x1AC5A9410](v3, v4);
  return v7;
}

uint64_t static SubFeatureIndex.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  sub_1ABA7D000();

  return sub_1ABF25054();
}

uint64_t sub_1ABC41C6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E656469627573 && a2 == 0xED00007265696669)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABC41D84(char a1)
{
  if (!a1)
  {
    return 2003134838;
  }

  if (a1 == 1)
  {
    return 0x65727574616566;
  }

  return 0x746E656469627573;
}

uint64_t sub_1ABC41DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC41C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC41E10(uint64_t a1)
{
  v2 = sub_1ABC42004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC41E4C(uint64_t a1)
{
  v2 = sub_1ABC42004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SubFeatureIndex.encode(to:)()
{
  sub_1ABA7BCA8();
  v19 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D5C88, &qword_1ABF4E3D0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v18[3] = v0[3];
  v18[4] = v14;
  v15 = v0[4];
  v18[1] = v0[5];
  v18[2] = v15;
  v16 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABC42004();
  sub_1ABF252E4();
  v17 = v19;
  sub_1ABF24F34();
  if (!v17)
  {
    sub_1ABA8E804();
    sub_1ABA8C0B8();
    sub_1ABA8C0B8();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC42004()
{
  result = qword_1EB4D5C90;
  if (!qword_1EB4D5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C90);
  }

  return result;
}

uint64_t SubFeatureIndex.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1ABF23D34();
  sub_1ABA7E378();
  sub_1ABF23D34();

  return sub_1ABF23D34();
}

uint64_t SubFeatureIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void SubFeatureIndex.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D5C98, &qword_1ABF4E3D8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC42004();
  sub_1ABA7C230();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v14 = sub_1ABA90108();
    v26 = v15;
    sub_1ABA8E804();
    v24 = sub_1ABA90108();
    v25 = v16;
    v17 = sub_1ABF24E14();
    v19 = v18;
    v20 = v17;
    (*(v7 + 8))(v12, v5);
    v22 = v25;
    v21 = v26;
    *v4 = v14;
    v4[1] = v21;
    v4[2] = v24;
    v4[3] = v22;
    v4[4] = v20;
    v4[5] = v19;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABC42368()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  sub_1ABF25234();
  SubFeatureIndex.hash(into:)();
  return sub_1ABF25294();
}

MLFeatureValue_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeatureView.feature(forIndex:)(IntelligencePlatform::FeatureIndex forIndex)
{
  v1 = sub_1ABC42444(forIndex.view._countAndFlagsBits, sub_1ABC3EA50);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1ABC42444(__int128 *a1, uint64_t (*a2)(__int128 *, uint64_t, uint64_t))
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v9 = *a1;
  v10 = v4;
  v11 = v5;
  return a2(&v9, v6, v7);
}

MLFeatureValue_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeatureView.feature(forIndex:)(IntelligencePlatform::SubFeatureIndex *forIndex)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v6 = *forIndex;
  sub_1ABC3F284();
  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

void FeatureView.features(inIndex:matchingSubidentifiers:)(__int128 *a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  sub_1ABC3F664();
}

unint64_t sub_1ABC424F8()
{
  result = qword_1EB4CF660;
  if (!qword_1EB4CF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF660);
  }

  return result;
}

unint64_t sub_1ABC42550()
{
  result = qword_1ED86DB08;
  if (!qword_1ED86DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubFeatureIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC42784()
{
  result = qword_1EB4D5CA0;
  if (!qword_1EB4D5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CA0);
  }

  return result;
}

unint64_t sub_1ABC427DC()
{
  result = qword_1EB4D5CA8;
  if (!qword_1EB4D5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CA8);
  }

  return result;
}

unint64_t sub_1ABC42834()
{
  result = qword_1EB4D5CB0;
  if (!qword_1EB4D5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CB0);
  }

  return result;
}

unint64_t sub_1ABC4288C()
{
  result = qword_1EB4D5CB8;
  if (!qword_1EB4D5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CB8);
  }

  return result;
}

unint64_t sub_1ABC428E4()
{
  result = qword_1EB4D5CC0;
  if (!qword_1EB4D5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CC0);
  }

  return result;
}

unint64_t sub_1ABC4293C()
{
  result = qword_1EB4D5CC8;
  if (!qword_1EB4D5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CC8);
  }

  return result;
}

id FeedbackService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void FeedbackService.record<A>(feedback:for:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v48 = a2;
  v53[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1ABF21EB4();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = (*(a5 + 24))(a4, a5, v11);
  (*(a5 + 32))(a4, a5);
  v51 = v14;
  v47 = v5;
  v15 = *(v5 + OBJC_IVAR___GDFeedbackServiceInner_encoder);
  v53[0] = a1;
  v16 = *(a5 + 16);
  v17 = v52;
  v18 = sub_1ABF21B14();
  v52 = v17;
  if (v17)
  {

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED871B40);
    v21 = v52;
    v22 = v52;
    v23 = sub_1ABF237D4();
    v24 = sub_1ABF24664();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1ABA78000, v23, v24, "Failed to encode Feedback: %@", v25, 0xCu);
      sub_1ABB24B18(v26);
      MEMORY[0x1AC5AB8B0](v26, -1, -1);
      MEMORY[0x1AC5AB8B0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v29 = v13;
    v44 = v9;
    v45 = v18;
    v42 = *(v47 + OBJC_IVAR___GDFeedbackServiceInner_server);
    v47 = v19;
    v43 = sub_1ABF21DB4();
    v46 = sub_1ABF23BD4();

    if (v51)
    {
      v30 = sub_1ABF23BD4();
    }

    else
    {
      v30 = 0;
    }

    v31 = v50;
    if (v49)
    {
      v32 = 0;
    }

    else
    {
      v32 = v48;
    }

    sub_1ABF21E74();
    v33 = sub_1ABF21E34();
    (*(v31 + 8))(v29, v44);
    v34 = (*(a5 + 40))(a4, a5);
    v53[0] = 0;
    v35 = v43;
    v36 = v46;
    v37 = [v42 logWithFeedbackData:v43 type:v46 variant:v30 eventId:v32 withTimestamp:v33 shouldProcessImmediately:v34 & 1 error:v53];

    if (v37)
    {
      v38 = v53[0];
    }

    else
    {
      v39 = v53[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    sub_1ABA96210(v45, v47);
  }

  v40 = *MEMORY[0x1E69E9840];
}

id FeedbackService.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___GDFeedbackServiceInner_encoder;
  v4 = sub_1ABF21B34();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1ABF21B24();
  sub_1ABF21B04();
  *&v1[v3] = v7;
  v8 = [objc_allocWithZone(GDXPCFeedbackService) init];
  *&v1[OBJC_IVAR___GDFeedbackServiceInner_server] = v8;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t FeedbackService.objcRecord(feedback:)(uint64_t a1)
{
  swift_getObjectType();
  result = sub_1ABC433D8(a1);
  if (result)
  {
    v4 = result;
    v5 = v3;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    FeedbackService.record<A>(feedback:for:)(v4, 0, 0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FeedbackService.objcRecord(feedback:for:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  result = sub_1ABC433D8(a1);
  if (result)
  {
    v6 = result;
    v7 = v5;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    FeedbackService.record<A>(feedback:for:)(v6, a2, 0, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

id FeedbackService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1ABC4334C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackServiceNoOpServer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1ABC433A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackServiceNoOpServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABC433D8(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t FileLoader.data(forFile:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v60 = a3;
  v61 = a4;
  v58 = a1;
  v59 = a2;
  v56 = sub_1ABF217B4();
  v7 = sub_1ABA7BB64(v56);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1ABF21CF4();
  v13 = *(*(v66 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v66);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v65 = &v48 - v24;
  v62 = v4;
  v25 = *(v4 + 16);
  v51 = *(v25 + 16);
  if (v51)
  {
    v26 = 0;
    v53 = v25 + 32;
    v54 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
    v52 = (v23 + 16);
    v64 = (v23 + 8);
    v49 = (v9 + 8);
    v50 = (v23 + 32);
    v48 = v25;
    while (2)
    {
      if (v26 >= *(v25 + 16))
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v27 = v18;
      v63 = v6;
      v28 = *(v53 + 8 * v26++);
      (*v52)(v21, v62 + v54, v66);
      v29 = *(v28 + 16);

      v30 = 0;
      v31 = (v28 + 40);
      while (v29 != v30)
      {
        if (v30 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        ++v30;
        v32 = *(v31 - 1);
        v33 = *v31;

        sub_1ABF21C64();

        v31 += 2;
      }

      v34 = v66;
      (*v50)(v65, v21, v66);
      v35 = v57;
      sub_1ABF21C84();
      v18 = v27;
      sub_1ABF21C94();
      v36 = *v64;
      (*v64)(v35, v34);
      v37 = v63;
      v38 = sub_1ABF21D34();
      if (!v37)
      {
        v42 = v38;
        v44 = v27;
        v45 = v66;
        v36(v44, v66);
        v36(v65, v45);
        return v42;
      }

      v39 = v37;
      v40 = v55;
      sub_1ABF217A4();
      sub_1ABC43B3C();
      v41 = v56;
      v42 = sub_1ABF21AD4();

      (*v49)(v40, v41);
      if ((v42 & 1) == 0)
      {
        sub_1ABC43B94();
        swift_allocError();
        *v46 = v37;
        swift_willThrow();
        v47 = sub_1ABA7F34C();
        (v36)(v47);
        v36(v65, v37);
        return v42;
      }

      v6 = 0;

      v43 = sub_1ABA7F34C();
      (v36)(v43);
      result = (v36)(v65, v37);
      v25 = v48;
      if (v26 != v51)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}
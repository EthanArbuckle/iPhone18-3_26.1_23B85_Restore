id BalloonPlugin.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for BalloonPlugin);
  v5 = type metadata accessor for _ObjCBalloonPluginWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, type metadata accessor for BalloonPlugin);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for BalloonPlugin);
  return v7;
}

id sub_214553D10(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
  v5 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v5;
  *(v4 + 20) = *(a1 + 160);
  v6 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v6;
  v7 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v9 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v9;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214553D90(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
  v3 = *(a1 + 144);
  *(v2 + 8) = *(a1 + 128);
  *(v2 + 9) = v3;
  *(v2 + 20) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v4;
  v5 = *(a1 + 112);
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 7) = v5;
  v6 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v6;
  v7 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCBasicEmojiTapbackWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_214553E00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback;
  v3 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 112);
  v4 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 144);
  v26 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 128);
  v27 = v4;
  v5 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 48);
  v6 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 80);
  v22 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 64);
  v7 = v22;
  v23 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 80);
  v9 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 112);
  v24 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 96);
  v10 = v24;
  v25 = v9;
  v11 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 16);
  v19[0] = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback);
  v19[1] = v11;
  v12 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 48);
  v14 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback);
  v13 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 16);
  v20 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 32);
  v15 = v20;
  v21 = v12;
  v16 = *(v1 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 144);
  *(a1 + 128) = v26;
  *(a1 + 144) = v16;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v2 + 160);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 32) = v15;
  *(a1 + 48) = v5;
  return sub_2142E58CC(v19, v18);
}

uint64_t sub_214553FA8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback))
  {
    return 3006;
  }

  else
  {
    return 2006;
  }
}

uint64_t sub_214553FC8(uint64_t result)
{
  if (result == 3006)
  {
    v1 = 3006;
  }

  else
  {
    v1 = 0;
  }

  if (result != 2006)
  {
    return v1;
  }

  return result;
}

uint64_t sub_214553FF4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 16);

  return v1;
}

id sub_214554130()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback;
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 144);
  if (v2 == 1)
  {
    return 0;
  }

  v5 = *(v1 + 128);
  v4 = *(v1 + 136);
  v6 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v8 = v5;
  *(v8 + 1) = v4;
  *(v8 + 2) = v2;
  v9.receiver = v7;
  v9.super_class = v6;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_2145541C0(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v4 = *a1;
  *(v4 + 8) = *(a1 + 8);
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214554280()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 152);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback + 160);

  return v1;
}

id sub_214554394()
{
  v1 = *(v0 + 144);
  v17[8] = *(v0 + 128);
  v17[9] = v1;
  v18 = *(v0 + 160);
  v2 = *(v0 + 80);
  v17[4] = *(v0 + 64);
  v17[5] = v2;
  v3 = *(v0 + 112);
  v17[6] = *(v0 + 96);
  v17[7] = v3;
  v4 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v4;
  v5 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v5;
  v6 = type metadata accessor for _ObjCBasicEmojiTapbackWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
  v9 = *(v0 + 144);
  *(v8 + 8) = *(v0 + 128);
  *(v8 + 9) = v9;
  *(v8 + 20) = *(v0 + 160);
  v10 = *(v0 + 80);
  *(v8 + 4) = *(v0 + 64);
  *(v8 + 5) = v10;
  v11 = *(v0 + 112);
  *(v8 + 6) = *(v0 + 96);
  *(v8 + 7) = v11;
  v12 = *(v0 + 16);
  *v8 = *v0;
  *(v8 + 1) = v12;
  v13 = *(v0 + 48);
  *(v8 + 2) = *(v0 + 32);
  *(v8 + 3) = v13;
  sub_2142E58CC(v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_214554460()
{
  v1 = v0[9];
  v28 = v0[8];
  v29 = v1;
  v30 = *(v0 + 20);
  v2 = v0[5];
  v24 = v0[4];
  v25 = v2;
  v3 = v0[7];
  v26 = v0[6];
  v27 = v3;
  v4 = v0[1];
  v20 = *v0;
  v21 = v4;
  v5 = v0[3];
  v22 = v0[2];
  v23 = v5;
  v6 = type metadata accessor for _ObjCBasicEmojiTapbackWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
  v10 = v21;
  v9 = v22;
  *v8 = v20;
  *(v8 + 1) = v10;
  *(v8 + 2) = v9;
  v11 = v26;
  v13 = v23;
  v12 = v24;
  *(v8 + 5) = v25;
  *(v8 + 6) = v11;
  *(v8 + 3) = v13;
  *(v8 + 4) = v12;
  v15 = v28;
  v14 = v29;
  v16 = v27;
  *(v8 + 20) = v30;
  *(v8 + 8) = v15;
  *(v8 + 9) = v14;
  *(v8 + 7) = v16;
  sub_2142E58CC(&v20, v19);
  v18.receiver = v7;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_214554540(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[*a2];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  *(v6 + 89) = *(a1 + 89);
  v8 = a1[5];
  *(v6 + 4) = a1[4];
  *(v6 + 5) = v8;
  v9 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v9;
  v11.receiver = v5;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145545D8(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v5;
  *(v4 + 89) = *(a1 + 89);
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v7;
  v9.receiver = v3;
  v9.super_class = a3();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_214554638@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 80);
  v13 = *(v1 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 64);
  v2 = v13;
  v14[0] = v3;
  *(v14 + 9) = *(v1 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 89);
  v4 = *(v14 + 9);
  v5 = *(v1 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 16);
  v10[0] = *(v1 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 48);
  v11 = *(v1 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  *(a1 + 89) = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  return sub_2142E5B20(v10, &v9);
}

uint64_t sub_21455476C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 8);

  return v1;
}

id BasicMessage.bridgedToObjectiveC.getter()
{
  v1 = v0[5];
  v13[4] = v0[4];
  v14[0] = v1;
  *(v14 + 9) = *(v0 + 89);
  v2 = v0[1];
  v13[0] = *v0;
  v13[1] = v2;
  v3 = v0[3];
  v13[2] = v0[2];
  v13[3] = v3;
  v4 = type metadata accessor for _ObjCBasicMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorBasicMessage_basicMessage];
  v7 = v0[5];
  *(v6 + 4) = v0[4];
  *(v6 + 5) = v7;
  *(v6 + 89) = *(v0 + 89);
  v8 = v0[1];
  *v6 = *v0;
  *(v6 + 1) = v8;
  v9 = v0[3];
  *(v6 + 2) = v0[2];
  *(v6 + 3) = v9;
  sub_2142E5B20(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145549DC()
{
  v1 = v0[5];
  v19 = v0[4];
  v20[0] = v1;
  *(v20 + 9) = *(v0 + 89);
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  v4 = type metadata accessor for _ObjCBasicMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorBasicMessage_basicMessage];
  v8 = v16;
  v7 = v17;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v10 = v19;
  v9 = v20[0];
  v11 = v18;
  *(v6 + 89) = *(v20 + 9);
  *(v6 + 4) = v10;
  *(v6 + 5) = v9;
  *(v6 + 3) = v11;
  sub_2142E5B20(&v15, v14);
  v13.receiver = v5;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214554A90(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
  v5 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v5;
  v6 = a1[7];
  *(v4 + 6) = a1[6];
  *(v4 + 7) = v6;
  v7 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v7;
  v8 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v8;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214554B00(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
  v3 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v3;
  v4 = a1[7];
  *(v2 + 6) = a1[6];
  *(v2 + 7) = v4;
  v5 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v5;
  v6 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _ObjCBasicTapBackWrapper();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214554B60@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 80);
  v14 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 64);
  v2 = v14;
  v15 = v3;
  v4 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 112);
  v16 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 96);
  v17 = v4;
  v6 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 16);
  v11[0] = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack);
  v5 = v11[0];
  v11[1] = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 48);
  v12 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 32);
  v7 = v12;
  v13 = v8;
  a1[6] = v16;
  a1[7] = v4;
  a1[4] = v2;
  a1[5] = v3;
  a1[2] = v7;
  a1[3] = v8;
  *a1 = v5;
  a1[1] = v6;
  return sub_2142E5C78(v11, &v10);
}

uint64_t sub_214554CC4()
{
  result = sub_214591CF4(qword_214760440[*(v0 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack)]);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214554D24()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 16);

  return v1;
}

id sub_214554E48()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack;
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 104);
  if (v2 == 1)
  {
    return 0;
  }

  v5 = *(v1 + 88);
  v4 = *(v1 + 96);
  v6 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v8 = v5;
  *(v8 + 1) = v4;
  *(v8 + 2) = v2;
  v9.receiver = v7;
  v9.super_class = v6;

  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_214554F38()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack + 120);

  return v1;
}

id BasicTapBack.bridgedToObjectiveC.getter()
{
  v1 = v0[5];
  v15[4] = v0[4];
  v15[5] = v1;
  v2 = v0[7];
  v15[6] = v0[6];
  v15[7] = v2;
  v3 = v0[1];
  v15[0] = *v0;
  v15[1] = v3;
  v4 = v0[3];
  v15[2] = v0[2];
  v15[3] = v4;
  v5 = type metadata accessor for _ObjCBasicTapBackWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
  v8 = v0[5];
  *(v7 + 4) = v0[4];
  *(v7 + 5) = v8;
  v9 = v0[7];
  *(v7 + 6) = v0[6];
  *(v7 + 7) = v9;
  v10 = v0[1];
  *v7 = *v0;
  *(v7 + 1) = v10;
  v11 = v0[3];
  *(v7 + 2) = v0[2];
  *(v7 + 3) = v11;
  sub_2142E5C78(v15, v14);
  v13.receiver = v6;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_2145550E4()
{
  v1 = v0[5];
  v21 = v0[4];
  v22 = v1;
  v2 = v0[7];
  v23 = v0[6];
  v24 = v2;
  v3 = v0[1];
  v17 = *v0;
  v18 = v3;
  v4 = v0[3];
  v19 = v0[2];
  v20 = v4;
  v5 = type metadata accessor for _ObjCBasicTapBackWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
  v8 = v20;
  v10 = v17;
  v9 = v18;
  *(v7 + 2) = v19;
  *(v7 + 3) = v8;
  *v7 = v10;
  *(v7 + 1) = v9;
  v11 = v24;
  v13 = v21;
  v12 = v22;
  *(v7 + 6) = v23;
  *(v7 + 7) = v11;
  *(v7 + 4) = v13;
  *(v7 + 5) = v12;
  sub_2142E5C78(&v17, v16);
  v15.receiver = v6;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_21455538C()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

id sub_21455558C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage;
  v2 = (v1 + *(type metadata accessor for BasicTextMessage() + 20));
  v3 = v2[9];
  v30 = v2[8];
  v31[0] = v3;
  *(v31 + 9) = *(v2 + 153);
  v4 = v2[5];
  v26 = v2[4];
  v27 = v4;
  v5 = v2[7];
  v28 = v2[6];
  v29 = v5;
  v6 = v2[3];
  v24 = v2[2];
  v25 = v6;
  v7 = v2[1];
  v22 = *v2;
  v23 = v7;
  v8 = type metadata accessor for _ObjCEnumBasicTextMessageMessageTypeWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType];
  v12 = v23;
  v11 = v24;
  *v10 = v22;
  *(v10 + 1) = v12;
  *(v10 + 2) = v11;
  v13 = v28;
  v15 = v25;
  v14 = v26;
  *(v10 + 5) = v27;
  *(v10 + 6) = v13;
  *(v10 + 3) = v15;
  *(v10 + 4) = v14;
  v17 = v30;
  v16 = v31[0];
  v18 = v29;
  *(v10 + 153) = *(v31 + 9);
  *(v10 + 8) = v17;
  *(v10 + 9) = v16;
  *(v10 + 7) = v18;
  sub_21409C7E8(&v22, v21);
  v20.receiver = v9;
  v20.super_class = v8;
  return objc_msgSendSuper2(&v20, sel_init);
}

id _ObjCEnumBasicTextMessageMessageTypeWrapper.__allocating_init(basicTextMessage_MessageType:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType];
  v5 = a1[9];
  *(v4 + 8) = a1[8];
  *(v4 + 9) = v5;
  *(v4 + 153) = *(a1 + 153);
  v6 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v6;
  v7 = a1[7];
  *(v4 + 6) = a1[6];
  *(v4 + 7) = v7;
  v8 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v8;
  v9 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v9;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_214555A8C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage;
  v2 = (v1 + *(type metadata accessor for BasicTextMessage() + 44));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_214555BCC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage;
  v2 = *(v1 + *(type metadata accessor for BasicTextMessage() + 52));
}

id sub_214555D48()
{
  v1 = type metadata accessor for BasicTextMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for BasicTextMessage);
  v5 = type metadata accessor for _ObjCBasicTextMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorBasicTextMessage_basicTextMessage, type metadata accessor for BasicTextMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for BasicTextMessage);
  return v7;
}

uint64_t sub_214555EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator);
  *(a1 + 8) = v2;
}

id sub_21455607C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = type metadata accessor for _ObjCBasicTypingIndicatorWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];
  *v5 = v1;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2145560F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = type metadata accessor for _ObjCBasicTypingIndicatorWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];
  *v5 = v1;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2145565AC()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorChatSessionClose_chatSessionClose, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

uint64_t sub_21455687C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorChatSessionClose_chatSessionClose;
  v2 = (v1 + *(type metadata accessor for ChatSessionClose() + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id sub_2145569EC()
{
  v1 = type metadata accessor for ChatSessionClose();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for ChatSessionClose);
  v5 = type metadata accessor for _ObjCChatSessionCloseWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorChatSessionClose_chatSessionClose, type metadata accessor for ChatSessionClose);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for ChatSessionClose);
  return v7;
}

uint64_t sub_214556C44()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice + 16);

  return v1;
}

uint64_t sub_214556D90@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice;
  v4 = *(type metadata accessor for CollaborationClearNotice() + 24);
  v5 = sub_2146D8B08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_214556E88()
{
  v1 = v0 + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice;
  v2 = (v1 + *(type metadata accessor for CollaborationClearNotice() + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id sub_214556F88()
{
  v1 = type metadata accessor for CollaborationClearNotice();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for CollaborationClearNotice);
  v5 = type metadata accessor for _ObjCCollaborationClearNoticeWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice, type metadata accessor for CollaborationClearNotice);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for CollaborationClearNotice);
  return v7;
}

uint64_t sub_2145571E0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice + 16);

  return v1;
}

uint64_t sub_214557328()
{
  v1 = type metadata accessor for CollaborationHighlightEvent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice;
  v6 = type metadata accessor for CollaborationNotice(0);
  sub_213FB568C(v5 + *(v6 + 24), v4, type metadata accessor for CollaborationHighlightEvent);
  v7 = sub_214675854();
  v9 = v8;
  v10 = sub_2146D8A38();
  sub_213FB54FC(v7, v9);
  sub_213FB5844(v4, type metadata accessor for CollaborationHighlightEvent);
  return v10;
}

uint64_t sub_214557444()
{
  v1 = type metadata accessor for CollaborationHighlightEvent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice;
  v6 = type metadata accessor for CollaborationNotice(0);
  sub_213FB568C(v5 + *(v6 + 24), v4, type metadata accessor for CollaborationHighlightEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v8 = 3;
    goto LABEL_9;
  }

  v8 = 0;
  if (EnumCaseMultiPayload == 3)
  {
    v8 = 4;
LABEL_9:
    sub_213FB5844(v4, type metadata accessor for CollaborationHighlightEvent);
  }

  return v8;
}

uint64_t sub_214557668@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice;
  v4 = *(type metadata accessor for CollaborationNotice(0) + 28);
  v5 = sub_2146D8B08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_2145577A4()
{
  v1 = type metadata accessor for CollaborationNotice(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for CollaborationNotice);
  v5 = type metadata accessor for _ObjCCollaborationNoticeWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice, type metadata accessor for CollaborationNotice);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for CollaborationNotice);
  return v7;
}

uint64_t _ObjCEnumCollaborationNoticeActionActionType.init(rawValue:)(uint64_t result)
{
  if ((result + 1) >= 2)
  {
    return 0;
  }

  return result;
}

id sub_214557A64(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorColor_color];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214557ABC(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorColor_color];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCColorWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

__n128 sub_214557B04@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorColor_color);
  v3 = *(v1 + OBJC_IVAR___BlastDoorColor_color + 16);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_214557C9C()
{
  v1 = type metadata accessor for _ObjCColorWrapper();
  v5 = v0[1];
  v6 = *v0;
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR___BlastDoorColor_color];
  *v3 = v6;
  *(v3 + 1) = v5;
  v7.receiver = v2;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214557CFC()
{
  v1 = type metadata accessor for _ObjCColorWrapper();
  v5 = v0[1];
  v6 = *v0;
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR___BlastDoorColor_color];
  *v3 = v6;
  *(v3 + 1) = v5;
  v7.receiver = v2;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214557EC0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorCombinedPluginAttachment_combinedPluginAttachment);
  v2 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21455804C()
{
  v1 = type metadata accessor for BalloonPlugin.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorCombinedPluginAttachment_combinedPluginAttachment;
  v6 = type metadata accessor for CombinedPluginAttachment();
  sub_213FB568C(v5 + *(v6 + 20), v4, type metadata accessor for BalloonPlugin.Payload);
  v7 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v4, v8 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_213FB5844(v4, type metadata accessor for BalloonPlugin.Payload);
  return v9;
}

id sub_214558210()
{
  v1 = type metadata accessor for CombinedPluginAttachment();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for CombinedPluginAttachment);
  v5 = type metadata accessor for _ObjCCombinedPluginAttachmentWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorCombinedPluginAttachment_combinedPluginAttachment, type metadata accessor for CombinedPluginAttachment);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for CombinedPluginAttachment);
  return v7;
}

uint64_t sub_21455851C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo;
  v2 = v1 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 20);
  v3 = *v2;
  sub_21402D9F8(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_2145586B0()
{
  v1 = type metadata accessor for CombinedPluginAttachmentInfo();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo, v5, type metadata accessor for CombinedPluginAttachmentInfo);
  v6 = &v5[*(v2 + 32)];
  if (*(v6 + 3))
  {
    v7 = *(v6 + 2);
    v8 = *(v6 + 3);

    sub_213FB5844(v5, type metadata accessor for CombinedPluginAttachmentInfo);
    return v7;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145588BC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo;
  v2 = v1 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 32);
  v3 = *v2;
  sub_21402D9F8(*v2, *(v2 + 8));
  return v3;
}

id sub_2145589C0()
{
  v1 = type metadata accessor for CombinedPluginAttachmentInfo();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for CombinedPluginAttachmentInfo);
  v5 = type metadata accessor for _ObjCCombinedPluginAttachmentInfoWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo, type metadata accessor for CombinedPluginAttachmentInfo);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for CombinedPluginAttachmentInfo);
  return v7;
}

uint64_t sub_214558B2C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 80);
  v13 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 96);
  v4 = v15;
  v5 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 16);
  v10[0] = *(v1 + OBJC_IVAR___BlastDoorContactMessage_contactMessage);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 48);
  v11 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[5] = v3;
  a1[6] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  return sub_214591F64(v10, &v9);
}

id sub_214558D10()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 80);
  v19 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 64);
  v20 = v1;
  v21 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 96);
  v2 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 16);
  v15 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_contactMessage);
  v16 = v2;
  v3 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 48);
  v17 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_contactMessage + 32);
  v18 = v3;
  v4 = type metadata accessor for _ObjCContactMessage_ContactInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo];
  v8 = v16;
  v7 = v17;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v9 = v21;
  v11 = v18;
  v10 = v19;
  *(v6 + 5) = v20;
  *(v6 + 6) = v9;
  *(v6 + 3) = v11;
  *(v6 + 4) = v10;
  sub_214591F64(&v15, v14);
  v13.receiver = v5;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214558DD0(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[*a2];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[6];
  *(v6 + 5) = a1[5];
  *(v6 + 6) = v8;
  v9 = a1[4];
  *(v6 + 3) = a1[3];
  *(v6 + 4) = v9;
  *(v6 + 2) = a1[2];
  v11.receiver = v5;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214558ECC()
{
  v1 = v0[5];
  v13[4] = v0[4];
  v13[5] = v1;
  v13[6] = v0[6];
  v2 = v0[1];
  v13[0] = *v0;
  v13[1] = v2;
  v3 = v0[3];
  v13[2] = v0[2];
  v13[3] = v3;
  v4 = type metadata accessor for _ObjCContactMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorContactMessage_contactMessage];
  v7 = v0[5];
  *(v6 + 4) = v0[4];
  *(v6 + 5) = v7;
  *(v6 + 6) = v0[6];
  v8 = v0[1];
  *v6 = *v0;
  *(v6 + 1) = v8;
  v9 = v0[3];
  *(v6 + 2) = v0[2];
  *(v6 + 3) = v9;
  sub_214591F64(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214558F74()
{
  v1 = v0[5];
  v19 = v0[4];
  v20 = v1;
  v21 = v0[6];
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  v4 = type metadata accessor for _ObjCContactMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorContactMessage_contactMessage];
  v8 = v16;
  v7 = v17;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v9 = v21;
  v11 = v18;
  v10 = v19;
  *(v6 + 5) = v20;
  *(v6 + 6) = v9;
  *(v6 + 3) = v11;
  *(v6 + 4) = v10;
  sub_214591F64(&v15, v14);
  v13.receiver = v5;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21455921C()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorCrossServiceAssociationMessage_crossServiceAssociationMessage, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

uint64_t sub_21455942C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorCrossServiceAssociationMessage_crossServiceAssociationMessage;
  v4 = *(type metadata accessor for CrossServiceAssociationMessage() + 20);
  v5 = sub_2146D8B88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_214559568()
{
  v1 = type metadata accessor for CrossServiceAssociationMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for CrossServiceAssociationMessage);
  v5 = type metadata accessor for _ObjCCrossServiceAssociationMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorCrossServiceAssociationMessage_crossServiceAssociationMessage, type metadata accessor for CrossServiceAssociationMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for CrossServiceAssociationMessage);
  return v7;
}

uint64_t sub_2145597B0()
{
  if (*(v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement))
  {
    return 4000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2145597CC(uint64_t result)
{
  if (result == 4000)
  {
    v1 = 4000;
  }

  else
  {
    v1 = 0;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2145597F8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement + 16);

  return v1;
}

uint64_t sub_214559994()
{
  v1 = type metadata accessor for CustomAcknowledgement();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement, v4, type metadata accessor for CustomAcknowledgement);
  v5 = *(v4 + 9);
  if (v5)
  {
    v6 = *(v4 + 9);

    sub_213FB5844(v4, type metadata accessor for CustomAcknowledgement);
    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214559AC4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement + 168);
  v2 = *(v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement + 176);

  return v1;
}

id sub_214559C24()
{
  v1 = type metadata accessor for BalloonPlugin.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement;
  v6 = type metadata accessor for CustomAcknowledgement();
  sub_213FB568C(v5 + *(v6 + 44), v4, type metadata accessor for BalloonPlugin.Payload);
  v7 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v4, v8 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_213FB5844(v4, type metadata accessor for BalloonPlugin.Payload);
  return v9;
}

uint64_t sub_214559D60()
{
  v1 = v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement;
  v2 = *(v1 + *(type metadata accessor for CustomAcknowledgement() + 48));
  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v43 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v5 = (v2 + 32);
    v6 = type metadata accessor for _ObjCAttributionInfoWrapper();
    for (i = v3 - 1; ; --i)
    {
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[3];
      v33 = v5[2];
      v34 = v10;
      v31 = v8;
      v32 = v9;
      v11 = v5[4];
      v12 = v5[5];
      v13 = v5[7];
      v37 = v5[6];
      v38 = v13;
      v35 = v11;
      v36 = v12;
      v14 = v5[8];
      v15 = v5[9];
      v16 = v5[10];
      v42 = *(v5 + 88);
      v40 = v15;
      v41 = v16;
      v39 = v14;
      v17 = objc_allocWithZone(v6);
      v18 = &v17[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo];
      v19 = v34;
      v21 = v31;
      v20 = v32;
      *(v18 + 2) = v33;
      *(v18 + 3) = v19;
      *v18 = v21;
      *(v18 + 1) = v20;
      v22 = v38;
      v24 = v35;
      v23 = v36;
      *(v18 + 6) = v37;
      *(v18 + 7) = v22;
      *(v18 + 4) = v24;
      *(v18 + 5) = v23;
      v26 = v40;
      v25 = v41;
      v27 = v39;
      *(v18 + 88) = v42;
      *(v18 + 9) = v26;
      *(v18 + 10) = v25;
      *(v18 + 8) = v27;
      sub_2142E4A90(&v31, v30);
      v29.receiver = v17;
      v29.super_class = v6;
      objc_msgSendSuper2(&v29, sel_init);
      sub_2146D9F98();
      v28 = *(v43 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!i)
      {
        break;
      }

      v5 = (v5 + 184);
    }

    return v43;
  }

  return result;
}

id sub_214559F50()
{
  v1 = v0 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement;
  v2 = (v1 + *(type metadata accessor for CustomAcknowledgement() + 52));
  if (!*v2)
  {
    return 0;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_214664BB8();
}

id sub_21455A068()
{
  v1 = type metadata accessor for CustomAcknowledgement();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for CustomAcknowledgement);
  v5 = type metadata accessor for _ObjCCustomAcknowledgementWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement, type metadata accessor for CustomAcknowledgement);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for CustomAcknowledgement);
  return v7;
}

id sub_21455A30C(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void))
{
  v6 = a1(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Metadata();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_213FB568C(v3 + *a2, v9, a3);
  sub_21459375C(v9, v16, type metadata accessor for Metadata);
  sub_213FB568C(v16, v14, type metadata accessor for Metadata);
  v17 = type metadata accessor for _ObjCMetadataWrapper(0);
  v18 = objc_allocWithZone(v17);
  sub_213FB568C(v14, v18 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v21.receiver = v18;
  v21.super_class = v17;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_213FB5844(v14, type metadata accessor for Metadata);
  sub_213FB5844(v16, type metadata accessor for Metadata);
  return v19;
}

id sub_21455A574()
{
  v1 = type metadata accessor for DeliveredQuietlyReceipt();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for DeliveredQuietlyReceipt);
  v5 = type metadata accessor for _ObjCDeliveredQuietlyReceiptWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorDeliveredQuietlyReceipt_deliveredQuietlyReceipt, type metadata accessor for DeliveredQuietlyReceipt);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for DeliveredQuietlyReceipt);
  return v7;
}

id sub_21455A8CC()
{
  v1 = type metadata accessor for DeliveryReceipt();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for DeliveryReceipt);
  v5 = type metadata accessor for _ObjCDeliveryReceiptWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorDeliveryReceipt_deliveryReceipt, type metadata accessor for DeliveryReceipt);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for DeliveryReceipt);
  return v7;
}

id sub_21455AC0C()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

unint64_t sub_21455AD90()
{
  v1 = v0 + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  result = *(v1 + *(type metadata accessor for EditMessageCommand() + 24));
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

unint64_t _ObjCEnumEditMessageCommandMessageEditType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21455AE6C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v2 = (v1 + *(type metadata accessor for EditMessageCommand() + 28));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

id sub_21455AFA8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v2 = type metadata accessor for EditMessageCommand();
  result = 0;
  v4 = (v1 + *(v2 + 32));
  v5 = v4[1];
  if (v5 != 1)
  {
    v7 = v4[5];
    v6 = v4[6];
    v9 = v4[3];
    v8 = v4[4];
    v10 = v4[2];
    v11 = *v4;
    v12 = type metadata accessor for _ObjCMessageContentWrapper();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR___BlastDoorMessageContent_messageContent];
    *v14 = v11;
    *(v14 + 1) = v5;
    *(v14 + 2) = v10;
    *(v14 + 3) = v9;
    *(v14 + 4) = v8;
    *(v14 + 5) = v7;
    *(v14 + 6) = v6;

    sub_214031CA0(v8);
    v15.receiver = v13;
    v15.super_class = v12;
    return objc_msgSendSuper2(&v15, sel_init);
  }

  return result;
}

id sub_21455B08C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 48);
  v5 = &v3[OBJC_IVAR___BlastDoorMessageContent_messageContent];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 6) = v4;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21455B2E0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v2 = type metadata accessor for EditMessageCommand();
  result = 0;
  v4 = (v1 + *(v2 + 40));
  v5 = v4[1];
  if (v5 != 1)
  {
    v7 = v4[5];
    v6 = v4[6];
    v9 = v4[3];
    v8 = v4[4];
    v10 = v4[2];
    v11 = *v4;
    v12 = type metadata accessor for _ObjCMessageContentWrapper();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR___BlastDoorMessageContent_messageContent];
    *v14 = v11;
    *(v14 + 1) = v5;
    *(v14 + 2) = v10;
    *(v14 + 3) = v9;
    *(v14 + 4) = v8;
    *(v14 + 5) = v7;
    *(v14 + 6) = v6;

    sub_214031CA0(v8);
    v15.receiver = v13;
    v15.super_class = v12;
    return objc_msgSendSuper2(&v15, sel_init);
  }

  return result;
}

id sub_21455B4A4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v2 = (v1 + *(type metadata accessor for EditMessageCommand() + 44));
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = type metadata accessor for _ObjCMessageContentWrapper();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___BlastDoorMessageContent_messageContent];
  *v12 = v4;
  *(v12 + 1) = v3;
  *(v12 + 2) = v6;
  *(v12 + 3) = v5;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  *(v12 + 6) = v9;

  sub_214031CA0(v7);
  v14.receiver = v11;
  v14.super_class = v10;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_21455B628()
{
  v1 = type metadata accessor for EditMessageCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for EditMessageCommand);
  v5 = type metadata accessor for _ObjCEditMessageCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand, type metadata accessor for EditMessageCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for EditMessageCommand);
  return v7;
}

id sub_21455B768(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v6;
  *(v4 + 8) = *(a1 + 64);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21455B7D0(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata];
  v3 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v3;
  *(v2 + 8) = *(a1 + 64);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCEmojiImageMetadataWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21455B828@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 16);
  v8[0] = *(v1 + OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21445E79C(v8, v7);
}

id sub_21455BA94()
{
  v1 = *(v0 + 48);
  v11[2] = *(v0 + 32);
  v11[3] = v1;
  v12 = *(v0 + 64);
  v2 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCEmojiImageMetadataWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata];
  v6 = *(v0 + 48);
  *(v5 + 2) = *(v0 + 32);
  *(v5 + 3) = v6;
  *(v5 + 8) = *(v0 + 64);
  v7 = *(v0 + 16);
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_21445E79C(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21455BB2C()
{
  v1 = v0[2];
  v15 = v0[3];
  v16 = *(v0 + 8);
  v2 = *v0;
  v13 = v0[1];
  v14 = v1;
  v12 = v2;
  v3 = type metadata accessor for _ObjCEmojiImageMetadataWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata];
  *v5 = v12;
  v6 = v15;
  v8 = v13;
  v7 = v14;
  *(v5 + 8) = v16;
  *(v5 + 2) = v7;
  *(v5 + 3) = v6;
  *(v5 + 1) = v8;
  sub_21445E79C(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21455BBD4(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack];
  v5 = a1[11];
  *(v4 + 10) = a1[10];
  *(v4 + 11) = v5;
  v6 = a1[13];
  *(v4 + 12) = a1[12];
  *(v4 + 13) = v6;
  v7 = a1[7];
  *(v4 + 6) = a1[6];
  *(v4 + 7) = v7;
  v8 = a1[9];
  *(v4 + 8) = a1[8];
  *(v4 + 9) = v8;
  v9 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v9;
  v10 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v10;
  v11 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v11;
  v13.receiver = v3;
  v13.super_class = v1;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21455BC5C(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack];
  v3 = a1[11];
  *(v2 + 10) = a1[10];
  *(v2 + 11) = v3;
  v4 = a1[13];
  *(v2 + 12) = a1[12];
  *(v2 + 13) = v4;
  v5 = a1[7];
  *(v2 + 6) = a1[6];
  *(v2 + 7) = v5;
  v6 = a1[9];
  *(v2 + 8) = a1[8];
  *(v2 + 9) = v6;
  v7 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v7;
  v8 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v8;
  v9 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for _ObjCEmojiTapBackWrapper();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21455BCD4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack;
  v3 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 176);
  v4 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 144);
  v34 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 160);
  v35 = v3;
  v5 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 176);
  v6 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 208);
  v36 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 192);
  v7 = v36;
  v37 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 112);
  v10 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 80);
  v30 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 96);
  v9 = v30;
  v31 = v8;
  v11 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 112);
  v12 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 144);
  v32 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 128);
  v13 = v32;
  v33 = v12;
  v14 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 48);
  v16 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 16);
  v26 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 32);
  v15 = v26;
  v27 = v14;
  v17 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 48);
  v18 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 80);
  v28 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 64);
  v19 = v28;
  v29 = v18;
  v20 = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 16);
  v25[0] = *(v1 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack);
  v21 = v25[0];
  v25[1] = v20;
  a1[10] = v34;
  a1[11] = v5;
  v22 = *(v2 + 208);
  a1[12] = v7;
  a1[13] = v22;
  a1[6] = v9;
  a1[7] = v11;
  a1[8] = v13;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v17;
  a1[4] = v19;
  a1[5] = v10;
  *a1 = v21;
  a1[1] = v16;
  return sub_2142EEA58(v25, &v24);
}

uint64_t sub_21455BEAC(uint64_t result)
{
  if (result == 3006)
  {
    v1 = 3006;
  }

  else
  {
    v1 = 0;
  }

  if (result == 2006)
  {
    v1 = 2006;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_21455BEE4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 16);

  return v1;
}

id sub_21455BF5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 80))
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);

    v6 = sub_2146D9588();

    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21455C010(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 80))
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);

    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_21455C0A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 112))
  {
    v4 = *(v3 + 112);

    v5 = sub_2146D98E8();

    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21455C150(void *a1)
{
  if (*(v1 + *a1 + 112))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_21455C2C4()
{
  v19 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 128);
  v1 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 152);
  v20 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 144);
  v2 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 176);
  v16 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 160);
  v17 = v2;
  v18 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 192);
  v23 = v18;
  v24 = v19;
  v25 = v20;
  v21 = v16;
  v22 = v2;
  if (!v1)
  {
    return 0;
  }

  v3 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
  *v5 = v24;
  *(v5 + 2) = v25;
  *(v5 + 3) = v1;
  v6 = v22;
  *(v5 + 2) = v21;
  *(v5 + 3) = v6;
  *(v5 + 4) = v23;
  v10 = v19;
  v11 = v20;
  v12 = v1;
  v14 = v17;
  v15 = v18;
  v13 = v16;
  sub_214311D90(&v10, v9);
  v8.receiver = v4;
  v8.super_class = v3;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21455C410()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 208);
  v2 = *(v0 + OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack + 216);

  return v1;
}

id EmojiTapBack.bridgedToObjectiveC.getter()
{
  v1 = v0[11];
  v21[10] = v0[10];
  v21[11] = v1;
  v2 = v0[13];
  v21[12] = v0[12];
  v21[13] = v2;
  v3 = v0[7];
  v21[6] = v0[6];
  v21[7] = v3;
  v4 = v0[9];
  v21[8] = v0[8];
  v21[9] = v4;
  v5 = v0[3];
  v21[2] = v0[2];
  v21[3] = v5;
  v6 = v0[5];
  v21[4] = v0[4];
  v21[5] = v6;
  v7 = v0[1];
  v21[0] = *v0;
  v21[1] = v7;
  v8 = type metadata accessor for _ObjCEmojiTapBackWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack];
  v11 = v0[11];
  *(v10 + 10) = v0[10];
  *(v10 + 11) = v11;
  v12 = v0[13];
  *(v10 + 12) = v0[12];
  *(v10 + 13) = v12;
  v13 = v0[7];
  *(v10 + 6) = v0[6];
  *(v10 + 7) = v13;
  v14 = v0[9];
  *(v10 + 8) = v0[8];
  *(v10 + 9) = v14;
  v15 = v0[3];
  *(v10 + 2) = v0[2];
  *(v10 + 3) = v15;
  v16 = v0[5];
  *(v10 + 4) = v0[4];
  *(v10 + 5) = v16;
  v17 = v0[1];
  *v10 = *v0;
  *(v10 + 1) = v17;
  sub_2142EEA58(v21, v20);
  v19.receiver = v9;
  v19.super_class = v8;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_21455C604()
{
  v1 = v0[11];
  v34 = v0[10];
  v35 = v1;
  v2 = v0[13];
  v36 = v0[12];
  v37 = v2;
  v3 = v0[7];
  v30 = v0[6];
  v31 = v3;
  v4 = v0[9];
  v32 = v0[8];
  v33 = v4;
  v5 = v0[3];
  v26 = v0[2];
  v27 = v5;
  v6 = v0[5];
  v28 = v0[4];
  v29 = v6;
  v7 = v0[1];
  v24 = *v0;
  v25 = v7;
  v8 = type metadata accessor for _ObjCEmojiTapBackWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack];
  v11 = v25;
  *v10 = v24;
  *(v10 + 1) = v11;
  v12 = v29;
  v14 = v26;
  v13 = v27;
  *(v10 + 4) = v28;
  *(v10 + 5) = v12;
  *(v10 + 2) = v14;
  *(v10 + 3) = v13;
  v15 = v33;
  v17 = v30;
  v16 = v31;
  *(v10 + 8) = v32;
  *(v10 + 9) = v15;
  *(v10 + 6) = v17;
  *(v10 + 7) = v16;
  v18 = v37;
  v20 = v34;
  v19 = v35;
  *(v10 + 12) = v36;
  *(v10 + 13) = v18;
  *(v10 + 10) = v20;
  *(v10 + 11) = v19;
  sub_2142EEA58(&v24, v23);
  v22.receiver = v9;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_21455C7AC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = v1 + 32;
    do
    {
      sub_214592114(v4, v10);
      sub_214592114(v10, v9);
      v5 = type metadata accessor for _ObjCEncodedAttachments_ContentWrapper();
      v6 = objc_allocWithZone(v5);
      sub_214592114(v9, v6 + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content);
      v8.receiver = v6;
      v8.super_class = v5;
      objc_msgSendSuper2(&v8, sel_init);
      sub_214592194(v9);
      sub_214592194(v10);
      sub_2146D9F98();
      v7 = *(v11 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v4 += 480;
      --v2;
    }

    while (v2);

    return v11;
  }

  return result;
}

id sub_21455C988()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21455C9E8()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21455CC48()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorErrorMessage_errorMessage, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

uint64_t sub_21455CD9C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorErrorMessage_errorMessage;
  v2 = type metadata accessor for ErrorMessage();
  result = sub_214592208(word_2147604C8[*(v1 + *(v2 + 20))]);
  if ((result & 0x10000) != 0)
  {
    __break(1u);
  }

  return result;
}

id ErrorMessage.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for ErrorMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for ErrorMessage);
  v5 = type metadata accessor for _ObjCErrorMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorErrorMessage_errorMessage, type metadata accessor for ErrorMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for ErrorMessage);
  return v7;
}

id sub_21455D044(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorGroupContext_groupContext];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  *(v4 + 6) = *(a1 + 96);
  v4[112] = *(a1 + 112);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21455D0BC(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorGroupContext_groupContext];
  v3 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v3;
  *(v2 + 6) = *(a1 + 96);
  v2[112] = *(a1 + 112);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v4;
  v5 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _ObjCGroupContextWrapper();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21455D124@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 64);
  v4 = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 96);
  v12 = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 112);
  v6 = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 16);
  v11[0] = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext);
  v5 = v11[0];
  v7 = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 32);
  v8 = *(v1 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *(a1 + 112) = v14;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *a1 = v5;
  return sub_2142F236C(v11, v10);
}

id sub_21455D2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 80))
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21455D324(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);

  return v3;
}

uint64_t sub_21455D3B4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 96))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 88);
  }
}

uint64_t sub_21455D42C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 112))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorGroupContext_groupContext + 104);
  }
}

id GroupContext.bridgedToObjectiveC.getter()
{
  v1 = *(v0 + 80);
  v13[4] = *(v0 + 64);
  v13[5] = v1;
  v13[6] = *(v0 + 96);
  v14 = *(v0 + 112);
  v2 = *(v0 + 16);
  v13[0] = *v0;
  v13[1] = v2;
  v3 = *(v0 + 48);
  v13[2] = *(v0 + 32);
  v13[3] = v3;
  v4 = type metadata accessor for _ObjCGroupContextWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorGroupContext_groupContext];
  v7 = *(v0 + 80);
  *(v6 + 4) = *(v0 + 64);
  *(v6 + 5) = v7;
  *(v6 + 6) = *(v0 + 96);
  v6[112] = *(v0 + 112);
  v8 = *(v0 + 16);
  *v6 = *v0;
  *(v6 + 1) = v8;
  v9 = *(v0 + 48);
  *(v6 + 2) = *(v0 + 32);
  *(v6 + 3) = v9;
  sub_2142F236C(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21455D5FC()
{
  v1 = v0[5];
  v20 = v0[4];
  v21 = v1;
  v22 = v0[6];
  v23 = *(v0 + 112);
  v2 = v0[1];
  v16 = *v0;
  v17 = v2;
  v3 = v0[3];
  v18 = v0[2];
  v19 = v3;
  v4 = type metadata accessor for _ObjCGroupContextWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorGroupContext_groupContext];
  v7 = v19;
  v9 = v16;
  v8 = v17;
  *(v6 + 2) = v18;
  *(v6 + 3) = v7;
  *v6 = v9;
  *(v6 + 1) = v8;
  v11 = v21;
  v10 = v22;
  v12 = v20;
  v6[112] = v23;
  *(v6 + 5) = v11;
  *(v6 + 6) = v10;
  *(v6 + 4) = v12;
  sub_2142F236C(&v16, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_21455D818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *a1);
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

id sub_21455D880(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *(v3 + 32);

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_21455D9A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  v5 = *(v3 + 24);
}

id sub_21455DA08(uint64_t (*a1)(void), void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = *(v2 + 32);
  v9 = a1();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[*a2];
  *v11 = v5;
  *(v11 + 1) = v4;
  *(v11 + 2) = v7;
  *(v11 + 3) = v6;
  v11[32] = v8;
  v13.receiver = v10;
  v13.super_class = v9;

  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21455DAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v7 = *v4;
  v6 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = *(v4 + 32);
  v11 = a3();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[*a4];
  *v13 = v7;
  *(v13 + 1) = v6;
  *(v13 + 2) = v9;
  *(v13 + 3) = v8;
  v13[32] = v10;
  v15.receiver = v12;
  v15.super_class = v11;

  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_21455DB84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse;
  v3 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 112);
  v4 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 144);
  v26 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 128);
  v27 = v4;
  v5 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 48);
  v6 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 80);
  v22 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 64);
  v7 = v22;
  v23 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 80);
  v9 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 112);
  v24 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 96);
  v10 = v24;
  v25 = v9;
  v11 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 16);
  v19[0] = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse);
  v19[1] = v11;
  v12 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 48);
  v14 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse);
  v13 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 16);
  v20 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 32);
  v15 = v20;
  v21 = v12;
  v16 = *(v1 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 144);
  *(a1 + 128) = v26;
  *(a1 + 144) = v16;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v2 + 160);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 32) = v15;
  *(a1 + 48) = v5;
  return sub_21459232C(v19, v18);
}

uint64_t sub_21455DD84()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 8);
  }
}

uint64_t sub_21455DDB0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 24);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 32));
  return v1;
}

uint64_t sub_21455DE48()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 48))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 40);
  }
}

uint64_t sub_21455DEC0()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 64))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 56);
  }
}

uint64_t sub_21455DF68()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 72);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 80));
  return v1;
}

uint64_t sub_21455E0E8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 120))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 112);
  }
}

id sub_21455E114(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 136);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v3 + 128);
    sub_21402D9F8(v6, *(v3 + 136));
    v7 = sub_2146D8A38();
    sub_213FDC6BC(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t sub_21455E198()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 128);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 136));
  return v1;
}

uint64_t sub_21455E298()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 160))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 152);
  }
}

id sub_21455E390()
{
  v1 = *(v0 + 144);
  v17[8] = *(v0 + 128);
  v17[9] = v1;
  v18 = *(v0 + 160);
  v2 = *(v0 + 80);
  v17[4] = *(v0 + 64);
  v17[5] = v2;
  v3 = *(v0 + 112);
  v17[6] = *(v0 + 96);
  v17[7] = v3;
  v4 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v4;
  v5 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v5;
  v6 = type metadata accessor for _ObjCIDSCommandResponseWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse];
  v9 = *(v0 + 144);
  *(v8 + 8) = *(v0 + 128);
  *(v8 + 9) = v9;
  v8[160] = *(v0 + 160);
  v10 = *(v0 + 80);
  *(v8 + 4) = *(v0 + 64);
  *(v8 + 5) = v10;
  v11 = *(v0 + 112);
  *(v8 + 6) = *(v0 + 96);
  *(v8 + 7) = v11;
  v12 = *(v0 + 16);
  *v8 = *v0;
  *(v8 + 1) = v12;
  v13 = *(v0 + 48);
  *(v8 + 2) = *(v0 + 32);
  *(v8 + 3) = v13;
  sub_21459232C(v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_21455E45C()
{
  v1 = v0[9];
  v28 = v0[8];
  v29 = v1;
  v30 = *(v0 + 160);
  v2 = v0[5];
  v24 = v0[4];
  v25 = v2;
  v3 = v0[7];
  v26 = v0[6];
  v27 = v3;
  v4 = v0[1];
  v20 = *v0;
  v21 = v4;
  v5 = v0[3];
  v22 = v0[2];
  v23 = v5;
  v6 = type metadata accessor for _ObjCIDSCommandResponseWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse];
  v10 = v21;
  v9 = v22;
  *v8 = v20;
  *(v8 + 1) = v10;
  *(v8 + 2) = v9;
  v11 = v26;
  v13 = v23;
  v12 = v24;
  *(v8 + 5) = v25;
  *(v8 + 6) = v11;
  *(v8 + 3) = v13;
  *(v8 + 4) = v12;
  v15 = v28;
  v14 = v29;
  v16 = v27;
  v8[160] = v30;
  *(v8 + 8) = v15;
  *(v8 + 9) = v14;
  *(v8 + 7) = v16;
  sub_21459232C(&v20, v19);
  v18.receiver = v7;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_21455E530(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse], a1, 0x118uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21455E598(void *__src)
{
  memcpy(&v1[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse], __src, 0x118uLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ObjCIDSCommandWebTunnelResponseWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21455E5E4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse), sizeof(__dst));
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse), 0x118uLL);
  return sub_2145923AC(__dst, &v4);
}

uint64_t sub_21455E75C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 8);
  }
}

id sub_21455E788(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 32);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v3 + 24);
    sub_21402D9F8(v6, *(v3 + 32));
    v7 = sub_2146D8A38();
    sub_213FDC6BC(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t sub_21455E80C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 24);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 32));
  return v1;
}

uint64_t sub_21455E8A4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 48))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 40);
  }
}

id sub_21455E8D0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 64))
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21455E948(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return v3;
}

uint64_t sub_21455E9D8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 80))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 72);
  }
}

uint64_t sub_21455EA68()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 88);
  v2 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 96);

  return v1;
}

id sub_21455EBA8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 104);
  v2 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 112);
  v3 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 136);
  v4 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 168);
  v21 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 152);
  v22 = v4;
  v23 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 184);
  v19 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 120);
  v20 = v3;
  v26 = v21;
  v27 = v4;
  v28 = v23;
  v24 = v19;
  v25 = v3;
  if (v2 == 1)
  {
    return 0;
  }

  v6 = type metadata accessor for _ObjCAPSUserPayloadHttpHeadersWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
  *v8 = v1;
  *(v8 + 1) = v2;
  v9 = v27;
  *(v8 + 3) = v26;
  *(v8 + 4) = v9;
  *(v8 + 5) = v28;
  v10 = v25;
  *(v8 + 1) = v24;
  *(v8 + 2) = v10;
  v13[0] = v1;
  v13[1] = v2;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  sub_21454AF44(v13, v12);
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21455ED24()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 200);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 208));
  return v1;
}

uint64_t sub_21455EDD4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 216);
  v2 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 224);

  return v1;
}

id sub_21455EE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 240);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v3 + 232);
    sub_21402D9F8(v6, *(v3 + 240));
    v7 = sub_2146D8A38();
    sub_213FDC6BC(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t sub_21455EEA0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 232);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 240));
  return v1;
}

uint64_t sub_21455EF38()
{
  if (*(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 256))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 248);
  }
}

uint64_t sub_21455EFC8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 264);
  v2 = *(v0 + OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse + 272);

  return v1;
}

id sub_21455F0C4()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for _ObjCIDSCommandWebTunnelResponseWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse], v0, 0x118uLL);
  sub_2145923AC(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21455F148()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for _ObjCIDSCommandWebTunnelResponseWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorIDSCommandWebTunnelResponse_iDSCommandWebTunnelResponse], __dst, 0x118uLL);
  sub_2145923AC(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21455F3E4()
{
  v1 = type metadata accessor for JunkChatCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for JunkChatCommand);
  v5 = type metadata accessor for _ObjCJunkChatCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorJunkChatCommand_junkChatCommand, type metadata accessor for JunkChatCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for JunkChatCommand);
  return v7;
}

id sub_21455F73C()
{
  v1 = type metadata accessor for LargeImage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorLargeImage_largeImage, v4, type metadata accessor for LargeImage);
  v5 = *v4;

  sub_213FB5844(v4, type metadata accessor for LargeImage);
  v6 = type metadata accessor for _ObjCMachImageWrapper();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___BlastDoorMachImage_image] = v5;
  v9.receiver = v7;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21455F948()
{
  v1 = type metadata accessor for MediaMetadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorLargeImage_largeImage;
  v6 = type metadata accessor for LargeImage(0);
  sub_213FB568C(v5 + *(v6 + 20), v4, type metadata accessor for MediaMetadata);
  v7 = type metadata accessor for _ObjCMediaMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v4, v8 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata, type metadata accessor for MediaMetadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_213FB5844(v4, type metadata accessor for MediaMetadata);
  return v9;
}

id LargeImage.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for LargeImage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for LargeImage);
  v5 = type metadata accessor for _ObjCLargeImageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorLargeImage_largeImage, type metadata accessor for LargeImage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for LargeImage);
  return v7;
}

uint64_t sub_21455FD78()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorLiteRelayTextMessage_liteRelayTextMessage);
  v2 = *(v0 + OBJC_IVAR___BlastDoorLiteRelayTextMessage_liteRelayTextMessage + 8);

  return v1;
}

id sub_21455FDF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for LiteTapback(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = v0 + OBJC_IVAR___BlastDoorLiteRelayTextMessage_liteRelayTextMessage;
  v14 = type metadata accessor for LiteRelayTextMessage();
  sub_213FB2E54(v13 + *(v14 + 20), v4, &qword_27C904DD0, &unk_214741A90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &qword_27C904DD0, &unk_214741A90);
    return 0;
  }

  else
  {
    sub_21459375C(v4, v12, type metadata accessor for LiteTapback);
    sub_213FB568C(v12, v10, type metadata accessor for LiteTapback);
    v16 = type metadata accessor for _ObjCLiteTapbackWrapper(0);
    v17 = objc_allocWithZone(v16);
    sub_213FB568C(v10, v17 + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, type metadata accessor for LiteTapback);
    v19.receiver = v17;
    v19.super_class = v16;
    v18 = objc_msgSendSuper2(&v19, sel_init);
    sub_213FB5844(v10, type metadata accessor for LiteTapback);
    sub_213FB5844(v12, type metadata accessor for LiteTapback);
    return v18;
  }
}

id sub_21456009C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 24));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21456013C(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 24));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

id sub_21456023C()
{
  v1 = type metadata accessor for LiteRelayTextMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for LiteRelayTextMessage);
  v5 = type metadata accessor for _ObjCLiteRelayTextMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorLiteRelayTextMessage_liteRelayTextMessage, type metadata accessor for LiteRelayTextMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for LiteRelayTextMessage);
  return v7;
}

uint64_t sub_214560474()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorLiteTextMessage_liteTextMessage);
  v2 = *(v0 + OBJC_IVAR___BlastDoorLiteTextMessage_liteTextMessage + 8);

  return v1;
}

unint64_t sub_214560590()
{
  v1 = type metadata accessor for LiteTextMessage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorLiteTextMessage_liteTextMessage, v4, type metadata accessor for LiteTextMessage);
  v5 = v4[16];
  sub_213FB5844(v4, type metadata accessor for LiteTextMessage);
  if (v5 == 14)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  result = sub_2145924C8(v6);
  if (v8)
  {
    __break(1u);
  }

  return result;
}

id sub_2145606F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for LiteTapback(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = v0 + OBJC_IVAR___BlastDoorLiteTextMessage_liteTextMessage;
  v14 = type metadata accessor for LiteTextMessage(0);
  sub_213FB2E54(v13 + *(v14 + 28), v4, &qword_27C904DD0, &unk_214741A90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &qword_27C904DD0, &unk_214741A90);
    return 0;
  }

  else
  {
    sub_21459375C(v4, v12, type metadata accessor for LiteTapback);
    sub_213FB568C(v12, v10, type metadata accessor for LiteTapback);
    v16 = type metadata accessor for _ObjCLiteTapbackWrapper(0);
    v17 = objc_allocWithZone(v16);
    sub_213FB568C(v10, v17 + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, type metadata accessor for LiteTapback);
    v19.receiver = v17;
    v19.super_class = v16;
    v18 = objc_msgSendSuper2(&v19, sel_init);
    sub_213FB5844(v10, type metadata accessor for LiteTapback);
    sub_213FB5844(v12, type metadata accessor for LiteTapback);
    return v18;
  }
}

id sub_2145609F4()
{
  v1 = type metadata accessor for LiteTextMessage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for LiteTextMessage);
  v5 = type metadata accessor for _ObjCLiteTextMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorLiteTextMessage_liteTextMessage, type metadata accessor for LiteTextMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for LiteTextMessage);
  return v7;
}

uint64_t sub_214560CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BlastDoorLiteTapback_liteTapback;
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_214560E50()
{
  v1 = type metadata accessor for LiteTapback(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, v5, type metadata accessor for LiteTapback);
  v6 = v5[*(v2 + 28)];
  sub_213FB5844(v5, type metadata accessor for LiteTapback);
  if (v6 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 - 1;
  }

  result = sub_2145924D8(v7);
  if (v9)
  {
    __break(1u);
  }

  return result;
}

id sub_214560F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_213FB568C(a1 + *a4, &v21 - v13, a5);
  v15 = &v14[*(v11 + 32)];
  v16 = *(v15 + 3);
  if (v16 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);

    sub_213FB5844(v14, a6);
    if (v16)
    {
      v19 = sub_2146D9588();
      sub_213FDC6D0(v17, v16);
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  return result;
}

uint64_t sub_214561118(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a1(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_213FB568C(v4 + *a2, &v17 - v11, a3);
  v13 = &v12[*(v9 + 32)];
  if (*(v13 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = *(v13 + 2);
    v15 = *(v13 + 3);

    sub_213FB5844(v12, a4);
    return v14;
  }

  return result;
}

id LiteTapback.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for LiteTapback(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for LiteTapback);
  v5 = type metadata accessor for _ObjCLiteTapbackWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, type metadata accessor for LiteTapback);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for LiteTapback);
  return v7;
}

__n128 sub_21456144C@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorLocationCoordinate2D_locationCoordinate2D);
  *a1 = result;
  return result;
}

id sub_214561774()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorMarkAsReviewedCommand_markAsReviewedCommand, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

id sub_2145619B8()
{
  v1 = type metadata accessor for MarkAsReviewedCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for MarkAsReviewedCommand);
  v5 = type metadata accessor for _ObjCMarkAsReviewedCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMarkAsReviewedCommand_markAsReviewedCommand, type metadata accessor for MarkAsReviewedCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for MarkAsReviewedCommand);
  return v7;
}

id sub_214561D10()
{
  v1 = type metadata accessor for MarkUnreadRequest();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for MarkUnreadRequest);
  v5 = type metadata accessor for _ObjCMarkUnreadRequestWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMarkUnreadRequest_markUnreadRequest, type metadata accessor for MarkUnreadRequest);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for MarkUnreadRequest);
  return v7;
}

id sub_214561FA8()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata);
  if (*(v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata + 24))
  {
    return 0;
  }

  v3 = *(v1 + 2);
  v7 = *v1;
  v4 = type metadata accessor for _ObjCMediaMetadata_LargeImageContextualInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo];
  *v6 = v7;
  *(v6 + 2) = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21456217C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v4 = type metadata accessor for MediaMetadata();
  return sub_213FB2E54(v3 + *(v4 + 20), a1, &qword_27C913090, &unk_2146E9DB0);
}

uint64_t sub_2145622A0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 24));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

double sub_2145623FC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214562598()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 36));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_2145626C8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 40));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_214562730(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 40));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_214562838()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

double sub_214562B10()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 64);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214562C2C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 68));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_214562D44()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 72));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

double sub_214562E18()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 76);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214562F38()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 80);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214563054()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 84));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_21456316C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 88));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

double sub_214563288()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 92);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214563354()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 96));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2145634B0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 104));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_2145635C8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 108));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_2145636E0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 112));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

double sub_21456387C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 120);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214563B38()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 132));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

double sub_214563C58()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 136);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214563D74()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 140));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

double sub_214563E90()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 144);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214563FB0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 148);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_2145640D0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 152);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_2145641F0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 156);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214564310()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 160);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214564430()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 164);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2145644FC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 168));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2145645C8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 172));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214564694()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 176));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

double sub_2145648AC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 184);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_2145649CC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 188);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214564A98()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 192));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

double sub_214564BB8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 196);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214564CD8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 200);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214564DF8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 204);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214564F18()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 208);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214564FE4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 212));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214565174@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v4 = type metadata accessor for MediaMetadata();
  return sub_213FB2E54(v3 + *(v4 + 216), a1, &qword_27C913090, &unk_2146E9DB0);
}

double sub_21456529C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 220);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_2145653BC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 224);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214565488()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 228));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214565554()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 232));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214565670()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 236));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_214565738()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 240));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2145659C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v4 = type metadata accessor for MediaMetadata();
  return sub_213FB2E54(v3 + *(v4 + 248), a1, &unk_27C904F30, &unk_2146EFA20);
}

uint64_t sub_214565A94()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 252));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214565C58()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 260));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

double sub_214565D78()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 264);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214565E98()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 268);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214565FB4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 272));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_2145660CC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 276));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

double sub_2145662E0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 284);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214566400()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 288);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214566520()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 292);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214566640()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 296);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21456675C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 300));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

double sub_214566970()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 308);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214566D74()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 324));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_214566DF0()
{
  v1 = type metadata accessor for MediaMetadata();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata, v5, type metadata accessor for MediaMetadata);
  v6 = v5[*(v2 + 336)];
  result = sub_213FB5844(v5, type metadata accessor for MediaMetadata);
  if (v6 <= 7)
  {
    return qword_2147604E0[v6];
  }

  __break(1u);
  return result;
}

double sub_214567090()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 336);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214567590()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = v1 + *(type metadata accessor for MediaMetadata() + 356);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21456765C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v2 = (v1 + *(type metadata accessor for MediaMetadata() + 360));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id MediaMetadata.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for MediaMetadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for MediaMetadata);
  v5 = type metadata accessor for _ObjCMediaMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata, type metadata accessor for MediaMetadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for MediaMetadata);
  return v7;
}

id sub_21456789C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = &v1[OBJC_IVAR___BlastDoorMessageContent_messageContent];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 6) = v2;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCMessageContentWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2145678F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorMessageContent_messageContent;
  v3 = *(v1 + OBJC_IVAR___BlastDoorMessageContent_messageContent);
  v4 = *(v1 + OBJC_IVAR___BlastDoorMessageContent_messageContent + 24);
  v5 = *(v1 + OBJC_IVAR___BlastDoorMessageContent_messageContent + 32);
  v6 = *(v1 + OBJC_IVAR___BlastDoorMessageContent_messageContent + 40);
  v7 = *(v2 + 48);
  *a1 = v3;
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;

  return sub_214031CA0(v5);
}

uint64_t sub_214567A2C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorMessageContent_messageContent);
  v2 = *(v0 + OBJC_IVAR___BlastDoorMessageContent_messageContent + 8);

  return v1;
}

id sub_214567AF0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMessageContent_messageContent;
  if (!*(v0 + OBJC_IVAR___BlastDoorMessageContent_messageContent + 32))
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR___BlastDoorMessageContent_messageContent + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  return sub_214664BB8();
}

id sub_214567C20()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = type metadata accessor for _ObjCMessageContentWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorMessageContent_messageContent];
  *v10 = v2;
  *(v10 + 1) = v1;
  *(v10 + 2) = v4;
  *(v10 + 3) = v3;
  *(v10 + 4) = v5;
  *(v10 + 5) = v6;
  *(v10 + 6) = v7;

  sub_214031CA0(v5);
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_214567CD4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = type metadata accessor for _ObjCMessageContentWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorMessageContent_messageContent];
  *v10 = v2;
  *(v10 + 1) = v1;
  *(v10 + 2) = v4;
  *(v10 + 3) = v3;
  *(v10 + 4) = v5;
  *(v10 + 5) = v6;
  *(v10 + 6) = v7;

  sub_214031CA0(v5);
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_214567F60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v1 + OBJC_IVAR___BlastDoorMetadata_metadata, v6, type metadata accessor for Metadata);
  v7 = sub_2146D8B88();
  return (*(*(v7 - 8) + 32))(a1, v6, v7);
}

uint64_t sub_214568078()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMetadata_metadata;
  v2 = (v1 + *(type metadata accessor for Metadata() + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

id sub_2145681A0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorMetadata_metadata;
  v2 = (v1 + *(type metadata accessor for Metadata() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v7 = v3;
  v7[1] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214568224(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[1];
  v5 = &v3[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v5 = *a1;
  v5[1] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214568300()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

id sub_21456844C(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[*a2];
  v7 = a1[4];
  *(v6 + 3) = a1[3];
  *(v6 + 4) = v7;
  v8 = a1[2];
  *(v6 + 1) = a1[1];
  *(v6 + 2) = v8;
  *v6 = *a1;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_2145684DC@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 16);
  v8[0] = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2142F95FC(v8, &v7);
}

uint64_t sub_2145685EC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun);
  v2 = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 8);

  return v1;
}

id sub_214568774()
{
  v1 = v0[3];
  v11[2] = v0[2];
  v11[3] = v1;
  v11[4] = v0[4];
  v2 = v0[1];
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCMorphologyCustomPronounWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun];
  v6 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v0[4];
  v7 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_2142F95FC(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21456880C()
{
  v1 = v0[3];
  v14 = v0[2];
  v15 = v1;
  v16 = v0[4];
  v2 = v0[1];
  v12 = *v0;
  v13 = v2;
  v3 = type metadata accessor for _ObjCMorphologyCustomPronounWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun];
  *v5 = v12;
  v6 = v16;
  v8 = v13;
  v7 = v14;
  *(v5 + 3) = v15;
  *(v5 + 4) = v6;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  sub_2142F95FC(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21456889C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair];
  v5 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v5;
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 10) = *(a1 + 80);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21456890C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair];
  v3 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v3;
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 10) = *(a1 + 80);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCMorphologyCustomPronounPairWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21456896C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 32);
  v4 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 64);
  v11 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 48);
  v3 = v11;
  v12 = v4;
  v13 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 80);
  v5 = v13;
  v7 = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 16);
  v10[0] = *(v1 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair);
  v6 = v10[0];
  v10[1] = v7;
  v10[2] = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *a1 = v6;
  *(a1 + 16) = v7;
  return sub_2145925C0(v10, v9);
}

id sub_214568B7C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 48);
  *&v12[32] = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 32);
  *&v12[48] = v1;
  *&v12[64] = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 64);
  *&v12[80] = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 80);
  v2 = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 16);
  *v12 = *(v0 + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair);
  *&v12[16] = v2;
  v3 = type metadata accessor for _ObjCMorphologyCustomPronounWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun];
  *v5 = *&v12[8];
  v6 = *&v12[40];
  v7 = *&v12[72];
  v8 = *&v12[24];
  *(v5 + 3) = *&v12[56];
  *(v5 + 4) = v7;
  *(v5 + 1) = v8;
  *(v5 + 2) = v6;
  sub_2145925C0(v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214568D20()
{
  v1 = *(v0 + 48);
  v11[2] = *(v0 + 32);
  v11[3] = v1;
  v11[4] = *(v0 + 64);
  v12 = *(v0 + 80);
  v2 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCMorphologyCustomPronounPairWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair];
  v6 = *(v0 + 48);
  *(v5 + 2) = *(v0 + 32);
  *(v5 + 3) = v6;
  *(v5 + 4) = *(v0 + 64);
  *(v5 + 10) = *(v0 + 80);
  v7 = *(v0 + 16);
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_2145925C0(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214568DCC()
{
  v1 = v0[3];
  v15 = v0[2];
  v16 = v1;
  v17 = v0[4];
  v18 = *(v0 + 10);
  v2 = v0[1];
  v13 = *v0;
  v14 = v2;
  v3 = type metadata accessor for _ObjCMorphologyCustomPronounPairWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair];
  v6 = v14;
  *v5 = v13;
  *(v5 + 1) = v6;
  v8 = v16;
  v7 = v17;
  v9 = v15;
  *(v5 + 10) = v18;
  *(v5 + 3) = v8;
  *(v5 + 4) = v7;
  *(v5 + 2) = v9;
  sub_2145925C0(&v13, v12);
  v11.receiver = v4;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214568E78(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 8);
  v6 = &v3[OBJC_IVAR___BlastDoorMorphology_morphology];
  *v6 = *a1;
  v6[2] = v4;
  *(v6 + 1) = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214568EE0(uint64_t a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 8);
  v4 = &v1[OBJC_IVAR___BlastDoorMorphology_morphology];
  *v4 = *a1;
  v4[2] = v2;
  *(v4 + 1) = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCMorphologyWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214568F38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMorphology_morphology + 2);
  v3 = *(v1 + OBJC_IVAR___BlastDoorMorphology_morphology + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorMorphology_morphology);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
}

unint64_t sub_214569008()
{
  result = *(v0 + OBJC_IVAR___BlastDoorMorphology_morphology);
  if (result > 3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_214569054()
{
  result = sub_214592640(*(v0 + OBJC_IVAR___BlastDoorMorphology_morphology + 1));
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2145690C4()
{
  result = *(v0 + OBJC_IVAR___BlastDoorMorphology_morphology + 2);
  if (result > 6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21456912C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorMorphology_morphology + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCMorphologyCustomPronounPairWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 88)
    {
      v7 = *(v1 + i + 16);
      v20 = *(v1 + i);
      v21 = v7;
      v8 = *(v1 + i + 32);
      v9 = *(v1 + i + 48);
      v10 = *(v1 + i + 64);
      v25 = *(v1 + i + 80);
      v23 = v9;
      v24 = v10;
      v22 = v8;
      v11 = objc_allocWithZone(v4);
      v12 = &v11[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair];
      v13 = v21;
      *v12 = v20;
      *(v12 + 1) = v13;
      v15 = v23;
      v14 = v24;
      v16 = v22;
      *(v12 + 10) = v25;
      *(v12 + 3) = v15;
      *(v12 + 4) = v14;
      *(v12 + 2) = v16;
      sub_2145925C0(&v20, v19);
      v18.receiver = v11;
      v18.super_class = v4;
      objc_msgSendSuper2(&v18, sel_init);
      sub_2146D9F98();
      v17 = *(v26 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v26;
  }

  return result;
}

id Morphology.bridgedToObjectiveC.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = type metadata accessor for _ObjCMorphologyWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMorphology_morphology];
  *v6 = v1;
  v6[2] = v2;
  *(v6 + 1) = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214569388()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = type metadata accessor for _ObjCMorphologyWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMorphology_morphology];
  *v6 = v1;
  v6[2] = v2;
  *(v6 + 1) = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_2145694FC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorNickname_nickname);
  v2 = *(v0 + OBJC_IVAR___BlastDoorNickname_nickname + 8);

  return v1;
}

id sub_214569594()
{
  sub_213FB2E54(v0 + OBJC_IVAR___BlastDoorNickname_nickname + 32, __src, &qword_27C914390, &unk_21474BEF0);
  if (__src[0])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_214592670(__dst, __src);
    v1 = type metadata accessor for _ObjCAvatarImageWrapper();
    v2 = objc_allocWithZone(v1);
    sub_214592670(__src, v2 + OBJC_IVAR___BlastDoorAvatarImage_avatarImage);
    v5.receiver = v2;
    v5.super_class = v1;
    v3 = objc_msgSendSuper2(&v5, sel_init);
    sub_2142FAECC(__src);
    sub_2142FAECC(__dst);
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C914390, &unk_21474BEF0);
    return 0;
  }

  return v3;
}

id sub_2145696F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914398, "Vh\a");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Wallpaper(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = v0 + OBJC_IVAR___BlastDoorNickname_nickname;
  v14 = type metadata accessor for Nickname(0);
  sub_213FB2E54(v13 + *(v14 + 28), v4, &qword_27C914398, "Vh\a");
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &qword_27C914398, "Vh\a");
    return 0;
  }

  else
  {
    sub_21459375C(v4, v12, type metadata accessor for Wallpaper);
    sub_213FB568C(v12, v10, type metadata accessor for Wallpaper);
    v16 = type metadata accessor for _ObjCWallpaperWrapper(0);
    v17 = objc_allocWithZone(v16);
    sub_213FB568C(v10, v17 + OBJC_IVAR___BlastDoorWallpaper_wallpaper, type metadata accessor for Wallpaper);
    v19.receiver = v17;
    v19.super_class = v16;
    v18 = objc_msgSendSuper2(&v19, sel_init);
    sub_213FB5844(v10, type metadata accessor for Wallpaper);
    sub_213FB5844(v12, type metadata accessor for Wallpaper);
    return v18;
  }
}

id sub_214569A3C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorNickname_nickname;
  v2 = (v1 + *(type metadata accessor for Nickname(0) + 32));
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *v2;
  v5 = *v2 >> 8;
  v6 = *v2 >> 16;
  v7 = type metadata accessor for _ObjCMorphologyWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorMorphology_morphology];
  *v9 = v4;
  v9[1] = v5;
  v9[2] = v6;
  *(v9 + 1) = v3;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_214569C1C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorNickname_nickname;
  v2 = type metadata accessor for Nickname(0);
  result = 0;
  v4 = (v1 + *(v2 + 36));
  v5 = v4[3];
  v23 = v4[2];
  v24[0] = v5;
  *(v24 + 10) = *(v4 + 58);
  v6 = v4[1];
  v22[0] = *v4;
  v22[1] = v6;
  if (v23 != 0xFF)
  {
    v7 = v4[1];
    v14 = *v4;
    v15 = v7;
    v16 = v23;
    v17 = *(v4 + 40);
    v18 = *(v4 + 56);
    v19 = *(v4 + 36);
    v8 = v4[3];
    v20[2] = v4[2];
    v21[0] = v8;
    *(v21 + 10) = *(v4 + 58);
    v20[0] = v14;
    v20[1] = v7;
    sub_214592710(v20, &v13);
    v9 = sub_214487890();
    v11 = v10;
    v12 = sub_2146D8A38();
    sub_213FB2DF4(v22, &qword_27C9143A0, &qword_21474BF00);
    sub_213FB54FC(v9, v11);
    return v12;
  }

  return result;
}

id sub_214569DD0()
{
  v1 = type metadata accessor for Nickname(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for Nickname);
  v5 = type metadata accessor for _ObjCNicknameWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorNickname_nickname, type metadata accessor for Nickname);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Nickname);
  return v7;
}

uint64_t sub_21456A294(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PosterArchive();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(v1 + *a1, v6, &qword_27C9055E0, &unk_2146F4F50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C9055E0, &unk_2146F4F50);
    return 0;
  }

  else
  {
    sub_21459375C(v6, v11, type metadata accessor for PosterArchive);
    v13 = PosterArchive.bridgedToObjectiveC.getter();
    sub_213FB5844(v11, type metadata accessor for PosterArchive);
    return v13;
  }
}

uint64_t sub_21456A59C()
{
  v1 = type metadata accessor for Wallpaper(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorWallpaper_wallpaper, v5, type metadata accessor for Wallpaper);
  v6 = &v5[*(v2 + 28)];
  if (*(v6 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = *(v6 + 2);
    v8 = *(v6 + 3);

    sub_213FB5844(v5, type metadata accessor for Wallpaper);
    return v7;
  }

  return result;
}

id sub_21456A700()
{
  v1 = v0 + OBJC_IVAR___BlastDoorWallpaper_wallpaper;
  v2 = type metadata accessor for Wallpaper(0);
  sub_213FB2E54(v1 + *(v2 + 24), __src, &qword_27C9081A8, &unk_21474BF20);
  if (__src[34] >> 1 != 0xFFFFFFFFLL || (__src[38] | __src[36]) > 1 || __src[44] & 0xFFFFFFFFFFFFFEFELL | __src[40] & 0xFFFFFFFFFFFF00FELL || (__src[48] | __src[46]) >= 2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21459276C(__dst, __src);
    v4 = type metadata accessor for _ObjCWallpaper_WallpaperImageWrapper();
    v5 = objc_allocWithZone(v4);
    sub_21459276C(__src, v5 + OBJC_IVAR___BlastDoorWallpaper_WallpaperImage_wallpaper_WallpaperImage);
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    sub_2145927EC(__src);
    sub_2145927EC(__dst);
    return v6;
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C9081A8, &unk_21474BF20);
    return 0;
  }
}

id sub_21456A8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_213FB568C(a1 + *a4, &v21 - v13, a5);
  v15 = &v14[*(v11 + 36)];
  v16 = *(v15 + 3);
  if (v16 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);

    sub_213FB5844(v14, a6);
    if (v16)
    {
      v19 = sub_2146D9588();
      sub_213FDC6D0(v17, v16);
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  return result;
}

uint64_t sub_21456AA50(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a1(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_213FB568C(v4 + *a2, &v17 - v11, a3);
  v13 = &v12[*(v9 + 36)];
  if (*(v13 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = *(v13 + 2);
    v15 = *(v13 + 3);

    sub_213FB5844(v12, a4);
    return v14;
  }

  return result;
}

id sub_21456ABA8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorWallpaper_wallpaper;
  v2 = type metadata accessor for Wallpaper(0);
  sub_213FB2E54(v1 + *(v2 + 32), __src, &qword_27C9081A8, &unk_21474BF20);
  if (__src[34] >> 1 != 0xFFFFFFFFLL || (__src[38] | __src[36]) > 1 || __src[44] & 0xFFFFFFFFFFFFFEFELL | __src[40] & 0xFFFFFFFFFFFF00FELL || (__src[48] | __src[46]) >= 2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21459276C(__dst, __src);
    v4 = type metadata accessor for _ObjCWallpaper_WallpaperImageWrapper();
    v5 = objc_allocWithZone(v4);
    sub_21459276C(__src, v5 + OBJC_IVAR___BlastDoorWallpaper_WallpaperImage_wallpaper_WallpaperImage);
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    sub_2145927EC(__src);
    sub_2145927EC(__dst);
    return v6;
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C9081A8, &unk_21474BF20);
    return 0;
  }
}

id sub_21456AEDC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorWallpaper_wallpaper;
  v2 = (v1 + *(type metadata accessor for Wallpaper(0) + 40));
  v3 = v2[7];
  v4 = v2[5];
  v33 = v2[6];
  v34 = v3;
  v5 = v2[7];
  v35[0] = v2[8];
  *(v35 + 9) = *(v2 + 137);
  v6 = v2[3];
  v7 = v2[1];
  v29 = v2[2];
  v30 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v31 = v2[4];
  v32 = v9;
  v10 = v2[1];
  v27 = *v2;
  v28 = v10;
  v42 = v33;
  v43 = v5;
  v44[0] = v2[8];
  *(v44 + 9) = *(v2 + 137);
  v38 = v29;
  v39 = v8;
  v40 = v31;
  v41 = v4;
  v36 = v27;
  v37 = v7;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v36);
  result = 0;
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 != 1)
  {
    v13 = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
    v16 = v37;
    *v15 = v36;
    *(v15 + 1) = v16;
    v17 = v41;
    v19 = v38;
    v18 = v39;
    *(v15 + 4) = v40;
    *(v15 + 5) = v17;
    *(v15 + 2) = v19;
    *(v15 + 3) = v18;
    v21 = v43;
    v20 = v44[0];
    v22 = v42;
    *(v15 + 137) = *(v44 + 9);
    *(v15 + 7) = v21;
    *(v15 + 8) = v20;
    *(v15 + 6) = v22;
    v25[0] = v27;
    v25[1] = v28;
    v25[4] = v31;
    v25[5] = v32;
    v25[2] = v29;
    v25[3] = v30;
    *(v26 + 9) = *(v35 + 9);
    v25[7] = v34;
    v26[0] = v35[0];
    v25[6] = v33;
    sub_21430E4C0(v25, v24);
    v23.receiver = v14;
    v23.super_class = v13;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  return result;
}

id sub_21456B04C(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
  v5 = a1[7];
  *(v4 + 6) = a1[6];
  *(v4 + 7) = v5;
  *(v4 + 8) = a1[8];
  *(v4 + 137) = *(a1 + 137);
  v6 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v6;
  v7 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v7;
  v8 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v8;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21456B180()
{
  v1 = type metadata accessor for Wallpaper(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for Wallpaper);
  v5 = type metadata accessor for _ObjCWallpaperWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorWallpaper_wallpaper, type metadata accessor for Wallpaper);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Wallpaper);
  return v7;
}

id sub_21456B2C0(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], a1, 0x109uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21456B328(void *__src)
{
  memcpy(&v1[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __src, 0x109uLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ObjCNicknameInformationWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21456B374@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation), 0x109uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation), 0x109uLL);
  return sub_2142FB7A4(__dst, &v4);
}

uint64_t sub_21456B550()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21456B664()
{
  if (*(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 88))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 80);
  }
}

id sub_21456B690(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 104))
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21456B708(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);

  return v3;
}

uint64_t sub_21456B814()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 136);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 128);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21456B97C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 176);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 168);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21456BAE4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 216);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 208);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21456BC4C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 256);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 248);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

id sub_21456BDA0()
{
  memcpy(__dst, v0, 0x109uLL);
  v1 = type metadata accessor for _ObjCNicknameInformationWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], v0, 0x109uLL);
  sub_2142FB7A4(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21456BE24()
{
  memcpy(__dst, v0, 0x109uLL);
  v1 = type metadata accessor for _ObjCNicknameInformationWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __dst, 0x109uLL);
  sub_2142FB7A4(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21456C034()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorNicknameInformationMessage_nicknameInformationMessage), 0x109uLL);
  v1 = type metadata accessor for _ObjCNicknameInformationWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __dst, 0x109uLL);
  sub_2142FB7A4(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21456C1E4()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorNicknameInformationMessage_nicknameInformationMessage;
  v6 = type metadata accessor for NicknameInformationMessage();
  sub_213FB568C(v5 + *(v6 + 20), v4, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v4, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v9;
}

id sub_21456C3A8()
{
  v1 = type metadata accessor for NicknameInformationMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for NicknameInformationMessage);
  v5 = type metadata accessor for _ObjCNicknameInformationMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorNicknameInformationMessage_nicknameInformationMessage, type metadata accessor for NicknameInformationMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for NicknameInformationMessage);
  return v7;
}

id sub_21456C700()
{
  v1 = type metadata accessor for NotifyRecipientCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for NotifyRecipientCommand);
  v5 = type metadata accessor for _ObjCNotifyRecipientCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorNotifyRecipientCommand_notifyRecipientCommand, type metadata accessor for NotifyRecipientCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for NotifyRecipientCommand);
  return v7;
}

id sub_21456C840(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_214392134(a1, v3 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_21439216C(a1);
  return v4;
}

id sub_21456C8B4(uint64_t a1)
{
  sub_214392134(a1, v1 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCOrderPreviewWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_21439216C(a1);
  return v3;
}

id sub_21456C9E4()
{
  sub_213FB2E54(v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview, __src, &qword_27C911CC0, &qword_214731D20);
  if (__src[34] >> 1 != 0xFFFFFFFFLL || (__src[38] | __src[36]) > 1 || __src[44] & 0xFFFFFFFFFFFFFEFELL | __src[40] & 0xFFFFFFFFFFFF00FELL || (__src[48] | __src[46]) >= 2)
  {
    memcpy(__dst, __src, 0x1B9uLL);
    sub_214391180(__dst, __src);
    v2 = type metadata accessor for _ObjCOrderPreview_OrderImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_214391180(__src, v3 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_2143911B8(__src);
    sub_2143911B8(__dst);
    return v4;
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C911CC0, &qword_214731D20);
    return 0;
  }
}

id sub_21456CB18(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_214391180(a1, v3 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2143911B8(a1);
  return v4;
}

id sub_21456CC18()
{
  v1 = v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview;
  if (*(v1 + 480))
  {
    return 0;
  }

  v3 = type metadata accessor for _ObjCColorWrapper();
  v6 = *(v1 + 464);
  v7 = *(v1 + 448);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v7;
  *(v5 + 1) = v6;
  v8.receiver = v4;
  v8.super_class = v3;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21456CD40()
{
  v2 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 488);
  v1 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 496);
  v3 = (v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 504);
  v4 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 536);
  v5 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v9 = v3[1];
  v10 = *v3;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  v7[48] = v4;
  v11.receiver = v6;
  v11.super_class = v5;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21456CDDC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = &v3[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v6 = *a1;
  *(v6 + 1) = v4;
  v7 = *(a1 + 32);
  *(v6 + 1) = *(a1 + 16);
  *(v6 + 2) = v7;
  v6[48] = v5;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21456CF00()
{
  v1 = v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview;
  v2 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 552);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 592);
  v4 = *(v1 + 544);
  v5 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v9 = *(v1 + 576);
  v10 = *(v1 + 560);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v7 = v4;
  *(v7 + 1) = v2;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  v7[48] = v3 & 1;
  v11.receiver = v6;
  v11.super_class = v5;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21456D06C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview;
  v2 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 608);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 648);
  v4 = (v1 + 616);
  v5 = *(v1 + 600);
  v6 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v10 = v4[1];
  v11 = *v4;
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v8 = v5;
  *(v8 + 1) = v2;
  *(v8 + 1) = v11;
  *(v8 + 2) = v10;
  v8[48] = v3 & 1;
  v12.receiver = v7;
  v12.super_class = v6;

  return objc_msgSendSuper2(&v12, sel_init);
}

id OrderPreview.bridgedToObjectiveC.getter()
{
  sub_214392134(v0, v6);
  v1 = type metadata accessor for _ObjCOrderPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214392134(v6, v2 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_21439216C(v6);
  return v3;
}

id sub_21456D224()
{
  sub_214392134(v0, v6);
  v1 = type metadata accessor for _ObjCOrderPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214392134(v6, v2 + OBJC_IVAR___BlastDoorOrderPreview_orderPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_21439216C(v6);
  return v3;
}

id sub_21456D2A4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_214497A24(a1, v3 + OBJC_IVAR___BlastDoorPassPreview_passPreview);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_214497A5C(a1);
  return v4;
}

id sub_21456D318(uint64_t a1)
{
  sub_214497A24(a1, v1 + OBJC_IVAR___BlastDoorPassPreview_passPreview);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCPassPreviewWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214497A5C(a1);
  return v3;
}

id sub_21456D448()
{
  sub_213FB2E54(v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview, __src, &qword_27C9144F0, qword_21475A4B0);
  if (__src[34] >> 1 != 0xFFFFFFFFLL || (__src[38] | __src[36]) > 1 || __src[44] & 0xFFFFFFFFFFFFFEFELL | __src[40] & 0xFFFFFFFFFFFF00FELL || (__src[48] | __src[46]) >= 2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_214495CA4(__dst, __src);
    v2 = type metadata accessor for _ObjCPassPreview_PassImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_214495CA4(__src, v3 + OBJC_IVAR___BlastDoorPassPreview_PassImage_passPreview_PassImage);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_214495C74(__src);
    sub_214495C74(__dst);
    return v4;
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C9144F0, qword_21475A4B0);
    return 0;
  }
}

id sub_21456D5F4()
{
  sub_213FB2E54(v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview + 440, __src, &qword_27C9144F0, qword_21475A4B0);
  if (__src[34] >> 1 != 0xFFFFFFFFLL || (__src[38] | __src[36]) > 1 || __src[44] & 0xFFFFFFFFFFFFFEFELL | __src[40] & 0xFFFFFFFFFFFF00FELL || (__src[48] | __src[46]) >= 2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_214495CA4(__dst, __src);
    v2 = type metadata accessor for _ObjCPassPreview_PassImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_214495CA4(__src, v3 + OBJC_IVAR___BlastDoorPassPreview_PassImage_passPreview_PassImage);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_214495C74(__src);
    sub_214495C74(__dst);
    return v4;
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C9144F0, qword_21475A4B0);
    return 0;
  }
}

id sub_21456D7C8()
{
  sub_2144966B0(v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview + 880, v6);
  v1 = type metadata accessor for _ObjCPassPreview_PassBackgroundWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2144966B0(v6, v2 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2144966E8(v6);
  return v3;
}

id sub_21456D888(uint64_t a1, void *a2, void (*a3)(uint64_t, char *), void (*a4)(uint64_t))
{
  v9 = objc_allocWithZone(v4);
  a3(a1, &v9[*a2]);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a4(a1);
  return v10;
}

id sub_21456D9C0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview;
  v2 = *(v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview + 1360);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 1368);
  v4 = *(v1 + 1352);
  v5 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  v9 = v3[1];
  v10 = *v3;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v7 = v4;
  *(v7 + 1) = v2;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  v11.receiver = v6;
  v11.super_class = v5;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21456DA5C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v6 = *(a1 + 32);
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21456DB68()
{
  v1 = v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview;
  v2 = *(v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview + 1408);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 1416);
  v4 = *(v1 + 1400);
  v5 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  v9 = v3[1];
  v10 = *v3;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v7 = v4;
  *(v7 + 1) = v2;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  v11.receiver = v6;
  v11.super_class = v5;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21456DCB0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview;
  v2 = *(v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview + 1456);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 1464);
  v4 = *(v1 + 1448);
  v5 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  v9 = v3[1];
  v10 = *v3;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v7 = v4;
  *(v7 + 1) = v2;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  v11.receiver = v6;
  v11.super_class = v5;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21456DE00()
{
  sub_214497A24(v0 + OBJC_IVAR___BlastDoorPassPreview_passPreview, v8);
  v5 = v10;
  v6 = v9;
  sub_214497A5C(v8);
  v1 = type metadata accessor for _ObjCColorWrapper();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR___BlastDoorColor_color];
  *v3 = v6;
  *(v3 + 1) = v5;
  v7.receiver = v2;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PassPreview.bridgedToObjectiveC.getter()
{
  sub_214497A24(v0, v6);
  v1 = type metadata accessor for _ObjCPassPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214497A24(v6, v2 + OBJC_IVAR___BlastDoorPassPreview_passPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214497A5C(v6);
  return v3;
}

id sub_21456DF8C()
{
  sub_214497A24(v0, v6);
  v1 = type metadata accessor for _ObjCPassPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214497A24(v6, v2 + OBJC_IVAR___BlastDoorPassPreview_passPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214497A5C(v6);
  return v3;
}

id PlayedReceipt.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for PlayedReceipt();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for PlayedReceipt);
  v5 = type metadata accessor for _ObjCPlayedReceiptWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorPlayedReceipt_playedReceipt, type metadata accessor for PlayedReceipt);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for PlayedReceipt);
  return v7;
}

id sub_21456E364(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[1];
  v5 = &v3[OBJC_IVAR___BlastDoorPreviewAudio_previewAudio];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21456E3C4(void *a1)
{
  v2 = a1[1];
  v3 = &v1[OBJC_IVAR___BlastDoorPreviewAudio_previewAudio];
  *v3 = *a1;
  *(v3 + 1) = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCPreviewAudioWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21456E414@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorPreviewAudio_previewAudio + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorPreviewAudio_previewAudio);
  a1[1] = v2;
}

id sub_21456E4E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3 + 8);

  v4 = sub_2146D98E8();

  return v4;
}

id PreviewAudio.bridgedToObjectiveC.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCPreviewAudioWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorPreviewAudio_previewAudio];
  *v5 = v1;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21456E654()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCPreviewAudioWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorPreviewAudio_previewAudio];
  *v5 = v1;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21456E6C8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_214592A08(a1, v3 + OBJC_IVAR___BlastDoorPreviewImage_previewImage);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_214592A64(a1);
  return v4;
}

id sub_21456E73C(uint64_t a1)
{
  sub_214592A08(a1, v1 + OBJC_IVAR___BlastDoorPreviewImage_previewImage);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCPreviewImageWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214592A64(a1);
  return v3;
}

uint64_t sub_21456E86C()
{
  sub_214592A08(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_214592A64(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21456EA08()
{
  result = *(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage + 448);
  if (*(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage + 456))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21456EB44()
{
  *(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage + 458);
  v1 = sub_2146D9588();

  return v1;
}

uint64_t sub_21456ECA0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage + 464);
  v2 = *(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage + 472);

  return v1;
}

double sub_21456ED18()
{
  result = *(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage + 488);
  v2 = *(v0 + OBJC_IVAR___BlastDoorPreviewImage_previewImage + 496);
  return result;
}

id PreviewImage.bridgedToObjectiveC.getter()
{
  sub_214592A08(v0, v6);
  v1 = type metadata accessor for _ObjCPreviewImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592A08(v6, v2 + OBJC_IVAR___BlastDoorPreviewImage_previewImage);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214592A64(v6);
  return v3;
}

id sub_21456EE34()
{
  sub_214592A08(v0, v6);
  v1 = type metadata accessor for _ObjCPreviewImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592A08(v6, v2 + OBJC_IVAR___BlastDoorPreviewImage_previewImage);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214592A64(v6);
  return v3;
}

id sub_21456F0B4()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorPriorityMessageCommand_priorityMessageCommand, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

id sub_21456F1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_213FB568C(a1 + *a4, &v19 - v13, a5);
  v15 = &v14[*(v11 + 28)];
  if (*(v15 + 2))
  {
    v16 = *(v15 + 2);

    sub_213FB5844(v14, a6);
    v17 = sub_2146D98E8();

    return v17;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21456F378(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a1(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_213FB568C(v4 + *a2, &v17 - v11, a3);
  v13 = &v12[*(v9 + 28)];
  v14 = *(v13 + 2);
  if (v14)
  {
    v15 = *(v13 + 2);

    sub_213FB5844(v12, a4);
    return v14;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_21456F534()
{
  v1 = type metadata accessor for PriorityMessageCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for PriorityMessageCommand);
  v5 = type metadata accessor for _ObjCPriorityMessageCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorPriorityMessageCommand_priorityMessageCommand, type metadata accessor for PriorityMessageCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for PriorityMessageCommand);
  return v7;
}

id sub_21456F760()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorReadReceipt_readReceipt, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

id sub_21456F9A0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 28));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21456FA40(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 28));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_21456FB74(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 32));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_21456FBDC(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 32));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

id ReadReceipt.bridgedToObjectiveC.getter()
{
  Receipt = type metadata accessor for ReadReceipt();
  v2 = *(*(Receipt - 8) + 64);
  MEMORY[0x28223BE20](Receipt - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for ReadReceipt);
  v5 = type metadata accessor for _ObjCReadReceiptWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorReadReceipt_readReceipt, type metadata accessor for ReadReceipt);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for ReadReceipt);
  return v7;
}

id sub_21456FFE8()
{
  v1 = type metadata accessor for RecoverJunkCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for RecoverJunkCommand);
  v5 = type metadata accessor for _ObjCRecoverJunkCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorRecoverJunkCommand_recoverJunkCommand, type metadata accessor for RecoverJunkCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for RecoverJunkCommand);
  return v7;
}

uint64_t sub_2145702B0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 40);
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 48);

  return v1;
}

id sub_214570394()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage;
  v3 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 56);
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 64);
  v5 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 72);
  v4 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for _ObjCGroupIDWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorGroupID_groupID];
  *v9 = v3;
  *(v9 + 1) = v2;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145704D4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage;
  v3 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 96);
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 104);
  v5 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 112);
  v4 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 120);
  v6 = *(v1 + 128);
  v7 = type metadata accessor for _ObjCGroupIDWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorGroupID_groupID];
  *v9 = v3;
  *(v9 + 1) = v2;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21457067C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage;
  v4 = *(type metadata accessor for RelayGroupMutationMessage() + 32);
  v5 = sub_2146D8B88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_21457074C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_213FB568C(a1 + *a4, &v21 - v13, a5);
  v15 = &v14[*(v11 + 44)];
  v16 = *(v15 + 3);
  if (v16 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);

    sub_213FB5844(v14, a6);
    if (v16)
    {
      v19 = sub_2146D9588();
      sub_213FDC6D0(v17, v16);
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  return result;
}

uint64_t sub_2145708DC(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a1(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_213FB568C(v4 + *a2, &v17 - v11, a3);
  v13 = &v12[*(v9 + 44)];
  if (*(v13 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = *(v13 + 2);
    v15 = *(v13 + 3);

    sub_213FB5844(v12, a4);
    return v14;
  }

  return result;
}

id sub_214570B34()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage;
  v2 = v1 + *(type metadata accessor for RelayGroupMutationMessage() + 44);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 33);
  v8 = *(v2 + 32);
  v9 = type metadata accessor for _ObjCEnumRelayGroupMutationWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation];
  *v11 = v3;
  *(v11 + 1) = v4;
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  v11[32] = v8;
  v11[33] = v7;
  sub_2142FDFBC(v3, v4, v5, v6, v8, v7);
  v13.receiver = v10;
  v13.super_class = v9;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214570BF8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 32);
  v5 = &v3[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 16) = v4;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214570D0C()
{
  v1 = type metadata accessor for RelayGroupMutationMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for RelayGroupMutationMessage);
  v5 = type metadata accessor for _ObjCRelayGroupMutationMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage, type metadata accessor for RelayGroupMutationMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for RelayGroupMutationMessage);
  return v7;
}

uint64_t sub_214570E78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope;
  v3 = *(v1 + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope);
  v4 = *(v1 + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope + 8);
  v5 = *(v1 + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope + 16);
  v6 = *(v1 + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v2 + 32);
  return sub_21431C5DC(v3);
}

id sub_214570FEC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope;
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 8);
  v6 = *(v1 + 32);
  v7 = type metadata accessor for _ObjCGroupDisplayNameWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorGroupDisplayName_groupDisplayName];
  *v9 = v2;
  *(v9 + 1) = v5;
  *(v9 + 2) = v4;
  *(v9 + 3) = v3;
  v9[32] = v6;
  sub_21431C5DC(v2);
  v11.receiver = v8;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21457113C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for _ObjCRelayGroupDisplayNameMutationEnvelopeWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;
  sub_21431C5DC(v1);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145711D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for _ObjCRelayGroupDisplayNameMutationEnvelopeWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;
  sub_21431C5DC(v1);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214571274(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v6;
  *(v4 + 57) = *(a1 + 57);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_2145712DC(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation];
  v3 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v3;
  *(v2 + 57) = *(a1 + 57);
  v4 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCRelayGroupParticipantMutationWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214571334@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 32);
  v10[0] = v2;
  *(v10 + 9) = *(v1 + OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 57);
  v3 = *(v10 + 9);
  v4 = *(v1 + OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 16);
  v8[0] = *(v1 + OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2142FE33C(v8, &v7);
}

id sub_21457144C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);

    v6 = sub_2146D9588();

    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214571500(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 24))
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);

    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_214571590(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 64))
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);

    v6 = sub_2146D9588();

    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214571644(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 64))
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);

    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_2145717A8()
{
  v1 = v0[3];
  v11[2] = v0[2];
  v12[0] = v1;
  *(v12 + 9) = *(v0 + 57);
  v2 = v0[1];
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCRelayGroupParticipantMutationWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation];
  v6 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v6;
  *(v5 + 57) = *(v0 + 57);
  v7 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_2142FE33C(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214571840()
{
  v1 = v0[3];
  v14 = v0[2];
  v15[0] = v1;
  *(v15 + 9) = *(v0 + 57);
  v2 = v0[1];
  v12 = *v0;
  v13 = v2;
  v3 = type metadata accessor for _ObjCRelayGroupParticipantMutationWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation];
  *v5 = v12;
  v7 = v14;
  v6 = v15[0];
  v8 = v13;
  *(v5 + 57) = *(v15 + 9);
  *(v5 + 2) = v7;
  *(v5 + 3) = v6;
  *(v5 + 1) = v8;
  sub_2142FE33C(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145718F0(char *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 1);
  v7 = &v5[*a2];
  *v7 = *a1;
  *(v7 + 1) = v6;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214571978(char *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 1);
  v5 = &v3[*a2];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v7.receiver = v3;
  v7.super_class = a3();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_2145719D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *a1;
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

id sub_214571A04(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = *(v3 + 1);

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_214571AC8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorRelayGroupParticipantMutationEnvelope_relayGroupParticipantMutationEnvelope + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCRelayGroupParticipantMutationWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 80)
    {
      v18 = *(v1 + i);
      v7 = *(v1 + i + 16);
      v8 = *(v1 + i + 32);
      v9 = *(v1 + i + 48);
      *(v21 + 9) = *(v1 + i + 57);
      v20 = v8;
      v21[0] = v9;
      v19 = v7;
      v10 = objc_allocWithZone(v4);
      v11 = &v10[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation];
      *v11 = v18;
      v13 = v20;
      v12 = v21[0];
      v14 = v19;
      *(v11 + 57) = *(v21 + 9);
      *(v11 + 2) = v13;
      *(v11 + 3) = v12;
      *(v11 + 1) = v14;
      sub_2142FE33C(&v18, v17);
      v16.receiver = v10;
      v16.super_class = v4;
      objc_msgSendSuper2(&v16, sel_init);
      sub_2146D9F98();
      v15 = *(v22 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v22;
  }

  return result;
}

id sub_214571CC8(uint64_t (*a1)(void), void *a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = a1();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*a2];
  *v8 = v4;
  *(v8 + 1) = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214571D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = a3();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a4];
  *v10 = v6;
  *(v10 + 1) = v7;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_214571F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  sub_213FB568C(a1 + *a4, &v19 - v12, a5);
  v14 = *(v13 + 3);
  if (v14 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = *(v13 + 2);
    v16 = *(v13 + 3);

    sub_213FB5844(v13, a6);
    if (v14)
    {
      v17 = sub_2146D9588();
      sub_213FDC6D0(v15, v14);
    }

    else
    {
      v17 = 0;
    }

    return v17;
  }

  return result;
}

uint64_t sub_214572090(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a1(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_213FB568C(v4 + *a2, &v15 - v10, a3);
  if (*(v11 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v12 = *(v11 + 2);
    v13 = *(v11 + 3);

    sub_213FB5844(v11, a4);
    return v12;
  }

  return result;
}

unint64_t sub_2145721B8()
{
  result = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext + 33);
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214572324()
{
  v1 = type metadata accessor for RelayReachabilityContext();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext, v4, type metadata accessor for RelayReachabilityContext);
  if (*(v4 + 8) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 7);
    v6 = *(v4 + 8);

    sub_213FB5844(v4, type metadata accessor for RelayReachabilityContext);
    return v5;
  }

  return result;
}

uint64_t sub_21457257C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext;
  v4 = type metadata accessor for RelayReachabilityContext();
  return sub_213FB2E54(v3 + *(v4 + 28), a1, &unk_27C904F30, &unk_2146EFA20);
}

id sub_2145725F0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 32));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_214572690(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 32));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_21457275C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext;
  v2 = (v1 + *(type metadata accessor for RelayReachabilityContext() + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id sub_214572B6C()
{
  v1 = type metadata accessor for RelayReachabilityContext();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for RelayReachabilityContext);
  v5 = type metadata accessor for _ObjCRelayReachabilityContextWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext, type metadata accessor for RelayReachabilityContext);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for RelayReachabilityContext);
  return v7;
}

uint64_t sub_214572EC8()
{
  v1 = type metadata accessor for RelayReachabilityRequest();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest, v4, type metadata accessor for RelayReachabilityRequest);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = *(v4 + 2);

    sub_213FB5844(v4, type metadata accessor for RelayReachabilityRequest);
    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214572FD4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest + 32);
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest + 40);

  return v1;
}

id sub_214573134()
{
  v1 = type metadata accessor for RelayReachabilityContext();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest;
  v6 = type metadata accessor for RelayReachabilityRequest();
  sub_213FB568C(v5 + *(v6 + 24), v4, type metadata accessor for RelayReachabilityContext);
  v7 = type metadata accessor for _ObjCRelayReachabilityContextWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v4, v8 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext, type metadata accessor for RelayReachabilityContext);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_213FB5844(v4, type metadata accessor for RelayReachabilityContext);
  return v9;
}

id sub_2145732F8()
{
  v1 = type metadata accessor for RelayReachabilityRequest();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for RelayReachabilityRequest);
  v5 = type metadata accessor for _ObjCRelayReachabilityRequestWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest, type metadata accessor for RelayReachabilityRequest);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for RelayReachabilityRequest);
  return v7;
}

id sub_214573438(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_214592C0C(a1, v3 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2142FE798(a1);
  return v4;
}

id sub_2145734AC(uint64_t a1)
{
  sub_214592C0C(a1, v1 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCRelayReachabilityHandleResultWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2142FE798(a1);
  return v3;
}

uint64_t sub_21457365C()
{
  sub_214592C0C(v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult, v3);
  if (v5)
  {
    v1 = v4;

    sub_2142FE798(v3);
    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_214573708(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);

  v6 = sub_2146D9588();

  return v6;
}

uint64_t sub_214573764()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 40);
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 48);

  return v1;
}

uint64_t sub_214573884()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult;
  if (*(v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 64) == 1)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 64);
  v5 = *(v1 + 88);
  v6 = *(v1 + 104);
  v7 = *(v1 + 120);
  v8 = *(v1 + 136);
  v4 = *(v1 + 72);
  return sub_214093A24();
}

uint64_t sub_214573A14()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 144), sizeof(__dst));
  memcpy(__src, (v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 144), sizeof(__src));
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(__src) == 1)
  {
    return 0;
  }

  memcpy(v4, __src, sizeof(v4));
  memcpy(v5, __dst, sizeof(v5));
  sub_2142E5E24(v5, &v3);
  MBDBrandInfo.dictionaryRepresentation.getter();
  v2 = sub_2146D9468();
  sub_213FB2DF4(__dst, &qword_27C908800, &qword_2146F51D8);

  return v2;
}

id sub_214573B48()
{
  sub_213FB2E54(v0 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult + 640, __src, &qword_27C9087D0, &qword_2146F51C0);
  if (__src[34] >> 1 != 0xFFFFFFFFLL || (__src[38] | __src[36]) > 1 || __src[44] & 0xFFFFFFFFFFFFFEFELL | __src[40] & 0xFFFFFFFFFFFF00FELL || (__src[48] | __src[46]) >= 2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_214591D84(__dst, __src);
    v2 = type metadata accessor for _ObjCMBDBrandLogoWrapper();
    v3 = objc_allocWithZone(v2);
    sub_214591D84(__src, v3 + OBJC_IVAR___BlastDoorMBDBrandLogo_mBDBrandLogo);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_214591DE0(__src);
    sub_214591DE0(__dst);
    return v4;
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C9087D0, &qword_2146F51C0);
    return 0;
  }
}

id sub_214573D08()
{
  sub_214592C0C(v0, v6);
  v1 = type metadata accessor for _ObjCRelayReachabilityHandleResultWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592C0C(v6, v2 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2142FE798(v6);
  return v3;
}

id sub_214573D88()
{
  sub_214592C0C(v0, v6);
  v1 = type metadata accessor for _ObjCRelayReachabilityHandleResultWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592C0C(v6, v2 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2142FE798(v6);
  return v3;
}

uint64_t sub_214573E34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 8);
  v3 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 16);
  v4 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 24);
  v5 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 32);
  v6 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 33);
  v7 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 34);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
  *(a1 + 34) = v7;
}

uint64_t sub_214573F54()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult);
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 8);

  return v1;
}

uint64_t sub_214573FC4()
{
  result = sub_214592CB0(*(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 16) - 2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214574040()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 24);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = v1 + 32;
    do
    {
      sub_214592C0C(v4, v10);
      sub_214592C0C(v10, v9);
      v5 = type metadata accessor for _ObjCRelayReachabilityHandleResultWrapper();
      v6 = objc_allocWithZone(v5);
      sub_214592C0C(v9, v6 + OBJC_IVAR___BlastDoorRelayReachabilityHandleResult_relayReachabilityHandleResult);
      v8.receiver = v6;
      v8.super_class = v5;
      objc_msgSendSuper2(&v8, sel_init);
      sub_2142FE798(v9);
      sub_2142FE798(v10);
      sub_2146D9F98();
      v7 = *(v11 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v4 += 1080;
      --v2;
    }

    while (v2);

    return v11;
  }

  return result;
}

id sub_2145742AC(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 33);
  v11 = *(a1 + 34);
  v12 = &v5[*a2];
  *v12 = *a1;
  *(v12 + 1) = v6;
  v12[16] = v7;
  *(v12 + 3) = v8;
  v12[32] = v9;
  v12[33] = v10;
  v12[34] = v11;
  v14.receiver = v5;
  v14.super_class = v2;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_214574354(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 34);
  v10 = &v3[*a2];
  *v10 = *a1;
  *(v10 + 1) = v4;
  v10[16] = v5;
  *(v10 + 3) = v6;
  v10[32] = v7;
  v10[33] = v8;
  v10[34] = v9;
  v12.receiver = v3;
  v12.super_class = a3();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_2145743C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 8);
  v3 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 16);
  v4 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 24);
  v5 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 32);
  v6 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 33);
  v7 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 34);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
  *(a1 + 34) = v7;
}

id sub_2145745A0()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse);
  v3 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse);
  v2 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 8);
  v4 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 16);
  v5 = *(v0 + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 24);
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  v9 = type metadata accessor for _ObjCRelayReachabilityResultWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult];
  *v11 = v3;
  *(v11 + 1) = v2;
  v11[16] = v4;
  *(v11 + 3) = v5;
  v11[32] = v6;
  v11[33] = v7;
  v11[34] = v8;
  v13.receiver = v10;
  v13.super_class = v9;

  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_2145746FC(uint64_t (*a1)(void), void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v2 + 16);
  v7 = v2[3];
  v8 = *(v2 + 32);
  v9 = *(v2 + 33);
  v10 = *(v2 + 34);
  v11 = a1();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[*a2];
  *v13 = v5;
  *(v13 + 1) = v4;
  v13[16] = v6;
  *(v13 + 3) = v7;
  v13[32] = v8;
  v13[33] = v9;
  v13[34] = v10;
  v15.receiver = v12;
  v15.super_class = v11;

  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_2145747D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v7 = *v4;
  v6 = v4[1];
  v8 = *(v4 + 16);
  v9 = v4[3];
  v10 = *(v4 + 32);
  v11 = *(v4 + 33);
  v12 = *(v4 + 34);
  v13 = a3();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[*a4];
  *v15 = v7;
  *(v15 + 1) = v6;
  v15[16] = v8;
  *(v15 + 3) = v9;
  v15[32] = v10;
  v15[33] = v11;
  v15[34] = v12;
  v17.receiver = v14;
  v17.super_class = v13;

  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_214574A8C()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorRepositionStickerCommand_repositionStickerCommand, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

id sub_214574C38()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRepositionStickerCommand_repositionStickerCommand;
  v2 = type metadata accessor for RepositionStickerCommand();
  memcpy(__dst, (v1 + *(v2 + 20)), 0x139uLL);
  v3 = type metadata accessor for _ObjCStickerAttachmentInfoWrapper();
  v4 = objc_allocWithZone(v3);
  memcpy(&v4[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo], __dst, 0x139uLL);
  sub_2142E371C(__dst, v7);
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_214574DC8()
{
  v1 = type metadata accessor for RepositionStickerCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for RepositionStickerCommand);
  v5 = type metadata accessor for _ObjCRepositionStickerCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorRepositionStickerCommand_repositionStickerCommand, type metadata accessor for RepositionStickerCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for RepositionStickerCommand);
  return v7;
}

id sub_214574F08(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart];
  v5 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v5;
  *(v4 + 4) = *(a1 + 64);
  v4[80] = *(a1 + 80);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214574F78(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart];
  v3 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v3;
  *(v2 + 4) = *(a1 + 64);
  v2[80] = *(a1 + 80);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCSMSCTPartWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214574FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 32);
  v4 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 64);
  v11 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 48);
  v3 = v11;
  v12 = v4;
  v13 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 80);
  v5 = v13;
  v7 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 16);
  v10[0] = *(v1 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart);
  v6 = v10[0];
  v10[1] = v7;
  v10[2] = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *a1 = v6;
  *(a1 + 16) = v7;
  return sub_214592D30(v10, v9);
}

uint64_t sub_21457510C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 8);

  return v1;
}

id sub_214575230()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart;
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 48);
  v3 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = type metadata accessor for _ObjCEnumSMSCTPartContentWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content];
  *v9 = v2;
  *(v9 + 1) = v3;
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  v9[32] = v6;
  sub_214300110(v2, v3, v4, v5, v6);
  v11.receiver = v8;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145753EC()
{
  v1 = *(v0 + 48);
  v11[2] = *(v0 + 32);
  v11[3] = v1;
  v11[4] = *(v0 + 64);
  v12 = *(v0 + 80);
  v2 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCSMSCTPartWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart];
  v6 = *(v0 + 48);
  *(v5 + 2) = *(v0 + 32);
  *(v5 + 3) = v6;
  *(v5 + 4) = *(v0 + 64);
  v5[80] = *(v0 + 80);
  v7 = *(v0 + 16);
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_214592D30(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214575498()
{
  v1 = v0[3];
  v15 = v0[2];
  v16 = v1;
  v17 = v0[4];
  v18 = *(v0 + 80);
  v2 = v0[1];
  v13 = *v0;
  v14 = v2;
  v3 = type metadata accessor for _ObjCSMSCTPartWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart];
  v6 = v14;
  *v5 = v13;
  *(v5 + 1) = v6;
  v8 = v16;
  v7 = v17;
  v9 = v15;
  v5[80] = v18;
  *(v5 + 3) = v8;
  *(v5 + 4) = v7;
  *(v5 + 2) = v9;
  sub_214592D30(&v13, v12);
  v11.receiver = v4;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_214575570@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain);
  a1[1] = v2;
}

uint64_t sub_214575608()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain + 8);

  return v1;
}

id sub_2145756D0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for _ObjCSMSCTPartPlainWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21457573C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for _ObjCSMSCTPartPlainWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2145757A8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];
  *v5 = *a1;
  v5[8] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214575808(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];
  *v3 = *a1;
  v3[8] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCSMSCTPartAttributedChipListWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_214575858@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList);
  *(a1 + 8) = v2;
}

uint64_t sub_2145759B4()
{
  if (!*(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList))
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList);
  v4 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList + 8) & 1;

  MBDChipList.dictionaryRepresentation.getter();
  v1 = sub_2146D9468();

  return v1;
}

id sub_214575AE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = type metadata accessor for _ObjCSMSCTPartAttributedChipListWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];
  *v5 = v1;
  v5[8] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214575B54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = type metadata accessor for _ObjCSMSCTPartAttributedChipListWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];
  *v5 = v1;
  v5[8] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214575BF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards);
  v3 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_2143001B8(v2);
}

uint64_t sub_214575D48()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards);
  if (!v1)
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards);
  v5 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards + 8);
  sub_2143001B8(v1);
  MBDRichCards.dictionaryRepresentation.getter();
  v2 = sub_2146D9468();
  sub_2143002A4(v1);

  return v2;
}

id sub_214575EEC(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = &v5[*a2];
  *v8 = *a1;
  *(v8 + 2) = v6;
  *(v8 + 3) = v7;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214575F74(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = &v3[*a2];
  *v6 = *a1;
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
  v8.receiver = v3;
  v8.super_class = a3();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214575FC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL);
  v3 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL + 8);
  v4 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL + 16);
  v5 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL + 24);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_214031CA0(v2);
}

uint64_t sub_2145760DC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL + 24);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCSMSParserPartWrapper();
    v5 = 32;
    do
    {
      v8 = *(v1 + v5);
      v6 = objc_allocWithZone(v4);
      *&v6[OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart] = v8;
      v9.receiver = v6;
      v9.super_class = v4;

      objc_msgSendSuper2(&v9, sel_init);
      sub_2146D9F98();
      v7 = *(v10 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v5 += 16;
      --v2;
    }

    while (v2);

    return v10;
  }

  return result;
}

id SMSCTPartSMIL.bridgedToObjectiveC.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _ObjCSMSCTPartSMILWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL];
  *v7 = v1;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v3;
  sub_214031CA0(v1);
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21457635C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _ObjCSMSCTPartSMILWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL];
  *v7 = v1;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v3;
  sub_214031CA0(v1);
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_214576418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment;
  v3 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment);
  v4 = *(v1 + OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment + 24);
  *a1 = v3;
  v5 = *(v2 + 8);
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  sub_213FDCA18(v3, v5);
}

id sub_214576510(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    v7 = sub_2146D8A38();
    sub_213FDC6BC(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t sub_214576594()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment + 8));
  return v1;
}

id sub_2145766AC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _ObjCSMSCTPartAttachmentWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment];
  *v7 = v1;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v3;
  sub_213FDCA18(v1, v2);
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214576738()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _ObjCSMSCTPartAttachmentWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment];
  *v7 = v1;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v3;
  sub_213FDCA18(v1, v2);
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_2145767E4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart);
  a1[1] = v2;
}

uint64_t sub_2145768D4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCSMSParserTextPartWrapper();
    v5 = (v1 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;
      v10 = objc_allocWithZone(v4);
      v11 = &v10[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart];
      *v11 = v7;
      *(v11 + 1) = v6;
      *(v11 + 2) = v9;
      *(v11 + 3) = v8;
      v13.receiver = v10;
      v13.super_class = v4;

      objc_msgSendSuper2(&v13, sel_init);
      sub_2146D9F98();
      v12 = *(v14 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v5 += 4;
      --v2;
    }

    while (v2);

    return v14;
  }

  return result;
}

id sub_2145769F4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = &v3[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart];
  *v6 = *a1;
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214576A80()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCSMSParserAttachmentPartWrapper();
    v5 = (v1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = objc_allocWithZone(v4);
      v9 = &v8[OBJC_IVAR___BlastDoorSMSParserAttachmentPart_sMSParserAttachmentPart];
      *v9 = v7;
      *(v9 + 1) = v6;
      v11.receiver = v8;
      v11.super_class = v4;

      objc_msgSendSuper2(&v11, sel_init);
      sub_2146D9F98();
      v10 = *(v12 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v5 += 2;
      --v2;
    }

    while (v2);

    return v12;
  }

  return result;
}

id sub_214576BA0(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = a1[1];
  v7 = &v5[*a2];
  *v7 = *a1;
  *(v7 + 1) = v6;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id SMSParserPart.bridgedToObjectiveC.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCSMSParserPartWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart];
  *v5 = v1;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214576D30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCSMSParserPartWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart];
  *v5 = v1;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214576DA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = &v1[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart];
  *v4 = *a1;
  *(v4 + 2) = v2;
  *(v4 + 3) = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCSMSParserTextPartWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214576DF4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 8);
  v3 = *(v1 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 16);
  v4 = *(v1 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 24);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_214576ED4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 8);

  return v1;
}

uint64_t sub_214576F1C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 16);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 24);

  return v1;
}

uint64_t sub_214576FDC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  v5 = *(v3 + 24);
}

id sub_214577020()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _ObjCSMSParserTextPartWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_2145770A4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _ObjCSMSParserTextPartWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214577148(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a1[1];
  v5 = &v3[*a2];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v7.receiver = v3;
  v7.super_class = a3();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214577190@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorSMSParserAttachmentPart_sMSParserAttachmentPart + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorSMSParserAttachmentPart_sMSParserAttachmentPart);
  a1[1] = v2;
}

id sub_2145771BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = v3[1];

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_214577238()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSParserAttachmentPart_sMSParserAttachmentPart);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSParserAttachmentPart_sMSParserAttachmentPart + 8);

  return v1;
}

id sub_214577320(uint64_t (*a1)(void), void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = a1();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*a2];
  *v8 = v5;
  *(v8 + 1) = v4;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145773B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v7 = *v4;
  v6 = v4[1];
  v8 = a3();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a4];
  *v10 = v7;
  *(v10 + 1) = v6;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_214577478()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSFilteringSettingsMessage_sMSFilteringSettingsMessage);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSFilteringSettingsMessage_sMSFilteringSettingsMessage + 8);

  return v1;
}

uint64_t sub_2145776EC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage);
  }
}

unint64_t sub_21457773C()
{
  result = sub_213FCF7DC(*(v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 9));
  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_214577790(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  v6 = sub_2146D9588();

  return v6;
}

uint64_t sub_2145777EC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 32);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 40);

  return v1;
}

unint64_t sub_214577848()
{
  result = *(v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 48);
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214577A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v4 = type metadata accessor for SMSMessage();
  return sub_213FB2E54(v3 + *(v4 + 40), a1, &qword_27C913090, &unk_2146E9DB0);
}

id sub_214577B60(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 52));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_214577C00(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 52));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_214577CCC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214577D98()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214577E64()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214577F30()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 68));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2145780CC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 76));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_214578214()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 88));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_21457828C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = *(v1 + *(type metadata accessor for SMSMessage() + 92));
  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v5 = (v2 + 32);
    v6 = type metadata accessor for _ObjCSMSCTPartWrapper();
    for (i = v3 - 1; ; --i)
    {
      v8 = v5[1];
      v21 = *v5;
      v22 = v8;
      v9 = v5[2];
      v10 = v5[3];
      v11 = v5[4];
      v26 = *(v5 + 80);
      v24 = v10;
      v25 = v11;
      v23 = v9;
      v12 = objc_allocWithZone(v6);
      v13 = &v12[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart];
      v14 = v22;
      *v13 = v21;
      *(v13 + 1) = v14;
      v16 = v24;
      v15 = v25;
      v17 = v23;
      v13[80] = v26;
      *(v13 + 3) = v16;
      *(v13 + 4) = v15;
      *(v13 + 2) = v17;
      sub_214592D30(&v21, v20);
      v19.receiver = v12;
      v19.super_class = v6;
      objc_msgSendSuper2(&v19, sel_init);
      sub_2146D9F98();
      v18 = *(v27 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!i)
      {
        break;
      }

      v5 = (v5 + 88);
    }

    return v27;
  }

  return result;
}

uint64_t sub_2145786B8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 108));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214578784()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 112));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214578850()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 116));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_21457891C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = (v1 + *(type metadata accessor for SMSMessage() + 120));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id sub_214578A1C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v2 = type metadata accessor for SMSMessage();
  result = 0;
  v4 = (v1 + *(v2 + 124));
  v5 = v4[1];
  if (v5 != 1)
  {
    v6 = v4[2];
    v7 = *v4;
    v8 = type metadata accessor for _ObjCSMSMessage_SMSFilteringSettingsWrapper();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR___BlastDoorSMSMessage_SMSFilteringSettings_sMSMessage_SMSFilteringSettings];
    *v10 = v7;
    *(v10 + 1) = v5;
    *(v10 + 2) = v6;
    v11.receiver = v9;
    v11.super_class = v8;

    return objc_msgSendSuper2(&v11, sel_init);
  }

  return result;
}

id sub_214578ACC(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 16);
  v7 = &v5[*a2];
  *v7 = *a1;
  *(v7 + 2) = v6;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id SMSMessage.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for SMSMessage();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for SMSMessage);
  v5 = type metadata accessor for _ObjCSMSMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage, type metadata accessor for SMSMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for SMSMessage);
  return v7;
}

id sub_214578D34(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[*a2];
  v7 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = *(a1 + 80);
  *(v6 + 4) = *(a1 + 64);
  *(v6 + 5) = v8;
  v9 = *(a1 + 48);
  *(v6 + 2) = *(a1 + 32);
  *(v6 + 3) = v9;
  v6[160] = *(a1 + 160);
  v10 = *(a1 + 144);
  *(v6 + 8) = *(a1 + 128);
  *(v6 + 9) = v10;
  v11 = *(a1 + 112);
  *(v6 + 6) = *(a1 + 96);
  *(v6 + 7) = v11;
  v13.receiver = v5;
  v13.super_class = v2;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214578DDC(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v5;
  v4[160] = *(a1 + 160);
  v6 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v6;
  v7 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v9 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v9;
  v11.receiver = v3;
  v11.super_class = a3();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_214578E4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields;
  v3 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 112);
  v4 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 144);
  v26 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 128);
  v27 = v4;
  v5 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 48);
  v6 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 80);
  v22 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 64);
  v7 = v22;
  v23 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 80);
  v9 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 112);
  v24 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 96);
  v10 = v24;
  v25 = v9;
  v11 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 16);
  v19[0] = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields);
  v19[1] = v11;
  v12 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 48);
  v14 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields);
  v13 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 16);
  v20 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 32);
  v15 = v20;
  v21 = v12;
  v16 = *(v1 + OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields + 144);
  *(a1 + 128) = v26;
  *(a1 + 144) = v16;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v2 + 160);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 32) = v15;
  *(a1 + 48) = v5;
  return sub_214059868(v19, v18);
}

id sub_21457912C()
{
  v1 = *(v0 + 144);
  v17[8] = *(v0 + 128);
  v17[9] = v1;
  v18 = *(v0 + 160);
  v2 = *(v0 + 80);
  v17[4] = *(v0 + 64);
  v17[5] = v2;
  v3 = *(v0 + 112);
  v17[6] = *(v0 + 96);
  v17[7] = v3;
  v4 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v4;
  v5 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v5;
  v6 = type metadata accessor for _ObjCSafetyMonitorGroupFieldsWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields];
  v9 = *(v0 + 144);
  *(v8 + 8) = *(v0 + 128);
  *(v8 + 9) = v9;
  v8[160] = *(v0 + 160);
  v10 = *(v0 + 80);
  *(v8 + 4) = *(v0 + 64);
  *(v8 + 5) = v10;
  v11 = *(v0 + 112);
  *(v8 + 6) = *(v0 + 96);
  *(v8 + 7) = v11;
  v12 = *(v0 + 16);
  *v8 = *v0;
  *(v8 + 1) = v12;
  v13 = *(v0 + 48);
  *(v8 + 2) = *(v0 + 32);
  *(v8 + 3) = v13;
  sub_214059868(v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_2145791F8()
{
  v1 = v0[9];
  v28 = v0[8];
  v29 = v1;
  v30 = *(v0 + 160);
  v2 = v0[5];
  v24 = v0[4];
  v25 = v2;
  v3 = v0[7];
  v26 = v0[6];
  v27 = v3;
  v4 = v0[1];
  v20 = *v0;
  v21 = v4;
  v5 = v0[3];
  v22 = v0[2];
  v23 = v5;
  v6 = type metadata accessor for _ObjCSafetyMonitorGroupFieldsWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSafetyMonitorGroupFields_safetyMonitorGroupFields];
  v10 = v21;
  v9 = v22;
  *v8 = v20;
  *(v8 + 1) = v10;
  *(v8 + 2) = v9;
  v11 = v26;
  v13 = v23;
  v12 = v24;
  *(v8 + 5) = v25;
  *(v8 + 6) = v11;
  *(v8 + 3) = v13;
  *(v8 + 4) = v12;
  v15 = v28;
  v14 = v29;
  v16 = v27;
  v8[160] = v30;
  *(v8 + 8) = v15;
  *(v8 + 9) = v14;
  *(v8 + 7) = v16;
  sub_214059868(&v20, v19);
  v18.receiver = v7;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_2145792D8(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = *a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214579354(void *a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = *a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21457951C()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCSatelliteSMSTextMessageWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorSatelliteSMSTextMessage_satelliteSMSTextMessage] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21457957C()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCSatelliteSMSTextMessageWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorSatelliteSMSTextMessage_satelliteSMSTextMessage] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2145797C8(uint64_t result)
{
  if ((result + 1) > 6 || ((1 << (result + 1)) & 0x61) == 0)
  {
    return 0;
  }

  return result;
}

id sub_2145798A8()
{
  v1 = type metadata accessor for ScheduledMessageUpdate();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for ScheduledMessageUpdate);
  updated = type metadata accessor for _ObjCScheduledMessageUpdateWrapper(0);
  v6 = objc_allocWithZone(updated);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorScheduledMessageUpdate_scheduledMessageUpdate, type metadata accessor for ScheduledMessageUpdate);
  v9.receiver = v6;
  v9.super_class = updated;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for ScheduledMessageUpdate);
  return v7;
}

id sub_2145799E8(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack], a1, 0x130uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_214579A50(void *__src)
{
  memcpy(&v1[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack], __src, 0x130uLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ObjCStickerTapBackWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_214579A9C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack), sizeof(__dst));
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack), 0x130uLL);
  return sub_214301C44(__dst, &v4);
}

uint64_t sub_214579BD4(uint64_t result)
{
  if (result == 3007)
  {
    v1 = 3007;
  }

  else
  {
    v1 = 0;
  }

  if (result == 2007)
  {
    v1 = 2007;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_214579C0C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 16);

  return v1;
}

id sub_214579D74()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 168);
  v20 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 152);
  v21 = v1;
  v22 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 184);
  v23 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 200);
  v2 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 104);
  v16 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 88);
  v17 = v2;
  v3 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 136);
  v18 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 120);
  v19 = v3;
  v4 = type metadata accessor for _ObjCMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMessage_message];
  v7 = v19;
  v9 = v16;
  v8 = v17;
  *(v6 + 2) = v18;
  *(v6 + 3) = v7;
  *v6 = v9;
  *(v6 + 1) = v8;
  v11 = v21;
  v10 = v22;
  v12 = v20;
  *(v6 + 14) = v23;
  *(v6 + 5) = v11;
  *(v6 + 6) = v10;
  *(v6 + 4) = v12;
  sub_214091538(&v16, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_214579E48(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorMessage_message];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 14) = *(a1 + 112);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214579FBC()
{
  v19 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 208);
  v1 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 232);
  v20 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 224);
  v2 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 256);
  v16 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 240);
  v17 = v2;
  v18 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 272);
  v23 = v18;
  v24 = v19;
  v25 = v20;
  v21 = v16;
  v22 = v2;
  if (!v1)
  {
    return 0;
  }

  v3 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
  *v5 = v24;
  *(v5 + 2) = v25;
  *(v5 + 3) = v1;
  v6 = v22;
  *(v5 + 2) = v21;
  *(v5 + 3) = v6;
  *(v5 + 4) = v23;
  v10 = v19;
  v11 = v20;
  v12 = v1;
  v14 = v17;
  v15 = v18;
  v13 = v16;
  sub_214311D90(&v10, v9);
  v8.receiver = v4;
  v8.super_class = v3;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21457A108()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 288);
  v2 = *(v0 + OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack + 296);

  return v1;
}

id sub_21457A204()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for _ObjCStickerTapBackWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack], v0, 0x130uLL);
  sub_214301C44(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21457A288()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for _ObjCStickerTapBackWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack], __dst, 0x130uLL);
  sub_214301C44(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21457A30C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction];
  v5 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v5;
  *(v4 + 80) = *(a1 + 160);
  v6 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v6;
  v7 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v9 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v9;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21457A38C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction];
  v3 = *(a1 + 144);
  *(v2 + 8) = *(a1 + 128);
  *(v2 + 9) = v3;
  *(v2 + 80) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v4;
  v5 = *(a1 + 112);
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 7) = v5;
  v6 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v6;
  v7 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCSyndicationActionWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_21457A3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction;
  v3 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 112);
  v4 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 144);
  v26 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 128);
  v27 = v4;
  v5 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 48);
  v6 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 80);
  v22 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 64);
  v7 = v22;
  v23 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 80);
  v9 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 112);
  v24 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 96);
  v10 = v24;
  v25 = v9;
  v11 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 16);
  v19[0] = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction);
  v19[1] = v11;
  v12 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 48);
  v14 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction);
  v13 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 16);
  v20 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 32);
  v15 = v20;
  v21 = v12;
  v16 = *(v1 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 144);
  *(a1 + 128) = v26;
  *(a1 + 144) = v16;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v2 + 160);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 32) = v15;
  *(a1 + 48) = v5;
  return sub_21459300C(v19, v18);
}

uint64_t sub_21457A5A0()
{
  result = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction);
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21457A5BC(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 2u) << 8);
}

uint64_t sub_21457A65C()
{
  result = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 16);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if ((*(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 24) & 0x8000000000000000) != 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_21457A778()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 128);
  v20 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 112);
  v21 = v1;
  v22 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 144);
  v23 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 160);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 64);
  v16 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 48);
  v17 = v2;
  v3 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 96);
  v18 = *(v0 + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 80);
  v19 = v3;
  v4 = type metadata accessor for _ObjCGroupContextWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorGroupContext_groupContext];
  v7 = v19;
  v9 = v16;
  v8 = v17;
  *(v6 + 2) = v18;
  *(v6 + 3) = v7;
  *v6 = v9;
  *(v6 + 1) = v8;
  v11 = v21;
  v10 = v22;
  v12 = v20;
  v6[112] = v23;
  *(v6 + 5) = v11;
  *(v6 + 6) = v10;
  *(v6 + 4) = v12;
  sub_2142F236C(&v16, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_21457A940()
{
  v1 = *(v0 + 144);
  v17[8] = *(v0 + 128);
  v17[9] = v1;
  v18 = *(v0 + 160);
  v2 = *(v0 + 80);
  v17[4] = *(v0 + 64);
  v17[5] = v2;
  v3 = *(v0 + 112);
  v17[6] = *(v0 + 96);
  v17[7] = v3;
  v4 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v4;
  v5 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v5;
  v6 = type metadata accessor for _ObjCSyndicationActionWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction];
  v9 = *(v0 + 144);
  *(v8 + 8) = *(v0 + 128);
  *(v8 + 9) = v9;
  *(v8 + 80) = *(v0 + 160);
  v10 = *(v0 + 80);
  *(v8 + 4) = *(v0 + 64);
  *(v8 + 5) = v10;
  v11 = *(v0 + 112);
  *(v8 + 6) = *(v0 + 96);
  *(v8 + 7) = v11;
  v12 = *(v0 + 16);
  *v8 = *v0;
  *(v8 + 1) = v12;
  v13 = *(v0 + 48);
  *(v8 + 2) = *(v0 + 32);
  *(v8 + 3) = v13;
  sub_21459300C(v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_21457AA0C()
{
  v1 = v0[9];
  v28 = v0[8];
  v29 = v1;
  v30 = *(v0 + 80);
  v2 = v0[5];
  v24 = v0[4];
  v25 = v2;
  v3 = v0[7];
  v26 = v0[6];
  v27 = v3;
  v4 = v0[1];
  v20 = *v0;
  v21 = v4;
  v5 = v0[3];
  v22 = v0[2];
  v23 = v5;
  v6 = type metadata accessor for _ObjCSyndicationActionWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction];
  v10 = v21;
  v9 = v22;
  *v8 = v20;
  *(v8 + 1) = v10;
  *(v8 + 2) = v9;
  v11 = v26;
  v13 = v23;
  v12 = v24;
  *(v8 + 5) = v25;
  *(v8 + 6) = v11;
  *(v8 + 3) = v13;
  *(v8 + 4) = v12;
  v15 = v28;
  v14 = v29;
  v16 = v27;
  *(v8 + 80) = v30;
  *(v8 + 8) = v15;
  *(v8 + 9) = v14;
  *(v8 + 7) = v16;
  sub_21459300C(&v20, v19);
  v18.receiver = v7;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_21457AAE0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorTapBack_tapBack];
  v5 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v5;
  *(v4 + 10) = *(a1 + 160);
  *(v4 + 22) = *(a1 + 176);
  v6 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v6;
  v7 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v9 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v9;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21457AB68(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorTapBack_tapBack];
  v3 = *(a1 + 144);
  *(v2 + 8) = *(a1 + 128);
  *(v2 + 9) = v3;
  *(v2 + 10) = *(a1 + 160);
  *(v2 + 22) = *(a1 + 176);
  v4 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v4;
  v5 = *(a1 + 112);
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 7) = v5;
  v6 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v6;
  v7 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCTapBackWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_21457ABE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorTapBack_tapBack;
  v3 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 144);
  v4 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 112);
  v26 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 128);
  v27 = v3;
  v5 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 144);
  v28 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 160);
  v6 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 80);
  v8 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 48);
  v22 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 64);
  v7 = v22;
  v23 = v6;
  v9 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 80);
  v10 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 112);
  v24 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 96);
  v11 = v24;
  v25 = v10;
  v12 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 16);
  v19[0] = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack);
  v19[1] = v12;
  v13 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 48);
  v15 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack);
  v14 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 16);
  v20 = *(v1 + OBJC_IVAR___BlastDoorTapBack_tapBack + 32);
  v16 = v20;
  v21 = v13;
  *(a1 + 128) = v26;
  *(a1 + 144) = v5;
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v15;
  *(a1 + 16) = v14;
  v29 = *(v2 + 176);
  *(a1 + 176) = *(v2 + 176);
  *(a1 + 32) = v16;
  *(a1 + 48) = v8;
  return sub_21430208C(v19, v18);
}

uint64_t sub_21457ADB8()
{
  result = sub_21459308C(qword_214760550[*(v0 + OBJC_IVAR___BlastDoorTapBack_tapBack)]);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_21457AE18(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);

  v6 = sub_2146D9588();

  return v6;
}

uint64_t sub_21457AE74()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorTapBack_tapBack + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorTapBack_tapBack + 16);

  return v1;
}

id sub_21457AEBC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 32))
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21457AF34(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  return v3;
}

uint64_t sub_21457AF78(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  result = *(v3 + 40);
  if (__OFSUB__(*(v3 + 48), result))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21457AFA0(void *a1)
{
  v2 = v1 + *a1;
  result = *(v2 + 40);
  if (__OFSUB__(*(v2 + 48), result))
  {
    __break(1u);
  }

  return result;
}

id sub_21457AFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 72))
  {
    v4 = *(v3 + 72);

    v5 = sub_2146D98E8();

    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21457B078(void *a1)
{
  if (*(v1 + *a1 + 72))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_21457B0FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v23 = *(v3 + 88);
  v4 = *(v3 + 112);
  v24 = *(v3 + 104);
  v5 = *(v3 + 136);
  v20 = *(v3 + 120);
  v21 = v5;
  v22 = *(v3 + 152);
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v25 = v20;
  v26 = v5;
  if (v4)
  {
    v6 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
    *v8 = v28;
    *(v8 + 2) = v29;
    *(v8 + 3) = v4;
    v9 = v26;
    *(v8 + 2) = v25;
    *(v8 + 3) = v9;
    *(v8 + 4) = v27;
    v14 = v23;
    v15 = v24;
    v16 = v4;
    v18 = v21;
    v19 = v22;
    v17 = v20;
    sub_214311D90(&v14, v13);
    v12.receiver = v7;
    v12.super_class = v6;
    v10 = objc_msgSendSuper2(&v12, sel_init);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_21457B204(void *a1)
{
  v2 = v1 + *a1;
  v21 = *(v2 + 88);
  v3 = *(v2 + 112);
  v22 = *(v2 + 104);
  v4 = *(v2 + 136);
  v18 = *(v2 + 120);
  v19 = v4;
  v20 = *(v2 + 152);
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v23 = v18;
  v24 = v4;
  if (!v3)
  {
    return 0;
  }

  v5 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
  *v7 = v26;
  *(v7 + 2) = v27;
  *(v7 + 3) = v3;
  v8 = v24;
  *(v7 + 2) = v23;
  *(v7 + 3) = v8;
  *(v7 + 4) = v25;
  v12 = v21;
  v13 = v22;
  v14 = v3;
  v16 = v19;
  v17 = v20;
  v15 = v18;
  sub_214311D90(&v12, v11);
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21457B2FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 168);
  v5 = *(v3 + 176);

  v6 = sub_2146D9588();

  return v6;
}

uint64_t sub_21457B358()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorTapBack_tapBack + 168);
  v2 = *(v0 + OBJC_IVAR___BlastDoorTapBack_tapBack + 176);

  return v1;
}

id sub_21457B474()
{
  v1 = *(v0 + 144);
  v17[8] = *(v0 + 128);
  v17[9] = v1;
  v17[10] = *(v0 + 160);
  v18 = *(v0 + 176);
  v2 = *(v0 + 80);
  v17[4] = *(v0 + 64);
  v17[5] = v2;
  v3 = *(v0 + 112);
  v17[6] = *(v0 + 96);
  v17[7] = v3;
  v4 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v4;
  v5 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v5;
  v6 = type metadata accessor for _ObjCTapBackWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorTapBack_tapBack];
  v9 = *(v0 + 144);
  *(v8 + 8) = *(v0 + 128);
  *(v8 + 9) = v9;
  *(v8 + 10) = *(v0 + 160);
  *(v8 + 22) = *(v0 + 176);
  v10 = *(v0 + 80);
  *(v8 + 4) = *(v0 + 64);
  *(v8 + 5) = v10;
  v11 = *(v0 + 112);
  *(v8 + 6) = *(v0 + 96);
  *(v8 + 7) = v11;
  v12 = *(v0 + 16);
  *v8 = *v0;
  *(v8 + 1) = v12;
  v13 = *(v0 + 48);
  *(v8 + 2) = *(v0 + 32);
  *(v8 + 3) = v13;
  sub_21430208C(v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_21457B550()
{
  v1 = v0[9];
  v29 = v0[8];
  v30 = v1;
  v31 = v0[10];
  v32 = *(v0 + 22);
  v2 = v0[5];
  v25 = v0[4];
  v26 = v2;
  v3 = v0[7];
  v27 = v0[6];
  v28 = v3;
  v4 = v0[1];
  v21 = *v0;
  v22 = v4;
  v5 = v0[3];
  v23 = v0[2];
  v24 = v5;
  v6 = type metadata accessor for _ObjCTapBackWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorTapBack_tapBack];
  v9 = v24;
  v11 = v21;
  v10 = v22;
  *(v8 + 2) = v23;
  *(v8 + 3) = v9;
  *v8 = v11;
  *(v8 + 1) = v10;
  v12 = v28;
  v14 = v25;
  v13 = v26;
  *(v8 + 6) = v27;
  *(v8 + 7) = v12;
  *(v8 + 4) = v14;
  *(v8 + 5) = v13;
  v16 = v30;
  v15 = v31;
  v17 = v29;
  *(v8 + 22) = v32;
  *(v8 + 9) = v16;
  *(v8 + 10) = v15;
  *(v8 + 8) = v17;
  sub_21430208C(&v21, v20);
  v19.receiver = v7;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}
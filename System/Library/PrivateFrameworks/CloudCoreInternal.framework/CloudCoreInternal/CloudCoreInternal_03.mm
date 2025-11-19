uint64_t sub_1C93D4058()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = *(v2 + 224);
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v6 + 232) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C93D4158()
{
  sub_1C93DA798();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  sub_1C93A14F4(v0[16]);
  sub_1C93A4838(v8, &qword_1EC39A9F0, &qword_1C93FCE00);
  (*(v4 + 8))(v9, v3);

  sub_1C939D510();

  return v10();
}

uint64_t sub_1C93D422C()
{
  sub_1C93DA69C();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  sub_1C93A14F4(v0[16]);
  sub_1C93A4838(v4, &qword_1EC39A9F0, &qword_1C93FCE00);
  v6 = *(v2 + 8);
  v7 = sub_1C93DA7E4();
  v8(v7);
  v9 = v0[29];
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[22];
  v12 = v0[23];

  sub_1C939D510();

  return v14();
}

uint64_t sub_1C93D42E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return sub_1C93D431C(v7, a2, a3, a4, a5);
}

uint64_t sub_1C93D431C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SessionID(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  sub_1C93D79D4(v13, a1, a2, a3, a4, a5);
  return sub_1C93DA174(v13, type metadata accessor for SessionID);
}

uint64_t sub_1C93D43EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SessionID(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  sub_1C93D8064(v13, a1, a2, a3, a4, a5);
  return sub_1C93DA174(v13, type metadata accessor for SessionID);
}

uint64_t static Session.acquire(configuration:previousInvalidationContext:onInvalidation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SessionID(0);
  v15 = sub_1C93A5A08(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93A59A8();
  v20 = v19 - v18;
  UUID.init()();
  static Session.acquire(sessionID:configuration:previousInvalidationContext:onInvalidation:)(v20, a1, a2, a3, a4, a5, a6, a7);
  sub_1C93DA444();
  return sub_1C93DA174(v20, v21);
}

uint64_t sub_1C93D4580()
{
  sub_1C939ED74();
  v2 = *v0;
  sub_1C93DA5AC(dword_1C94036B0);
  v6 = v3;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C93D4618;

  return v6();
}

uint64_t sub_1C93D4618()
{
  sub_1C939ED74();
  v3 = v2;
  sub_1C939D504();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1C93B5C54();
  *v7 = v6;

  sub_1C93DA718();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1C93D4724()
{
  sub_1C93DA724();
  sub_1C93ABB04(*(v0 + 16));
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_anyContainer);
  v3 = *v1;
  v2 = v1[1];
  swift_getObjectType();
  sub_1C93DA540();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v8 = sub_1C93DA594(v7);

  return v9(v8);
}

uint64_t sub_1C93D4890()
{
  sub_1C93DA724();
  sub_1C93B4184(*(v0 + 16));
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC17CloudCoreInternal20AuthenticatedSession_anyContainer);
  v3 = *v1;
  v2 = v1[1];
  swift_getObjectType();
  sub_1C93DA540();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v8 = sub_1C93DA594(v7);

  return v9(v8);
}

uint64_t sub_1C93D49DC()
{
  sub_1C939ED74();
  v3 = v2;
  sub_1C939D504();
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_1C93B5C54();
  *v7 = v6;

  sub_1C93DA718();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t Session.allowListedBundleIDs()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1C93DA690();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C93D4AF8()
{
  sub_1C93DA724();
  v1 = v0[4];
  sub_1C93D4E1C(v0[2], v0[3]);
  v2 = v0[4];
  v0[5] = (*(v0[3] + 80))(v0[2]);
  swift_getObjectType();
  sub_1C93DA540();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v7 = sub_1C93DA594(v6);

  return v8(v7);
}

uint64_t sub_1C93D4C54()
{
  sub_1C93DA69C();
  v3 = v2;
  sub_1C939D504();
  v5 = v4;
  sub_1C93DA530();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  sub_1C93B5C54();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C93D4D60()
{
  sub_1C939ED74();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  sub_1C93DA718();
  v3 = *(v0 + 64);

  return v2(v3);
}

uint64_t sub_1C93D4DC0()
{
  sub_1C939ED74();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
  sub_1C939D510();

  return v3();
}

uint64_t sub_1C93D4E1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  v5 = sub_1C93A1890(&qword_1EC39B3B0, "T8");
  return v4(sub_1C93D93F4, 0, MEMORY[0x1E69E7CA8] + 8, v5, MEMORY[0x1E69E7288], &v7, a1, a2);
}

uint64_t sub_1C93D4EC4()
{
  sub_1C93DA724();
  v0[23] = v1;
  memcpy(v0 + 2, v2, 0xA8uLL);
  sub_1C93DA5AC(&unk_1C9403698);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[24] = v3;
  *v3 = v4;
  v5 = sub_1C93DA6EC(v3);

  return v6(v5);
}

uint64_t sub_1C93D4F78()
{
  sub_1C93DA69C();
  v3 = v2;
  sub_1C939D504();
  v5 = v4;
  sub_1C93DA530();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  sub_1C93B5C54();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 184) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1C93D50DC()
{
  sub_1C939ED74();
  v2 = *v0;
  sub_1C93DA5AC(dword_1C9403688);
  v6 = v3;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C93DA440;

  return v6();
}

uint64_t sub_1C93D5174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C93D51D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 600) = v14;
  *(v8 + 592) = a8;
  *(v8 + 540) = a7;
  *(v8 + 584) = a6;
  *(v8 + 576) = a5;
  *(v8 + 568) = a4;
  *(v8 + 560) = a3;
  *(v8 + 552) = a2;
  *(v8 + 544) = a1;
  v9 = type metadata accessor for CloudCoreError();
  *(v8 + 608) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 616) = swift_task_alloc();
  v11 = *(type metadata accessor for SessionID(0) - 8);
  *(v8 + 624) = v11;
  *(v8 + 632) = *(v11 + 64);
  *(v8 + 640) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93D52F4, 0, 0);
}

uint64_t sub_1C93D52F4()
{
  v1 = *(v0 + 540);
  v46 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  v4 = *(v3 + 17);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *(v0 + 224) = *v3;
  *(v0 + 240) = v6;
  *(v0 + 256) = v5;
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);

  sub_1C93A5D7C(0, 0);
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  v45 = v9;
  *(v0 + 32) = v9;
  *(v0 + 33) = v4 & 1;
  *(v0 + 40) = v10;
  *(v0 + 48) = v5;
  *(v0 + 56) = xmmword_1C93FD260;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 2;
  sub_1C93D2DE0(v2, v46, v1 & 0x1010101, v0 + 504);
  v11 = *(v0 + 640);
  v37 = *(v0 + 624);
  v38 = *(v0 + 632);
  v42 = *(v0 + 592);
  v43 = *(v0 + 600);
  v12 = *(v0 + 568);
  v47 = *(v0 + 560);
  v13 = *(v0 + 544);
  v41 = v13;
  sub_1C93A8678(v0 + 16);
  v40 = v10;
  v15 = v12[3];
  v14 = v12[4];
  sub_1C93A4890(v12, v15);
  (*(v14 + 8))(v15, v14);
  v44 = *(v0 + 288);
  v39 = *(v0 + 296);
  sub_1C93A4890((v0 + 264), v44);
  sub_1C93DA4F0();
  sub_1C93DA118(v13, v11, v16);
  sub_1C93D5174(v12, v0 + 304);
  v36 = *(v0 + 241);
  v17 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v18 = (v38 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1C93DA4C0();
  sub_1C93DA0BC(v11, v21 + v17, v22);
  sub_1C93D1540((v0 + 304), v20 + v18);
  v23 = v20 + v19;
  *v23 = v8;
  *(v23 + 8) = v7;
  *(v23 + 16) = v45;
  *(v23 + 17) = v36;
  *(v23 + 24) = v40;
  *(v23 + 32) = v5;
  v24 = (v20 + ((v19 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v42;
  v24[1] = v43;
  v25 = *(v39 + 8);

  sub_1C93A1478(v42);
  v26 = sub_1C93AC5C0();
  v25(v41, v0 + 224, v47, sub_1C93DA434, v20, &type metadata for AnonymousSession.Configuration, v26, v44, v39);

  sub_1C939EA94((v0 + 264));
  v27 = *(v0 + 216);
  sub_1C93A4890((v0 + 184), *(v0 + 208));
  sub_1C939D47C();
  v29 = *(v28 + 64);
  sub_1C93DA730();
  sub_1C93DA7F0();
  v30();
  *(v0 + 368) = sub_1C93DA820();
  sub_1C93DA7D8();
  *(v0 + 376) = swift_getAssociatedConformanceWitness();
  sub_1C93D11E0((v0 + 344));
  sub_1C93DA860();

  v31 = *(v0 + 376);
  sub_1C93D95CC(v0 + 344, *(v0 + 368));
  v32 = *(MEMORY[0x1E69E85B0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v0 + 648) = v33;
  *v33 = v34;
  sub_1C93DA5E0(v33);
  sub_1C93DA518();

  return MEMORY[0x1EEE6D8D0]();
}

uint64_t sub_1C93D57C4()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  sub_1C93DA530();
  *v4 = v3;
  v6 = *(v5 + 648);
  v7 = *v1;
  sub_1C93B5C54();
  *v8 = v7;
  v3[82] = v0;

  if (v0)
  {
    v9 = v3[73];
    v10 = v3[69];

    sub_1C93DA1D0(v10);
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1C93D58D0()
{
  sub_1C93DA7CC();
  v1 = *(v0 + 536);
  if (v1 == 255)
  {
    v24 = *(v0 + 656);
    sub_1C939EA94((v0 + 344));
    static Task<>.checkCancellation()();
    if (v24)
    {
      v25 = *(v0 + 600);
      v26 = *(v0 + 584);
      v27 = *(v0 + 568);
      v28 = *(v0 + 560);
      v29 = *(v0 + 552);
      v30 = *(v0 + 544);
      sub_1C93A14F4(*(v0 + 592));
      sub_1C93DA1D0(v29);

      sub_1C93A4838(v28, &qword_1EC39A9F0, &qword_1C93FCE00);
      sub_1C93DA444();
      sub_1C93DA174(v30, v31);
      sub_1C93DA8B0(v27);

      sub_1C93DA508();
      sub_1C93DA674();

      __asm { BRAA            X1, X16 }
    }

    sub_1C93DA6A8();
    sub_1C93DA55C();
    sub_1C93DA674();
  }

  else
  {
    v2 = *(v0 + 528);
    if ((v1 & 1) == 0)
    {
      v34 = *(v0 + 640);
      v35 = *(v0 + 616);
      v36 = *(v0 + 600);
      v37 = *(v0 + 584);
      v38 = *(v0 + 568);
      v39 = *(v0 + 560);
      v40 = *(v0 + 552);
      v41 = *(v0 + 544);
      sub_1C93A14F4(*(v0 + 592));
      sub_1C93DA1D0(v40);

      sub_1C93A4838(v39, &qword_1EC39A9F0, &qword_1C93FCE00);
      sub_1C93DA444();
      sub_1C93DA174(v41, v42);
      sub_1C939EA94(v38);
      sub_1C939EA94((v0 + 344));
      sub_1C939EA94((v0 + 184));

      sub_1C93DA718();
      sub_1C93DA674();

      __asm { BRAA            X2, X16 }
    }

    if (qword_1EE02B450 != -1)
    {
      sub_1C93DA48C();
      swift_once();
    }

    v3 = *(v0 + 552);
    v4 = type metadata accessor for Logger();
    sub_1C93D9664(v4, qword_1EE02B458);
    sub_1C93DA3D0(v3, v0 + 384);
    sub_1C93DA3D0(v3, v0 + 424);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    sub_1C93DA1D0(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 552);
    if (v7)
    {
      v9 = swift_slowAlloc();
      swift_slowAlloc();
      *v9 = 136315394;
      v10 = *(v8 + 32);
      v11 = *(v8 + 16);
      *(v0 + 464) = *v8;
      *(v0 + 480) = v11;
      *(v0 + 496) = v10;
      v12 = String.init<A>(describing:)();
      v16 = sub_1C93DA898(v12, v13, v14, v15);

      *(v9 + 4) = v16;
      *(v9 + 12) = 2080;
      *(v0 + 537) = v2;
      sub_1C93D975C();
      v17 = Error.localizedDescription.getter();
      v21 = sub_1C93DA898(v17, v18, v19, v20);

      *(v9 + 14) = v21;
      sub_1C93DA840(&dword_1C939C000, v22, v23, "Configuration %s Ignoring blocked event: %s");
      swift_arrayDestroy();
      sub_1C93DA780();
      sub_1C93DA780();
    }

    else
    {
      sub_1C93DA1D0(*(v0 + 552));
    }

    v45 = *(v0 + 376);
    sub_1C93D95CC(v0 + 344, *(v0 + 368));
    v46 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C93DA6BC();
    *(v0 + 648) = v47;
    *v47 = v48;
    sub_1C93DA5E0();
    sub_1C93DA690();
    sub_1C93DA674();

    MEMORY[0x1EEE6D8D0]();
  }
}

void sub_1C93D5C98()
{
  sub_1C93DA798();
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[68];
  sub_1C939D5D4();
  sub_1C93D961C(v8, v9);
  sub_1C93DA638();
  swift_allocError();
  sub_1C939EE1C();
  sub_1C93DA0BC(v1, v10, v11);
  v12 = sub_1C93DA7C0();
  sub_1C93A14F4(v12);
  sub_1C93A4838(v6, &qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93DA444();
  sub_1C93DA174(v7, v13);
  sub_1C939EA94(v5);
  sub_1C93DA8B0(v0 + 43);

  sub_1C93DA508();
  sub_1C93DA880();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C93D5D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 1640) = v14;
  *(v8 + 1632) = a8;
  *(v8 + 1580) = a7;
  *(v8 + 1624) = a6;
  *(v8 + 1616) = a5;
  *(v8 + 1608) = a4;
  *(v8 + 1600) = a3;
  *(v8 + 1592) = a2;
  *(v8 + 1584) = a1;
  v9 = type metadata accessor for CloudCoreError();
  *(v8 + 1648) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 1656) = swift_task_alloc();
  v11 = *(type metadata accessor for SessionID(0) - 8);
  *(v8 + 1664) = v11;
  *(v8 + 1672) = *(v11 + 64);
  *(v8 + 1680) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93D5EB8, 0, 0);
}

uint64_t sub_1C93D5EB8()
{
  v48 = v0;
  v42 = *(v0 + 1580);
  v43 = *(v0 + 1616);
  v45 = *(v0 + 1624);
  v1 = *(v0 + 1592);
  memcpy((v0 + 184), v1, 0xA8uLL);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v40 = *(v0 + 201);
  v5 = *(v0 + 216);
  v38 = *(v0 + 208);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  memcpy((v0 + 1192), (v1 + 56), 0x60uLL);
  v8 = *(v0 + 336);
  v9 = *(v0 + 344);
  memcpy((v0 + 72), (v1 + 56), 0x60uLL);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 33) = v40;
  *(v0 + 40) = v38;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  *(v0 + 64) = v7;
  *(v0 + 168) = v8;
  *(v0 + 176) = v9;

  sub_1C93A5D1C(v6, v7);
  sub_1C93A8830(v0 + 1192, v0 + 1288);
  sub_1C939EBDC(v8, v9);
  sub_1C93D2DE0(v43, v45, v42 & 0x1010101, v0 + 1544);
  v10 = *(v0 + 1680);
  v11 = *(v0 + 1664);
  v41 = *(v0 + 1640);
  v12 = *(v0 + 1632);
  v13 = *(v0 + 1608);
  v46 = *(v0 + 1600);
  v14 = *(v0 + 1584);
  v37 = *(v0 + 1672);
  v39 = v14;
  sub_1C93A8678(v0 + 16);
  v16 = v13[3];
  v15 = v13[4];
  sub_1C93A4890(v13, v16);
  (*(v15 + 8))(v16, v15);
  v44 = *(v0 + 1448);
  v17 = *(v0 + 1456);
  sub_1C93A4890((v0 + 1424), v44);
  sub_1C93DA4F0();
  sub_1C93DA118(v14, v10, v18);
  sub_1C93D5174(v13, v0 + 1464);
  memcpy((v0 + 352), (v0 + 184), 0xA8uLL);
  memcpy(__dst, (v0 + 184), sizeof(__dst));
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = (v37 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1C93DA4C0();
  sub_1C93DA0BC(v10, v23 + v19, v24);
  sub_1C93D1540((v0 + 1464), v22 + v20);
  memcpy((v22 + v21), __dst, 0xA8uLL);
  v25 = (v22 + ((v21 + 175) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v12;
  v25[1] = v41;
  v26 = *(v17 + 8);
  sub_1C93B4ED8(v0 + 352, v0 + 520);
  sub_1C93A1478(v12);
  v27 = sub_1C93B4F38();
  v26(v39, v0 + 184, v46, sub_1C93DA430, v22, &type metadata for AuthenticatedSession.Configuration, v27, v44, v17);

  sub_1C939EA94((v0 + 1424));
  v28 = *(v0 + 1416);
  sub_1C93A4890((v0 + 1384), *(v0 + 1408));
  sub_1C939D47C();
  v30 = *(v29 + 64);
  sub_1C93DA730();
  sub_1C93DA7F0();
  v31();
  *(v0 + 1528) = sub_1C93DA820();
  sub_1C93DA7D8();
  *(v0 + 1536) = swift_getAssociatedConformanceWitness();
  sub_1C93D11E0((v0 + 1504));
  sub_1C93DA860();

  v32 = *(v0 + 1536);
  sub_1C93D95CC(v0 + 1504, *(v0 + 1528));
  v33 = *(MEMORY[0x1E69E85B0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v0 + 1688) = v34;
  *v34 = v35;
  sub_1C93DA5BC(v34);
  sub_1C93DA518();

  return MEMORY[0x1EEE6D8D0]();
}

uint64_t sub_1C93D639C()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  sub_1C93DA530();
  *v4 = v3;
  v6 = *(v5 + 1688);
  v7 = *v1;
  sub_1C93B5C54();
  *v8 = v7;
  v3[212] = v0;

  if (v0)
  {
    v9 = v3[203];
    v10 = v3[199];

    sub_1C93B4E84(v10);
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1C93D64A8()
{
  sub_1C93DA7CC();
  v1 = *(v0 + 1576);
  if (v1 == 255)
  {
    v22 = *(v0 + 1696);
    sub_1C939EA94((v0 + 1504));
    static Task<>.checkCancellation()();
    if (v22)
    {
      v23 = *(v0 + 1640);
      v24 = *(v0 + 1624);
      v25 = *(v0 + 1608);
      v26 = *(v0 + 1600);
      v27 = *(v0 + 1592);
      v28 = *(v0 + 1584);
      sub_1C93A14F4(*(v0 + 1632));
      sub_1C93B4E84(v27);

      sub_1C93A4838(v26, &qword_1EC39A9F0, &qword_1C93FCE00);
      sub_1C93DA444();
      sub_1C93DA174(v28, v29);
      sub_1C939EA94(v25);
      sub_1C939EA94((v0 + 1384));
      v30 = *(v0 + 1680);
      v31 = *(v0 + 1656);

      sub_1C93DA508();
      sub_1C93DA674();

      __asm { BRAA            X1, X16 }
    }

    sub_1C93DA6A8();
    sub_1C93DA55C();
    sub_1C93DA674();
  }

  else
  {
    v2 = *(v0 + 1568);
    if ((v1 & 1) == 0)
    {
      v34 = *(v0 + 1680);
      v35 = *(v0 + 1656);
      v36 = *(v0 + 1640);
      v37 = *(v0 + 1624);
      v38 = *(v0 + 1608);
      v39 = *(v0 + 1600);
      v40 = *(v0 + 1592);
      v41 = *(v0 + 1584);
      sub_1C93A14F4(*(v0 + 1632));
      sub_1C93B4E84(v40);

      sub_1C93A4838(v39, &qword_1EC39A9F0, &qword_1C93FCE00);
      sub_1C93DA444();
      sub_1C93DA174(v41, v42);
      sub_1C939EA94(v38);
      sub_1C939EA94((v0 + 1504));
      sub_1C939EA94((v0 + 1384));

      sub_1C93DA718();
      sub_1C93DA674();

      __asm { BRAA            X2, X16 }
    }

    if (qword_1EE02B450 != -1)
    {
      sub_1C93DA48C();
      swift_once();
    }

    v3 = *(v0 + 1592);
    v4 = type metadata accessor for Logger();
    sub_1C93D9664(v4, qword_1EE02B458);
    sub_1C93B4ED8(v3, v0 + 688);
    sub_1C93B4ED8(v3, v0 + 856);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    sub_1C93B4E84(v3);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 1592);
    if (v7)
    {
      v9 = swift_slowAlloc();
      swift_slowAlloc();
      *v9 = 136315394;
      memcpy((v0 + 1024), v8, 0xA8uLL);
      v10 = String.init<A>(describing:)();
      v14 = sub_1C93DA898(v10, v11, v12, v13);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      *(v0 + 1577) = v2;
      sub_1C93D975C();
      v15 = Error.localizedDescription.getter();
      v19 = sub_1C93DA898(v15, v16, v17, v18);

      *(v9 + 14) = v19;
      sub_1C93DA840(&dword_1C939C000, v20, v21, "Configuration %s Ignoring blocked event: %s");
      swift_arrayDestroy();
      sub_1C93DA780();
      sub_1C93DA780();
    }

    else
    {
      sub_1C93B4E84(*(v0 + 1592));
    }

    v45 = *(v0 + 1536);
    sub_1C93D95CC(v0 + 1504, *(v0 + 1528));
    v46 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C93DA6BC();
    *(v0 + 1688) = v47;
    *v47 = v48;
    sub_1C93DA5BC();
    sub_1C93DA690();
    sub_1C93DA674();

    MEMORY[0x1EEE6D8D0]();
  }
}

void sub_1C93D6888()
{
  sub_1C93DA798();
  v1 = v0[207];
  v2 = v0[206];
  v3 = v0[205];
  v4 = v0[204];
  v5 = v0[201];
  v6 = v0[200];
  v7 = v0[198];
  sub_1C939D5D4();
  sub_1C93D961C(v8, v9);
  sub_1C93DA638();
  swift_allocError();
  sub_1C939EE1C();
  sub_1C93DA0BC(v1, v10, v11);
  v12 = sub_1C93DA7C0();
  sub_1C93A14F4(v12);
  sub_1C93A4838(v6, &qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93DA444();
  sub_1C93DA174(v7, v13);
  sub_1C939EA94(v5);
  sub_1C939EA94(v0 + 188);
  sub_1C939EA94(v0 + 173);
  v14 = v0[210];
  v15 = v0[207];

  sub_1C93DA508();
  sub_1C93DA880();

  __asm { BRAA            X1, X16 }
}

uint64_t Session.init<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)()
{
  sub_1C93DA69C();
  v0[22] = v29;
  v0[23] = v30;
  v0[20] = v27;
  v0[21] = v28;
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v0[12] = v7;
  v0[13] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[24] = AssociatedTypeWitness;
  sub_1C939ED4C(AssociatedTypeWitness);
  v0[25] = v10;
  v12 = *(v11 + 64) + 15;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  sub_1C93DA70C();
  v0[28] = type metadata accessor for SessionReadiness();
  sub_1C939D47C();
  v0[29] = v13;
  v15 = *(v14 + 64);
  v0[30] = sub_1C93DA730();
  v16 = type metadata accessor for CloudCoreError();
  v0[31] = v16;
  sub_1C93A5A08(v16);
  v18 = *(v17 + 64);
  v0[32] = sub_1C93DA730();
  v19 = type metadata accessor for Optional();
  sub_1C93A5A08(v19);
  v21 = *(v20 + 64);
  v0[33] = sub_1C93DA730();
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C93D6B3C()
{
  static Session.acquire<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), v0 + 16, *(v0 + 168), *(v0 + 176), *(v0 + 184));
  v1 = *(v0 + 48);
  sub_1C93A4890((v0 + 16), *(v0 + 40));
  sub_1C939D47C();
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1C93DA730();
  v6 = *(v3 + 16);
  sub_1C93DA70C();
  v7();
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  sub_1C93D11E0((v0 + 56));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v8 = *(v0 + 88);
  sub_1C93D95CC(v0 + 56, *(v0 + 80));
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v0 + 272) = v10;
  *v10 = v11;
  v10[1] = sub_1C93D6E04;
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  sub_1C93DA518();

  return MEMORY[0x1EEE6D8D0]();
}

uint64_t sub_1C93D6E04()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = *(v2 + 272);
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C93D6F04()
{
  v74 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  if (sub_1C93A4810(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 280);
    sub_1C939EA94((v0 + 56));
    static Task<>.checkCancellation()();
    if (v3)
    {
      v4 = *(v0 + 192);
      v5 = *(v0 + 200);
      v6 = *(v0 + 168);
      v7 = *(v0 + 152);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);
      v12 = *(v0 + 104);
      sub_1C93A14F4(*(v0 + 144));
      sub_1C93DA588(v6);
      (*(v13 + 8))(v8, v6);
      sub_1C939EA94(v9);
      sub_1C93A4838(v10, &qword_1EC39A9F0, &qword_1C93FCE00);
      (*(v5 + 8))(v11, v4);
      sub_1C93DA444();
      sub_1C93DA174(v12, v14);
      sub_1C939EA94((v0 + 16));
      v16 = *(v0 + 256);
      v15 = *(v0 + 264);
      v17 = *(v0 + 240);
      v19 = *(v0 + 208);
      v18 = *(v0 + 216);

      sub_1C93DA508();
      goto LABEL_10;
    }

    sub_1C93DA6A8();
    sub_1C93DA55C();
    sub_1C93DA804();
  }

  else
  {
    (*(*(v0 + 232) + 32))(*(v0 + 240), v1, v2);
    sub_1C93DA7E4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v68 = *(v0 + 264);
      v69 = *(v0 + 256);
      v71 = *(v0 + 216);
      v72 = *(v0 + 208);
      v43 = *(v0 + 192);
      v42 = *(v0 + 200);
      v44 = *(v0 + 160);
      v45 = *(v0 + 168);
      v46 = *(v0 + 152);
      v47 = *(v0 + 128);
      v48 = *(v0 + 136);
      v50 = *(v0 + 112);
      v49 = *(v0 + 120);
      v51 = *(v0 + 104);
      v66 = *(v0 + 96);
      v67 = *(v0 + 240);
      sub_1C93A14F4(*(v0 + 144));
      sub_1C93DA588(v45);
      (*(v52 + 8))(v48, v45);
      sub_1C939EA94(v47);
      sub_1C93A4838(v49, &qword_1EC39A9F0, &qword_1C93FCE00);
      (*(v42 + 8))(v50, v43);
      sub_1C93DA444();
      sub_1C93DA174(v51, v53);
      sub_1C93DA588(v44);
      (*(v54 + 32))(v66, v67, v44);
      sub_1C939EA94((v0 + 56));
      sub_1C939EA94((v0 + 16));

      sub_1C939D510();
LABEL_10:
      sub_1C93DA804();

      __asm { BRAA            X1, X16 }
    }

    v20 = **(v0 + 240);
    if (qword_1EE02B450 != -1)
    {
      sub_1C93DA48C();
      swift_once();
    }

    v21 = *(v0 + 216);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    v24 = *(v0 + 112);
    v25 = type metadata accessor for Logger();
    sub_1C93D9664(v25, qword_1EE02B458);
    v26 = *(v23 + 16);
    v26(v21, v24, v22);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 216);
    if (v29)
    {
      v70 = v20;
      v31 = *(v0 + 200);
      v32 = *(v0 + 208);
      v33 = *(v0 + 192);
      v34 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v34 = 136315394;
      v26(v32, v30, v33);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      (*(v31 + 8))(v30, v33);
      v38 = sub_1C93D969C(v35, v37, v73);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v0 + 288) = v70;
      sub_1C93D975C();
      v39 = Error.localizedDescription.getter();
      v41 = sub_1C93D969C(v39, v40, v73);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_1C939C000, v27, v28, "Configuration %s Ignoring blocked event: %s", v34, 0x16u);
      swift_arrayDestroy();
      sub_1C93DA780();
      sub_1C93DA780();
    }

    else
    {
      v57 = *(v0 + 192);
      v58 = *(v0 + 200);

      (*(v58 + 8))(v30, v57);
    }

    v59 = *(v0 + 88);
    sub_1C93D95CC(v0 + 56, *(v0 + 80));
    v60 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C93DA6BC();
    *(v0 + 272) = v61;
    *v61 = v62;
    v61[1] = sub_1C93D6E04;
    v64 = *(v0 + 256);
    v63 = *(v0 + 264);
    sub_1C93DA518();
    sub_1C93DA804();

    MEMORY[0x1EEE6D8D0]();
  }
}

uint64_t sub_1C93D7450()
{
  sub_1C93DA7CC();
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[25];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[24];
  sub_1C939D5D4();
  sub_1C93D961C(v10, v11);
  sub_1C93DA638();
  swift_allocError();
  sub_1C939EE1C();
  sub_1C93DA0BC(v2, v12, v13);
  sub_1C93A14F4(v6);
  sub_1C93DA588(v4);
  (*(v14 + 8))(v7, v4);
  sub_1C939EA94(v8);
  sub_1C93A4838(v9, &qword_1EC39A9F0, &qword_1C93FCE00);
  (*(v3 + 8))(v23, v25);
  sub_1C93DA444();
  sub_1C93DA174(v24, v15);
  sub_1C939EA94(v0 + 7);
  sub_1C939EA94(v0 + 2);
  v17 = v0[32];
  v16 = v0[33];
  v18 = v0[30];
  v20 = v0[26];
  v19 = v0[27];

  sub_1C939D510();

  return v21();
}

uint64_t static Session.acquire<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12)
{
  v62 = a6;
  v63 = a7;
  v69 = a5;
  v56 = a4;
  v61 = a3;
  v67 = a1;
  v64 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939D47C();
  v59 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v66 = v53 - v19;
  v20 = type metadata accessor for SessionID(0);
  v21 = sub_1C939ED4C(v20);
  v55 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v65 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a11;
  v60 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 56);
  v68 = a2;
  v26(__src, AssociatedTypeWitness, AssociatedConformanceWitness);
  v27 = v69;
  v57 = a10;
  v69 = a12;
  v28 = v79;
  _s17CloudCoreInternal23AnySessionConfigurationV8validate12entitlementsyx_tAC06CustomF5ErrorOYKAA20EntitlementsProtocolRzlF(v27, a10, a12, v75);
  memcpy(v74, __src, sizeof(v74));
  sub_1C93A8678(v74);
  if (v28)
  {
    v29 = v75[0];
    v30 = v76;
    v31 = v77;
    sub_1C93A888C();
    sub_1C93DA638();
    result = swift_allocError();
    *v33 = v29;
    *(v33 + 8) = v30;
    *(v33 + 16) = v31;
  }

  else
  {
    v79 = AssociatedConformanceWitness;
    v34 = v56;
    v35 = v56[3];
    v36 = v56[4];
    sub_1C93A4890(v56, v35);
    (*(v36 + 8))(v71, v35, v36);
    v54 = v72;
    v53[0] = v73;
    v53[1] = sub_1C93A4890(v71, v72);
    sub_1C93DA4F0();
    sub_1C93DA118(v67, v65, v37);
    sub_1C93D5174(v34, v70);
    v38 = v59;
    (*(v59 + 16))(v66, v68, AssociatedTypeWitness);
    v39 = (*(v55 + 80) + 48) & ~*(v55 + 80);
    v40 = (v24 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (*(v38 + 80) + v40 + 40) & ~*(v38 + 80);
    v42 = swift_allocObject();
    v43 = v57;
    v44 = v58;
    *(v42 + 2) = v60;
    *(v42 + 3) = v43;
    v45 = v69;
    *(v42 + 4) = v44;
    *(v42 + 5) = v45;
    sub_1C93DA4C0();
    sub_1C93DA0BC(v65, v46 + v39, v47);
    sub_1C93D1540(v70, &v42[v40]);
    (*(v38 + 32))(&v42[v41], v66, AssociatedTypeWitness);
    v48 = &v42[(v17 + v41 + 7) & 0xFFFFFFFFFFFFFFF8];
    v49 = v62;
    v50 = v63;
    *v48 = v62;
    v48[1] = v50;
    v51 = v53[0];
    v52 = *(v53[0] + 8);
    sub_1C93A1478(v49);
    v52(v67, v68, v61, sub_1C93D97B0, v42, AssociatedTypeWitness, v79, v54, v51);

    return sub_1C939EA94(v71);
  }

  return result;
}

uint64_t sub_1C93D79D4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a4;
  v56 = a5;
  v58 = a3;
  v59 = a1;
  v57 = a6;
  v7 = type metadata accessor for SessionID(0);
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = v9;
  v54 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Entitlements.Error();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE02B078 != -1)
  {
    swift_once();
  }

  sub_1C93D5174(qword_1EE0358D0, v72);
  static Entitlements.currentProcess.getter(v13, v67);
  v14 = v67[1];
  v47 = v67[0];
  v43 = v69;
  v44 = v68;
  v45 = v70;
  LODWORD(v46) = v71;
  v15 = *(a2 + 17);
  v16 = a2[1];
  v64 = *a2;
  v65 = v16;
  v66 = *(a2 + 4);
  v17 = v66;
  v18 = v64;
  v19 = v16;
  v20 = *(&v16 + 1);

  sub_1C93A5D7C(0, 0);
  v49 = v18;
  v50 = v20;
  v75 = v18;
  v51 = *(&v18 + 1);
  v48 = v19;
  v76 = v19;
  v77 = v15 & 1;
  v78 = v20;
  v79 = v17;
  v80 = xmmword_1C93FD260;
  v81 = 0;
  v82 = 0;
  v84 = 0u;
  v85 = 0u;
  if (v43)
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 | v44;
  v86 = 0uLL;
  v87 = 0uLL;
  v88 = 0uLL;
  if (v45)
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  if (v46)
  {
    v24 = 0x1000000;
  }

  else
  {
    v24 = 0;
  }

  v83 = 1;
  v89 = 2;
  sub_1C93D2DE0(v47, v14, v22 | v23 | v24, v61);

  sub_1C93A8678(&v75);
  v25 = v73;
  v26 = v74;
  sub_1C93A4890(v72, v73);
  (*(v26 + 8))(v61, v25, v26);
  v27 = v63;
  v47 = v62;
  v46 = sub_1C93A4890(v61, v62);
  v28 = v54;
  sub_1C93DA118(v59, v54, type metadata accessor for SessionID);
  sub_1C93D5174(v72, v60);
  v29 = BYTE1(v65);
  v30 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v31 = (v53 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1C93DA0BC(v28, v33 + v30, type metadata accessor for SessionID);
  sub_1C93D1540(v60, v33 + v31);
  v34 = v33 + v32;
  v35 = v51;
  *v34 = v49;
  *(v34 + 8) = v35;
  *(v34 + 16) = v48;
  *(v34 + 17) = v29;
  *(v34 + 24) = v50;
  *(v34 + 32) = v17;
  v36 = (v33 + ((v32 + 47) & 0xFFFFFFFFFFFFFFF8));
  v38 = v55;
  v37 = v56;
  *v36 = v55;
  v36[1] = v37;
  v39 = *(v27 + 8);

  sub_1C93A1478(v38);
  v40 = sub_1C93AC5C0();
  v39(v59, &v64, v58, sub_1C93DA1CC, v33, &type metadata for AnonymousSession.Configuration, v40, v47, v27);

  sub_1C939EA94(v61);
  return sub_1C939EA94(v72);
}

uint64_t sub_1C93D8064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a4;
  v67 = a5;
  v69 = a1;
  v70 = a3;
  v68 = a6;
  v7 = type metadata accessor for SessionID(0);
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = v9;
  v65 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Entitlements.Error();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE02B078 != -1)
  {
    swift_once();
  }

  sub_1C93D5174(qword_1EE0358D0, v88);
  static Entitlements.currentProcess.getter(v13, v83);
  v62 = 0;
  v61 = v83[0];
  v57 = v83[1];
  v56 = v85;
  v58 = v86;
  v59 = v84;
  v60 = v87;
  memcpy(v81, a2, sizeof(v81));
  v55 = LOBYTE(v81[2]);
  v54[1] = v81[3];
  v14 = v81[5];
  v15 = v81[6];
  memcpy(v82, (a2 + 56), 0x60uLL);
  v16 = v81[19];
  v17 = v81[20];
  memcpy(v97, (a2 + 56), sizeof(v97));
  v91[0] = v81[0];
  v91[1] = v81[1];
  v92 = v81[2];
  v93 = v81[3];
  v94 = v81[4];
  v95 = v81[5];
  v96 = v81[6];
  v98 = v81[19];
  v99 = v81[20];

  sub_1C93A5D1C(v14, v15);
  sub_1C93A8830(v82, v77);
  v18 = v17;
  v19 = v57;
  sub_1C939EBDC(v16, v18);
  if (v56)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v59;
  if (v58)
  {
    v22 = 0x10000;
  }

  else
  {
    v22 = 0;
  }

  if (v60)
  {
    v23 = 0x1000000;
  }

  else
  {
    v23 = 0;
  }

  v24 = v62;
  sub_1C93D2DE0(v61, v19, v21 | v22 | v23, v78);
  if (v24)
  {

    sub_1C93A8678(v91);
    v41 = v78[0];
    v42 = v79;
    v43 = v80;
    sub_1C93A888C();
    v44 = swift_allocError();
    *v45 = v41;
    *(v45 + 8) = v42;
    *(v45 + 16) = v43;
    sub_1C939EA94(v88);
    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1C93D9664(v46, qword_1EE02B458);
    v47 = v44;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = v44;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_1C939C000, v48, v49, "The calling process cannot support the provided Configuration: %@", v50, 0xCu);
      sub_1C93A4838(v51, &qword_1EC39B3A0, &qword_1C9404BE0);
      MEMORY[0x1CCA884B0](v51, -1, -1);
      MEMORY[0x1CCA884B0](v50, -1, -1);
    }

    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    MEMORY[0x1CCA87780](0xD00000000000003FLL, 0x80000001C9406650);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    sub_1C93A8678(v91);
    v25 = v89;
    v26 = v90;
    sub_1C93A4890(v88, v89);
    (*(v26 + 8))(v74, v25, v26);
    v27 = v75;
    v28 = v76;
    v62 = sub_1C93A4890(v74, v75);
    v29 = v69;
    v30 = v65;
    sub_1C93DA118(v69, v65, type metadata accessor for SessionID);
    sub_1C93D5174(v88, v73);
    memcpy(v77, v81, sizeof(v77));
    memcpy(v72, v81, sizeof(v72));
    v31 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v32 = (v64 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_1C93DA0BC(v30, v34 + v31, type metadata accessor for SessionID);
    sub_1C93D1540(v73, v34 + v32);
    memcpy((v34 + v33), v72, 0xA8uLL);
    v35 = (v34 + ((v33 + 175) & 0xFFFFFFFFFFFFFFF8));
    v37 = v66;
    v36 = v67;
    *v35 = v66;
    v35[1] = v36;
    v38 = *(v28 + 8);
    sub_1C93B4ED8(v77, &v71);
    sub_1C93A1478(v37);
    v39 = sub_1C93B4F38();
    v38(v29, v81, v70, sub_1C93D9E60, v34, &type metadata for AuthenticatedSession.Configuration, v39, v27, v28);

    sub_1C939EA94(v74);
    return sub_1C939EA94(v88);
  }

  return result;
}

uint64_t static Session.acquire(sessionID:configuration:previousInvalidationContext:onInvalidation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for Entitlements.Error();
  v16 = sub_1C939D430(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C93A59A8();
  v21 = v20 - v19;
  if (qword_1EE02B078 != -1)
  {
    sub_1C93DA4A0();
  }

  sub_1C93D5174(qword_1EE0358D0, &v34);
  static Entitlements.currentProcess.getter(v21, v29);
  v24[0] = v29[0];
  v24[1] = v29[1];
  v25 = v30;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  static Session.acquire<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)(a1, a2, a3, &v34, v24, a4, a5, a6, a8, &type metadata for Entitlements, a7, &protocol witness table for Entitlements);

  return sub_1C939EA94(&v34);
}

uint64_t sub_1C93D8AC0(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AnySessionAcquiredInfo();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SessionID(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a4[1];
  v39 = *a4;
  v40 = v20;
  v41 = *(a4 + 4);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    v22 = a3[3];
    v23 = a3[4];
    sub_1C93A4890(a3, v22);
    v34 = a6;
    v24 = v15;
    v25 = *(v23 + 16);
    v26 = sub_1C93AC5C0();
    v27 = v25(a2, &v39, a1, &type metadata for AnonymousSession.Configuration, v26, v22, v23);
    v29 = v28;
    sub_1C93DA118(a2, v19, type metadata accessor for SessionID);
    v35 = v39;
    v36 = v40;
    v37 = *(&v40 + 1);
    v38 = v41;
    sub_1C93DA118(a1, v24, type metadata accessor for AnySessionAcquiredInfo);
    v30 = type metadata accessor for AnonymousSession();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();

    v33 = v34;
    sub_1C93A1478(a5);
    return AnonymousSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(v19, &v35, v24, v27, v29, a5, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C93D8CE0(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AnySessionAcquiredInfo();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SessionID(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v33, a4, sizeof(v33));
  if (static UUID.== infix(_:_:)())
  {
    v30 = a6;
    v21 = a3[3];
    v20 = a3[4];
    sub_1C93A4890(a3, v21);
    v29 = a5;
    v22 = v15;
    v23 = *(v20 + 16);
    v24 = sub_1C93B4F38();
    v23(a2, v33, a1, &type metadata for AuthenticatedSession.Configuration, v24, v21, v20);
    sub_1C93DA118(a2, v19, type metadata accessor for SessionID);
    memcpy(__dst, v33, 0xA8uLL);
    memcpy(v32, v33, sizeof(v32));
    sub_1C93DA118(a1, v22, type metadata accessor for AnySessionAcquiredInfo);
    v25 = type metadata accessor for AuthenticatedSession();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1C93B4ED8(__dst, &v31);
    sub_1C93A1478(v29);
    AuthenticatedSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C93D8F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v45 = a5;
  v49 = a4;
  v15 = type metadata accessor for AnySessionAcquiredInfo();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v20 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = v41 - v21;
  v22 = type metadata accessor for SessionID(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v46 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    v42 = v18;
    v43 = a6;
    v41[1] = a7;
    v27 = a3[3];
    v26 = a3[4];
    sub_1C93A4890(a3, v27);
    v44 = a8;
    v28 = *(v26 + 16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = a2;
    v31 = a2;
    v32 = v49;
    v41[0] = v28(v30, v49, a1, AssociatedTypeWitness, AssociatedConformanceWitness, v27, v26);
    v34 = v33;
    v35 = v46;
    sub_1C93DA118(v31, v46, type metadata accessor for SessionID);
    v36 = v48;
    (*(v47 + 16))(v48, v32, AssociatedTypeWitness);
    v37 = v42;
    sub_1C93DA118(a1, v42, type metadata accessor for AnySessionAcquiredInfo);
    v38 = *(a9 + 88);
    v39 = v45;
    v40 = v43;
    sub_1C93A1478(v45);
    return v38(v35, v36, v37, v41[0], v34, v39, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93D91DC(_BYTE *a1, uint64_t *a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for SessionValidity(0);
  v9 = sub_1C939D430(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93A59A8();
  v14 = (v13 - v12);
  sub_1C93DA65C();
  sub_1C93DA118(a1, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C93DA4D8();
    return sub_1C93DA174(v14, v16);
  }

  else
  {
    sub_1C93DA4D8();
    sub_1C93DA174(a1, v18);
    v19 = *a2;
    v20 = a2[1];
    *a2 = *v14;
    sub_1C93A14F4(v19);
    v21 = *(sub_1C93A1890(&qword_1EC39AC70, &qword_1C93FDD98) + 48);
    *a1 = a3;
    sub_1C93DA644();
    sub_1C93DA118(a4, &a1[v22], v23);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1C93D92F4()
{
  sub_1C93DA69C();
  *(v0 + 24) = v1;
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1C93B5858;
  v5 = sub_1C93DA7E4();

  return v7(v5);
}

uint64_t sub_1C93D93F4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SessionValidity(0);
  v4 = sub_1C939D430(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v9 = (v8 - v7);
  v10 = type metadata accessor for SessionInvalidationContext(0);
  v11 = sub_1C93A5A08(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C93A59A8();
  v16 = v15 - v14;
  sub_1C93DA65C();
  v17 = sub_1C93DA7C0();
  sub_1C93DA118(v17, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v9;
    v21 = sub_1C93A1890(&qword_1EC39AC70, &qword_1C93FDD98);
    sub_1C93DA0BC(&v9[*(v21 + 48)], v16, type metadata accessor for SessionInvalidationContext);
    type metadata accessor for CloudCoreError();
    sub_1C939D5D4();
    sub_1C93D961C(v22, v23);
    sub_1C93DA638();
    v24 = swift_allocError();
    v26 = v25;
    v27 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);
    v28 = *(v27 + 48);
    *v26 = v20;
    sub_1C93DA644();
    sub_1C93DA118(v16, &v26[v29], v30);
    sub_1C93A1710(v26, 0, 4, v27);
    swift_willThrow();
    result = sub_1C93DA174(v16, type metadata accessor for SessionInvalidationContext);
    *a2 = v24;
  }

  else
  {
    sub_1C93DA4D8();
    return sub_1C93DA174(v9, v32);
  }

  return result;
}

uint64_t sub_1C93D95CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1C93D961C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C93D9664(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C93D969C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_1C93DA690();
  v9 = sub_1C93D98F4(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_1C939E974(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_1C939EA94(v14);
  return v10;
}

unint64_t sub_1C93D975C()
{
  result = qword_1EC39B398;
  if (!qword_1EC39B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B398);
  }

  return result;
}

uint64_t sub_1C93D97B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v9);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = (*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939ED4C(AssociatedTypeWitness);
  v16 = v15;
  v18 = v17;
  v19 = (v13 + *(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = *(v18 + 64);
  sub_1C93DA748();
  return sub_1C93D8F04(a1, v2 + v11, (v2 + v13), v2 + v22, *(v2 + v21), *(v2 + v21 + 8), v5, a2, v7);
}

unint64_t sub_1C93D98F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C93D99F4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C93D99F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C93D9A40(a1, a2);
  sub_1C93D9B58(&unk_1F48EB810);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C93D9A40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1C93D9C3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C93D9B58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1C93D9CAC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C93D9C3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C93A1890(&qword_1EC39B3A8, &qword_1C94036D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1C93D9CAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C93A1890(&qword_1EC39B3A8, &qword_1C94036D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C93D9DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v8;
  v11 = *(a4 + 32);
  result = sub_1C93D8AC0(a1, a2, a3, v10, a5, a6);
  *a7 = result;
  return result;
}

void sub_1C93D9DE4(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C93D8CE0(a2, a3, a4, __dst, a5, a6);
  *a7 = v13;
}

uint64_t sub_1C93D9EC0()
{
  v1 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 16) & ~v3;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for UUID();
  sub_1C939D430(v8);
  (*(v9 + 8))(v0 + v5);
  sub_1C939EA94((v0 + v6));
  v10 = v0 + v7;
  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v7 + 32);

  if (*(v0 + v7 + 48) != 1)
  {
  }

  v13 = v7 + 175;
  v14 = *(v10 + 72);

  sub_1C93BABF0(*(v10 + 80), *(v10 + 88), *(v10 + 96));
  if (*(v10 + 112))
  {

    v15 = *(v10 + 128);

    v16 = *(v10 + 144);
  }

  v17 = v13 & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 160) >= 2uLL)
  {
  }

  if (*(v0 + v17))
  {
    v18 = *(v0 + v17 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v17 + 16, v3 | 7);
}

void sub_1C93DA020()
{
  v0 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  sub_1C93DA748();
  v7 = sub_1C93DA6C8();

  sub_1C93D9DE4(v10, v7, v8, v9, v11, v12, v13);
}

uint64_t sub_1C93DA0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C939D430(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C93A5A40();
  v8(v7);
  return a2;
}

uint64_t sub_1C93DA118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C939D430(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C93A5A40();
  v8(v7);
  return a2;
}

uint64_t sub_1C93DA174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C939D430(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C93DA224()
{
  v1 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 16) & ~v3;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for UUID();
  sub_1C939D430(v9);
  (*(v10 + 8))(v0 + v5);
  sub_1C939EA94((v0 + v6));
  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v7 + 32);

  if (*(v0 + v8))
  {
    v13 = *(v0 + v8 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v3 | 7);
}

uint64_t sub_1C93DA334()
{
  v0 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  sub_1C93DA748();
  v7 = sub_1C93DA6C8();

  return sub_1C93D9DA0(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C93DA4A0()
{

  return swift_once();
}

uint64_t sub_1C93DA508()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1C93DA540()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1C93DA55C()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1C93DA5AC@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_1C93DA5BC(uint64_t result)
{
  *(result + 8) = sub_1C93D639C;
  v2 = *(v1 + 1656);
  return result;
}

uint64_t sub_1C93DA5E0(uint64_t result)
{
  *(result + 8) = sub_1C93D57C4;
  v2 = *(v1 + 616);
  return result;
}

uint64_t sub_1C93DA604(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[16];
  v5 = v2[17];
  v6 = v2[12];
  v7 = v2[10];
  *(v3 + 16) = v2[13];
  return v5;
}

uint64_t sub_1C93DA6C8()
{
  v3 = (v2 + (v0 & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  return v1;
}

uint64_t sub_1C93DA730()
{

  return swift_task_alloc();
}

uint64_t sub_1C93DA758()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 73);
  v8 = *(v0 + 74);
  v9 = *(v0 + 75);

  return sub_1C93A1478(v2);
}

void sub_1C93DA780()
{

  JUMPOUT(0x1CCA884B0);
}

void sub_1C93DA7A4()
{

  static Entitlements.currentProcess.getter(v0, v1 + 56);
}

uint64_t sub_1C93DA820()
{

  return swift_getAssociatedTypeWitness();
}

void sub_1C93DA840(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C93DA860()
{

  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1C93DA898(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1C93D969C(a1, a2, va);
}

uint64_t sub_1C93DA8B0(uint64_t *a1)
{
  sub_1C939EA94(a1);
  v2 = v1[80];
  v3 = v1[77];
  sub_1C939EA94(v1 + 23);
}

void SessionAcquiredInfo.asAnySessionAcquiredInfo.getter()
{
  _StringGuts.grow(_:)(61);
  MEMORY[0x1CCA87780](0xD000000000000021, 0x80000001C94066C0);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v0);

  MEMORY[0x1CCA87780](0xD00000000000001ALL, 0x80000001C94066F0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void SessionConfiguration.asAnySessionConfiguration.getter()
{
  _StringGuts.grow(_:)(62);
  MEMORY[0x1CCA87780](0xD000000000000021, 0x80000001C94066C0);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v0);

  MEMORY[0x1CCA87780](0xD00000000000001BLL, 0x80000001C9406740);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1C93DAB68(uint64_t a1)
{
  v2 = sub_1C93DAC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DABA4(uint64_t a1)
{
  v2 = sub_1C93DAC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C93DAC24()
{
  result = qword_1EE02BF18;
  if (!qword_1EE02BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF18);
  }

  return result;
}

uint64_t sub_1C93DAC78(unint64_t *a1, void (*a2)(uint64_t))
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

void ServerDate.init(from:)()
{
  sub_1C93C0358();
  v3 = sub_1C93E1CD0(v2);
  v4 = sub_1C939D44C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v7 = sub_1C93A1890(&qword_1EC39B3C8, &qword_1C9403768);
  sub_1C939D44C(v7);
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C93E19CC();
  v12 = type metadata accessor for ServerDate(v11);
  v13 = sub_1C93A5A08(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C93A59A8();
  v18 = v17 - v16;
  v19 = v0[3];
  v20 = v0[4];
  v21 = sub_1C939D460();
  sub_1C93E1BC8(v21, v22);
  sub_1C93DAC24();
  sub_1C93E1BA4();
  if (!v1)
  {
    sub_1C93E187C();
    sub_1C93DAC78(v23, v24);
    sub_1C93E1B14();
    v25 = sub_1C93E1B98();
    v26(v25, v7);
    v27 = sub_1C93E1C30();
    v28(v27);
    sub_1C93E196C();
    sub_1C93DB654(v18, v29);
  }

  sub_1C939EA94(v0);
  sub_1C93E1C50();
  sub_1C939EDBC();
}

uint64_t sub_1C93DAEE8()
{
  sub_1C93E1C90();
  v0 = type metadata accessor for Date();
  sub_1C939D430(v0);
  v2 = *(v1 + 16);
  v3 = sub_1C93A5A40();

  return v4(v3);
}

uint64_t sub_1C93DAF44()
{
  sub_1C93A59DC();
  v0 = type metadata accessor for Date();
  sub_1C939D430(v0);
  v2 = *(v1 + 40);
  v3 = sub_1C93BD618();

  return v4(v3);
}

uint64_t sub_1C93DAFC4()
{
  v0 = type metadata accessor for Date();
  sub_1C939D430(v0);
  v2 = *(v1 + 32);
  v3 = sub_1C93BD618();

  return v4(v3);
}

uint64_t sub_1C93DB02C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93DB0A4(uint64_t a1)
{
  v2 = sub_1C93DB2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DB0E0(uint64_t a1)
{
  v2 = sub_1C93DB2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C93DB160()
{
  sub_1C93C0358();
  v2 = v1;
  v4 = v3;
  v7 = sub_1C93A1890(v5, v6);
  sub_1C939D44C(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C939D578();
  v13 = v4[4];
  v14 = sub_1C93E1BC8(v4, v4[3]);
  v2(v14);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v15, v16);
  sub_1C93A5B9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v9 + 8))(v0, v7);
  sub_1C939EDBC();
}

unint64_t sub_1C93DB2A0()
{
  result = qword_1EE02BF68[0];
  if (!qword_1EE02BF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE02BF68);
  }

  return result;
}

uint64_t sub_1C93DB2F8()
{
  sub_1C93A59DC();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v0, v1);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1C93DB36C()
{
  sub_1C93E1C18();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void DeviceDate.init(from:)()
{
  sub_1C93C0358();
  v3 = sub_1C93E1CD0(v2);
  v4 = sub_1C939D44C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v7 = sub_1C93A1890(&qword_1EC39B3D8, &qword_1C9403778);
  sub_1C939D44C(v7);
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C93E19CC();
  v12 = type metadata accessor for DeviceDate(v11);
  v13 = sub_1C93A5A08(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C93A59A8();
  v18 = v17 - v16;
  v19 = v0[3];
  v20 = v0[4];
  v21 = sub_1C939D460();
  sub_1C93E1BC8(v21, v22);
  sub_1C93DB2A0();
  sub_1C93E1BA4();
  if (!v1)
  {
    sub_1C93E187C();
    sub_1C93DAC78(v23, v24);
    sub_1C93E1B14();
    v25 = sub_1C93E1B98();
    v26(v25, v7);
    v27 = sub_1C93E1C30();
    v28(v27);
    sub_1C93DB654(v18, v29);
  }

  sub_1C939EA94(v0);
  sub_1C93E1C50();
  sub_1C939EDBC();
}

Swift::Int sub_1C93DB5C0()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1C93DB654(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C93E1AD8();
  v5 = v4(v3);
  sub_1C939D430(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C93A5A40();
  v9(v8);
  return a2;
}

uint64_t SessionInvalidationContext.deviceIDHash.getter()
{
  v2 = sub_1C93E1C90();
  v3 = (v1 + *(type metadata accessor for SessionInvalidationContext(v2) + 20));
  v4 = v3[1];
  v5 = v3[2];
  *v0 = *v3;
  v0[1] = v4;
  v0[2] = v5;

  return sub_1C93A1988(v4, v5);
}

__n128 SessionInvalidationContext.deviceIDHash.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for SessionInvalidationContext(0) + 20));
  sub_1C93A17C8(v3->n128_i64[1], v3[1].n128_u64[0]);
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t SessionInvalidationContext.deviceIDHash.modify()
{
  v0 = sub_1C93A59DC();
  v1 = *(type metadata accessor for SessionInvalidationContext(v0) + 20);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.primaryServiceName.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionInvalidationContext(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return sub_1C93A5A40();
}

uint64_t SessionInvalidationContext.primaryServiceName.setter()
{
  v3 = (v1 + *(sub_1C93E1BFC() + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SessionInvalidationContext.primaryServiceName.modify()
{
  v0 = sub_1C93A59DC();
  v1 = *(type metadata accessor for SessionInvalidationContext(v0) + 24);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.privilegedInfoHash.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionInvalidationContext(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1C93A5A40();
  sub_1C93DB974(v4, v5);
  return sub_1C93A5A40();
}

uint64_t sub_1C93DB974(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C93A1988(a1, a2);
  }

  return a1;
}

uint64_t SessionInvalidationContext.privilegedInfoHash.setter()
{
  v3 = v1 + *(sub_1C93E1BFC() + 28);
  result = sub_1C93D152C(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t SessionInvalidationContext.privilegedInfoHash.modify()
{
  v0 = sub_1C93A59DC();
  v1 = *(type metadata accessor for SessionInvalidationContext(v0) + 28);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.userPersonaUniqueString.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionInvalidationContext(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return sub_1C93A5A40();
}

uint64_t SessionInvalidationContext.userPersonaUniqueString.setter()
{
  v3 = (v1 + *(sub_1C93E1BFC() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SessionInvalidationContext.userPersonaUniqueString.modify()
{
  v0 = sub_1C93A59DC();
  v1 = *(type metadata accessor for SessionInvalidationContext(v0) + 32);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.keySyncRequest.getter()
{
  v2 = sub_1C93E1C90();
  v3 = v1 + *(type metadata accessor for SessionInvalidationContext(v2) + 36);

  return sub_1C93DBAFC(v3, v0);
}

uint64_t sub_1C93DBAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionInvalidationContext.keySyncRequest.setter()
{
  v2 = sub_1C93A59DC();
  v3 = v1 + *(type metadata accessor for SessionInvalidationContext(v2) + 36);

  return sub_1C93DBBAC(v0, v3);
}

uint64_t sub_1C93DBBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SessionInvalidationContext.keySyncRequest.modify()
{
  v0 = sub_1C93A59DC();
  v1 = *(type metadata accessor for SessionInvalidationContext(v0) + 36);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.KeySyncRequest.serviceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1C93A5A40();
}

uint64_t SessionInvalidationContext.KeySyncRequest.serviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SessionInvalidationContext.KeySyncRequest.reason.getter()
{
  v2 = sub_1C93E1C90();
  v3 = *(type metadata accessor for SessionInvalidationContext.KeySyncRequest(v2) + 20);
  sub_1C93E18C4();
  return sub_1C93DBD38(v1 + v4, v0);
}

uint64_t sub_1C93DBD38(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C93E1AD8();
  v5 = v4(v3);
  sub_1C939D430(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C93A5A40();
  v9(v8);
  return a2;
}

uint64_t SessionInvalidationContext.KeySyncRequest.reason.setter()
{
  v2 = sub_1C93A59DC();
  v3 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v2);
  return sub_1C93DBDF8(v0, v1 + *(v3 + 20));
}

uint64_t sub_1C93DBDF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C93E1AD8();
  v5 = v4(v3);
  sub_1C939D430(v5);
  v7 = *(v6 + 40);
  v8 = sub_1C93A5A40();
  v9(v8);
  return a2;
}

uint64_t SessionInvalidationContext.KeySyncRequest.reason.modify()
{
  v0 = sub_1C93A59DC();
  v1 = *(type metadata accessor for SessionInvalidationContext.KeySyncRequest(v0) + 20);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.KeySyncRequest.retryCount.setter()
{
  v2 = sub_1C93A59DC();
  result = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t SessionInvalidationContext.KeySyncRequest.retryCount.modify()
{
  v0 = sub_1C93A59DC();
  v1 = *(type metadata accessor for SessionInvalidationContext.KeySyncRequest(v0) + 24);
  return sub_1C93A5AA4();
}

void static SessionInvalidationContext.KeySyncRequest.Reason.== infix(_:_:)()
{
  sub_1C93A5B40();
  v2 = v1;
  v3 = type metadata accessor for ServerDate(0);
  v4 = sub_1C93A5A08(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v9 = v8 - v7;
  v10 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  v11 = sub_1C939D430(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C93A59B8();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C93A1890(&qword_1EC39B3E8, &qword_1C9403788);
  sub_1C93A5A08(v18);
  v20 = *(v19 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C93E1B78();
  v23 = (v0 + *(v22 + 56));
  sub_1C93DBD38(v2, v0);
  v24 = sub_1C93A8E04();
  sub_1C93DBD38(v24, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C93E18C4();
    v37 = sub_1C939D460();
    sub_1C93DBD38(v37, v38);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C93E196C();
      sub_1C93DB654(v23, v9);
      sub_1C93E1B40();
      static Date.== infix(_:_:)();
      sub_1C93E1A88();
      sub_1C93DC1C4();
      sub_1C93DC1C4();
      sub_1C93E1894();
      sub_1C93DC1C4();
      goto LABEL_13;
    }

    sub_1C93E1924();
    sub_1C93DC1C4();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C93E18C4();
    sub_1C93DBD38(v0, v16);
    v28 = v16[1];
    v27 = v16[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v16;
      v30 = v23[1];
      v31 = v23[2];
      if (v29 == *v23)
      {
        v32 = sub_1C93E1B40();
        MEMORY[0x1CCA874A0](v32);
      }

      v33 = sub_1C93A8E10();
      sub_1C93A17C8(v33, v34);
      v35 = sub_1C93E1B40();
      sub_1C93A17C8(v35, v36);
      goto LABEL_10;
    }

    v39 = sub_1C93E1B40();
    sub_1C93A17C8(v39, v40);
LABEL_12:
    sub_1C93A4838(v0, &qword_1EC39B3E8, &qword_1C9403788);
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1C93E1894();
  sub_1C93DC1C4();
LABEL_13:
  sub_1C93A5B58();
}

uint64_t sub_1C93DC1C4()
{
  v1 = sub_1C93A59DC();
  v3 = v2(v1);
  sub_1C939D430(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C93DC218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564496F6ELL && a2 == 0xED00007465537974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C94067A0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x80000001C94067C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1C93DC33C(char a1)
{
  if (!a1)
  {
    return 0x69746E6564496F6ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_1C93DC3A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001C94067E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93DC440(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001C9406800 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_1C93DC4C0()
{
  sub_1C93E1C18();
  MEMORY[0x1CCA87E40](0);
  return Hasher._finalize()();
}

uint64_t sub_1C93DC520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DC218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93DC548(uint64_t a1)
{
  v2 = sub_1C93DCC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC584(uint64_t a1)
{
  v2 = sub_1C93DCC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93DC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DC3A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93DC5F0(uint64_t a1)
{
  v2 = sub_1C93DCC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC62C(uint64_t a1)
{
  v2 = sub_1C93DCC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93DC66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DC440(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93DC698(uint64_t a1)
{
  v2 = sub_1C93DCCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC6D4(uint64_t a1)
{
  v2 = sub_1C93DCCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93DC710(uint64_t a1)
{
  v2 = sub_1C93DCD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC74C(uint64_t a1)
{
  v2 = sub_1C93DCD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionInvalidationContext.KeySyncRequest.Reason.encode(to:)()
{
  sub_1C93C0358();
  v69 = v0;
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39B3F0, &qword_1C9403790);
  v4 = sub_1C939D44C(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C939ED24();
  v66 = v9;
  v10 = sub_1C93A1890(&qword_1EC39B3F8, &qword_1C9403798);
  v11 = sub_1C939D44C(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C939ED24();
  v63 = v16;
  v17 = sub_1C93E1C84();
  v61 = type metadata accessor for ServerDate(v17);
  v18 = sub_1C939D430(v61);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C93A59A8();
  v62 = v22 - v21;
  v23 = sub_1C93A1890(&qword_1EC39B400, &qword_1C94037A0);
  v24 = sub_1C939D44C(v23);
  v59 = v25;
  v60 = v24;
  v27 = *(v26 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - v29;
  v31 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  v32 = sub_1C939D430(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C93A59A8();
  v37 = (v36 - v35);
  v38 = sub_1C93A1890(&qword_1EC39B408, &qword_1C94037A8);
  sub_1C939D44C(v38);
  v40 = *(v39 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C939D578();
  v42 = v2[4];
  sub_1C93E1BC8(v2, v2[3]);
  sub_1C93DCC08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1C93E18C4();
  sub_1C93DBD38(v69, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v37;
      v44 = v37[1];
      v46 = v37[2];
      LOBYTE(v70) = 2;
      sub_1C93DCC5C();
      v47 = v66;
      sub_1C939EE00();
      v70 = v45;
      v71 = v44;
      v72 = v46;
      sub_1C93A49D0();
      v48 = v68;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v67 + 8))(v47, v48);
      v49 = sub_1C93E1B88();
      v50(v49);
      sub_1C93A17C8(v44, v46);
    }

    else
    {
      LOBYTE(v70) = 0;
      sub_1C93DCD04();
      sub_1C939EE00();
      (*(v59 + 8))(v30, v60);
      v57 = sub_1C93E1B88();
      v58(v57);
    }
  }

  else
  {
    sub_1C93DB654(v37, v62);
    LOBYTE(v70) = 1;
    sub_1C93DCCB0();
    v51 = v63;
    sub_1C939EE00();
    sub_1C93E199C();
    sub_1C93DAC78(v52, v53);
    v54 = v65;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v64 + 8))(v51, v54);
    sub_1C93E1924();
    sub_1C93DC1C4();
    v55 = sub_1C93E1B88();
    v56(v55);
  }

  sub_1C939EDBC();
}

unint64_t sub_1C93DCC08()
{
  result = qword_1EE02B4C8;
  if (!qword_1EE02B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4C8);
  }

  return result;
}

unint64_t sub_1C93DCC5C()
{
  result = qword_1EC39B410;
  if (!qword_1EC39B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B410);
  }

  return result;
}

unint64_t sub_1C93DCCB0()
{
  result = qword_1EE02B4F0;
  if (!qword_1EE02B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4F0);
  }

  return result;
}

unint64_t sub_1C93DCD04()
{
  result = qword_1EE02ADB8[0];
  if (!qword_1EE02ADB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE02ADB8);
  }

  return result;
}

uint64_t SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)()
{
  v1 = sub_1C93E1AD8();
  v2 = type metadata accessor for ServerDate(v1);
  v3 = sub_1C93A5A08(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  v6 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  v7 = sub_1C939D430(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C93A59A8();
  v12 = (v11 - v10);
  sub_1C93E18C4();
  sub_1C93DBD38(v0, v12);
  sub_1C93A8E10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = v12[1];
      v16 = v12[2];
      MEMORY[0x1CCA87E40](2);
      MEMORY[0x1CCA87E60](v14);
      Data.hash(into:)();
      return sub_1C93A17C8(v15, v16);
    }

    else
    {
      return MEMORY[0x1CCA87E40](0);
    }
  }

  else
  {
    sub_1C93E196C();
    v18 = sub_1C93E1B08();
    sub_1C93DB654(v18, v19);
    MEMORY[0x1CCA87E40](1);
    type metadata accessor for Date();
    sub_1C93E187C();
    sub_1C93DAC78(v20, v21);
    dispatch thunk of Hashable.hash(into:)();
    sub_1C93E1924();
    return sub_1C93DC1C4();
  }
}

void SessionInvalidationContext.KeySyncRequest.Reason.init(from:)()
{
  sub_1C93C0358();
  v3 = v2;
  v94 = v4;
  v91 = sub_1C93A1890(&qword_1EC39B418, &qword_1C94037B0);
  sub_1C939D44C(v91);
  v95 = v5;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C939ED24();
  v93 = v9;
  v10 = sub_1C93A1890(&qword_1EC39B420, &qword_1C94037B8);
  v89 = sub_1C939D44C(v10);
  v90 = v11;
  v13 = *(v12 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C939ED24();
  v98 = v15;
  v16 = sub_1C93A1890(&qword_1EC39B428, &qword_1C94037C0);
  v17 = sub_1C939D44C(v16);
  v87 = v18;
  v88 = v17;
  v20 = *(v19 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C939ED24();
  v92 = v22;
  v23 = sub_1C93A1890(&qword_1EC39B430, &unk_1C94037C8);
  v24 = sub_1C939D44C(v23);
  v96 = v25;
  v97 = v24;
  v27 = *(v26 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v28);
  v29 = sub_1C93E19CC();
  v30 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(v29);
  v31 = sub_1C939D430(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C93A59B8();
  v36 = (v34 - v35);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v83 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v83 - v41;
  v43 = v3[4];
  sub_1C93E1BC8(v3, v3[3]);
  sub_1C93DCC08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v83 = v36;
  v84 = v40;
  v85 = v42;
  v86 = v30;
  v101 = v3;
  v44 = v97;
  v45 = KeyedDecodingContainer.allKeys.getter();
  sub_1C93C0330(v45, 0);
  if (v47 == v48 >> 1)
  {
LABEL_8:
    v60 = type metadata accessor for DecodingError();
    swift_allocError();
    v62 = v61;
    v63 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v62 = v86;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v64 = sub_1C93E1B98();
    v65(v64, v44);
    v3 = v101;
LABEL_9:
    v66 = v3;
LABEL_10:
    sub_1C939EA94(v66);
    sub_1C93E1C50();
    sub_1C939EDBC();
    return;
  }

  if (v47 < (v48 >> 1))
  {
    v49 = v1;
    v50 = *(v46 + v47);
    sub_1C93C0328(v47 + 1);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    v55 = v95;
    if (v52 == v54 >> 1)
    {
      if (v50)
      {
        if (v50 != 1)
        {
          LOBYTE(v99) = 2;
          sub_1C93DCC5C();
          sub_1C93E1AE4();
          v70 = v94;
          sub_1C93A4B14();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v71 = v96;
          swift_unknownObjectRelease();
          v77 = *(v55 + 8);
          v78 = sub_1C93DA7C0();
          v79(v78);
          (*(v71 + 8))(v49, v44);
          v80 = v100;
          v81 = v83;
          *v83 = v99;
          *(v81 + 2) = v80;
          swift_storeEnumTagMultiPayload();
          sub_1C93E18F4();
          v82 = v81;
          v76 = v85;
          sub_1C93DB654(v82, v85);
LABEL_14:
          sub_1C93E18F4();
          sub_1C93DB654(v76, v70);
          v66 = v101;
          goto LABEL_10;
        }

        LOBYTE(v99) = 1;
        sub_1C93DCCB0();
        sub_1C93E1AE4();
        type metadata accessor for ServerDate(0);
        sub_1C93E199C();
        sub_1C93DAC78(v56, v57);
        v58 = v84;
        v59 = v89;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v72 = sub_1C93E1B98();
        v73(v72, v59);
        v74 = sub_1C93E1AB8();
        v75(v74, v44);
        swift_storeEnumTagMultiPayload();
        sub_1C93E18F4();
        v76 = v85;
        sub_1C93DB654(v58, v85);
      }

      else
      {
        LOBYTE(v99) = 0;
        sub_1C93DCD04();
        v67 = v92;
        sub_1C93E1AE4();
        swift_unknownObjectRelease();
        (*(v87 + 8))(v67, v88);
        v68 = sub_1C93E1AB8();
        v69(v68, v44);
        v76 = v85;
        sub_1C93BD618();
        swift_storeEnumTagMultiPayload();
      }

      v70 = v94;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t SessionInvalidationContext.KeySyncRequest.init(serviceName:reason:retryCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v9 = *(v8 + 20);
  sub_1C93E18F4();
  result = sub_1C93DB654(a3, a5 + v10);
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

BOOL static SessionInvalidationContext.KeySyncRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0), v6 = *(v5 + 20), static SessionInvalidationContext.KeySyncRequest.Reason.== infix(_:_:)(), (v7))
  {
    return *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C93DD70C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1C93DD824(char a1)
{
  if (!a1)
  {
    return 0x4E65636976726573;
  }

  if (a1 == 1)
  {
    return 0x6E6F73616572;
  }

  return 0x756F437972746572;
}

uint64_t sub_1C93DD88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DD70C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93DD8B4(uint64_t a1)
{
  v2 = sub_1C93E06F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DD8F0(uint64_t a1)
{
  v2 = sub_1C93E06F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionInvalidationContext.KeySyncRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C93A1890(&qword_1EC39B438, &qword_1C94037D8);
  sub_1C939D44C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93E1B4C();
  v11 = a1[4];
  sub_1C93E1BC8(a1, a1[3]);
  sub_1C93E06F0();
  sub_1C93E1CB0();
  v12 = *v3;
  v13 = v3[1];
  sub_1C93AEBF4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
    v15 = *(v14 + 20);
    type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
    sub_1C93E1A70();
    sub_1C93DAC78(v16, v17);
    sub_1C93A5B9C();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + *(v14 + 24));
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v19 = *(v7 + 8);
  v20 = sub_1C93AB0E4();
  return v21(v20);
}

uint64_t SessionInvalidationContext.KeySyncRequest.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v5 = v0 + *(v4 + 20);
  SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
  return MEMORY[0x1CCA87E40](*(v1 + *(v4 + 24)));
}

Swift::Int SessionInvalidationContext.KeySyncRequest.hashValue.getter()
{
  v1 = v0;
  sub_1C93E1C18();
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v5 = v0 + *(v4 + 20);
  SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
  MEMORY[0x1CCA87E40](*(v1 + *(v4 + 24)));
  return Hasher._finalize()();
}

void SessionInvalidationContext.KeySyncRequest.init(from:)()
{
  sub_1C93C0358();
  v40 = v0;
  v3 = v2;
  v36 = v4;
  v5 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  v6 = sub_1C939D430(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C93A59A8();
  sub_1C93E1B4C();
  v9 = sub_1C93A1890(&qword_1EC39B440, &qword_1C94037E0);
  v10 = sub_1C939D44C(v9);
  v37 = v11;
  v38 = v10;
  v13 = *(v12 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v18 = sub_1C939D430(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C93A59A8();
  v23 = (v22 - v21);
  v24 = v3[4];
  sub_1C93E1BC8(v3, v3[3]);
  sub_1C93E06F0();
  v39 = v16;
  v25 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    sub_1C939EA94(v3);
  }

  else
  {
    v40 = v3;
    v26 = v37;
    *v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v23[1] = v27;
    v35 = v27;
    sub_1C93E1A70();
    sub_1C93DAC78(v28, v29);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v17 + 20);
    sub_1C93E18F4();
    sub_1C93DB654(v1, v23 + v31);
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v40;
    v34 = v32;
    (*(v26 + 8))(v39, v38);
    *(v23 + *(v17 + 24)) = v34;
    sub_1C93DBD38(v23, v36);
    sub_1C939EA94(v33);
    sub_1C93E1984();
    sub_1C93DC1C4();
  }

  sub_1C939EDBC();
}

Swift::Int sub_1C93DDEA8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  String.hash(into:)();
  v7 = v2 + *(a2 + 20);
  SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
  MEMORY[0x1CCA87E40](*(v4 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = *a1;
  v13 = *(a1 + 2);
  Date.init()();
  v14 = type metadata accessor for SessionInvalidationContext(0);
  v15 = (a9 + v14[6]);
  v16 = a9 + v14[7];
  *v16 = xmmword_1C9403750;
  v17 = v14[9];
  v18 = (a9 + v14[8]);
  v19 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  sub_1C93A1710(a9 + v17, 1, 1, v19);
  v20 = a9 + v14[5];
  *v20 = v22;
  *(v20 + 16) = v13;
  *v15 = a2;
  v15[1] = a3;
  sub_1C93D152C(*v16, *(v16 + 8));
  *v16 = a4;
  *(v16 + 8) = a5;
  *v18 = a6;
  v18[1] = a7;

  return sub_1C93DBBAC(a8, a9 + v17);
}

void static SessionInvalidationContext.== infix(_:_:)()
{
  sub_1C93A5B40();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v7 = sub_1C939D430(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C93A59A8();
  v12 = (v11 - v10);
  v13 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  sub_1C93A5A08(v13);
  v15 = *(v14 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C93E1B4C();
  v17 = sub_1C93A1890(&qword_1EC39B448, &qword_1C94037E8);
  sub_1C939D430(v17);
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C93E1B78();
  sub_1C93DA7C0();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = type metadata accessor for SessionInvalidationContext(0);
  v22 = *(v21 + 20);
  v23 = v5 + v22;
  v24 = *(v5 + v22);
  v25 = (v3 + v22);
  if (v24 != *v25)
  {
    goto LABEL_18;
  }

  v26 = v21;
  v76 = v12;
  v77 = v6;
  v78 = v0;
  v28 = v25[1];
  v27 = v25[2];
  v30 = *(v23 + 8);
  v29 = *(v23 + 16);
  v31 = sub_1C93BD618();
  sub_1C93A1988(v31, v32);
  sub_1C93A1988(v28, v27);
  v33 = sub_1C93BD618();
  v34 = MEMORY[0x1CCA874A0](v33);
  sub_1C93A17C8(v28, v27);
  v35 = sub_1C93BD618();
  sub_1C93A17C8(v35, v36);
  if ((v34 & 1) == 0)
  {
    goto LABEL_18;
  }

  v37 = v26[6];
  sub_1C93E1C5C();
  if (!v40)
  {
    if (v38)
    {
      goto LABEL_18;
    }

LABEL_13:
    v44 = v26[7];
    v45 = *(v5 + v44);
    v46 = *(v5 + v44 + 8);
    v47 = (v3 + v44);
    v48 = *v47;
    v49 = v47[1];
    if (v46 >> 60 == 15)
    {
      if (v49 >> 60 == 15)
      {
        v50 = sub_1C93E1A10();
        sub_1C93D152C(v50, v51);
        goto LABEL_20;
      }
    }

    else if (v49 >> 60 != 15)
    {
      v54 = sub_1C93E1A10();
      v55 = MEMORY[0x1CCA874A0](v54);
      sub_1C93D152C(v48, v49);
      sub_1C93D152C(v45, v46);
      if ((v55 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_20:
      v56 = v26[8];
      sub_1C93E1C5C();
      if (v59)
      {
        if (!v57)
        {
          goto LABEL_18;
        }

        sub_1C93E1AC8(v58);
        v62 = v43 && v60 == v61;
        if (!v62 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (v57)
      {
        goto LABEL_18;
      }

      v63 = v26[9];
      v64 = *(v17 + 48);
      sub_1C93DBAFC(v5 + v63, v78);
      sub_1C93DBAFC(v3 + v63, v78 + v64);
      sub_1C93E1CF0(v78, 1);
      if (v43)
      {
        sub_1C93E1CF0(v78 + v64, 1);
        if (v43)
        {
          sub_1C93A4838(v78, &qword_1EC39B3E0, &qword_1C9403780);
          goto LABEL_18;
        }
      }

      else
      {
        v65 = sub_1C93E1C44();
        sub_1C93DBAFC(v65, v66);
        sub_1C93E1CF0(v78 + v64, 1);
        if (!v67)
        {
          sub_1C93E1954();
          sub_1C93DB654(v78 + v64, v76);
          v70 = *v1 == *v76 && v1[1] == v76[1];
          if (v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v71 = *(v77 + 20);
            static SessionInvalidationContext.KeySyncRequest.Reason.== infix(_:_:)();
            if (v72)
            {
              v73 = *(v77 + 24);
              v74 = *(v1 + v73);
              v75 = *(v76 + v73);
              sub_1C93E193C();
              sub_1C93DC1C4();
              sub_1C93AB0E4();
              sub_1C93DC1C4();
              sub_1C93A4838(v78, &qword_1EC39B3E0, &qword_1C9403780);
              goto LABEL_18;
            }
          }

          sub_1C93E193C();
          sub_1C93DC1C4();
          sub_1C93AB0E4();
          sub_1C93DC1C4();
          v68 = &qword_1EC39B3E0;
          v69 = &qword_1C9403780;
LABEL_46:
          sub_1C93A4838(v78, v68, v69);
          goto LABEL_18;
        }

        sub_1C93E1984();
        sub_1C93DC1C4();
      }

      v68 = &qword_1EC39B448;
      v69 = &qword_1C94037E8;
      goto LABEL_46;
    }

    v52 = sub_1C93E1A10();
    sub_1C93D152C(v52, v53);
    sub_1C93D152C(v48, v49);
    goto LABEL_18;
  }

  if (v38)
  {
    sub_1C93E1AC8(v39);
    v43 = v43 && v41 == v42;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  sub_1C93A5B58();
}

uint64_t sub_1C93DE414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656369766564 && a2 == 0xEC00000068736148;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C9406780 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C9405FF0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C9406060 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x52636E795379656BLL && a2 == 0xEE00747365757165)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

Swift::Int sub_1C93DE620(unsigned __int8 a1)
{
  sub_1C93E1C18();
  MEMORY[0x1CCA87E40](a1);
  return Hasher._finalize()();
}

unint64_t sub_1C93DE660(char a1)
{
  result = 0x6E6F697461657263;
  switch(a1)
  {
    case 1:
      result = 0x4449656369766564;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x52636E795379656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93DE744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DE414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93DE76C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93DE618();
  *a1 = result;
  return result;
}

uint64_t sub_1C93DE794(uint64_t a1)
{
  v2 = sub_1C93E0744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DE7D0(uint64_t a1)
{
  v2 = sub_1C93E0744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionInvalidationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C93A1890(&qword_1EC39B450, &qword_1C94037F0);
  sub_1C939D44C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93E1B4C();
  v11 = a1[4];
  sub_1C93E1BC8(a1, a1[3]);
  sub_1C93E0744();
  sub_1C93E1CB0();
  type metadata accessor for DeviceDate(0);
  sub_1C93E19B4();
  sub_1C93DAC78(v12, v13);
  sub_1C93A5B9C();
  sub_1C93AEBF4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for SessionInvalidationContext(0);
    v15 = (v3 + v14[5]);
    v30 = *v15;
    v32 = v15[1];
    v34 = v15[2];
    sub_1C93A1988(v32, v34);
    sub_1C93A49D0();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v32, v34);
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v3 + v14[7]);
    v31 = *v19;
    v33 = v19[1];
    sub_1C93DB974(*v19, v33);
    sub_1C93A4928();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93D152C(v31, v33);
    v20 = (v3 + v14[8]);
    v21 = *v20;
    v22 = v20[1];
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v14[9];
    type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
    sub_1C93E1AA0();
    sub_1C93DAC78(v24, v25);
    sub_1C93A5B9C();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v26 = *(v7 + 8);
  v27 = sub_1C93AB0E4();
  return v28(v27);
}

void SessionInvalidationContext.hash(into:)()
{
  sub_1C93A5B40();
  v3 = sub_1C93A59DC();
  v4 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v3);
  v5 = sub_1C939D430(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C93A59A8();
  sub_1C93E1B4C();
  v8 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  sub_1C93A5A08(v8);
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C939D578();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v12, v13);
  dispatch thunk of Hashable.hash(into:)();
  v14 = type metadata accessor for SessionInvalidationContext(0);
  v15 = (v0 + v14[5]);
  v16 = v15[1];
  v17 = v15[2];
  MEMORY[0x1CCA87E60](*v15);
  Data.hash(into:)();
  v18 = (v0 + v14[6]);
  if (v18[1])
  {
    sub_1C93E1BE0(v18);
    sub_1C93E1B58();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  v19 = (v0 + v14[7]);
  if (v19[1] >> 60 == 15)
  {
    sub_1C93A5B28();
  }

  else
  {
    sub_1C93E1BE0(v19);
    sub_1C93E1B58();
    Data.hash(into:)();
  }

  v20 = (v0 + v14[8]);
  if (v20[1])
  {
    sub_1C93E1BE0(v20);
    sub_1C93E1B58();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  sub_1C93DBAFC(v0 + v14[9], v2);
  sub_1C93E1CF0(v2, 1);
  if (v21)
  {
    sub_1C93A5B28();
  }

  else
  {
    sub_1C93E1954();
    sub_1C93DB654(v2, v1);
    Hasher._combine(_:)(1u);
    v22 = *v1;
    v23 = v1[1];
    String.hash(into:)();
    v24 = v1 + *(v4 + 20);
    SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
    MEMORY[0x1CCA87E40](*(v1 + *(v4 + 24)));
    sub_1C93E1984();
    sub_1C93DC1C4();
  }

  sub_1C93A5B58();
}

Swift::Int sub_1C93DECE4(void (*a1)(_BYTE *))
{
  sub_1C93E1C18();
  a1(v3);
  return Hasher._finalize()();
}

void SessionInvalidationContext.init(from:)()
{
  sub_1C93C0358();
  v5 = v4;
  v41 = v6;
  v7 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  sub_1C93A5A08(v7);
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C939D578();
  v11 = type metadata accessor for DeviceDate(0);
  v12 = sub_1C939D430(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C93A59A8();
  v43 = v16 - v15;
  v44 = sub_1C93A1890(&qword_1EC39B458, &unk_1C94037F8);
  sub_1C939D44C(v44);
  v42 = v17;
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1C93E19CC();
  v22 = type metadata accessor for SessionInvalidationContext(v21);
  v23 = sub_1C939D430(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C93A59A8();
  sub_1C93E1B4C();
  Date.init()();
  v26 = v1 + *(v22 + 28);
  *v26 = xmmword_1C9403750;
  v45 = v22;
  v27 = *(v22 + 36);
  v28 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v46 = v27;
  sub_1C93A1710(v1 + v27, 1, 1, v28);
  v29 = v5[4];
  sub_1C93E1BC8(v5, v5[3]);
  sub_1C93E0744();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_1C939EA94(v5);
    sub_1C93E1A58();
    sub_1C93DC1C4();

    sub_1C93D152C(*v26, *(v26 + 8));

    sub_1C93A4838(v1 + v46, &qword_1EC39B3E0, &qword_1C9403780);
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_1C93E19B4();
    sub_1C93DAC78(v30, v31);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93E1A40();
    sub_1C93DBDF8(v43, v1);
    sub_1C93A4B14();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v1 + v45[5];
    *v32 = v47;
    *(v32 + 16) = v48;
    LOBYTE(v47) = 2;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = (v1 + v45[6]);
    *v34 = v33;
    v34[1] = v35;
    sub_1C93A4A6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1C93D152C(*v26, *(v26 + 8));
    *v26 = v47;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = (v1 + v45[8]);
    *v37 = v36;
    v37[1] = v38;
    sub_1C93E1AA0();
    sub_1C93DAC78(v39, v40);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v42 + 8))(v3, v44);
    sub_1C93DBBAC(v2, v1 + v46);
    sub_1C93DBD38(v1, v41);
    sub_1C939EA94(v5);
    sub_1C93DC1C4();
  }

  sub_1C93E1C50();
  sub_1C939EDBC();
}

Swift::Int sub_1C93DF29C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void SessionInvalidationContext.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v147 = v0;
  v151 = type metadata accessor for PropertyDescription();
  v2 = *(v151 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v151);
  sub_1C93A59B8();
  v140 = (v4 - v5);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v6);
  v145 = (&v135 - v7);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v8);
  v146 = (&v135 - v9);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v135 - v11;
  v12 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  sub_1C93A5A08(v12);
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C939ED24();
  v144 = v16;
  v17 = sub_1C93E1C84();
  v143 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v17);
  v18 = sub_1C939D430(v143);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C93A59B8();
  v136 = v21 - v22;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v135 - v24;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v135 - v26;
  sub_1C93E1C84();
  v27 = type metadata accessor for OSLogPrivacy();
  v28 = sub_1C93A5A08(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C93A59B8();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v135 - v35;
  v37 = type metadata accessor for DeviceDate(0);
  v38 = sub_1C939D430(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C93A59B8();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C93E1B68();
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v152 = *(v2 + 72);
  v150 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v45 = v150;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C93FE890;
  v149 = v46;
  v47 = v46 + v45;
  sub_1C93DBD38(v0, v1);
  static OSLogPrivacy.auto.getter();
  sub_1C93DBD38(v1, v43);
  sub_1C93E1B40();
  v48 = String.init<A>(describing:)();
  v50 = v49;
  v51 = v33;
  sub_1C93DBD38(v36, v33);
  v52 = v151;
  v53 = *(v151 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C939D5EC();
  v148 = v54;
  sub_1C93DC1C4();
  strcpy(v47, "creationDate");
  *(v47 + 13) = 0;
  *(v47 + 14) = -5120;
  *(v47 + 16) = v48;
  *(v47 + 24) = v50;
  sub_1C93E18AC();
  v141 = v55;
  sub_1C93DBDF8(v51, v47 + v53);
  sub_1C93E1A58();
  sub_1C93DC1C4();
  v56 = v47 + v152;
  v57 = type metadata accessor for SessionInvalidationContext(0);
  v58 = v147;
  v59 = (v147 + *(v57 + 20));
  v61 = *v59;
  v60 = v59[1];
  v62 = v59[2];
  static OSLogPrivacy.auto.getter();
  v153 = v61;
  v154 = v60;
  v155 = v62;
  sub_1C93A1988(v60, v62);
  v63 = String.init<A>(describing:)();
  v65 = v64;
  v66 = sub_1C93A5A40();
  sub_1C93DBD38(v66, v67);
  v68 = *(v52 + 24);
  static OSLogPrivacy.auto.getter();
  v142 = v36;
  v70 = v143;
  v69 = v144;
  sub_1C93DC1C4();
  strcpy(v56, "deviceIDHash");
  *(v56 + 13) = 0;
  *(v56 + 14) = -5120;
  *(v56 + 16) = v63;
  *(v56 + 24) = v65;
  v71 = v58;
  v72 = v51;
  sub_1C93DBDF8(v51, v56 + v68);
  v148 = v57;
  sub_1C93DBAFC(v58 + *(v57 + 36), v69);
  if (sub_1C93A4810(v69, 1, v70) == 1)
  {
    sub_1C93A4838(v69, &qword_1EC39B3E0, &qword_1C9403780);
    v73 = v151;
    v74 = v51;
    v75 = v142;
  }

  else
  {
    v141 = 2 * v152;
    sub_1C93E1954();
    v76 = v138;
    sub_1C93DB654(v69, v138);
    v77 = v137;
    sub_1C93DBD38(v76, v137);
    v78 = v142;
    static OSLogPrivacy.auto.getter();
    sub_1C93DBD38(v77, v136);
    v79 = String.init<A>(describing:)();
    v81 = v80;
    sub_1C93E18DC();
    v82 = sub_1C93A8E04();
    sub_1C93DBD38(v82, v83);
    v84 = v72;
    v85 = v151;
    v86 = *(v151 + 24);
    v87 = v139;
    static OSLogPrivacy.auto.getter();
    sub_1C939D5EC();
    sub_1C93DC1C4();
    strcpy(v87, "keySyncRequest");
    *(v87 + 15) = -18;
    *(v87 + 16) = v79;
    *(v87 + 24) = v81;
    sub_1C93E18AC();
    sub_1C93DBDF8(v84, v87 + v86);
    sub_1C93E193C();
    sub_1C93DC1C4();
    v68 = sub_1C93A4F7C(1uLL, 3, 1, v149);
    sub_1C93E1B08();
    sub_1C93DC1C4();
    *(v68 + 16) = 3;
    sub_1C93E190C();
    v149 = v68;
    sub_1C93DB654(v87, v68 + v88);
    v73 = v85;
    v74 = v84;
    v75 = v78;
  }

  v89 = v148;
  v90 = (v71 + *(v148 + 24));
  v91 = v90[1];
  if (v91)
  {
    v92 = *v90;
    sub_1C93E1C9C();
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v153 = v92;
    v154 = v91;
    v93 = String.init<A>(describing:)();
    v95 = v94;
    sub_1C93E18DC();
    sub_1C93DBD38(v75, v74);
    v96 = *(v73 + 24);
    v97 = v146;
    static OSLogPrivacy.auto.getter();

    sub_1C939D5EC();
    sub_1C93DC1C4();
    *v97 = 0xD000000000000012;
    v97[1] = v68;
    v97[2] = v93;
    v97[3] = v95;
    sub_1C93E18AC();
    sub_1C93DBDF8(v74, v97 + v96);
    v98 = v149;
    v100 = *(v149 + 16);
    v99 = *(v149 + 24);
    if (v100 >= v99 >> 1)
    {
      v98 = sub_1C93A4F7C(v99 > 1, v100 + 1, 1, v149);
    }

    *(v98 + 16) = v100 + 1;
    sub_1C93E190C();
    sub_1C93DB654(v146, v101);
    v73 = v151;
    v89 = v148;
  }

  else
  {
    v98 = v149;
  }

  v102 = (v71 + *(v89 + 28));
  v103 = v102[1];
  if (v103 >> 60 != 15)
  {
    v104 = *v102;
    v149 = 0x80000001C9405FF0;
    v105 = sub_1C93BD618();
    sub_1C93DB974(v105, v106);
    v107 = sub_1C93BD618();
    sub_1C93A1988(v107, v108);
    static OSLogPrivacy.auto.getter();
    v153 = v104;
    v154 = v103;
    v109 = sub_1C93BD618();
    sub_1C93A1988(v109, v110);
    v111 = String.init<A>(describing:)();
    v113 = v112;
    sub_1C93E18DC();
    sub_1C93DBD38(v75, v74);
    v114 = *(v73 + 24);
    v115 = v74;
    v116 = v145;
    static OSLogPrivacy.auto.getter();
    v117 = sub_1C93BD618();
    sub_1C93D152C(v117, v118);
    sub_1C939D5EC();
    sub_1C93DC1C4();
    *v116 = 0xD000000000000012;
    v116[1] = v149;
    v116[2] = v111;
    v116[3] = v113;
    sub_1C93E18AC();
    v119 = v116 + v114;
    v74 = v115;
    sub_1C93DBDF8(v115, v119);
    v68 = *(v98 + 16);
    v120 = *(v98 + 24);
    if (v68 >= v120 >> 1)
    {
      v98 = sub_1C93A4F7C(v120 > 1, v68 + 1, 1, v98);
    }

    v121 = sub_1C93BD618();
    sub_1C93D152C(v121, v122);
    *(v98 + 16) = v68 + 1;
    sub_1C93E190C();
    sub_1C93DB654(v145, v123);
    v73 = v151;
    v71 = v147;
  }

  v124 = (v71 + *(v89 + 32));
  v125 = v124[1];
  if (v125)
  {
    v126 = *v124;
    sub_1C93E1C9C();
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v153 = v126;
    v154 = v125;
    v127 = String.init<A>(describing:)();
    v129 = v128;
    sub_1C93E18DC();
    sub_1C93DBD38(v75, v74);
    v130 = *(v73 + 24);
    v131 = v140;
    static OSLogPrivacy.auto.getter();

    sub_1C939D5EC();
    sub_1C93DC1C4();
    *v131 = 0xD000000000000018;
    v131[1] = v68;
    v131[2] = v127;
    v131[3] = v129;
    sub_1C93E18AC();
    sub_1C93DBDF8(v74, v131 + v130);
    v133 = *(v98 + 16);
    v132 = *(v98 + 24);
    if (v133 >= v132 >> 1)
    {
      v98 = sub_1C93A4F7C(v132 > 1, v133 + 1, 1, v98);
    }

    *(v98 + 16) = v133 + 1;
    sub_1C93E190C();
    sub_1C93DB654(v131, v134);
  }

  sub_1C93A5B58();
}

void SessionInvalidationContext.KeySyncRequest.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v56 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  v1 = sub_1C939D430(v56);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C93A59B8();
  v55 = v4 - v5;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - v7;
  sub_1C93E1C84();
  v8 = type metadata accessor for OSLogPrivacy();
  v9 = sub_1C93A5A08(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93A59B8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93E1B68();
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v16 = (type metadata accessor for PropertyDescription() - 8);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v53 = *(*v16 + 72);
  v17 = v53;
  v19 = swift_allocObject();
  v57 = v19;
  *(v19 + 16) = xmmword_1C93FDC70;
  v20 = (v19 + v18);
  v22 = *v0;
  v21 = v0[1];
  v51 = v0;
  swift_bridgeObjectRetain_n();
  static OSLogPrivacy.auto.getter();
  v60 = v22;
  v61 = v21;
  v23 = String.init<A>(describing:)();
  v25 = v24;
  sub_1C93E18DC();
  v54 = v26;
  v27 = sub_1C93E1B08();
  sub_1C93DBD38(v27, v28);
  v29 = v16[8];
  static OSLogPrivacy.auto.getter();
  sub_1C939D5EC();
  v58 = v30;
  sub_1C93DC1C4();
  *v20 = 0x4E65636976726573;
  v20[1] = 0xEB00000000656D61;
  v20[2] = v23;
  v20[3] = v25;
  sub_1C93E18AC();
  v52 = v31;
  sub_1C93DBDF8(v14, v20 + v29);

  v32 = (v20 + v17);
  v33 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v34 = v0 + *(v33 + 20);
  v35 = v59;
  sub_1C93DBD38(v34, v59);
  static OSLogPrivacy.auto.getter();
  sub_1C93DBD38(v35, v55);
  v36 = String.init<A>(describing:)();
  v38 = v37;
  v39 = sub_1C93E1B08();
  sub_1C93DBD38(v39, v40);
  v41 = v16[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93DC1C4();
  *v32 = 0x6E6F73616572;
  v32[1] = 0xE600000000000000;
  v32[2] = v36;
  v32[3] = v38;
  sub_1C93DBDF8(v14, v32 + v41);
  sub_1C93E1894();
  sub_1C93DC1C4();
  v42 = (v20 + 2 * v53);
  v43 = *(v51 + *(v33 + 24));
  static OSLogPrivacy.auto.getter();
  v60 = v43;
  v44 = String.init<A>(describing:)();
  v46 = v45;
  v47 = sub_1C93E1B08();
  sub_1C93DBD38(v47, v48);
  v49 = v16[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93DC1C4();
  *v42 = 0x756F437972746572;
  v42[1] = 0xEA0000000000746ELL;
  v42[2] = v44;
  v42[3] = v46;
  sub_1C93DBDF8(v14, v42 + v49);
  sub_1C93A5B58();
}

void SessionInvalidationContext.KeySyncRequest.Reason.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C93A5B40();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = type metadata accessor for ServerDate(0);
  v27 = sub_1C93A5A08(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C93A59B8();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C93E1B68();
  v34 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  v35 = sub_1C939D430(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C93A59B8();
  v40 = (v38 - v39);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &a9 - v42;
  v44 = sub_1C93A1890(&qword_1EC39B3E8, &qword_1C9403788);
  sub_1C93A5A08(v44);
  v46 = *(v45 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C93E1B78();
  v49 = (v20 + *(v48 + 56));
  sub_1C93DBD38(v25, v20);
  v50 = sub_1C93DA7C0();
  sub_1C93DBD38(v50, v51);
  sub_1C939D460();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C93E18C4();
    sub_1C93DBD38(v20, v43);
    sub_1C93E1C44();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C93E1924();
      sub_1C93DC1C4();
      goto LABEL_11;
    }

    sub_1C93DB654(v43, v22);
    sub_1C93DB654(v49, v32);
    sub_1C93DA7E4();
    static Date.== infix(_:_:)();
    sub_1C93E1A88();
    sub_1C93DC1C4();
    sub_1C93A8E10();
    sub_1C93DC1C4();
LABEL_13:
    sub_1C93DC1C4();
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1C93E1C44();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  sub_1C93DBD38(v20, v40);
  v54 = v40[1];
  v53 = v40[2];
  sub_1C93E1C44();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = *v49;
    v56 = v49[1];
    v57 = v49[2];
    if (*v40 != v55)
    {
      v65 = sub_1C93DA7C0();
      sub_1C93A17C8(v65, v66);
      v67 = sub_1C93DA7E4();
      sub_1C93A17C8(v67, v68);
      sub_1C93E1894();
      sub_1C93DC1C4();
      goto LABEL_14;
    }

    v58 = sub_1C93DA7E4();
    MEMORY[0x1CCA874A0](v58);
    v59 = sub_1C93DA7C0();
    sub_1C93A17C8(v59, v60);
    v61 = sub_1C93DA7E4();
    sub_1C93A17C8(v61, v62);
    goto LABEL_13;
  }

  v63 = sub_1C93DA7E4();
  sub_1C93A17C8(v63, v64);
LABEL_11:
  sub_1C93A4838(v20, &qword_1EC39B3E8, &qword_1C9403788);
LABEL_14:
  sub_1C93A5B58();
}

unint64_t sub_1C93E06F0()
{
  result = qword_1EE02B508;
  if (!qword_1EE02B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B508);
  }

  return result;
}

unint64_t sub_1C93E0744()
{
  result = qword_1EE02B520;
  if (!qword_1EE02B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B520);
  }

  return result;
}

uint64_t sub_1C93E0870(uint64_t a1)
{
  result = sub_1C93DAC78(&qword_1EC39B478, type metadata accessor for SessionInvalidationContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93E08C8(uint64_t a1)
{
  result = sub_1C93DAC78(&qword_1EC39B480, type metadata accessor for SessionInvalidationContext.KeySyncRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93E0970()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E0A04()
{
  v0 = type metadata accessor for DeviceDate(319);
  if (v1 <= 0x3F)
  {
    sub_1C93B8A1C(319, qword_1EE02C1D8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C93B8A1C(319, &qword_1EE02C1C0);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1C93E0AFC();
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_1C93E0AFC()
{
  if (!qword_1EE02C370)
  {
    type metadata accessor for SessionInvalidationContext.KeySyncRequest(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02C370);
    }
  }
}

uint64_t sub_1C93E0B7C()
{
  result = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C93E0C00()
{
  sub_1C93E0C74();
  if (v0 <= 0x3F)
  {
    sub_1C93E0CBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C93E0C74()
{
  if (!qword_1EE02C620)
  {
    v0 = type metadata accessor for ServerDate(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02C620);
    }
  }
}

ValueMetadata *sub_1C93E0CBC()
{
  result = qword_1EE02C630[0];
  if (!qword_1EE02C630[0])
  {
    result = &type metadata for SaltedHash;
    atomic_store(&type metadata for SaltedHash, qword_1EE02C630);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionInvalidationContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionInvalidationContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93E0E58(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C93E0F74(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C93E1024()
{
  result = qword_1EC39B488;
  if (!qword_1EC39B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B488);
  }

  return result;
}

unint64_t sub_1C93E107C()
{
  result = qword_1EC39B490;
  if (!qword_1EC39B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B490);
  }

  return result;
}

unint64_t sub_1C93E10D4()
{
  result = qword_1EC39B498;
  if (!qword_1EC39B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B498);
  }

  return result;
}

unint64_t sub_1C93E112C()
{
  result = qword_1EC39B4A0;
  if (!qword_1EC39B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B4A0);
  }

  return result;
}

unint64_t sub_1C93E1184()
{
  result = qword_1EC39B4A8;
  if (!qword_1EC39B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B4A8);
  }

  return result;
}

unint64_t sub_1C93E11DC()
{
  result = qword_1EC39B4B0;
  if (!qword_1EC39B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B4B0);
  }

  return result;
}

unint64_t sub_1C93E1234()
{
  result = qword_1EC39B4B8[0];
  if (!qword_1EC39B4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC39B4B8);
  }

  return result;
}

unint64_t sub_1C93E128C()
{
  result = qword_1EE02B510;
  if (!qword_1EE02B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B510);
  }

  return result;
}

unint64_t sub_1C93E12E4()
{
  result = qword_1EE02B518;
  if (!qword_1EE02B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B518);
  }

  return result;
}

unint64_t sub_1C93E133C()
{
  result = qword_1EE02B4F8;
  if (!qword_1EE02B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4F8);
  }

  return result;
}

unint64_t sub_1C93E1394()
{
  result = qword_1EE02B500;
  if (!qword_1EE02B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B500);
  }

  return result;
}

unint64_t sub_1C93E13EC()
{
  result = qword_1EE02B4A8;
  if (!qword_1EE02B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4A8);
  }

  return result;
}

unint64_t sub_1C93E1444()
{
  result = qword_1EE02B4B0;
  if (!qword_1EE02B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4B0);
  }

  return result;
}

unint64_t sub_1C93E149C()
{
  result = qword_1EE02B4E0;
  if (!qword_1EE02B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4E0);
  }

  return result;
}

unint64_t sub_1C93E14F4()
{
  result = qword_1EE02B4E8;
  if (!qword_1EE02B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4E8);
  }

  return result;
}

unint64_t sub_1C93E154C()
{
  result = qword_1EE02B4D0;
  if (!qword_1EE02B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4D0);
  }

  return result;
}

unint64_t sub_1C93E15A4()
{
  result = qword_1EE02B4D8;
  if (!qword_1EE02B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4D8);
  }

  return result;
}

unint64_t sub_1C93E15FC()
{
  result = qword_1EE02B4B8;
  if (!qword_1EE02B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4B8);
  }

  return result;
}

unint64_t sub_1C93E1654()
{
  result = qword_1EE02B4C0;
  if (!qword_1EE02B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B4C0);
  }

  return result;
}

unint64_t sub_1C93E16AC()
{
  result = qword_1EE02BF58;
  if (!qword_1EE02BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF58);
  }

  return result;
}

unint64_t sub_1C93E1704()
{
  result = qword_1EE02BF60;
  if (!qword_1EE02BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF60);
  }

  return result;
}

unint64_t sub_1C93E175C()
{
  result = qword_1EE02BF08;
  if (!qword_1EE02BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF08);
  }

  return result;
}

unint64_t sub_1C93E17B4()
{
  result = qword_1EE02BF10;
  if (!qword_1EE02BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF10);
  }

  return result;
}

uint64_t sub_1C93E19E0()
{
  sub_1C93DB974(v1, v0);
  sub_1C93DB974(v3, v2);
  return v1;
}

uint64_t sub_1C93E1A10()
{
  sub_1C93DB974(v0, v2);
  sub_1C93DB974(v1, v3);
  return v0;
}

uint64_t sub_1C93E1AC8@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_1C93E1AE4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93E1B14()
{
  v2 = *(v0 - 72);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1C93E1BA4()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void sub_1C93E1BE0(uint64_t *a1@<X8>)
{
  v2 = *a1;

  Hasher._combine(_:)(1u);
}

uint64_t sub_1C93E1BFC()
{

  return type metadata accessor for SessionInvalidationContext(0);
}

uint64_t sub_1C93E1C18()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1C93E1C30()
{
  v3 = *(v0 + 32);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_1C93E1CB0()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1C93E1CD0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return type metadata accessor for Date();
}

uint64_t ActorPropertyDescribable.propertyDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(a2 + 16))(a1, a2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C939DC14(0, v10, 0);
    v11 = v26;
    v12 = *(v5 + 80);
    v23 = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v14 = *(v5 + 72);
    do
    {
      sub_1C93E202C(v13, v8);
      v15 = v8[1];
      v24 = *v8;
      v25 = v15;

      MEMORY[0x1CCA87780](61, 0xE100000000000000);
      MEMORY[0x1CCA87780](v8[2], v8[3]);
      v16 = v24;
      v17 = v25;
      sub_1C93E2090(v8);
      v26 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C939DC14((v18 > 1), v19 + 1, 1);
        v11 = v26;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v13 += v14;
      --v10;
    }

    while (v10);

    v24 = v11;
    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    v21 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0x746C7561666564;
  }

  return v21;
}

uint64_t ActorPropertyDescribable.actorDescription.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCA87780](60, 0xE100000000000000);
  swift_getObjectType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1CCA87780](8251, 0xE200000000000000);
  v5 = ActorPropertyDescribable.propertyDescription.getter(a1, a2);
  MEMORY[0x1CCA87780](v5);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C93E202C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93E2090(uint64_t a1)
{
  v2 = type metadata accessor for PropertyDescription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s17CloudCoreInternal30NonCopyablePropertyDescribablePAARi_zrlE19propertyDescriptionSSvg(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(a2 + 8))(a1, a2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C939DC14(0, v10, 0);
    v11 = v26;
    v12 = *(v5 + 80);
    v23 = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v14 = *(v5 + 72);
    do
    {
      sub_1C93E202C(v13, v8);
      v15 = v8[1];
      v24 = *v8;
      v25 = v15;

      MEMORY[0x1CCA87780](61, 0xE100000000000000);
      MEMORY[0x1CCA87780](v8[2], v8[3]);
      v16 = v24;
      v17 = v25;
      sub_1C93E2090(v8);
      v26 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C939DC14((v18 > 1), v19 + 1, 1);
        v11 = v26;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v13 += v14;
      --v10;
    }

    while (v10);

    v24 = v11;
    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    v21 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0x746C7561666564;
  }

  return v21;
}

uint64_t _s17CloudCoreInternal30NonCopyablePropertyDescribablePAARi_zrlE11descriptionSSvg(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCA87780](60, 0xE100000000000000);
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  v4 = _s17CloudCoreInternal30NonCopyablePropertyDescribablePAARi_zrlE19propertyDescriptionSSvg(a1, a2);
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 0;
}

uint64_t PropertyDescribable.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  v5 = PropertyDescribable.propertyDescription.getter(a1, a2);
  MEMORY[0x1CCA87780](v5);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 60;
}

uint64_t PropertyDescribable<>.description.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCA87780](60, 0xE100000000000000);
  swift_getObjectType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1CCA87780](8251, 0xE200000000000000);
  v5 = PropertyDescribable.propertyDescription.getter(a1, a2);
  MEMORY[0x1CCA87780](v5);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 0;
}

uint64_t PropertyDescribable.propertyDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(a2 + 16))(a1, a2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C939DC14(0, v10, 0);
    v11 = v26;
    v12 = *(v5 + 80);
    v23 = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v14 = *(v5 + 72);
    do
    {
      sub_1C93E202C(v13, v8);
      v15 = v8[1];
      v24 = *v8;
      v25 = v15;

      MEMORY[0x1CCA87780](61, 0xE100000000000000);
      MEMORY[0x1CCA87780](v8[2], v8[3]);
      v16 = v24;
      v17 = v25;
      sub_1C93E2090(v8);
      v26 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C939DC14((v18 > 1), v19 + 1, 1);
        v11 = v26;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v13 += v14;
      --v10;
    }

    while (v10);

    v24 = v11;
    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    v21 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0x746C7561666564;
  }

  return v21;
}

uint64_t sub_1C93E27E0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for PropertyDescription(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for PropertyDescription();
    sub_1C93E28B0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_1C93E28B0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t PropertyDescription.init(_:_:privacy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for OSLogPrivacy();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[3];
  v15 = sub_1C93A4890(a3, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = String.init<A>(describing:)();
  v21 = v20;
  sub_1C93A86A8(a4, v13);
  v22 = *(type metadata accessor for PropertyDescription() + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(a4);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v19;
  a5[3] = v21;
  sub_1C93A8768(v13, a5 + v22);
  return sub_1C939EA94(a3);
}

uint64_t PropertyDescription.description.getter()
{
  v2 = *v0;
  v3 = v0[1];

  MEMORY[0x1CCA87780](61, 0xE100000000000000);
  MEMORY[0x1CCA87780](v0[2], v0[3]);
  return v2;
}

uint64_t PropertyDescription.init(label:value:privacy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(type metadata accessor for PropertyDescription() + 24);
  static OSLogPrivacy.auto.getter();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;

  return sub_1C93A8768(a5, a6 + v12);
}

uint64_t type metadata accessor for PropertyDescription()
{
  result = qword_1EE02BB98;
  if (!qword_1EE02BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93E2B94()
{
  result = type metadata accessor for OSLogPrivacy();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E2C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v4 = type metadata accessor for AsyncThrowingStream();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static CloudCoreThrowingStream.makeStream(of:throwing:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E3D78();
  v3 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1C93E3D78();
  v9 = *(*(type metadata accessor for AsyncThrowingStream.Continuation() - 8) + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1C93E3D78();
  v13 = *(*(type metadata accessor for AsyncThrowingStream() - 8) + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  sub_1C93E2E78(v8);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v4 + 8))(v8, v3);
  sub_1C93E2C10(v16, a1);
  return sub_1C93E3D98(v12, v19);
}

uint64_t sub_1C93E2E78@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v3 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C93E2F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v4 = type metadata accessor for AsyncThrowingStream.Iterator();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t _s17CloudCoreInternal0aB14ThrowingStreamV8IteratorV4nextxSgyYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v5[7] = a2;
  v5[8] = a3;
  v7 = *(a2 + 24);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v10 = *(MEMORY[0x1E69E87B0] + 4);
  v11 = swift_task_alloc();
  v5[13] = v11;
  v12 = *(a2 + 16);
  v5[14] = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v13 = type metadata accessor for AsyncThrowingStream.Iterator();
  *v11 = v5;
  v11[1] = sub_1C93E3104;

  return MEMORY[0x1EEE6DB98](a1, v13);
}

uint64_t sub_1C93E3104()
{
  v2 = *v1;
  sub_1C93E3D8C();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_1C93E3D8C();
  *v7 = v6;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C93E3240, 0, 0);
  }

  else
  {
    v9 = v2[11];
    v8 = v2[12];

    sub_1C939D510();

    return v10();
  }
}

uint64_t sub_1C93E3240()
{
  v1 = *(v0 + 120);
  *(v0 + 40) = v1;
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = v1;
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);

    (*(v9 + 32))(v6, v7, v8);
    (*(v9 + 16))(v10, v6, v8);
    v12 = *(v11 + 32);
    swift_willThrowTypedImpl();
    (*(v9 + 8))(v6, v8);

    sub_1C939D510();

    return v13();
  }

  else
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 72);

    _StringGuts.grow(_:)(67);
    MEMORY[0x1CCA87780](0xD000000000000034, 0x80000001C9406860);
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1CCA87780](0x746365707865202CLL, 0xEB00000000206465);
    v19 = _typeName(_:qualified:)();
    MEMORY[0x1CCA87780](v19);

    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1C93E3478(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = *(a2 + 24);
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v2[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[6] = v8;
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_1C93E3590;

  return _s17CloudCoreInternal0aB14ThrowingStreamV8IteratorV4nextxSgyYaq_YKF(a1, a2, v8);
}

uint64_t sub_1C93E3590()
{
  v2 = *v1;
  sub_1C93E3D8C();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_1C93E3D8C();
  *v7 = v6;

  if (v0)
  {
    v8 = v2[2];
    v9 = *(v2[4] + 32);
    v9(v2[5], v2[6], v2[3]);
    v10 = *(v8 + 32);
    v11 = _getErrorEmbeddedNSError<A>(_:)();
    v12 = v2[5];
    if (v11)
    {
      (*(v2[4] + 8))(v2[5], v2[3]);
    }

    else
    {
      v13 = v2[3];
      swift_allocError();
      v9(v14, v12, v13);
    }
  }

  v16 = v2[5];
  v15 = v2[6];

  sub_1C939D510();

  return v17();
}

uint64_t sub_1C93E3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 24);
  v6[3] = v12;
  v13 = *(v12 - 8);
  v6[4] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v6[5] = v15;
  v16 = *(MEMORY[0x1E69E85D8] + 4);
  v17 = swift_task_alloc();
  v6[6] = v17;
  *v17 = v6;
  v17[1] = sub_1C93E3890;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v15);
}

uint64_t sub_1C93E3890()
{
  v2 = *v1;
  sub_1C93E3D8C();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1C93E3D8C();
  *v7 = v6;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v9 = v2[5];
  }

  sub_1C939D510();

  return v8();
}

uint64_t CloudCoreThrowingStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D604();
  v4 = *(*(type metadata accessor for AsyncThrowingStream.Iterator() - 8) + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C939D604();
  type metadata accessor for AsyncThrowingStream();
  AsyncStream.makeAsyncIterator()();
  return sub_1C93E2F1C(v7, a2);
}

uint64_t sub_1C93E3A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C93E3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CloudCoreThrowingStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1C93E3B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  result = a4(319, v5, v6, MEMORY[0x1E69E7288]);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);

  return sub_1C93A4810(a1, a2, v9);
}

uint64_t sub_1C93E3CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v10 = a5(0, v8, v9, MEMORY[0x1E69E7288]);

  return sub_1C93A1710(a1, a2, a2, v10);
}

uint64_t sub_1C93E3D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v4 = type metadata accessor for AsyncThrowingStream.Continuation();
  v5 = sub_1C939D430(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t CloudCoreThrowingStream.Continuation.yield(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v5 = a2[2];
  sub_1C939D47C();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v13 = type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
  sub_1C939D47C();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v34 - v19);
  (*(v7 + 16))(v12, a1, v5);
  sub_1C93E5F20();
  type metadata accessor for AsyncThrowingStream.Continuation();
  AsyncThrowingStream.Continuation.yield(_:)();
  v21 = (*(v15 + 88))(v20, v13);
  v22 = v21;
  if (v21 == *MEMORY[0x1E69E8778])
  {
    (*(v7 + 8))(a1, v5);
    (*(v15 + 96))(v20, v13);
    v23 = v35;
    *v35 = *v20;
    v24 = a2[3];
    v25 = a2[4];
    sub_1C93E5F20();
    v26 = type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
    sub_1C939D430(v26);
    return (*(v27 + 104))(v23, v22);
  }

  v29 = v35;
  if (v21 == *MEMORY[0x1E69E8770])
  {
    (*(v7 + 8))(a1, v5);
    (*(v15 + 96))(v20, v13);
    (*(v7 + 32))(v29, v20, v5);
  }

  else
  {
    if (v21 != *MEMORY[0x1E69E8768])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    (*(v7 + 8))(a1, v5);
  }

  v30 = a2[3];
  v31 = a2[4];
  sub_1C93E5F20();
  v32 = type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
  sub_1C939D430(v32);
  return (*(v33 + 104))(v29, v22);
}

uint64_t CloudCoreThrowingStream.Continuation.finish(throwing:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[3];
  sub_1C939D47C();
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C939D618();
  v12 = type metadata accessor for Optional();
  sub_1C939D47C();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = a2[2];
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v21 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_1C939D47C();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v35 - v27;
  (*(v23 + 16))(&v35 - v27, v3, v21);
  (*(v14 + 16))(v19, v37, v12);
  if (sub_1C93A4810(v19, 1, v5) == 1)
  {
    (*(v14 + 8))(v19, v12);
    v29 = 0;
  }

  else
  {
    v30 = v36;
    (*(v36 + 16))(v11, v19, v5);
    v31 = a2[4];
    v29 = _getErrorEmbeddedNSError<A>(_:)();
    v32 = *(v30 + 8);
    v32(v11, v5);
    if (v29)
    {
      v32(v19, v5);
    }

    else
    {
      v29 = swift_allocError();
      (*(v36 + 32))(v33, v19, v5);
    }
  }

  v38 = v29;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  return (*(v23 + 8))(v28, v21);
}

uint64_t (*CloudCoreThrowingStream.Continuation.onTermination.getter(uint64_t a1))(uint64_t a1)
{
  sub_1C939D47C();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 32) = *(a1 + 32);
  (*(v3 + 32))(v9 + v8, v7, a1);
  return sub_1C93E4DF0;
}

uint64_t (*sub_1C93E4584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  v4 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = type metadata accessor for CloudCoreThrowingStream.Continuation();
  CloudCoreThrowingStream.Continuation.onTermination.getter(v7);
  v9 = v8;
  result = swift_allocObject();
  *(result + 2) = v4;
  *(result + 3) = v5;
  *(result + 4) = v6;
  *(result + 5) = sub_1C93E4DF0;
  *(result + 6) = v9;
  *a3 = sub_1C93E5EF4;
  a3[1] = result;
  return result;
}

uint64_t sub_1C93E4624(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = v8;
    v10 = sub_1C93E5ECC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_1C93A1478(v7);
  v11 = type metadata accessor for CloudCoreThrowingStream.Continuation();
  return CloudCoreThrowingStream.Continuation.onTermination.setter(v10, v9, v11);
}

uint64_t CloudCoreThrowingStream.Continuation.onTermination.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = *(a3 + 16);
    *(v6 + 32) = *(a3 + 32);
    *(v6 + 40) = a1;
    *(v6 + 48) = a2;
    sub_1C93B27AC(&qword_1EC39B3B0, "T8");
    v7 = type metadata accessor for AsyncThrowingStream.Continuation();
    v8 = sub_1C93E53F4;
    v9 = v6;
  }

  else
  {
    v10 = *(a3 + 16);
    sub_1C93B27AC(&qword_1EC39B3B0, "T8");
    sub_1C939D618();
    v7 = type metadata accessor for AsyncThrowingStream.Continuation();
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DB58](v8, v9, v7);
}

uint64_t sub_1C93E47F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v60 = a1;
  v54 = *(a4 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v52 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v9 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = (v50 - v14);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v55 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v50 - v20;
  v53 = a5;
  v22 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v50 - v25;
  (*(v23 + 16))(v50 - v25, v60, v22);
  v27 = (*(v23 + 88))(v26, v22);
  if (v27 == *MEMORY[0x1E69E8758])
  {
    LODWORD(v60) = v27;
    (*(v23 + 96))(v26, v22);
    v28 = v16;
    (*(v16 + 32))(v21, v26, v15);
    type metadata accessor for AsyncThrowingStream.Continuation();
    v29 = AsyncThrowingStream.Continuation.onTermination.getter();
    v31 = v16;
    v32 = v21;
    if (v29)
    {
      v33 = v29;
      v34 = v30;
      v35 = v55;
      (*(v28 + 16))(v55, v21, v15);
      if (sub_1C93A4810(v35, 1, a4) == 1)
      {
        (*(v28 + 8))(v35, v15);
        v36 = 0;
      }

      else
      {
        v50[1] = v34;
        v51 = v28;
        v59 = v21;
        v43 = v54;
        v44 = v52;
        (*(v54 + 16))(v52, v35, a4);
        v36 = _getErrorEmbeddedNSError<A>(_:)();
        v45 = *(v43 + 8);
        v45(v44, a4);
        if (v36)
        {
          v45(v35, a4);
        }

        else
        {
          v36 = swift_allocError();
          (*(v43 + 32))(v46, v35, a4);
        }

        v31 = v51;
        v32 = v59;
      }

      v48 = v56;
      v47 = v57;
      *v56 = v36;
      v49 = v58;
      (*(v47 + 104))(v48, v60, v58);
      v33(v48);
      sub_1C93A14F4(v33);
      (*(v47 + 8))(v48, v49);
    }

    return (*(v31 + 8))(v32, v15);
  }

  else if (v27 == *MEMORY[0x1E69E8760])
  {
    v37 = v27;
    type metadata accessor for AsyncThrowingStream.Continuation();
    result = AsyncThrowingStream.Continuation.onTermination.getter();
    if (result)
    {
      v39 = result;
      v40 = v57;
      v41 = v37;
      v42 = v58;
      (*(v57 + 104))(v13, v41, v58);
      v39(v13);
      sub_1C93A14F4(v39);
      return (*(v40 + 8))(v13, v42);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93E4DF0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1C93E5F20();
  v6 = *(type metadata accessor for CloudCoreThrowingStream.Continuation() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1C93E47F0(a1, v7, v3, v4, v5);
}

uint64_t sub_1C93E4E8C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a2;
  v36 = a1;
  v39 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v18 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v34 - v21);
  (*(v19 + 16))(&v34 - v21, v36, v18);
  v23 = (*(v19 + 88))(v22, v18);
  v24 = v23;
  if (v23 == *MEMORY[0x1E69E8758])
  {
    (*(v19 + 96))(v22, v18);
    v25 = *v22;
    sub_1C93A1710(v17, 1, 1, a5);
    v26 = v34;
    if (!v25)
    {
LABEL_5:
      v29 = v35;
      (*(v35 + 16))(v9, v17, v26);
      v30 = v39;
      (*(v6 + 104))(v9, v24, v39);
      v38(v9);

      (*(v6 + 8))(v9, v30);
      return (*(v29 + 8))(v17, v26);
    }

    v40 = v25;
    v27 = v25;
    v28 = v25;
    if (swift_dynamicCast())
    {
      (*(v35 + 8))(v17, v26);

      sub_1C93A1710(v15, 0, 1, a5);
      (*(*(a5 - 8) + 32))(v17, v15, a5);
      sub_1C93A1710(v17, 0, 1, a5);
      goto LABEL_5;
    }

    sub_1C93A1710(v15, 1, 1, a5);
    (*(v35 + 8))(v15, v26);
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(93);
    MEMORY[0x1CCA87780](0xD00000000000004ELL, 0x80000001C94068E0);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1CCA87780](0x746365707865202CLL, 0xEB00000000206465);
    v33 = _typeName(_:qualified:)();
    MEMORY[0x1CCA87780](v33);
  }

  else if (v23 == *MEMORY[0x1E69E8760])
  {
    v32 = v39;
    (*(v6 + 104))(v9, v23, v39);
    v38(v9);
    return (*(v6 + 8))(v9, v32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*CloudCoreThrowingStream.Continuation.onTermination.modify(uint64_t (**a1)(uint64_t a1), uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  CloudCoreThrowingStream.Continuation.onTermination.getter(a2);
  *a1 = sub_1C93E4DF0;
  a1[1] = v4;
  return sub_1C93E5460;
}

uint64_t sub_1C93E5460(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = sub_1C93C316C();
    sub_1C93A1478(v6);
    v7 = sub_1C93C316C();
    CloudCoreThrowingStream.Continuation.onTermination.setter(v7, v8, v5);
    v9 = sub_1C93C316C();

    return sub_1C93A14F4(v9);
  }

  else
  {
    v11 = sub_1C93C316C();
    return CloudCoreThrowingStream.Continuation.onTermination.setter(v11, v12, v5);
  }
}

uint64_t sub_1C93E54D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  result = type metadata accessor for AsyncThrowingStream.Continuation();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E5590(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1C93E55EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 > 3)
        {
          LODWORD(v8) = 4;
        }

        switch(v8)
        {
          case 2:
            LODWORD(v8) = *a1;
            break;
          case 3:
            LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v8) = *a1;
            break;
          default:
            LODWORD(v8) = *a1;
            break;
        }
      }

      return v7 + (v8 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_25:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1C93A4810(a1, v5, v4);
  v15 = v14 >= 2;
  result = v14 - 2;
  if (result == 0 || !v15)
  {
    return 0;
  }

  return result;
}

void sub_1C93E5770(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 - 1;
  v11 = *(*(v7 - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  if (v8 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (a2 + 1 <= v9)
          {
            if (a2 != -1 && v8 >= 2)
            {
              v24 = a2 + 2;

              sub_1C93A1710(a1, v24, v8, v7);
            }
          }

          else
          {
            if (v11 <= 3)
            {
              v21 = ~(-1 << (8 * v11));
            }

            else
            {
              v21 = -1;
            }

            if (v11)
            {
              v22 = v21 & (a2 - v9);
              if (v11 <= 3)
              {
                v23 = v11;
              }

              else
              {
                v23 = 4;
              }

              bzero(a1, v11);
              switch(v23)
              {
                case 2:
                  *a1 = v22;
                  break;
                case 3:
                  *a1 = v22;
                  a1[2] = BYTE2(v22);
                  break;
                case 4:
                  *a1 = v22;
                  break;
                default:
                  *a1 = v22;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C93E5A4C(uint64_t a1)
{
  result = sub_1C93E5DC4();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C93E5AC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
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

void sub_1C93E5BE8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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

uint64_t sub_1C93E5DC4()
{
  result = qword_1EC39B5C0;
  if (!qword_1EC39B5C0)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EC39B5C0);
  }

  return result;
}

uint64_t sub_1C93E5DEC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C93E5E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93E5E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C93E5E84(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C93E5E9C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C93E5ECC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1C93E5EF4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1C93E5F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

Swift::Void __swiftcall Task.CancelHandle.cancel()()
{
  v0 = sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  v1 = sub_1C939EE34(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v8 - v6;
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v7);
}

uint64_t Task.CancelHandle.hash(into:)()
{
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C93E60E4();

  return dispatch thunk of Hashable.hash(into:)();
}

unint64_t sub_1C93E60E4()
{
  result = qword_1EE02B3A0;
  if (!qword_1EE02B3A0)
  {
    sub_1C93B27AC(&qword_1EC39B5D0, &qword_1C9404AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3A0);
  }

  return result;
}

Swift::Int Task.CancelHandle.hashValue.getter()
{
  Hasher.init(_seed:)();
  Task.CancelHandle.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1C93E6190()
{
  Hasher.init(_seed:)();
  Task.CancelHandle.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s17CloudCoreInternal26withInterruptibleChildTask4name18executorPreference8priority9isolation9operationxSSSg_Sch_pSgScPSgScA_pSgYixScTAAE12CancelHandleVyxs5Error_p_GYaKYAcntYaKs8SendableRzlF()
{
  sub_1C939ED74();
  v0[11] = v1;
  v0[12] = v16;
  v0[9] = v2;
  v0[10] = v3;
  v0[7] = v4;
  v0[8] = v5;
  v0[5] = v6;
  v0[6] = v7;
  v0[3] = v15;
  v0[4] = v8;
  v0[2] = v14;
  if (v3)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v0[13] = v9;
  v0[14] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C93E6280, v9, v11);
}

uint64_t sub_1C93E6280()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v15 = *(v0 + 40);
  v5 = type metadata accessor for RacingTaskResult();
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v15;
  *(v6 + 40) = v2;
  *(v6 + 48) = v0 + 16;
  *(v6 + 56) = v4;
  *(v6 + 64) = v3;
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v0 + 128) = v8;
  *v8 = v9;
  v8[1] = sub_1C93E63A8;
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 80);
  v13 = *(v0 + 32);

  return MEMORY[0x1EEE6DD58](v13, v5);
}

uint64_t sub_1C93E63A8()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  v4 = v2[16];
  v5 = *v1;
  sub_1C93B5C54();
  *v6 = v5;
  v3[17] = v0;

  if (v0)
  {
    v7 = v3[13];
    v8 = v3[14];
    v9 = sub_1C93E650C;
  }

  else
  {
    v10 = v3[15];

    v7 = v3[13];
    v8 = v3[14];
    v9 = sub_1C93E64B4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C93E64B4()
{
  sub_1C939ED74();
  v1 = *(v0 + 24);

  sub_1C939D624();

  return v2();
}

uint64_t sub_1C93E650C()
{
  sub_1C939ED74();
  v1 = v0[15];

  v2 = v0[3];

  sub_1C939D510();
  v4 = v0[17];

  return v3();
}

uint64_t sub_1C93E6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v25;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v8[6] = a2;
  v8[7] = a3;
  v8[5] = a1;
  v9 = type metadata accessor for RacingTaskResult();
  v8[14] = v9;
  v10 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v11 = *(v9 - 8);
  v8[16] = v11;
  v12 = *(v11 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v13 = type metadata accessor for Task.CancelHandle();
  v8[20] = v13;
  v14 = *(v13 - 8);
  v8[21] = v14;
  v8[22] = *(v14 + 64);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v15 = sub_1C93A1890(&qword_1EC39B5D8, &unk_1C9404910);
  v8[25] = v15;
  v16 = *(v15 - 8);
  v8[26] = v16;
  v17 = *(v16 + 64) + 15;
  v8[27] = swift_task_alloc();
  v18 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  v8[28] = v18;
  v19 = *(v18 - 8);
  v8[29] = v19;
  v20 = *(v19 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v21 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  v8[32] = v21;
  v22 = *(v21 - 8);
  v8[33] = v22;
  v8[34] = *(v22 + 64);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E6894, 0, 0);
}

uint64_t sub_1C93E6894()
{
  v1 = v0[36];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v43 = v0[24];
  v45 = v0[19];
  v9 = v0[13];
  v47 = v0[8];
  (*(v7 + 104))(v6, *MEMORY[0x1E69E8650], v8);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v6, v8);
  (*(v5 + 16))(v3, v2, v4);
  sub_1C93E5F2C(v3, v43);
  if (v47)
  {
    v11 = v0[7];
    v10 = v0[8];
    _StringGuts.grow(_:)(16);

    MEMORY[0x1CCA87780](0x7265746E49202D20, 0xEE00726F74707572);
    v35 = v11;
    v37 = v10;
  }

  else
  {
    v37 = 0x80000001C9406930;
    v35 = 0xD000000000000010;
  }

  v12 = v0[35];
  v13 = v0[33];
  v14 = v0[34];
  v15 = v0[32];
  v39 = v0[23];
  v40 = v0[24];
  v16 = v0[21];
  v41 = v0[22];
  v17 = v0[19];
  v34 = v0[20];
  v19 = v0[13];
  v18 = v0[14];
  v48 = v0[12];
  v36 = v0[10];
  v44 = v0[8];
  v46 = v0[11];
  v42 = v0[7];
  v32 = v0[9];
  v33 = v0[6];
  (*(v13 + 16))(v12, v0[36], v15);
  v20 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v19;
  (*(v13 + 32))(&v21[v20], v12, v15);
  v38 = type metadata accessor for ThrowingTaskGroup();
  sub_1C93E7C7C(v35, v37, v32, &unk_1C9404928, v21, v38);

  v0[4] = v34;
  swift_getExtendedFunctionTypeMetadata();
  type metadata accessor for UnsafeSendableTransfer();
  v22 = v36[1];
  v0[2] = *v36;
  v0[3] = v22;

  v23 = UnsafeSendableTransfer.__allocating_init(_:)((v0 + 2));
  v0[37] = v23;
  (*(v16 + 16))(v39, v40, v34);
  v24 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v19;
  *(v25 + 5) = v23;
  (*(v16 + 32))(&v25[v24], v39, v34);

  sub_1C93E8438(v42, v44, v46, v48, v32, &unk_1C9404938, v25, v38);
  v26 = *(MEMORY[0x1E69E8708] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[38] = v27;
  *v27 = v28;
  v27[1] = sub_1C93E6CC8;
  v29 = v0[15];
  v30 = v0[6];
  sub_1C93DA690();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1C93E6CC8()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = *(v2 + 304);
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v6 + 312) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C93E6DC8()
{
  v3 = v0[14];
  v2 = v0[15];
  result = sub_1C93A4810(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v10 = v0[6];
  (*(v8 + 32))(v6, v2, v3);
  MEMORY[0x1CCA87910](*v10, v3, v5, MEMORY[0x1E69E7288]);
  (*(v8 + 16))(v7, v6, v3);
  v11 = type metadata accessor for Result();
  if (sub_1C93A4810(v7, 1, v11) == 1)
  {
    v12 = v0[37];
    v13 = v0[18];
    v14 = v0[16];
    v15 = v0[14];
    v16 = type metadata accessor for CancellationError();
    sub_1C93E8744();
    v17 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v19 = *(v14 + 8);
    v18 = v14 + 8;
    v19(v13, v15);
  }

  else
  {
    v16 = v0[17];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v1 = v0[37];
    if (EnumCaseMultiPayload != 1)
    {
      v37 = v0[36];
      v38 = v0[35];
      v24 = v0[33];
      v36 = v0[32];
      v25 = v0[29];
      v33 = v0[28];
      v34 = v0[31];
      v40 = v0[30];
      v42 = v0[27];
      v26 = v0[21];
      v31 = v0[20];
      v32 = v0[24];
      v27 = v0[18];
      v28 = v0[16];
      v44 = v0[23];
      v45 = v0[15];
      v29 = v0[13];
      v30 = v0[14];
      v35 = v0[5];

      (*(v28 + 8))(v27, v30);
      (*(v26 + 8))(v32, v31);
      (*(v25 + 8))(v34, v33);
      (*(v24 + 8))(v37, v36);
      (*(*(v29 - 8) + 32))(v35, v16, v29);

      sub_1C939D624();
      goto LABEL_8;
    }

    v12 = v0[18];
    v21 = v0[16];
    v15 = v0[14];
    v17 = *v16;
    swift_willThrow();

    v22 = *(v21 + 8);
    v18 = v21 + 8;
    v22(v12, v15);
  }

  sub_1C93E8968();
  v39 = v0[18];
  v41 = v0[17];
  v43 = v0[15];
  (*(v0[21] + 8))(v12, v0[20]);
  (*(v1 + 8))(v18, v10);
  (*(v16 + 8))(v17, v15);

  sub_1C939D510();
LABEL_8:

  return v23();
}

uint64_t sub_1C93E7194()
{
  v8 = v3[37];

  v14 = v3[39];
  sub_1C93E8968();
  v11 = v3[18];
  v12 = v3[17];
  v13 = v3[15];
  (*(v3[21] + 8))(v0, v3[20]);
  (*(v7 + 8))(v5, v6);
  (*(v1 + 8))(v2, v4);

  sub_1C939D510();

  return v9();
}

uint64_t sub_1C93E72CC(uint64_t a1, uint64_t a2)
{
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v3 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_1C93B5BC4;

  return sub_1C93E6588(a1, a2, v6, v8, v9, v10, v11, v12);
}

void sub_1C93E73D4()
{
  sub_1C93E7480();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C93E7480()
{
  if (!qword_1EE02B398)
  {
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02B398);
    }
  }
}

uint64_t sub_1C93E74D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v2 = type metadata accessor for Result();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1C93E7554(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
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
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_22:
    v11 = *(a1 + v4);
    if (v11 >= 2)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v9 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
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

void sub_1C93E7684(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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
          a1[v5] = ~a2;
        }

        break;
    }
  }
}

uint64_t sub_1C93E7848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1C93A1890(&qword_1EC39B5E8, &qword_1C9404948);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E7918, 0, 0);
}

uint64_t sub_1C93E7918()
{
  sub_1C939ED74();
  v1 = v0[7];
  v2 = v0[3];
  sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x1E69E8680] + 4);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_1C93E79D4;
  v6 = v0[7];
  v7 = v0[5];

  return MEMORY[0x1EEE6D9D0](v0 + 9, v7);
}

uint64_t sub_1C93E79D4()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C93E7ABC()
{
  v1 = v0[4];
  v2 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v3 = type metadata accessor for Result();
  sub_1C93A1710(v2, 1, 1, v3);

  sub_1C939D624();

  return v4();
}

uint64_t sub_1C93E7B7C(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C93B5BC4;

  return sub_1C93E7848(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_1C93E7C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33[-v15];
  v36[0] = a4;
  v36[1] = a5;
  sub_1C93B5474(a3, &v33[-v15]);
  v17 = type metadata accessor for TaskPriority();
  v18 = sub_1C93A4810(v16, 1, v17);

  if (v18 == 1)
  {
    sub_1C93B54E4(v16);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v17 - 8) + 8))(v16, v17);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter();
      v25 = *(v24 + 16);
      v26 = a6[2];
      v31 = a6[3];
      v32 = a6[4];
      sub_1C93E879C(v24 + 32, v7, v36, v34);
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v27 = *v7;
  v28 = a6[2];
  v29 = (v23 | v21);
  if (v23 | v21)
  {
    v35[0] = 0;
    v35[1] = 0;
    v29 = v35;
    v35[2] = v21;
    v35[3] = v23;
  }

  v34[1] = 1;
  v34[2] = v29;
  v34[3] = v27;
  swift_task_create();
}

uint64_t sub_1C93E7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  v7 = *(a6 - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E7F60, 0, 0);
}

uint64_t sub_1C93E7F60()
{
  sub_1C939ED74();
  v1 = v0[5];
  UnsafeSendableTransfer.extractValue()((v0 + 2));
  v2 = v0[2];
  v0[10] = v0[3];
  v9 = (v2 + *v2);
  v3 = v2[1];
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_1C93E805C;
  v6 = v0[9];
  v7 = v0[6];

  return v9(v6, v7);
}

uint64_t sub_1C93E805C()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = *(v2 + 88);
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C93E815C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];

  (*(v4 + 32))(v5, v2, v3);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v6 = type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  sub_1C93A1710(v5, 0, 1, v6);
  v7 = v0[9];

  sub_1C939D624();

  return v8();
}

uint64_t sub_1C93E823C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  *v4 = v1;
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v5 = type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  sub_1C93A1710(v4, 0, 1, v5);
  v6 = v0[9];

  sub_1C939D624();

  return v7();
}

uint64_t sub_1C93E830C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v6 = *(type metadata accessor for Task.CancelHandle() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1C93B5858;

  return sub_1C93E7EA8(a1, v8, v9, v10, v1 + v7, v5);
}

uint64_t sub_1C93E8438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v37 = a4;
  v16 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v36 - v18;
  v36[1] = a6;
  v43[0] = a6;
  v43[1] = a7;
  sub_1C93B5474(a5, v36 - v18);
  v20 = type metadata accessor for TaskPriority();
  LODWORD(a6) = sub_1C93A4810(v19, 1, v20);

  if (a6 == 1)
  {
    sub_1C93B54E4(v19);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v20 - 8) + 8))(v19, v20);
  }

  v21 = *(a7 + 16);
  v22 = *(a7 + 24);
  swift_unknownObjectRetain();

  if (v21)
  {
    swift_getObjectType();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = String.utf8CString.getter();
      v27 = *(v26 + 16);
      v35 = *(a8 + 32);
      v34 = *(a8 + 16);
      sub_1C93E886C(v26 + 32, v9, v38, v43);

LABEL_18:
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v28 = *v9;
  if (a3)
  {
    v29 = *(a8 + 16);

    swift_unknownObjectRetain();
    if (v25 | v23)
    {
      v40[0] = 0;
      v40[1] = 0;
      v30 = v40;
      v40[2] = v23;
      v40[3] = v25;
    }

    else
    {
      v30 = 0;
    }

    v39[0] = 1;
    v39[1] = v30;
    v39[2] = v28;
    if (a3 != 1)
    {
      v38[1] = 6;
      v38[2] = v39;
      v38[3] = a3;
      v38[4] = v37;
    }

    swift_task_create();
    goto LABEL_18;
  }

  v31 = *(a8 + 16);
  v32 = (v25 | v23);
  if (v25 | v23)
  {
    v42[0] = 0;
    v42[1] = 0;
    v32 = v42;
    v42[2] = v23;
    v42[3] = v25;
  }

  v41[0] = 1;
  v41[1] = v32;
  v41[2] = v28;
  v40[4] = 6;
  v40[5] = v41;
  v40[6] = 0;
  v40[7] = v37;
  swift_task_create();
}

unint64_t sub_1C93E8744()
{
  result = qword_1EE02AD80;
  if (!qword_1EE02AD80)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AD80);
  }

  return result;
}

uint64_t sub_1C93E879C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a3[1];

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93E886C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>, uint64_t *a4)
{
  if (result)
  {
    v4 = *a2;
    v5 = *a4;
    v6 = a4[1];

    swift_unknownObjectRetain();
    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C93E8968()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  v10 = v0[23];
  v11 = v0[24];
}

uint64_t sub_1C93E8984()
{
  sub_1C939ED74();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[5] = v5;
  v0[6] = v6;
  v0[4] = v7;
  v8 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C939ED4C(v8);
  v0[11] = v9;
  v0[12] = *(v10 + 64);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v11 = sub_1C93A1890(&qword_1EC39B5D8, &unk_1C9404910);
  v0[15] = v11;
  sub_1C939ED4C(v11);
  v0[16] = v12;
  v14 = *(v13 + 64);
  v0[17] = sub_1C93DA730();
  v15 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  v0[18] = v15;
  sub_1C939ED4C(v15);
  v0[19] = v16;
  v18 = *(v17 + 64);
  v0[20] = sub_1C93DA730();
  v19 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  v0[21] = v19;
  sub_1C939ED4C(v19);
  v0[22] = v20;
  v0[23] = *(v21 + 64);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C93E8B80()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[6];
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8650], v6);
  sub_1C93BD618();
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 16))(v8, v2, v4);
  if (v9)
  {
    v11 = v0[5];
    v10 = v0[6];
    _StringGuts.grow(_:)(16);

    MEMORY[0x1CCA87780](0x7265746E49202D20, 0xEE00726F74707572);
    v12 = v11;
  }

  else
  {
    v10 = 0x80000001C9406930;
    v12 = 0xD000000000000010;
  }

  v33 = v12;
  v13 = v0[24];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[21];
  v34 = v0[13];
  v35 = v0[14];
  v36 = v0[11];
  v37 = v0[12];
  v40 = v0[9];
  v41 = v0[10];
  v18 = v0[7];
  v17 = v0[8];
  v38 = v0[5];
  v39 = v0[6];
  v19 = v0[4];
  (*(v15 + 16))(v13, v0[25], v16);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v15 + 32))(v21 + v20, v13, v16);
  sub_1C93E96A4(v33, v10, v18, &unk_1C9404A40, v21);

  v23 = *v17;
  v22 = v17[1];
  sub_1C93A1890(&qword_1EC39B618, &qword_1C9404A48);
  swift_allocObject();
  v24 = sub_1C93BD618();
  v26 = sub_1C93EDA50(v24, v25);
  v0[26] = v26;
  sub_1C93EFDB4(v35, v34, &qword_1EC39B5F8, qword_1C9404A00);
  v27 = (*(v36 + 80) + 40) & ~*(v36 + 80);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v26;
  sub_1C93EFC18(v34, v28 + v27);

  sub_1C93E9C5C(v38, v39, v40, v41, v18, &unk_1C9404A58, v28);
  v29 = *(MEMORY[0x1E69E8708] + 4);
  v30 = swift_task_alloc();
  v0[27] = v30;
  sub_1C93A1890(&qword_1EC39B620, &qword_1C9404A60);
  *v30 = v0;
  v30[1] = sub_1C93E8F00;
  v31 = v0[4];
  sub_1C93DA690();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1C93E8F00()
{
  sub_1C939ED74();
  sub_1C939D504();
  sub_1C93E3D8C();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_1C93B5C54();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C93E8FFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 254)
  {
    __break(1u);
    return;
  }

  v3 = **(v0 + 32);
  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  sub_1C93A1890(&qword_1EC39B3B0, "T8");
  v4 = sub_1C93A8E10();
  MEMORY[0x1CCA87910](v4);
  if (v2 == 255)
  {
    v12 = *(v0 + 208);
    v29 = *(v0 + 200);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    v18 = *(v0 + 112);
    type metadata accessor for CancellationError();
    sub_1C93E8744();
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    sub_1C93A4838(v18, &qword_1EC39B5F8, qword_1C9404A00);
    (*(v15 + 8))(v16, v17);
    (*(v14 + 8))(v29, v13);
  }

  else
  {
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    if ((v2 & 1) == 0)
    {
      v20 = *(v0 + 176);
      v25 = *(v0 + 168);
      v26 = *(v0 + 192);
      v21 = *(v0 + 152);
      v22 = *(v0 + 160);
      v23 = *(v0 + 144);
      v24 = *(v0 + 112);
      v27 = *(v0 + 136);
      v30 = *(v0 + 104);

      sub_1C93A4838(v24, &qword_1EC39B5F8, qword_1C9404A00);
      (*(v21 + 8))(v22, v23);
      (*(v20 + 8))(v5, v25);
      sub_1C93EFD7C(v1, v2);

      sub_1C939D510();
      goto LABEL_8;
    }

    v7 = *(v0 + 176);
    v28 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 112);
    swift_willThrow();

    sub_1C93A4838(v11, &qword_1EC39B5F8, qword_1C9404A00);
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v5, v28);
  }

  sub_1C93EFFD4();

  sub_1C939D510();
LABEL_8:

  v19();
}

void sub_1C93E92C4()
{
  sub_1C93DA798();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[14];

  sub_1C93A4838(v8, &qword_1EC39B5F8, qword_1C9404A00);
  v9 = *(v6 + 8);
  v10 = sub_1C93A8E10();
  v11(v10);
  v12 = *(v4 + 8);
  v13 = sub_1C93BD618();
  v14(v13);
  v15 = v0[28];
  sub_1C93EFFD4();

  sub_1C939D510();
  sub_1C93DA880();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C93E93AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_1C93A1890(&qword_1EC39B5E8, &qword_1C9404948);
  v3[3] = v4;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E9478, 0, 0);
}

uint64_t sub_1C93E9478()
{
  sub_1C939ED74();
  v1 = v0[5];
  v2 = v0[2];
  sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1C93E9538;
  v5 = v0[5];
  v6 = v0[3];

  return MEMORY[0x1EEE6D9D0](v0 + 7, v6);
}

uint64_t sub_1C93E9538()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C93E9620()
{
  sub_1C939ED74();
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1(0, 255);
}

uint64_t sub_1C93E96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - v12;
  sub_1C93EFDB4(a3, v27 - v12, &qword_1EC39ADF0, &qword_1C9404940);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_1C93A4810(v13, 1, v14);

  if (v15 == 1)
  {
    sub_1C93A4838(v13, &qword_1EC39ADF0, &qword_1C9404940);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = *v6;

      sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v29[0] = 0;
        v29[1] = 0;
        v23 = v29;
        v29[2] = v18;
        v29[3] = v20;
      }

      v28[0] = 1;
      v28[1] = v23;
      v28[2] = v22;
      v27[1] = 7;
      v27[2] = v28;
      v27[3] = v21;
      swift_task_create();
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = *v6;
  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v25 = (v20 | v18);
  if (v20 | v18)
  {
    v30[0] = 0;
    v30[1] = 0;
    v25 = v30;
    v30[2] = v18;
    v30[3] = v20;
  }

  v29[4] = 1;
  v29[5] = v25;
  v29[6] = v24;
  swift_task_create();
}

uint64_t sub_1C93E9934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C93E9954, 0, 0);
}

uint64_t sub_1C93E9954()
{
  sub_1C939ED74();
  v1 = v0[2];
  v2 = sub_1C93E9C18();
  v0[4] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1C93E9A48;
  v6 = v0[3];

  return v8();
}

uint64_t sub_1C93E9A48()
{
  sub_1C939ED74();
  sub_1C939D504();
  sub_1C93E3D8C();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_1C93B5C54();
  *v7 = v6;
  *(v8 + 48) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C93E9B44()
{
  sub_1C939ED74();
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(0, 0);
}

uint64_t sub_1C93E9BAC()
{
  sub_1C939ED74();
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3(v1, 1);
}

uint64_t sub_1C93E9C18()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    v2 = *(v0 + 24);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93E9C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a4;
  v33 = a6;
  v13 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31 - v15;
  sub_1C93EFDB4(a5, &v31 - v15, &qword_1EC39ADF0, &qword_1C9404940);
  v17 = type metadata accessor for TaskPriority();
  LODWORD(a5) = sub_1C93A4810(v16, 1, v17);

  if (a5 == 1)
  {
    sub_1C93A4838(v16, &qword_1EC39ADF0, &qword_1C9404940);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v17 - 8) + 8))(v16, v17);
  }

  v18 = *(a7 + 16);
  v19 = *(a7 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = String.utf8CString.getter() + 32;
      v24 = *v8;
      swift_unknownObjectRetain();

      sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
      v25 = (v22 | v20);
      if (v22 | v20)
      {
        v39[0] = 0;
        v39[1] = 0;
        v25 = v39;
        v39[2] = v20;
        v39[3] = v22;
      }

      v38[0] = 1;
      v38[1] = v25;
      v38[2] = v24;
      v26 = v38;
      if (a3 != 1)
      {
        v37[0] = 6;
        v37[1] = v38;
        v37[2] = a3;
        v37[3] = v32;
        v26 = v37;
      }

      v34 = 7;
      v35 = v26;
      v36 = v23;
      swift_task_create();
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v27 = *v8;
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
    v28 = (v22 | v20);
    if (v22 | v20)
    {
      v41[0] = 0;
      v41[1] = 0;
      v28 = v41;
      v41[2] = v20;
      v41[3] = v22;
    }

    v40[0] = 1;
    v40[1] = v28;
    v40[2] = v27;
    if (a3 != 1)
    {
      v39[4] = 6;
      v39[5] = v40;
      v39[6] = a3;
      v39[7] = v32;
    }
  }

  else
  {
    sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
    v29 = (v22 | v20);
    if (v22 | v20)
    {
      v43[0] = 0;
      v43[1] = 0;
      v29 = v43;
      v43[2] = v20;
      v43[3] = v22;
    }

    v42[0] = 1;
    v42[1] = v29;
    v42[2] = v27;
    v41[4] = 6;
    v41[5] = v42;
    v41[6] = 0;
    v41[7] = v32;
  }

  swift_task_create();
}

uint64_t sub_1C93E9F90()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = *(swift_getAssociatedConformanceWitness() + 8);
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t sub_1C93EA058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v16 = type metadata accessor for ExponentialBackoff.State();
  (*(*(a11 - 8) + 32))(&a8[v16[9]], a3, a11);
  *&a8[v16[10]] = a4;
  v17 = v16[11];
  sub_1C93EFF28();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939D430(AssociatedTypeWitness);
  v20 = *(v19 + 32);
  (v20)(&a8[v17], a5, AssociatedTypeWitness);
  v21 = v16[12];
  sub_1C93EFFA8();
  v20();
  v22 = v16[13];
  sub_1C93EFF28();
  v23 = type metadata accessor for Optional();
  sub_1C939D430(v23);
  (*(v24 + 32))(&a8[v22], a6);
  *&a8[v16[14]] = a7;
  result = (v20)(&a8[v16[15]], a9, AssociatedTypeWitness);
  *&a8[v16[16]] = a10;
  return result;
}

void ExponentialBackoff.clock.getter()
{
  v1 = *v0;
  sub_1C93EFF10();
  v3 = (v0 + *(v2 + 96));
  os_unfair_lock_lock(v3);
  sub_1C93EFF10();
  v5 = *(v4 + 80);
  sub_1C93EFF10();
  v7 = *(v6 + 88);
  v8 = v3 + *(sub_1C93EFEC8() + 28);
  sub_1C93EFF1C();
  sub_1C93EA2B4(v9, v10, v11);

  j__os_unfair_lock_unlock(v3);
}

uint64_t ExponentialBackoff.label.getter()
{
  v1 = *v0;
  sub_1C93EFF04();
  v3 = (v0 + *(v2 + 96));
  os_unfair_lock_lock(v3);
  sub_1C93EFF04();
  v5 = *(v4 + 80);
  sub_1C93EFF04();
  v7 = *(v6 + 88);
  type metadata accessor for ExponentialBackoff.State();
  v8 = (v3 + *(type metadata accessor for Mutex() + 28));
  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1C93E1B08();
  j__os_unfair_lock_unlock(v11);
  return v9;
}

uint64_t ExponentialBackoff.backoffCountBeforeDelay.getter()
{
  v2 = *v0;
  sub_1C93EFF04();
  v4 = (v0 + *(v3 + 96));
  os_unfair_lock_lock(v4);
  sub_1C93EFF04();
  v6 = *(v5 + 80);
  sub_1C93EFF04();
  v8 = *(v7 + 88);
  type metadata accessor for ExponentialBackoff.State();
  sub_1C93EFF28();
  v9 = type metadata accessor for Mutex();
  v10 = *(v1 + *(sub_1C93EFF70(v9) + 40));
  j__os_unfair_lock_unlock(v4);
  return v10;
}
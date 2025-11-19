uint64_t sub_1C5DDBC3C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C5C6AA20(a2);
  v4 = OUTLINED_FUNCTION_41_8();
  v5 = sub_1C5D85590(v4);
  if (v6)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  if (v2 < v7)
  {
    goto LABEL_18;
  }

  v8 = OUTLINED_FUNCTION_255();
  sub_1C5D85598(v8);
  result = sub_1C5D85598(v2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v2)
  {
  }

  else
  {
    if (v7 >= v2)
    {
      goto LABEL_21;
    }

    sub_1C5C64D74(0, &qword_1ED7DCEA8);
    OUTLINED_FUNCTION_53_8();

    result = v7;
    do
    {
      v10 = result + 1;
      sub_1C6017550();
      result = v10;
    }

    while (v2 != v10);
  }

  if (a2 >> 62)
  {
LABEL_19:

    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_44_11();
    return OUTLINED_FUNCTION_11_0();
  }

  if ((v2 & 0x8000000000000000) == 0)
  {

    OUTLINED_FUNCTION_51_8();
    return OUTLINED_FUNCTION_11_0();
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C5DDBD50(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      v7 = a4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C5DDBDF8()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_59_6();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_206();
  swift_unknownObjectRelease();
  type metadata accessor for OverlappedTransitionState();
  v0 = swift_dynamicCastClass() != 0;

  return v0;
}

uint64_t sub_1C5DDBE58()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v0();
}

uint64_t sub_1C5DDBEA4()
{
  if (*(v1 + 208))
  {
    OUTLINED_FUNCTION_206();

    sub_1C5D6D418(v0);
  }

  return result;
}

uint64_t sub_1C5DDBEF8()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_59_6();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_126();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1C5D94790();
  OUTLINED_FUNCTION_53_8();
  swift_unknownObjectRelease();
  v3 = *(v0 + 208);
  if (v3)
  {
    v4 = *(v3 + 24);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  v6 = sub_1C5DDF0FC(v1, v2, v4);

  return v6;
}

uint64_t sub_1C5DDBFA4(unsigned __int16 a1, unsigned __int16 a2)
{
  v2 = a2;
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      if ((a2 & 0xC000) == 0x4000)
      {
        v3 = sub_1C5D62554(a1);
        v5 = v4;
        if (v3 != sub_1C5D62554(v2) || v5 != v6)
        {
          v8 = sub_1C6017860();

          return v8 & 1;
        }

        return 1;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x8001u:
          v10 = 32769;
          break;
        case 0x8002u:
          v10 = 32770;
          break;
        case 0x8003u:
          v10 = 32771;
          break;
        case 0x8004u:
          v10 = 32772;
          break;
        case 0x8005u:
          v10 = 32773;
          break;
        default:
          return a2 == 0x8000;
      }

      if (v10 == a2)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2 >= 0x4000u)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

uint64_t sub_1C5DDC0F0()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v0();
}

void sub_1C5DDC13C(void *a1)
{
  v2 = v1;
  if (v1[40])
  {

    sub_1C5DEE73C(a1);
  }

  OUTLINED_FUNCTION_27();
  v4 = v1[20];
  swift_unknownObjectRetain();
  v5 = sub_1C6014D30();
  [v4 resetWithReason_];
  swift_unknownObjectRelease();

  v2[47] = 0;
  v2[48] = 0;

  v2[6] = 0;
  v6 = v2[15];
  v2[15] = 0;
}

uint64_t sub_1C5DDC1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v7 = v6[4];
  v13 = a1;
  *&v14 = a6;
  v15 = a2;
  v16 = a3;
  v9 = v7 == 1 && a6 == 0.0;
  v17 = a4;
  v18 = a5;
  LOBYTE(v19[0]) = v9;
  *(v19 + 1) = 256;
  v24[0] = a1;
  v24[1] = v14;
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = a5;
  v25 = v19[0] | 0x10000;
  v27 = 0;
  v26 = 0;
  v20[0] = a1;
  v20[1] = v14;
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = v25;
  v22 = 0;
  v21 = 0;
  v23 = 0;

  v10 = OUTLINED_FUNCTION_147();
  sub_1C5C74C28(v10);
  swift_unknownObjectRetain();

  sub_1C5DE93E4(&v13, &v12, sub_1C5DE9B10);
  sub_1C5DE294C(v20, v6, v6, v24);
  return sub_1C5DE9BB4(&v13, sub_1C5DE9B10);
}

uint64_t sub_1C5DDC30C(uint64_t a1)
{
  v2 = v1;
  v4 = (*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3;
  if (v4 != 4 && v4 != 5)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27();
  v5 = *(v1 + 160);
  swift_unknownObjectRetain();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_118();
  swift_unknownObjectRelease();
  type metadata accessor for ErrorResolutionState();
  swift_dynamicCastClass();
  OUTLINED_FUNCTION_98();

  if (v5)
  {
    sub_1C5DE12E4(a1);
    return 1;
  }

  v7 = *(v2 + 160);
  swift_unknownObjectRetain();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_118();
  swift_unknownObjectRelease();
  swift_dynamicCastClass();
  OUTLINED_FUNCTION_98();

  if (!v7)
  {
    OUTLINED_FUNCTION_33_7();
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000040, 0x80000001C6054E80);
    v8 = sub_1C5D5F72C();
    v10 = v9;
    MEMORY[0x1C69534E0](v8);

    MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6054ED0);
    OUTLINED_FUNCTION_27();
    swift_unknownObjectRetain();
    sub_1C5C8A688();
    OUTLINED_FUNCTION_206();
    v11 = swift_unknownObjectRelease();
    v12 = (*(*v10 + 144))(v11);
    MEMORY[0x1C69534E0](v12);

    OUTLINED_FUNCTION_109();
    MEMORY[0x1C69534E0](0xD000000000000013);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C5D45B74(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    return 0;
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_33_7();
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000057, 0x80000001C6054E20);
    v13 = sub_1C5D5F72C();
    MEMORY[0x1C69534E0](v13);

    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C5D45B74(__src);
    memcpy(__dst, __src, 0xD9uLL);

    sub_1C5DBBF0C();

    __break(1u);
  }

  return result;
}

BOOL sub_1C5DDC5D8(uint64_t a1, unint64_t a2)
{
  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (!a1)
  {
    return !a2;
  }

  return a2 > 1;
}

uint64_t sub_1C5DDC60C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *v14 = a8;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  v15 = 0;
  v16 = 1;
  *v11 = a8;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;
  v11[7] = a7;
  v13 = 49;
  v12 = 0;

  v9 = OUTLINED_FUNCTION_147();
  sub_1C5C74C28(v9);
  swift_unknownObjectRetain();
  sub_1C5D869C0(a3);
  sub_1C5DE163C(v11);
  return sub_1C5DE9BB4(v14, sub_1C5DE9440);
}

void sub_1C5DDC6D4()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v76 = v3;
  v77 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_146();
  v75 = v5 - v4;
  v69 = sub_1C6017080();
  OUTLINED_FUNCTION_25();
  v73 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  v71 = v0[4];
  if (v71 < 2)
  {
    v11 = [objc_opt_self() sharedInstance];
  }

  else
  {
    v11 = v71;
  }

  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E6988100]);
  v14 = v12;
  v15 = [v13 init];
  [v15 mpc:1 setSupportsAdvanceTimeForOverlappedPlayback:?];
  v16 = v15;
  [v16 setAudioSession_];
  OUTLINED_FUNCTION_33_7();
  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C6054CF0);
  v72 = v14;
  LODWORD(v80[0]) = [v14 opaqueSessionID];
  OUTLINED_FUNCTION_11_0();
  v17 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v17);

  OUTLINED_FUNCTION_109();
  MEMORY[0x1C69534E0](0xD000000000000012);
  v18 = [objc_opt_self() sharedInstance];
  LODWORD(v14) = [v18 opaqueSessionID];

  LODWORD(v80[0]) = v14;
  OUTLINED_FUNCTION_11_0();
  v19 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v19);

  MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEB00000000203A72);
  v20 = [v16 description];
  sub_1C6016940();

  v21 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x1C69534E0](v21);

  v79[0] = v81[0];
  v79[1] = v81[1];
  sub_1C5D7E534(v79);
  memcpy(v81, v79, 0xD9uLL);
  sub_1C5DBBF0C();

  [v16 setAudiovisualBackgroundPlaybackPolicy_];
  v22 = MPUIApplication();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 applicationState];

    if (!v24)
    {
      [v16 setPreventsDisplaySleepDuringVideoPlayback_];
    }
  }

  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  sub_1C6017090();

  OUTLINED_FUNCTION_7_3();
  *(swift_allocObject() + 16) = v16;
  sub_1C5DE9C0C(&qword_1ED7DCDF8, MEMORY[0x1E6969F20]);
  v27 = v16;
  v28 = sub_1C6016600();

  v29 = *(v73 + 8);
  v29(v10, v69);
  v1[37] = v28;

  v30 = [v25 defaultCenter];
  sub_1C6017090();

  OUTLINED_FUNCTION_7_3();
  *(swift_allocObject() + 16) = v27;
  v31 = v27;
  v32 = sub_1C6016600();

  v29(v10, v69);
  v1[38] = v32;

  [v31 _setRateDidChangeNotificationIncludesExtendedDiagnosticPayload_];
  v70 = v31;
  sub_1C5DDFE2C(v31, &off_1F4545B40);
  swift_retain_n();
  v74 = v72;
  OUTLINED_FUNCTION_39_8();
  sub_1C5DB5C40();

  OUTLINED_FUNCTION_27();
  v33 = v1[20];
  v34 = v1[23];
  ObjectType = swift_getObjectType();
  v80[0] = v33;
  v36 = v1[8];
  v37 = v1[9];
  v38 = *(v34 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v38(v36, v37, ObjectType, v34);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v76 + 104))(v75, *MEMORY[0x1E69D3968], v77);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v39, v40);
  OUTLINED_FUNCTION_37_7();
  LOBYTE(v32) = sub_1C6015290();
  (*(v76 + 8))(v75, v77);
  if (v32)
  {
    v41 = objc_opt_self();
    if ([v41 isSystemMusic])
    {
      if ([v41 deviceSupportsSmartTransitions])
      {
        [v70 setSupportsSpeedRamps_];
      }
    }
  }

  v42 = objc_opt_self();
  v43 = v70;
  if (![v42 supportsVideoViewController])
  {
    goto LABEL_16;
  }

  v44 = [objc_allocWithZone(MEMORY[0x1E6958608]) init];
  v45 = v1[16];
  v1[16] = v44;
  v46 = v44;

  if (!v46)
  {
    __break(1u);
    goto LABEL_24;
  }

  [v46 setPlayer_];

  v47 = v1[16];
  if (!v47)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v48 = v47;
  v49 = OUTLINED_FUNCTION_118();
  sub_1C5DE5344(v49);
  sub_1C5C64D74(0, &qword_1ED7DCE78);
  OUTLINED_FUNCTION_34_4();
  v50 = sub_1C6016AF0();

  [v45 setSpeeds_];

  sub_1C5CDAF64((v1 + 41), v80);
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v80, v80[3]);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_146();
  v54 = (v53 - v52);
  (*(v55 + 16))(v53 - v52);
  v56 = sub_1C5DE8FB0(*v54);
  __swift_destroy_boxed_opaque_existential_0(v80);
  v57 = v1[39];
  v1[39] = v56;
  v43 = v56;

  v58 = v1[16];
  if (!v58)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v59 = v58;
  [v59 addBehavior_];

LABEL_16:
  sub_1C5DE024C(v70);
  sub_1C5DDE6A8();
  sub_1C5DDEBC8(v74);

  if ([v42 supportsVideoViewController])
  {
    v60 = v1[39];
    if (v60)
    {
      *(v60 + OBJC_IVAR___PlayerViewControllerBehavior_delegate + 8) = &off_1F4545E48;
      swift_unknownObjectWeakAssign();
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_19:
  if (MSVDeviceIsAudioAccessory())
  {
    OUTLINED_FUNCTION_33_7();
    v80[0] = 0;
    v80[1] = 0xE000000000000000;
    sub_1C6017540();

    OUTLINED_FUNCTION_7_35();
    v80[0] = v61 + 13;
    v80[1] = v62;
    v63 = [v70 description];
    v64 = sub_1C6016940();
    v66 = v65;

    MEMORY[0x1C69534E0](v64, v66);

    v78[0] = v80[0];
    v78[1] = v80[1];
    sub_1C5D7E534(v78);
    memcpy(v80, v78, 0xD9uLL);
    sub_1C5DBBF0C();

    v67 = swift_allocObject();
    *(v67 + 16) = v1;
    *(v67 + 24) = v70;
    v68 = v70;

    sub_1C5DD9E28(sub_1C5DE8EF4, v67);
  }

  else
  {
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DDD110(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(v2 + 208);
  if (v5)
  {
    OUTLINED_FUNCTION_118();

    sub_1C5D6D518();
    OUTLINED_FUNCTION_126();

    OUTLINED_FUNCTION_7_3();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a2;
    v8[4] = v7;
    sub_1C5DE9230(0, &qword_1ED7DCF70);
    sub_1C5DE8E14(&qword_1ED7DCF78, &qword_1ED7DCF70);

    v5 = sub_1C6016600();
  }

  *(v4 + 136) = v5;
}

void sub_1C5DDD240()
{
  if (v0[8])
  {
    OUTLINED_FUNCTION_27();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_73();
    swift_unknownObjectRetain();
    if (v0)
    {
      OUTLINED_FUNCTION_27_19();
      sub_1C5D54614();
      swift_unknownObjectRelease();
    }

    sub_1C5DDFE2C(0, 0);
    OUTLINED_FUNCTION_27();
    v1 = v0[23];
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v3(0, 0, ObjectType, v1);
    swift_unknownObjectRelease();
    swift_retain_n();
    sub_1C5DB5C40();

    sub_1C5DDE64C();
    if (v0[37])
    {

      sub_1C6016490();
    }

    if (v0[38])
    {

      sub_1C6016490();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = OUTLINED_FUNCTION_27_19();
      sub_1C5D546B8(v4, v5, v6, v7, v8, v9);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DDD3E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  v10 = a1;
  LOBYTE(v11) = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  LOBYTE(v16[0]) = (v7 == 1) & ~a2;
  *(v16 + 1) = 256;
  __src[0] = a1;
  __src[1] = v11;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = v16[0] | 0x10000;
  v19 = 16;
  v18 = 0;

  v8 = OUTLINED_FUNCTION_147();
  sub_1C5C74C28(v8);
  swift_unknownObjectRetain();
  sub_1C5DE163C(__src);
  return sub_1C5DE9BB4(&v10, sub_1C5DE8AAC);
}

uint64_t sub_1C5DDD4B0()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v0();
}

void sub_1C5DDD4FC(void *a1, char a2, char a3)
{
  if ([objc_opt_self() supportsVideoViewController])
  {
    v7 = *(v3 + 312);
    if (v7)
    {
      swift_getObjectType();
      v8 = v7;
      sub_1C5DE8C84(a1, a2 & 1, a3 & 1, v8);
    }
  }
}

uint64_t sub_1C5DDD5B8()
{
  v1 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  (*(v3 + 104))(v0, *MEMORY[0x1E69D3968], v1);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v5, v6);
  OUTLINED_FUNCTION_120();
  v7 = sub_1C6015290();
  result = (*(v3 + 8))(v0, v1);
  if (v7)
  {
    if (*(v0 + 208))
    {

      sub_1C5D6D038(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t sub_1C5DDD6EC()
{
  sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035CF0;
  *(inited + 32) = 0x6F4D206B63617453;
  *(inited + 40) = 0xEA00000000006564;
  v2 = *(v0 + 32);
  *(inited + 48) = v2;
  *(inited + 72) = &type metadata for PlayerController.StackMode;
  *(inited + 80) = 0x65746167656C6544;
  *(inited + 88) = 0xE800000000000000;
  OUTLINED_FUNCTION_27();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 24);
  *&v12 = Strong;
  *(&v12 + 1) = v4;
  sub_1C5DBBED4(v2);
  sub_1C5DE9964(0, &qword_1EC1A95E8);
  v5 = sub_1C60169A0();
  v6 = MEMORY[0x1E69E6158];
  *(inited + 96) = v5;
  *(inited + 104) = v7;
  *(inited + 120) = v6;
  *(inited + 128) = 5067590;
  *(inited + 136) = 0xE300000000000000;
  OUTLINED_FUNCTION_27();
  v8 = [*(v0 + 160) stateDictionary];
  v9 = sub_1C6016860();

  sub_1C5DE98A0(0, &qword_1EC1A9490, MEMORY[0x1E69E5E28]);
  *(inited + 144) = v9;
  *(inited + 168) = v10;
  *(inited + 176) = 0x65726F74696E6F4DLL;
  *(inited + 184) = 0xEF73746E65764564;
  if (*(v0 + 320))
  {
    OUTLINED_FUNCTION_53_8();

    sub_1C5DEE624();
    OUTLINED_FUNCTION_126();

    v13 = v8;
    *&v12 = v6;
    sub_1C5C70758(&v12, (inited + 192));
  }

  else
  {
    *(inited + 216) = v6;
    *(inited + 192) = 0x676E6968746F4ELL;
    *(inited + 200) = 0xE700000000000000;
  }

  return sub_1C6016880();
}

uint64_t sub_1C5DDD938()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v0();
}

uint64_t sub_1C5DDD984()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v0();
}

uint64_t sub_1C5DDD9D0()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v0();
}

uint64_t sub_1C5DDDA1C()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v0();
}

uint64_t sub_1C5DDDA6C()
{
  OUTLINED_FUNCTION_4_43();
  OUTLINED_FUNCTION_59_6();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_126();
  swift_unknownObjectRelease();
  type metadata accessor for InterruptedState();
  OUTLINED_FUNCTION_120();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v1 + 240);
    v3 = *(v0 + 208);
    if (v3)
    {
      v4 = *(v3 + 24);
      v5 = v4;
    }

    else
    {
      v4 = 0;
    }

    v6 = sub_1C5DDF0FC(v7, v2, v4);
  }

  else
  {

    return 65272;
  }

  return v6;
}

BOOL sub_1C5DDDB2C(uint64_t a1, double a2)
{
  v4 = sub_1C5DDBDF8();
  result = v4 & (a1 == 0);
  if (!v4 && !a1)
  {
    sub_1C5DDD938();
    return a2 + 4.0 < v6;
  }

  return result;
}

uint64_t sub_1C5DDDB88()
{
  if (!*(v0 + 64))
  {
    return -1;
  }

  OUTLINED_FUNCTION_58_7();
  v2 = *(v1 + 104);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_10_28();
  v2(v3);
  OUTLINED_FUNCTION_73();
  swift_unknownObjectRelease();
  if (v0 >= 3)
  {
    return -1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C5DDDBFC()
{
  OUTLINED_FUNCTION_17_23();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_20();
  v0 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v0);

  v1 = OUTLINED_FUNCTION_108();
  v2 = sub_1C5C74C28(v1);
  OUTLINED_FUNCTION_13_28(v2);

  v3 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v3);
}

uint64_t sub_1C5DDDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 208))
  {

    sub_1C5D6CE58(2097168, v7, v8, v9, v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_7_3();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a3;
  v15[4] = a4;
  sub_1C5C74C28(a3);
  swift_bridgeObjectRetain_n();

  v16 = sub_1C5C74C28(sub_1C5DE9A04);
  OUTLINED_FUNCTION_13_28(v16);
}

uint64_t sub_1C5DDDDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  *v18 = a7;
  v18[1] = a1;
  v18[2] = a2;
  LOBYTE(v19) = 0;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = 0;
  v25 = 1;
  v15[0] = v18[0];
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = v19;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a6;
  v17 = 33;
  v16 = 0;
  v11[0] = v18[0];
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = v19;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a6;
  v13 = 33;
  v12 = 0;
  v14 = 0;

  v8 = OUTLINED_FUNCTION_147();
  sub_1C5C74C28(v8);
  swift_unknownObjectRetain();

  sub_1C5DE93E4(v18, &v10, sub_1C5DE92A8);
  sub_1C5DE294C(v11, v7, v7, v15);
  return sub_1C5DE9BB4(v18, sub_1C5DE92A8);
}

uint64_t sub_1C5DDDEF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a1;
  v16 = a2 & 1;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = 0x10000;
  v23 = 80;
  v22 = 0;
  v11[0] = a1;
  v11[1] = v16;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = 0x10000;
  v13 = 80;
  v12 = 0;
  v14 = 0;

  v7 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v7);

  v8 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v8);
  sub_1C5DE294C(v11, v6, v6, &v15);

  v9 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v9);
}

uint64_t sub_1C5DDDFD4()
{
  OUTLINED_FUNCTION_17_23();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_20();
  v0 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v0);

  v1 = OUTLINED_FUNCTION_108();
  v2 = sub_1C5C74C28(v1);
  OUTLINED_FUNCTION_13_28(v2);

  v3 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v3);
}

uint64_t sub_1C5DDE068()
{
  OUTLINED_FUNCTION_17_23();

  v0 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v0);

  v1 = OUTLINED_FUNCTION_108();
  v2 = sub_1C5C74C28(v1);
  OUTLINED_FUNCTION_13_28(v2);

  v3 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v3);
}

uint64_t sub_1C5DDE114(void *a1)
{
  if (!a1)
  {
    return 1869377363;
  }

  if (a1 == 1)
  {
    return 0x646572616853;
  }

  sub_1C6017540();

  v3 = [a1 description];
  v4 = sub_1C6016940();
  v6 = v5;

  MEMORY[0x1C69534E0](v4, v6);

  MEMORY[0x1C69534E0](41, 0xE100000000000000);
  return 0x53646567616E614DLL;
}

void sub_1C5DDE210(void *a1)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1C5DBBED4(a1);
  sub_1C5DBBEE4(v3);
  sub_1C5DDE750();

  sub_1C5DBBEE4(a1);
}

void sub_1C5DDE264()
{
  if (*(v0 + 64))
  {
    OUTLINED_FUNCTION_58_7();
    v2 = *(v1 + 144);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_10_28();
    v2(v3);
    swift_unknownObjectRelease();
  }
}

void sub_1C5DDE2E0(float a1)
{
  if (*(v1 + 64))
  {
    v4 = OUTLINED_FUNCTION_58_7();
    v5 = *(v2 + 120);
    swift_unknownObjectRetain();
    v6 = OUTLINED_FUNCTION_10_28();
    if (v5(v6) & 1) != 0 && a1 > 0.0 && (sub_1C5DE5150())
    {
      (*(v2 + 128))(0, v4, v2);
    }

    v7 = OUTLINED_FUNCTION_10_28();
    v8(v7);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DDE3DC()
{
  if (!*(v0 + 64))
  {
    return 0;
  }

  OUTLINED_FUNCTION_58_7();
  v2 = *(v1 + 120);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_10_28();
  v4 = v2(v3);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1C5DDE450(uint64_t result)
{
  if (*(v1 + 64))
  {
    v2 = result;
    v3 = *(v1 + 72);
    swift_unknownObjectRetain();
    if (v2 & 1) != 0 || (sub_1C5DE5150())
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 128))(v2 & 1, ObjectType, v3);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DDE4E8(uint64_t result, double a2)
{
  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    *(v2 + 104) = 0;
    v3 = 1;
    goto LABEL_9;
  }

  if (a2 >= 1.0 && a2 <= 12.0)
  {
    v3 = 0;
    *(v2 + 104) = a2;
LABEL_9:
    *(v2 + 112) = v3;
  }

  return result;
}

id *sub_1C5DDE544()
{
  v1 = v0;
  v2 = *(v0 + 56);
  if (v2)
  {
    v3 = v2;
    sub_1C6014CB0();
  }

  sub_1C5DDE64C();
  sub_1C5DDE6A8();
  sub_1C5C96DF0((v1 + 2));
  sub_1C5DBBEE4(v1[4]);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1C5DE9158((v1 + 28), qword_1ED7DF310, &type metadata for SystemObserver);

  __swift_destroy_boxed_opaque_existential_0((v1 + 41));
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1C5DDE64C()
{
  *(v0 + 208) = 0;

  if (*(v0 + 216))
  {

    sub_1C6016490();
  }

  return result;
}

uint64_t sub_1C5DDE6A8()
{
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  sub_1C5DE90D0(v2, v0 + 224);
  result = swift_endAccess();
  if (*(v0 + 288))
  {

    sub_1C6016490();
  }

  return result;
}

uint64_t sub_1C5DDE71C()
{
  sub_1C5DDE544();

  return MEMORY[0x1EEE6BDC0](v0, 392, 7);
}

void sub_1C5DDE750()
{
  __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
  sub_1C6017540();

  __src[0] = 0xD000000000000011;
  __src[1] = 0x80000001C6055390;
  v1 = v0[4];
  sub_1C5DBBED4(v1);
  v2 = sub_1C5DDE114(v1);
  MEMORY[0x1C69534E0](v2);

  sub_1C5DBBEE4(v1);
  sub_1C5D7E534(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5DBBF0C();

  v3 = v0[4];
  if (!v3)
  {
    *(*__swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]) + 32) = 0;
    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003BLL, 0x80000001C60553B0);
    v13 = v0[4];
    sub_1C5DBBED4(v13);
    v14 = sub_1C5DDE114(v13);
    MEMORY[0x1C69534E0](v14);

    sub_1C5DBBEE4(v13);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1C5D7E534(v35);
    memcpy(v36, v35, 0xD9uLL);
    sub_1C5DBBF0C();

    if (!v0[26])
    {
      return;
    }

    sub_1C5D6CE58(98304, v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    *(*__swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]) + 32) = 1;
    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003ALL, 0x80000001C60553F0);
    v4 = v0[4];
    sub_1C5DBBED4(v4);
    v5 = sub_1C5DDE114(v4);
    MEMORY[0x1C69534E0](v5);

    sub_1C5DBBEE4(v4);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1C5D7E534(v35);
    memcpy(v36, v35, 0xD9uLL);
    sub_1C5DBBF0C();

    if (!v0[26])
    {
      return;
    }

    sub_1C5D6CF44(98304, v6, v7, v8, v9, v10, v11, v12);
LABEL_7:

    return;
  }

  *(*__swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]) + 32) = 2;
  __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v22 = v3;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000003BLL, 0x80000001C60553B0);
  v23 = v0[4];
  sub_1C5DBBED4(v23);
  v24 = sub_1C5DDE114(v23);
  MEMORY[0x1C69534E0](v24);

  sub_1C5DBBEE4(v23);
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1C5D7E534(v35);
  memcpy(v36, v35, 0xD9uLL);
  sub_1C5DBBF0C();

  if (v0[26])
  {

    sub_1C5D6CE58(98304, v25, v26, v27, v28, v29, v30, v31);
  }

  sub_1C5DBBED4(v3);

  sub_1C5DBBED4(v3);

  sub_1C5DB5C40();
  sub_1C5DBBEE4(v3);

  if (v0[8])
  {
    v32 = v0[9];
    ObjectType = swift_getObjectType();
    v34 = *(v32 + 208);
    sub_1C5DBBED4(v3);
    swift_unknownObjectRetain();
    v34(v22, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  sub_1C5DDE6A8();
  sub_1C5DDEBC8(v22);
  sub_1C5DBBEE4(v3);
}

uint64_t sub_1C5DDEBC8(void *a1)
{
  v2 = v1;
  v4 = sub_1C6016630();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6016690();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(v1 + 41, v1[44]);
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1C6017540();

  v29[0] = 0xD000000000000023;
  v29[1] = 0x80000001C6054D70;
  v28[0] = [a1 opaqueSessionID];
  v10 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v10);

  sub_1C5D7E534(v29);
  memcpy(v28, v29, 0xD9uLL);
  sub_1C5DBBF0C();

  v11 = v1[19];
  sub_1C5CDAF64((v2 + 41), v27);
  v24 = 0;
  v25 = a1;
  v26 = v11;
  swift_beginAccess();
  v19 = v11;
  v12 = a1;
  sub_1C5DE90D0(&v24, (v2 + 28));
  swift_endAccess();
  swift_beginAccess();
  if (v2[29])
  {
    v13 = sub_1C5D82164();
    swift_endAccess();
    v24 = v13;
    swift_allocObject();
    swift_weakInit();
    sub_1C5DE9230(0, &qword_1ED7DCF60);
    sub_1C5DE8E14(&qword_1ED7DCF68, &qword_1ED7DCF60);
    v14 = sub_1C6016600();
  }

  else
  {
    swift_endAccess();
    v14 = 0;
  }

  v2[36] = v14;

  result = sub_1C5DE97D0((v2 + 28), &v24, qword_1ED7DF310, &type metadata for SystemObserver);
  if (v25)
  {
    if (MSVDeviceOSIsInternalInstall() && !MSVDeviceIsInternalCarry())
    {
      return sub_1C5DE9158(&v24, qword_1ED7DF310, &type metadata for SystemObserver);
    }

    else
    {
      IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
      result = sub_1C5DE9158(&v24, qword_1ED7DF310, &type metadata for SystemObserver);
      if (IsScreenProbablyBeingRecorded)
      {
        v27[1] = sub_1C5DE91C0;
        v27[2] = v2;
        v24 = MEMORY[0x1E69E9820];
        v25 = 1107296256;
        v26 = sub_1C5DBC798;
        v27[0] = &block_descriptor_101;
        v17 = _Block_copy(&v24);

        sub_1C6016670();
        v23 = MEMORY[0x1E69E7CC0];
        sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
        v18 = MEMORY[0x1E69E7F60];
        sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v18);
        sub_1C60173B0();
        MEMORY[0x1C6953AC0](0, v9, v6, v17);
        _Block_release(v17);
        (*(v22 + 8))(v6, v4);
        (*(v20 + 8))(v9, v21);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DDF0FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  type metadata accessor for TransitionState();
  if (swift_dynamicCastClass())
  {
    __break(1u);
    goto LABEL_90;
  }

  type metadata accessor for ScanningState();
  if (swift_dynamicCastClass())
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  type metadata accessor for SeekingState();
  if (swift_dynamicCastClass())
  {
LABEL_91:
    __break(1u);
LABEL_92:
    sub_1C5CDAF64(v3 + 328, v50);
    __swift_project_boxed_opaque_existential_0(v50, v50[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v48 = __dst[0];
    v49 = __dst[1];
    v33 = MEMORY[0x1C69534E0](0xD000000000000046, 0x80000001C6055490);
    v34 = (*(*a1 + 144))(v33);
    MEMORY[0x1C69534E0](v34);

    v35 = MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C60554E0);
    v36 = (*(*a2 + 144))(v35);
    MEMORY[0x1C69534E0](v36);

    MEMORY[0x1C69534E0](0x616C705B202D205DLL, 0xED0000203A726579);
    if (a3)
    {
      v38 = sub_1C5C64D74(0, &qword_1ED7DCCD8);
      v37 = a3;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      __dst[1] = 0;
      __dst[2] = 0;
    }

    __dst[0] = v37;
    __dst[3] = v38;
    v39 = a3;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
    v40 = MEMORY[0x1E69E7CA0];
    sub_1C5DE9158(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    MEMORY[0x1C69534E0](0x65746172202D2029, 0xEA0000000000203ALL);
    if (a3)
    {
      [v39 rate];
      LODWORD(v47[0]) = v42;
      v41 = MEMORY[0x1E69E6448];
    }

    else
    {
      v41 = 0;
      memset(v47, 0, 24);
    }

    v47[3] = v41;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v47, 7104878, 0xE300000000000000);
    sub_1C5DE9158(v47, &qword_1ED7E0200, v40 + 8);
    MEMORY[0x1C69534E0](0x63617453202D2029, 0xEA00000000003A6BLL);
    sub_1C5DDD6EC();
    v43 = sub_1C6016870();
    v45 = v44;

    MEMORY[0x1C69534E0](v43, v45);

    __src[0] = v48;
    __src[1] = v49;
    sub_1C5D45B74(__src);
    memcpy(__dst, __src, 0xD9uLL);

    sub_1C5DBBF0C();

    result = __swift_destroy_boxed_opaque_existential_0(v50);
    __break(1u);
    return result;
  }

  type metadata accessor for IdleState();
  if (swift_dynamicCastClass())
  {
    return 0x8000;
  }

  type metadata accessor for PausedAtQueueEndState();
  if (swift_dynamicCastClass())
  {
    return 0x8000;
  }

  type metadata accessor for InitialPreLoadingState();
  if (swift_dynamicCastClass())
  {
    return *(swift_dynamicCastClassUnconditional() + 52) != 0.0;
  }

  type metadata accessor for InitialLoadingState();
  if (swift_dynamicCastClass())
  {
    return *(swift_dynamicCastClassUnconditional() + 64);
  }

  type metadata accessor for InitiatingPlaybackState();
  if (swift_dynamicCastClass())
  {
    return 32769;
  }

  type metadata accessor for PlayingState();
  if (swift_dynamicCastClass())
  {
    if (!a3)
    {
      return 32769;
    }

    v9 = a3;
    if ([v9 timeControlStatus] == 1)
    {
      if ([v9 timeControlStatus] != 1)
      {
        goto LABEL_32;
      }

      v10 = [v9 reasonForWaitingToPlay];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1C6016940();
        v14 = v13;
        if (v12 == sub_1C6016940() && v14 == v15)
        {
        }

        else
        {
          v17 = sub_1C6017860();

          if ((v17 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

LABEL_32:
        if ([v9 timeControlStatus] != 1)
        {
          goto LABEL_39;
        }

        v18 = [v9 reasonForWaitingToPlay];
        if (!v18)
        {
          goto LABEL_39;
        }

        v19 = v18;
        v20 = sub_1C6016940();
        v22 = v21;
        if (v20 == sub_1C6016940() && v22 == v23)
        {
        }

        else
        {
          v25 = sub_1C6017860();

          if ((v25 & 1) == 0)
          {
LABEL_39:
            __swift_project_boxed_opaque_existential_0((v4 + 328), *(v4 + 352));
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;
            sub_1C6017540();
            MEMORY[0x1C69534E0](0xD000000000000043, 0x80000001C6055500);
            sub_1C5DDD6EC();
            v26 = sub_1C6016870();
            v28 = v27;

            MEMORY[0x1C69534E0](v26, v28);

            __src[0] = 0;
            __src[1] = 0xE000000000000000;
            sub_1C5D45B74(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();

            return 32769;
          }
        }

        return 257;
      }
    }

LABEL_24:

    return 32769;
  }

  type metadata accessor for InterruptedState();
  if (swift_dynamicCastClass())
  {
    return 32773;
  }

  type metadata accessor for PausedState();
  if (swift_dynamicCastClass())
  {
    return 32770;
  }

  if (swift_dynamicCastClass())
  {
    return 32771;
  }

  if (swift_dynamicCastClass())
  {
    return 32772;
  }

  type metadata accessor for JumpToTimeState();
  if (swift_dynamicCastClass())
  {
    if (swift_dynamicCastClass())
    {
      return 32769;
    }

    if (swift_dynamicCastClass())
    {
      return 32773;
    }

    if (swift_dynamicCastClass())
    {
      return 32770;
    }

    if (swift_dynamicCastClass())
    {
      return *(swift_dynamicCastClassUnconditional() + 64);
    }
  }

  type metadata accessor for StallingState();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
    if (swift_dynamicCastClass())
    {
      return 32773;
    }

    if (swift_dynamicCastClass())
    {
      return 32770;
    }

LABEL_59:
    type metadata accessor for ErrorResolutionState();
    if (swift_dynamicCastClass())
    {
      if (swift_dynamicCastClass())
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }

      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    v32 = swift_dynamicCastClass();
    if (v32)
    {
      type metadata accessor for NaturalTransitionState();
      if (swift_dynamicCastClass())
      {
        return 32769;
      }

      type metadata accessor for OverlappedTransitionState();
      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    type metadata accessor for NaturalTransitionState();
    if (swift_dynamicCastClass() && swift_dynamicCastClass())
    {
      return 32770;
    }

    type metadata accessor for FailedTransitionState();
    if (swift_dynamicCastClass())
    {
      if (v32)
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }

      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    type metadata accessor for SkippingTransitionState();
    if (swift_dynamicCastClass())
    {
      if (v32)
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }
    }

    type metadata accessor for ChangingQueueState();
    if (swift_dynamicCastClass())
    {
      if (v32)
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }

      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    type metadata accessor for WaitingForItemTransitionState();
    if (swift_dynamicCastClass())
    {
      return 16388;
    }

    goto LABEL_92;
  }

  if (a3 && (v29 = [a3 reasonForWaitingToPlay]) != 0)
  {
    v30 = v29;
    v31 = sub_1C5D62CAC();
  }

  else
  {
    v31 = 3;
  }

  return v31 | 0x4000u;
}

uint64_t sub_1C5DDFAF8(uint64_t result)
{
  v2 = v1;
  v3 = v1[8];
  if (v3)
  {
    if (v3 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v4 = v1[7];
  if (v4)
  {
    v5 = v4;
    sub_1C6014CB0();

    v3 = v2[8];
  }

  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      swift_unknownObjectRetain();
      v6 = sub_1C6014DE0();
      swift_unknownObjectRelease();

      v7 = v2[7];
      v2[7] = v6;
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v2[8])
    {
      v9 = v2[9];
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 176);
      swift_unknownObjectRetain();
      v12 = v11(ObjectType, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
    }

    [*(v8 + 56) updatePlayerPlaybackCoordinator_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C5DDFCB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playbackCoordinator];
  *a2 = result;
  return result;
}

void sub_1C5DDFCEC()
{
  sub_1C5DE8E78();
  sub_1C6014DA0();
  sub_1C6014D90();
  v0 = v4;
  if (v5)
  {
    if (v4)
    {
      sub_1C5C64D74(0, &qword_1EC1AB9C8);
      v1 = sub_1C60172D0();

      if (v1)
      {
        return;
      }

      goto LABEL_9;
    }

    v0 = v5;
  }

  else if (!v4)
  {
    return;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1C6014D90();
      [*(Strong + 56) updatePlayerPlaybackCoordinator_];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C5DDFE2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  swift_unknownObjectRetain();
  sub_1C5DDFAF8(v3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DDFE88(uint64_t result, void (*a2)(void))
{
  if (((*(result + 64) >> 58) & 0x3C | (*(result + 64) >> 1) & 3) == 0x15)
  {
    a2();
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 136) = 0;
    }
  }

  return result;
}

void sub_1C5DDFF0C()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v2 = sub_1C6016FC0();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  sub_1C6016F90();
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v10 = sub_1C6016690();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_146();
  v11 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_146();
  v17 = v16 - v15;
  if (v1 == 1 || ((*(v13 + 104))(v17, *MEMORY[0x1E69D3958], v11), OUTLINED_FUNCTION_0_70(), sub_1C5DE9C0C(v18, v19), v20 = sub_1C6015290(), (*(v13 + 8))(v17, v11), (v20 & 1) != 0))
  {
    sub_1C5C64D74(0, &qword_1ED7DCE50);
    sub_1C6016680();
    sub_1C5DE9C0C(&qword_1EC1A93A0, MEMORY[0x1E69E8030]);
    v21 = v2;
    v22 = MEMORY[0x1E69E8030];
    sub_1C5DE91C8(0, &unk_1EC1A9448, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1C5DE9C50(qword_1EC1A9430, &unk_1EC1A9448, v22);
    sub_1C60173B0();
    (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v21);
    sub_1C6016FF0();
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DE024C(void *a1)
{
  v2 = v1;
  v4 = v2[18];
  v5 = v2[19];
  sub_1C5CDAF64((v2 + 41), v24);
  type metadata accessor for PlayerObserver();
  swift_allocObject();
  v6 = v5;
  v2[26] = sub_1C5D6CCDC(a1, v4, v5, v24, 10.0);

  v7 = v2[26];
  if (v2[4] == 1)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    sub_1C5D6CF44(98304, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    sub_1C5D6CE58(98304, v15, v16, v17, v18, v19, v20, v21);
  }

  v7 = v2[26];
  if (v7)
  {

    v22 = sub_1C5D6D518();

    v24[0] = v22;
    swift_allocObject();
    swift_weakInit();
    sub_1C5DE9230(0, &qword_1ED7DCF70);
    sub_1C5DE8E14(&qword_1ED7DCF78, &qword_1ED7DCF70);
    v7 = sub_1C6016600();
  }

LABEL_8:
  v2[27] = v7;
}

uint64_t sub_1C5DE03EC(const void *a1)
{
  v2 = sub_1C6015060();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v66, a1, sizeof(v66));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = v66[0];
    v9 = (v66[8] >> 58) & 0x3C | (LODWORD(v66[8]) >> 1) & 3;
    v10 = v66[2];
    v11 = v66[3];
    v12 = v66[4];
    switch(v9)
    {
      case 20:
        if (*(result + 32) != 1)
        {
          goto LABEL_40;
        }

        if ((v66[3] - 1) <= 1)
        {
          goto LABEL_41;
        }

        v57 = LODWORD(v66[1]);

        sub_1C6015050();
        v13 = sub_1C6015030();
        v15 = v14;
        (*(v3 + 8))(v5, v2);
        v16 = MEMORY[0x1E69E6158];
        v17 = sub_1C6016880();
        if (v11)
        {

          sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1C60311E0;
          *(v18 + 32) = 0x7069636974726150;
          *(v18 + 40) = 0xEB00000000746E61;
          *(v18 + 72) = v16;
          *(v18 + 48) = v10;
          *(v18 + 56) = v11;
          v17 = sub_1C6016880();
        }

        type metadata accessor for CoordinatorUserAction();
        v19 = swift_allocObject();
        *(v19 + 56) = xmmword_1C6042FE0;
        *(v19 + 72) = 0x80000001C6054DA0;
        *(v19 + 16) = v13;
        *(v19 + 24) = v15;
        *(v19 + 40) = v12;
        *(v19 + 48) = v17;
        *(v19 + 32) = 0;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();

            if (Strong)
            {

              [Strong userActionDidBegin_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v51 = swift_allocObject();
        *(v51 + 16) = v7;
        *(v51 + 24) = v19;
        LODWORD(v73) = v57;
        BYTE8(v74) = 0;
        *(&v73 + 1) = 0;
        *&v74 = 0;
        v75 = v13;
        v76 = v15;
        v77 = sub_1C5DE9F7C;
        v78 = v51;
        v79 = 1;
        v80 = 0;
        v67 = v73;
        v68 = __PAIR128__(*(&v74 + 1), 0);
        v69 = v13;
        v70 = v15;
        v71 = sub_1C5DE9F7C;
        *&v72 = v51;
        BYTE10(v72) = 32;
        WORD4(v72) = 1;
        v81 = v73;
        v82 = __PAIR128__(*(&v74 + 1), 0);
        v83 = v13;
        v84 = v15;
        v85 = sub_1C5DE9F7C;
        v86 = v51;
        v88 = 32;
        v87 = 1;
        v89 = 0;
        swift_retain_n();

        sub_1C5DE93E4(&v73, v58, sub_1C5DE92A8);
        sub_1C5DE294C(&v81, v7, v7, &v67);
        sub_1C5DE12E4(v66);

        v50 = sub_1C5DE92A8;
        goto LABEL_61;
      case 21:
        if (v66[5] != 1)
        {
          goto LABEL_40;
        }

        v57 = LODWORD(v66[1]);
        v40 = v66[6];
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1C5C8A688();
        swift_unknownObjectRelease();
        type metadata accessor for PausedState();
        v41 = swift_dynamicCastClass();
        if (v41 && (*(v41 + 192) >> 1 == 0xFFFFFFFFLL ? (v42 = (*(v41 + 200) & 0xF000000000000007) == 0) : (v42 = 0), v42))
        {
          sub_1C6015050();
          v43 = sub_1C6015030();
          v45 = v44;
          (*(v3 + 8))(v5, v2);
          v46 = sub_1C6016880();
          type metadata accessor for PlayerSourcedUserAction();
          v47 = swift_allocObject();
          *(v47 + 56) = xmmword_1C6042FF0;
          *(v47 + 72) = 0xE800000000000000;
          v56 = v43;
          *(v47 + 16) = v43;
          *(v47 + 24) = v45;
          *(v47 + 40) = v40;
          *(v47 + 48) = v46;
          *(v47 + 32) = 0;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_beginAccess();
              v48 = swift_unknownObjectWeakLoadStrong();

              if (v48)
              {

                [v48 userActionDidBegin_];

                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v54 = swift_allocObject();
          *(v54 + 16) = v7;
          *(v54 + 24) = v47;
          v55 = v57;
          LODWORD(v58[0]) = v57;
          LOBYTE(v59) = 0;
          v58[1] = 0;
          v58[2] = 0;
          v60 = v56;
          v61 = v45;
          v62 = sub_1C5DE9F7C;
          v63 = v54;
          v64 = 1;
          v65 = 0;
          v73 = v58[0];
          v74 = __PAIR128__(v59, 0);
          v75 = v56;
          v76 = v45;
          v77 = sub_1C5DE9F7C;
          v78 = v54;
          v80 = 32;
          v79 = 1;
          v81 = v58[0];
          v82 = __PAIR128__(v59, 0);
          v83 = v56;
          v84 = v45;
          v85 = sub_1C5DE9F7C;
          v86 = v54;
          v88 = 32;
          v87 = 1;
          v89 = 0;
          swift_retain_n();

          sub_1C5DE93E4(v58, &v67, sub_1C5DE92A8);
          sub_1C5DE294C(&v81, v7, v7, &v73);
          *&v67 = v8;
          DWORD2(v67) = v55;
          BYTE12(v67) = 0;
          v68 = xmmword_1C60311B0;
          v69 = v40;
          v72 = xmmword_1C603A0A0;

          swift_unknownObjectRetain();
          sub_1C5DE12E4(&v67);

          swift_unknownObjectRelease();
          sub_1C5DE9BB4(v58, sub_1C5DE92A8);

LABEL_14:
        }

        else
        {
        }

LABEL_40:
        sub_1C5DE12E4(v66);
        goto LABEL_41;
      case 22:
        if (*(result + 32) != 1 || (v66[2] - 1) <= 1)
        {
          goto LABEL_40;
        }

        v22 = LODWORD(v66[1]);
        v23 = HIDWORD(v66[1]);

        sub_1C6015050();
        v24 = sub_1C6015030();
        v57 = v25;
        (*(v3 + 8))(v5, v2);
        v26 = MEMORY[0x1E69E6158];
        v27 = sub_1C6016880();
        if (v10)
        {

          sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1C60311E0;
          *(v28 + 32) = 0x7069636974726150;
          *(v28 + 40) = 0xEB00000000746E61;
          *(v28 + 72) = v26;
          *(v28 + 48) = v22 | (v23 << 32);
          *(v28 + 56) = v10;
          v27 = sub_1C6016880();
        }

        type metadata accessor for CoordinatorUserAction();
        v29 = swift_allocObject();
        *(v29 + 56) = xmmword_1C6042FE0;
        *(v29 + 72) = 0x80000001C6054DA0;
        v30 = v57;
        *(v29 + 16) = v24;
        *(v29 + 24) = v30;
        *(v29 + 40) = v12;
        *(v29 + 48) = v27;
        *(v29 + 32) = 1;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            v31 = swift_unknownObjectWeakLoadStrong();

            if (v31)
            {

              [v31 userActionDidBegin_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v49 = swift_allocObject();
        *(v49 + 16) = v7;
        *(v49 + 24) = v29;
        v73 = 0u;
        v74 = 0u;
        v75 = v24;
        v76 = v30;
        v77 = sub_1C5DE93C8;
        v78 = v49;
        v79 = 1;
        v80 = 0;
        v67 = 0u;
        v68 = 0u;
        v69 = v24;
        v70 = v30;
        v71 = sub_1C5DE93C8;
        *&v72 = v49;
        BYTE10(v72) = 48;
        WORD4(v72) = 1;
        v81 = 0u;
        v82 = 0u;
        v83 = v24;
        v84 = v30;
        v85 = sub_1C5DE93C8;
        v86 = v49;
        v88 = 48;
        v87 = 1;
        v89 = 0;
        swift_retain_n();

        sub_1C5DE93E4(&v73, v58, sub_1C5DE9440);
        sub_1C5DE294C(&v81, v7, v7, &v67);
        sub_1C5DE12E4(v66);

        v50 = sub_1C5DE9440;
LABEL_61:
        sub_1C5DE9BB4(&v73, v50);

      case 23:
        goto LABEL_40;
      case 24:
        if (*(result + 32) != 1 || (v66[3] - 1) < 2)
        {
          goto LABEL_40;
        }

        sub_1C6015050();
        v32 = sub_1C6015030();
        v57 = v33;
        (*(v3 + 8))(v5, v2);
        v34 = MEMORY[0x1E69E6158];
        v35 = sub_1C6016880();
        if (v11)
        {

          sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1C60311E0;
          *(v36 + 32) = 0x7069636974726150;
          *(v36 + 40) = 0xEB00000000746E61;
          *(v36 + 72) = v34;
          *(v36 + 48) = v10;
          *(v36 + 56) = v11;
          v35 = sub_1C6016880();
        }

        type metadata accessor for CoordinatorUserAction();
        v37 = swift_allocObject();
        *(v37 + 56) = xmmword_1C6042FE0;
        *(v37 + 72) = 0x80000001C6054DA0;
        v38 = v57;
        *(v37 + 16) = v32;
        *(v37 + 24) = v38;
        *(v37 + 40) = v12;
        *(v37 + 48) = v35;
        *(v37 + 32) = 6;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            v39 = swift_unknownObjectWeakLoadStrong();

            if (v39)
            {

              [v39 userActionDidBegin_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1C5DE12E4(v66);
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            v52 = swift_unknownObjectWeakLoadStrong();
            if (v52)
            {
              v53 = v52;

              [v53 userActionDidEnd:v37 error:0];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          result = swift_unknownObjectRelease();
        }

        else
        {

LABEL_41:
        }

        break;
      default:
        if (v9 != 9)
        {
          goto LABEL_40;
        }

        swift_getObjectType();
        v7[47] = sub_1C5DEA0B4();
        v7[48] = v21;
        goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1C5DE12E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 64);
  v5 = sub_1C60167E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v9;
  v38 = v39[0];
  v10 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v10;
  v40 = v4;
  v41 = 1;
  swift_unknownObjectRetain();
  sub_1C5C8A868();
  swift_unknownObjectRelease();
  if (*(v1 + 320))
  {

    v11 = sub_1C5DDBEF8();
    sub_1C5C8B6FC(v39, 0, v11);
  }

  v12 = (v4 >> 58) & 0x3C | (v4 >> 1) & 3;
  if (v12 == 14)
  {
    swift_unknownObjectRetain();
LABEL_9:
    v15 = swift_unknownObjectRetain();
    sub_1C5DE2E8C(v15);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (v12 == 34)
  {
    swift_unknownObjectRetain();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5D54868();
      v14 = v13;
      swift_unknownObjectRelease();
      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
  (*(v6 + 104))(v8, *MEMORY[0x1E69D3968], v5);
  sub_1C5DE9C0C(&qword_1ED7DCF48, MEMORY[0x1E69D3970]);
  v16 = sub_1C6015290();
  (*(v6 + 8))(v8, v5);
  if ((v16 & 1) != 0 && ((*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3) == 0x11)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5D54868();
      v18 = v17;
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        if (*(v2 + 208))
        {

          sub_1C5D6D140(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5D549A0();
      v28 = v27;
      swift_unknownObjectRelease();
      if ((v28 & 1) == 0)
      {
        if (*(v2 + 208))
        {

          sub_1C5D6D248(v29, v30, v31, v32, v33, v34, v35, v36);
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DE163C(void *__src)
{
  memcpy(__dst, __src, 0x43uLL);
  __dst[72] = 0;

  sub_1C5D95E74(__src, v4);
  return sub_1C5DE294C(__dst, v1, v1, __src);
}

uint64_t sub_1C5DE16A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_27();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_27();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        if (a3)
        {
          a3 = sub_1C6014D30();
        }

        [v9 userActionDidEnd:a5 error:a3];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE1790(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7[0] = v1;
    v7[1] = v2;
    v7[2] = v3;
    v7[3] = v4;
    v8 = 3;

    sub_1C5C8CF74(v1, v2, v3, v4);
    sub_1C5C8B948(v7, v6, v6, v1, v2, v3, v4);
  }

  return result;
}

uint64_t sub_1C5DE1844(uint64_t a1)
{
  sub_1C6014F90();
  v3 = v2;
  type metadata accessor for EventTime();
  swift_allocObject();
  v5 = 1;
  v6 = sub_1C5C8A6E0(0, 0, 0, 1, v3, v3);
  v7 = xmmword_1C6043000;
  v8 = 3;

  sub_1C5C8B948(&v5, a1, a1, 1, v6, 0, 0x8000000000000000);
}

uint64_t sub_1C5DE191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 64))
    {
      v10 = *(Strong + 72);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 8))(ObjectType, v10);
      swift_unknownObjectRelease();
      if (v12)
      {
        v13 = sub_1C5D62DEC();
        v22[0] = *(v13 + 16);
        v22[1] = v12;
        v23 = xmmword_1C60311B0;
        v24 = v13;
        v25 = xmmword_1C603A080;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          sub_1C5DE12E4(v22);
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 208))
    {

      sub_1C5D6CF44(2097168, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a5)
  {
    return a5(a1, a2, a3);
  }

  return result;
}

id sub_1C5DE1AEC(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  if (((*(a1 + 66) << 16) & 0xF00000) != 0x300000)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  swift_unknownObjectRetain();
  sub_1C5D869C0(v2);

  sub_1C5C74C28(v3);

  sub_1C5C74C18(v3);
  swift_unknownObjectRelease();
  if (v2 < 0xC && ((0xFFDu >> v2) & 1) != 0)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E69873C8];
  sub_1C5D5D584(v2);
  return v4;
}

uint64_t sub_1C5DE1BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(v4 + 32) != 1 || a4 >> 61 != 0)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E69873B8];
  v7 = *MEMORY[0x1E69873B8];
  return v6;
}

BOOL sub_1C5DE1C10(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 66);
  result = 1;
  switch(v3 >> 4)
  {
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      return 0;
    case 4:
      result = *a1 != 0.0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C5DE1C64(uint64_t a1)
{
  if (v1[4] == 1)
  {
    v2 = v1;
    __swift_project_boxed_opaque_existential_0(v1 + 41, v1[44]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000025, 0x80000001C6054BB0);
    type metadata accessor for Reason();
    sub_1C6017650();
    MEMORY[0x1C69534E0](774778461, 0xE400000000000000);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1C5D7E534(v12);
    memcpy(__dst, v12, 0xD9uLL);
    sub_1C5DBBF0C();

    v4 = v1[15];
    if (v4)
    {
      [v4 end];
      v5 = v1[15];
      v1[15] = 0;
    }

    v6 = v1[8];
    if (v6)
    {
      v7 = v2[9];
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 176);
      swift_unknownObjectRetain();
      v10 = v9(ObjectType, v7);
      swift_unknownObjectRelease();
      v6 = [v10 beginSuspensionForReason_];
    }

    v11 = v2[15];
    v2[15] = v6;
  }
}

void sub_1C5DE1E0C()
{
  if (v0[4] == 1 && v0[15])
  {
    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v3[0] = 0xD000000000000025;
    v3[1] = 0x80000001C6054BE0;
    sub_1C5D7E534(v3);
    memcpy(__dst, v3, sizeof(__dst));
    sub_1C5DBBF0C();
    v1 = v0[15];
    if (v1)
    {
      [v1 end];
      v2 = v0[15];
    }

    else
    {
      v2 = 0;
    }

    v0[15] = 0;
  }
}

void sub_1C5DE1EC8(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v68 = *(a2 + 32);
  v69 = *(a2 + 40);
  v7 = *(a2 + 48);
  v65 = *(a2 + 16);
  v66 = *(a2 + 56);
  v8 = *(a2 + 64) | (*(a2 + 66) << 16);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  v67 = v4;
  if ((v8 & 0xF00000) == 0x100000)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();

    sub_1C5C74C28(v68);
    if (Strong)
    {
      v10 = sub_1C5D543A4(v4, v65, v6);
      v12 = v11;
      v14 = v13;
      swift_unknownObjectRelease();
      if ((v10 & 1) == 0)
      {
        if ((v10 & 0x100) != 0)
        {
          __swift_project_boxed_opaque_existential_0(a1 + 41, a1[44]);
          sub_1C6017540();

          __dst[0] = 0xD000000000000017;
          __dst[1] = 0x80000001C6054B90;
          MEMORY[0x1C69534E0](v12, v14);
          MEMORY[0x1C69534E0](93, 0xE100000000000000);
          __src[0] = 0xD000000000000017;
          __src[1] = 0x80000001C6054B90;
          sub_1C5D7E534(__src);
          memcpy(__dst, __src, 0xD9uLL);
          sub_1C5DBBF0C();

          v54 = sub_1C5DBA4F0(v65, v6, 0, v12, v14);

          sub_1C5D61B3C(&v76);
          v55 = v77;
          v73 = v76;
          sub_1C5CC583C(&v73);
          if (v55)
          {
            sub_1C5D61B3C(&v86);
            v56 = v86;
            v57 = v87;
            sub_1C5C74C18(v88);
            v55(v56, v57, v54);
            sub_1C5C74C18(v55);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          sub_1C5C74C18(v68);
        }

        else
        {
          __swift_project_boxed_opaque_existential_0(a1 + 41, a1[44]);
          sub_1C6017540();

          __dst[0] = 0xD000000000000015;
          __dst[1] = 0x80000001C6054B70;
          MEMORY[0x1C69534E0](v12, v14);

          MEMORY[0x1C69534E0](93, 0xE100000000000000);
          __src[0] = 0xD000000000000015;
          __src[1] = 0x80000001C6054B70;
          sub_1C5D7E534(__src);
          memcpy(__dst, __src, 0xD9uLL);
          sub_1C5DBBF0C();

          swift_unknownObjectRelease();
          sub_1C5C74C18(v68);
        }

        return;
      }
    }

    sub_1C5C74C18(v68);
    swift_unknownObjectRelease();
  }

  v15 = sub_1C5DE1AEC(a2);
  if (v15)
  {
    v16 = v15;
    sub_1C5DE1C64(v15);
  }

  HIDWORD(v64) = HIWORD(v8);
  if (((*(a2 + 66) << 16) & 0xF00000) == 0x300000)
  {
    v17 = v5;
    v18 = *(a2 + 24);
    v19 = *(a2 + 48);
    v61 = v17;
    swift_unknownObjectRetain();
    sub_1C5D869C0(v6);

    v62 = v7;
    sub_1C5C74C28(v7);

    sub_1C5C74C18(v19);
    swift_unknownObjectRelease();
    v63 = v18;
    __swift_project_boxed_opaque_existential_0(a1 + 41, a1[44]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    if (v18 >= 0xC)
    {
      v20 = "quired [Pausing in ";
      v21 = 0xD000000000000040;
    }

    else
    {
      v20 = " in the current player state ";
      v21 = 0xD000000000000033;
    }

    MEMORY[0x1C69534E0](v21, v20 | 0x8000000000000000);
    v22 = a1[4];
    sub_1C5DBBED4(v22);
    v23 = sub_1C5DDE114(v22);
    MEMORY[0x1C69534E0](v23);

    sub_1C5DBBEE4(v22);
    MEMORY[0x1C69534E0](0x63616279616C7020, 0xEA00000000005D6BLL);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5D7E534(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    v5 = v61;
    if (a1[40])
    {
      __src[0] = v67;
      __src[1] = v61;
      __src[2] = v65;
      __src[3] = v6;
      __src[4] = v68;
      __src[5] = v69;
      __src[6] = v7;
      __src[7] = v66;
      LOWORD(__src[8]) = v8;
      BYTE2(__src[8]) = BYTE2(v8);
      LOBYTE(__src[9]) = 0;
      v24 = a1[4];

      sub_1C5DBBED4(v24);
      v25 = sub_1C5DDBEF8();
      sub_1C5C8B6FC(__src, v24, v25);
      sub_1C5DBBEE4(v24);
    }

    v26 = sub_1C5DDBEF8();
    if ((v26 & 0xC000) != 0 || (v26 & 1) == 0)
    {
      sub_1C5D5D584(v63);
    }

    else
    {

      sub_1C5DB5628();
      sub_1C5D5D584(v63);
    }
  }

  if (a1[40])
  {

    sub_1C5DEDBE8(v27, v28, v29, v30, v31, v32, v33, v34, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    v36 = v35;

    if (v36)
    {
      if (a1[40])
      {
        v86 = v67;
        v87 = v5;
        v88 = v65;
        v89 = v6;
        v90 = v68;
        v91 = v69;
        v92 = v7;
        v93 = v66;
        v94 = v8;
        v95 = BYTE4(v64);
        v96 = 0;
        v37 = a1[4];

        sub_1C5DBBED4(v37);
        v38 = sub_1C5DDBEF8();
        sub_1C5C8B6FC(&v86, v37, v38);
        sub_1C5DBBEE4(v37);
      }
    }
  }

  swift_beginAccess();
  v39 = a1[20];
  swift_unknownObjectRetain();
  v40 = sub_1C5C8A688();
  v41 = (*(*v40 + 80))(a2, v39);
  swift_unknownObjectRelease();

  if (v41)
  {
    *&v76 = v67;
    *(&v76 + 1) = v5;
    v77 = v65;
    v78 = v6;
    v79 = v68;
    v80 = v69;
    v81 = v7;
    v82 = v66;
    v83 = v8;
    v84 = BYTE4(v64);
    v85 = 0;
    swift_unknownObjectRetain();
    sub_1C5C8A868();
    v43 = v42;
    swift_unknownObjectRelease();
    if ((v43 & 1) == 0)
    {
      sub_1C5D61B3C(&v71);
      v44 = v72;
      v75 = v71;
      sub_1C5CC583C(&v75);
      if (v44)
      {
        sub_1C5D61B3C(&v73);
        v45 = v73;
        sub_1C5C74C18(v74);
        v44(v45, *(&v45 + 1), 0);
        sub_1C5C74C18(v44);
      }
    }
  }

  else
  {
    if (a1[40])
    {

      sub_1C5DEDDC0(a2);
    }

    *&v76 = v67;
    *(&v76 + 1) = v5;
    v77 = v65;
    v78 = v6;
    v79 = v68;
    v80 = v69;
    v81 = v7;
    v82 = v66;
    v83 = v8;
    v84 = BYTE4(v64);
    v85 = 0;
    swift_unknownObjectRetain();
    sub_1C5C8A868();
    v47 = v46;
    swift_unknownObjectRelease();
    if ((v47 & 1) == 0)
    {
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *&v71 = 0;
      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6054AA0);
      v48 = sub_1C5D61CD4();
      MEMORY[0x1C69534E0](v48);

      MEMORY[0x1C69534E0](0xD00000000000001DLL, 0x80000001C6054AC0);
      swift_unknownObjectRetain();
      v49 = sub_1C5C8A688();
      v50 = swift_unknownObjectRelease();
      v51 = (*(*v49 + 144))(v50);
      MEMORY[0x1C69534E0](v51);

      sub_1C6016880();
      _s3__C4CodeOMa_6();
      sub_1C5DE9C0C(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
      v52 = sub_1C6017280();

      if (a1[40])
      {

        v53 = v52;
        sub_1C5DEE158(a2, v53);
      }

      else
      {
      }
    }
  }

  if (sub_1C5DE1C10(a2))
  {
    sub_1C5DE1E0C();
  }
}

uint64_t sub_1C5DE294C(char *a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  memcpy((v8 + 24), a4, 0x43uLL);
  v9 = *(a2 + 368);

  if (!v9)
  {
    sub_1C5D95E74(a4, v13);
    goto LABEL_7;
  }

  sub_1C5D95E74(a4, v13);
  v10 = sub_1C5DE38E8(a1);
  if (!v10)
  {
LABEL_7:
    sub_1C5DE1EC8(a3, a4);
    goto LABEL_8;
  }

  v11 = v10;
  if (!sub_1C5DE3E80(a1))
  {
    sub_1C5C74C18(v11);
    goto LABEL_7;
  }

  v11();
  swift_unknownObjectRelease();
  sub_1C5C74C18(v11);
LABEL_8:

  return sub_1C5DE8B2C(a4);
}

void sub_1C5DE2A78(unsigned __int8 *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_59_6();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_126();
  swift_unknownObjectRelease();
  v4 = __src[66] >> 4;
  if (v4 != 2 && (v4 != 1 || (__src[8] & 1) == 0))
  {
LABEL_9:
    OUTLINED_FUNCTION_8_33();
    sub_1C6017540();
    OUTLINED_FUNCTION_3_44();
    sub_1C5D61CD4();
    OUTLINED_FUNCTION_45_7();

    v7 = "rdinated playback ...";
    v6 = 0xD000000000000011;
    goto LABEL_10;
  }

  type metadata accessor for InitialPreLoadingState();
  OUTLINED_FUNCTION_120();
  if (swift_dynamicCastClass())
  {
LABEL_5:
    OUTLINED_FUNCTION_8_33();
    sub_1C6017540();
    OUTLINED_FUNCTION_3_44();
    sub_1C5D61CD4();
    OUTLINED_FUNCTION_45_7();

    OUTLINED_FUNCTION_109();
    v6 = 0xD00000000000002CLL;
    goto LABEL_11;
  }

  type metadata accessor for InitialLoadingState();
  OUTLINED_FUNCTION_120();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for InitiatingPlaybackState();
    OUTLINED_FUNCTION_120();
    if (swift_dynamicCastClass())
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_33();
  sub_1C6017540();
  OUTLINED_FUNCTION_3_44();
  sub_1C5D61CD4();
  OUTLINED_FUNCTION_45_7();

  v7 = "ing rate change to 1] event=";
  v6 = 0xD000000000000030;
LABEL_10:
  v5 = v7 | 0x8000000000000000;
LABEL_11:
  MEMORY[0x1C69534E0](v6, v5);
  sub_1C5D61CD4();
  OUTLINED_FUNCTION_45_7();

  MEMORY[0x1C69534E0](0x74756F656D697420, 0xE90000000000003DLL);
  sub_1C6016D10();
  v8 = MEMORY[0x1C69534E0](0x746E657272756320, 0xEE003D6574617453);
  v9 = (*(*v2 + 144))(v8);
  v11 = v10;
  MEMORY[0x1C69534E0](v9);

  sub_1C5DBB53C();
  OUTLINED_FUNCTION_118();

  __swift_project_boxed_opaque_existential_0((v1 + 328), *(v1 + 352));
  memcpy(__srca, __dst, 0x43uLL);
  memset(&__srca[9], 0, 72);
  LOBYTE(__srca[18]) = -1;
  __srca[19] = v11;
  memcpy(v17, __srca, 0xA0uLL);
  sub_1C5DE8BA4(v17);
  memcpy(v21, v17, 0xD9uLL);
  sub_1C5D95E74(__src, v15);
  v12 = v11;
  sub_1C5DBBF0C();
  sub_1C5DE9BB4(__srca, sub_1C5DE8BB8);
  sub_1C5D61B3C(&v18);
  v13 = v19;
  v20 = v18;
  sub_1C5CC583C(&v20);
  if (v13)
  {
    sub_1C5D61B3C(v15);
    sub_1C5C74C18(v15[2]);
    v14 = OUTLINED_FUNCTION_39_8();
    v13(v14);
    sub_1C5C74C18(v13);
  }

  OUTLINED_FUNCTION_27();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_98();
    sub_1C5D4CB44();
    swift_unknownObjectRelease();
  }

  sub_1C5DDC13C(v11);
}

uint64_t sub_1C5DE2E8C(uint64_t a1)
{
  v2 = sub_1C6016630();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6016690();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6016650();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F80], v8);
  v12 = sub_1C6017010();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1C5DE95AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5DBC798;
  aBlock[3] = &block_descriptor_122_0;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1C6016670();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v16);
  sub_1C60173B0();
  MEMORY[0x1C6953AC0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v18 + 8))(v7, v19);
}

void sub_1C5DE3284(void *a1)
{
  v2 = sub_1C6016630();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6016690();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 avPlayerItem];
  v11 = [v10 accessLog];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(Strong + 152);

    v13 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v22 = v13;
    v14[4] = v11;
    aBlock[4] = sub_1C5DE95B4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5DBC798;
    aBlock[3] = &block_descriptor_129;
    v15 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v21 = v11;
    sub_1C6016670();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
    v16 = v3;
    v17 = MEMORY[0x1E69E7F60];
    sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    v20 = v6;
    sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v17);
    sub_1C60173B0();
    v18 = v23;
    MEMORY[0x1C6953AC0](0, v9, v5, v15);
    _Block_release(v15);

    (*(v16 + 8))(v5, v2);
    (*(v7 + 8))(v9, v20);
  }

  else
  {
  }
}

uint64_t sub_1C5DE3660(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1C5D5475C(a2, a3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C5DE3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1C5DE1BC4(a2, a3, a4, a5);
  if (v10)
  {
    v11 = v10;
    sub_1C5DE1C64(v10);
  }

  else if (*(a1 + 32) == 1 && (a5 & 0xE000000000000000) == 0x2000000000000000)
  {
    sub_1C5DE1E0C();
  }

  swift_beginAccess();
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v15 = 3;
  swift_unknownObjectRetain();
  sub_1C5C8A868();
  swift_unknownObjectRelease();
  if (*(a1 + 320))
  {

    v13 = sub_1C5DDBEF8();
    sub_1C5C8B6FC(v14, 0, v13);
  }

  if (a5 >> 61 == 6)
  {
    sub_1C5DE1C64(*MEMORY[0x1E69873C8]);
  }
}

uint64_t sub_1C5DE3834(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_27();
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v12 = 2;
  swift_unknownObjectRetain();
  sub_1C5C8A868();
  result = swift_unknownObjectRelease();
  if (*(v4 + 320))
  {

    v9 = sub_1C5DDBEF8();
    sub_1C5C8B6FC(v10, 0, v9);
  }

  return result;
}

void (*sub_1C5DE38E8(char *a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v2 = *(v1 + 368);
  if (!v2)
  {
    return 0;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(swift_allocObject() + 16) = v2;
  if (a1[72] != 3)
  {
    if (!a1[72])
    {
      switch(a1[66] >> 4)
      {
        case 1:
          v5 = *(a1 + 2);
          swift_unknownObjectRetain_n();
          if (v5)
          {
            goto LABEL_19;
          }

          swift_unknownObjectRetain();

          v6 = sub_1C5DDBEF8();
          swift_unknownObjectRelease();

          if (v6 >> 14)
          {
            if (v6 >> 14 != 1)
            {
              switch(v6)
              {
                case 0x8001u:
                case 0x8003u:
                case 0x8004u:
                  return sub_1C5DE8B80;
                default:
                  goto LABEL_16;
              }
            }
          }

          else if ((v6 & 1) == 0)
          {
            goto LABEL_16;
          }

          return sub_1C5DE8B80;
        case 2:
          swift_unknownObjectRetain_n();

          v10 = sub_1C5DDBEF8();
          swift_unknownObjectRelease();

          if (!(v10 >> 14))
          {
            goto LABEL_29;
          }

          if (v10 >> 14 != 1)
          {
            switch(v10)
            {
              case 0x8001u:
              case 0x8003u:
              case 0x8004u:
                goto LABEL_16;
              default:
                return sub_1C5DE8B80;
            }
          }

          goto LABEL_16;
        case 3:
          goto LABEL_12;
        case 5:
          swift_unknownObjectRetain_n();

          v10 = sub_1C5DDBEF8();
          swift_unknownObjectRelease();

          if (v10 >> 14)
          {
            if (v10 >> 14 != 1)
            {
              switch(v10)
              {
                case 0x8001u:
                case 0x8003u:
                case 0x8004u:
                  goto LABEL_16;
                default:
                  return sub_1C5DE8B80;
              }
            }

            goto LABEL_16;
          }

LABEL_29:
          if (v10)
          {
            goto LABEL_16;
          }

          break;
        default:
          goto LABEL_15;
      }

      return sub_1C5DE8B80;
    }

    swift_unknownObjectRetain_n();

    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v7 = *(a1 + 3) >> 61;
  if (v7 == 3)
  {
    v9 = *a1;
    swift_unknownObjectRetain_n();

    if (v9)
    {
      return sub_1C5DE8B88;
    }

LABEL_16:

    return 0;
  }

  if (v7 == 1)
  {
    swift_unknownObjectRetain_n();
LABEL_19:

    return sub_1C5DE8B80;
  }

  if (v7)
  {
LABEL_15:
    swift_unknownObjectRetain_n();

    goto LABEL_16;
  }

LABEL_12:
  swift_unknownObjectRetain_n();

  return sub_1C5DE8B88;
}

void sub_1C5DE3BF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1C5DE8B98;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C5DBC798;
  v11[3] = &block_descriptor_84;
  v10 = _Block_copy(v11);

  [a4 requestLeaseForItem:a1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1C5DE3D14(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1C5D5044C(Strong);
      Strong = swift_unknownObjectRelease();
    }
  }

  return a2(Strong);
}

void sub_1C5DE3DB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C5DBC798;
  v7[3] = &block_descriptor_25;
  v6 = _Block_copy(v7);

  [a4 relinquishLeaseForItem:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_1C5DE3E80(uint64_t a1)
{
  if (*(a1 + 72) == 3)
  {
    v3 = *(a1 + 24) >> 61;
    if (v3 <= 3 && v3 != 2)
    {
LABEL_9:

      return sub_1C5DDBE58();
    }

    return 0;
  }

  if (*(a1 + 72))
  {
    return 0;
  }

  result = 0;
  switch(*(a1 + 66) >> 4)
  {
    case 1:
      result = swift_unknownObjectRetain();
      break;
    case 2:
    case 3:
    case 5:
      goto LABEL_9;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C5DE3F2C()
{
  if (sub_1C5DDBEF8() == 32771 || !*(v0 + 64))
  {
    return 0;
  }

  v1 = *(v0 + 72);
  swift_getObjectType();
  v2 = *(v1 + 384);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_147();
  v4 = v2(v3);
  swift_unknownObjectRelease();
  return v4 & 1;
}

id sub_1C5DE3FD4()
{
  if (!*(v0 + 64))
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result canPlaySpeedRamp];
  }

  return result;
}

uint64_t sub_1C5DE4028()
{
  sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v1 = OUTLINED_FUNCTION_32_8();
  v2(v1);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v3, v4);
  OUTLINED_FUNCTION_37_7();
  v5 = sub_1C6015290();
  v6 = OUTLINED_FUNCTION_39_8();
  v7(v6);
  if (v5)
  {
    if (ICCurrentApplicationIsSystemApp())
    {
      OUTLINED_FUNCTION_27();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v9 = [*(Strong + 56) queueSupportsTransitionSettings], swift_unknownObjectRelease(), v9))
      {
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_16_24();
        OUTLINED_FUNCTION_57_5();
        v10 = swift_unknownObjectWeakLoadStrong();
        if (!v10)
        {
          return 1;
        }

        v11 = [*(v10 + 56) transitionsEnabled];
        swift_unknownObjectRelease();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (!v12)
        {
          return 1;
        }

        v13 = [*(v12 + 56) transitionStyle];
        swift_unknownObjectRelease();
        v14 = swift_unknownObjectWeakLoadStrong();
        if (!v14)
        {
          return 1;
        }

        [*(v14 + 56) crossfadeDuration];
        v16 = v15;
        swift_unknownObjectRelease();
        if (!v11)
        {
          return 1;
        }

        if (v13 != 1)
        {
          if (v13)
          {
            return 1;
          }

LABEL_21:
          if (v16 > 0.0)
          {
            type metadata accessor for MPCCrossFadeParameters();
            OUTLINED_FUNCTION_7_3();
            v18 = swift_allocObject();
            *(v18 + 16) = v16;
            return v18;
          }

          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_16_24();
        OUTLINED_FUNCTION_57_5();
        v20 = objc_opt_self();
        v21 = [v20 standardUserDefaults];
        v22 = [v21 areTransitionsEnabled];

        if (!v22)
        {
          return 1;
        }

        v23 = [v20 standardUserDefaults];
        v24 = [v23 transitionStyle];

        if (v24 != 1)
        {
          if (v24)
          {
            return 1;
          }

          v25 = [v20 standardUserDefaults];
          [v25 crossFadeDuration];
          v16 = v26;

          goto LABEL_21;
        }
      }

      return 0;
    }

    v19 = sub_1C5DE439C();
    if (!v19)
    {
      OUTLINED_FUNCTION_26_15();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_16_24();
      OUTLINED_FUNCTION_57_5();
      return 1;
    }

    v18 = v19;
    OUTLINED_FUNCTION_26_15();
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_16_24();
    OUTLINED_FUNCTION_57_5();
  }

  else
  {
    v17 = sub_1C5DE43E8();
    if (v17 <= 1)
    {
      return 1;
    }

    else
    {
      return v17;
    }
  }

  return v18;
}

uint64_t sub_1C5DE439C()
{
  if (*(v0 + 112))
  {
    return 0;
  }

  v1 = *(v0 + 104);
  if (v1 <= 0.0)
  {
    return 0;
  }

  type metadata accessor for MPCCrossFadeParameters();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_1C5DE43E8()
{
  __swift_project_boxed_opaque_existential_0((v0 + 328), *(v0 + 352));
  __src[0] = 0xD000000000000038;
  __src[1] = 0x80000001C6054A40;
  sub_1C5D7E534(__src);
  memcpy(v8, __src, sizeof(v8));
  sub_1C5DBBF0C();
  if (!ICCurrentApplicationIsSystemApp())
  {
    return sub_1C5DE439C();
  }

  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = [v2 isCrossFadeEnabled];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 standardUserDefaults];
  [v4 crossFadeDuration];
  v6 = v5;

  if (v6 <= 0.0)
  {
    return 0;
  }

  type metadata accessor for MPCCrossFadeParameters();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

void sub_1C5DE4520()
{
  if (*(v0 + 208))
  {

    sub_1C5D6D350(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t sub_1C5DE4570()
{
  OUTLINED_FUNCTION_5_37();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5D52D8C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE45E8()
{
  OUTLINED_FUNCTION_5_37();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5D54614();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE4690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  OUTLINED_FUNCTION_5_37();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5D546B8(a1, a2, a3, a4, a5, a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE4738(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_5_37();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1C5DE4794()
{
  OUTLINED_FUNCTION_5_37();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_147();
    sub_1C5D5C5D4();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5DE4814(void *a1)
{
  sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v4 = OUTLINED_FUNCTION_32_8();
  v5(v4);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v6, v7);
  OUTLINED_FUNCTION_37_7();
  v8 = sub_1C6015290();
  v9 = OUTLINED_FUNCTION_39_8();
  v10(v9);
  if (v8)
  {

    sub_1C5DDBC3C(1, a1);
    if (v12 == v13 >> 1)
    {
      swift_unknownObjectRelease();
      if (v1[26])
      {

        sub_1C5D6B6B0(0);
      }
    }

    else if (v12 >= (v13 >> 1))
    {
      __break(1u);
    }

    else
    {
      v14 = *(v11 + 8 * v12);
      OUTLINED_FUNCTION_126();
      swift_unknownObjectRelease();
      if (v1[26])
      {
        v15 = a1;
        OUTLINED_FUNCTION_206();

        sub_1C5D6B6B0(a1);
      }

      else
      {
      }
    }
  }
}

double sub_1C5DE49B8@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_37();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1C5DABCEC(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1C5DE4A20()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1C69534E0](0xD000000000000016);
  sub_1C5DE9A10();
  OUTLINED_FUNCTION_54_7();
  MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
  sub_1C5DE9AA8();
  OUTLINED_FUNCTION_54_7();
  sub_1C5D7E534(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  if (v8 && v6)
  {

    sub_1C5DE4CF4(v9, v6, v4, v2);
    v10 = v0[26];
    if (v10)
    {
      v11 = *(v10 + 24);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }

    v13 = sub_1C5DDF0FC(v8, v6, v11);

    v14 = v0[26];
    if (v14)
    {
      v15 = *(v14 + 24);
      v16 = v15;
    }

    else
    {
      v15 = 0;
    }

    v17 = sub_1C5DDF0FC(v4, v2, v15);

    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000023, 0x80000001C6055460);
    OUTLINED_FUNCTION_42_10();
    MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
    OUTLINED_FUNCTION_42_10();
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1C5D7E534(v18);
    memcpy(v19, v18, 0xD9uLL);
    sub_1C5DBBF0C();

    if ((sub_1C5DDBFA4(v13, v17) & 1) != 0 || (OUTLINED_FUNCTION_27(), !swift_unknownObjectWeakLoadStrong()))
    {
    }

    else
    {
      sub_1C5D4FA6C();

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DE4CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = v4[6];
  v11 = v4[47];
  v10 = v4[48];

  if (sub_1C5DDBE58())
  {
    swift_getObjectType();
    v12 = sub_1C5DEA0B4();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = sub_1C5DE4DDC(a1, a2, a3, a4, v9, v11, v10, v12, v14);

  if (v15 != v5[6])
  {
    v5[6] = v15;
  }

  return result;
}

uint64_t sub_1C5DE4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (a7 | a9) == 0;
  if (a7 && a9)
  {
    if (a6 == a8 && a7 == a9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1C6017860();
    }
  }

  type metadata accessor for InitialLoadingState();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for PlayingState();
  if (swift_dynamicCastClass() && a1)
  {
    type metadata accessor for NaturalTransitionState();
    if (!((swift_dynamicCastClass() == 0) | v11 & 1))
    {
      return 1;
    }

    type metadata accessor for FailedTransitionState();
    if (!((swift_dynamicCastClass() == 0) | v11 & 1) && a5 != 5)
    {
      goto LABEL_20;
    }
  }

  type metadata accessor for PausedState();
  if (swift_dynamicCastClass())
  {
    if (a1)
    {
      type metadata accessor for FailedTransitionState();
      if (!((swift_dynamicCastClass() == 0) | v11 & 1) && a5 != 5)
      {
LABEL_20:
        type metadata accessor for FailedTransitionState();
        goto LABEL_23;
      }
    }
  }

  type metadata accessor for SkippingTransitionState();
  if (swift_dynamicCastClass() && a5 != 5)
  {
LABEL_23:
    v14 = swift_dynamicCastClassUnconditional();

    return sub_1C5DE500C(v14);
  }

  type metadata accessor for EndOfQueueState();
  if (swift_dynamicCastClass())
  {
    return 5;
  }

  type metadata accessor for InitiatingPlaybackState();
  if (swift_dynamicCastClass() && a5 == 5)
  {
    return 0;
  }

  type metadata accessor for ScanningState();
  v15 = swift_dynamicCastClass();
  if (a5 == 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = a5;
  }

  if (v15)
  {
    return v16;
  }

  else
  {
    return a5;
  }
}

uint64_t sub_1C5DE500C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = 2 * (v1 > 1);
  if (v1 == -1 || v1 == 1)
  {
    v2 = *(a1 + 24);
  }

  if (v1 >= -1)
  {
    return v2;
  }

  else
  {
    return -2;
  }
}

uint64_t sub_1C5DE5150()
{
  swift_beginAccess();
  result = sub_1C5DE97D0(v0 + 224, v3, qword_1ED7DF310, &type metadata for SystemObserver);
  if (v4)
  {
    if ((!MSVDeviceOSIsInternalInstall() || MSVDeviceIsInternalCarry()) && FigOutputMonitorIsScreenProbablyBeingRecorded())
    {
      sub_1C5DE9158(v3, qword_1ED7DF310, &type metadata for SystemObserver);
      v2 = sub_1C5DE4738(sub_1C5D54840);
    }

    else
    {
      sub_1C5DE9158(v3, qword_1ED7DF310, &type metadata for SystemObserver);
      v2 = 1;
    }

    return v2 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DE5344(uint64_t a1)
{
  if (a1 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC1A9180 != -1)
  {
    swift_once();
  }

  v1 = off_1EC1A9188;
  v2 = *(off_1EC1A9188 + 2);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C60175F0();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_1C6016D30();
      v6 = objc_allocWithZone(MEMORY[0x1E69585F8]);
      sub_1C6016900();
      OUTLINED_FUNCTION_98();

      LODWORD(v7) = v5;
      [v6 initWithRate:0 localizedName:v7];

      sub_1C60175D0();
      sub_1C6017600();
      sub_1C6017610();
      sub_1C60175E0();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C5DE54BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 328), *(a1 + 352));
  sub_1C6017540();

  __src[0] = 0xD00000000000001ELL;
  __src[1] = 0x80000001C6054D50;
  v3 = [a2 description];
  v4 = sub_1C6016940();
  v6 = v5;

  MEMORY[0x1C69534E0](v4, v6);

  sub_1C5D7E534(__src);
  memcpy(v8, __src, sizeof(v8));
  sub_1C5DBBF0C();
}

id sub_1C5DE55B4(uint64_t a1)
{
  v1 = *(a1 + 16);

  OUTLINED_FUNCTION_255();
  sub_1C6016900();
  OUTLINED_FUNCTION_206();

  return v1;
}

uint64_t sub_1C5DE5600(uint64_t a1)
{
  *(a1 + 16) = sub_1C6016940();
  *(a1 + 24) = v2;
}

id sub_1C5DE5644()
{

  sub_1C6016840();
  OUTLINED_FUNCTION_73();

  return v0;
}

uint64_t sub_1C5DE56A8(uint64_t a1)
{
  *(a1 + 48) = sub_1C6016860();
}

id sub_1C5DE570C(uint64_t a1)
{
  v1 = *(a1 + 64);

  OUTLINED_FUNCTION_255();
  sub_1C6016900();
  OUTLINED_FUNCTION_206();

  return v1;
}

uint64_t sub_1C5DE5758(uint64_t a1)
{
  *(a1 + 64) = sub_1C6016940();
  *(a1 + 72) = v2;
}

uint64_t sub_1C5DE579C()
{
  *(v0 + 56) = xmmword_1C6043010;
  OUTLINED_FUNCTION_89();
  *(v0 + 72) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  sub_1C6014F90();
  v7 = v6;
  type metadata accessor for EventTime();
  swift_allocObject();
  *(v0 + 40) = sub_1C5C8A6E0(0, 0, 0, 1, v7, v7);
  return v0;
}

uint64_t sub_1C5DE5830()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5DE5868()
{
  sub_1C5DE5830();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void sub_1C5DE5964(uint64_t a1)
{
  v3 = sub_1C6016630();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6016690();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR___PlayerViewControllerBehavior_reporter];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v1[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C6055310);
  v45 = a1;
  v7 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
  MEMORY[0x1C69534E0](v7);

  MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
  v8 = [v1 behaviorContext];
  v9 = sub_1C5DE829C(v8);
  v11 = v10;

  MEMORY[0x1C69534E0](v9, v11);

  sub_1C5DB12C8(v50);
  memcpy(v49, v50, sizeof(v49));
  sub_1C5DBBF0C();

  v12 = objc_opt_self();
  if ([v12 isMainThread])
  {
    sub_1C5DE6424(v45);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(v6, *(v6 + 3));
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000004ELL, 0x80000001C6055340);
    v13 = [v12 currentThread];
    v14 = [v13 description];
    v15 = sub_1C6016940();
    v17 = v16;

    MEMORY[0x1C69534E0](v15, v17);

    v47[0] = v48[0];
    v47[1] = v48[1];
    sub_1C5D45B74(v47);
    memcpy(v48, v47, 0xD9uLL);
    sub_1C5DBBF0C();

    v38 = objc_opt_self();
    v18 = *MEMORY[0x1E69B1338];
    v19 = sub_1C6016900();
    v20 = sub_1C6016900();
    v21 = sub_1C6016900();
    sub_1C5DE990C(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C60311E0;
    v23 = [v12 currentThread];
    v24 = [v23 description];

    v25 = sub_1C6016940();
    v27 = v26;

    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 32) = v25;
    *(v22 + 40) = v27;
    sub_1C5DC9604(v18, v19, v20, v21, 0, v22, 0, v38);

    sub_1C5C64D74(0, &qword_1ED7DCE50);
    v28 = sub_1C6016FD0();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 16) = v29;
    *(v30 + 24) = v31;
    v46[4] = sub_1C5DE995C;
    v46[5] = v30;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 1107296256;
    v46[2] = sub_1C5DBC798;
    v46[3] = &block_descriptor_142;
    v32 = _Block_copy(v46);

    v33 = v39;
    sub_1C6016670();
    v46[0] = MEMORY[0x1E69E7CC0];
    sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
    v34 = MEMORY[0x1E69E7F60];
    sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v34);
    v35 = v41;
    v36 = v44;
    sub_1C60173B0();
    MEMORY[0x1C6953AC0](0, v33, v35, v32);
    _Block_release(v32);

    (*(v43 + 8))(v35, v36);
    (*(v40 + 8))(v33, v42);
  }
}

uint64_t AVMusicAppBehaviorContextUserAction.customDescription.getter(uint64_t a1)
{
  v1 = 0x6573756170;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v1 = 2036427888;
      break;
    case 2:
      v1 = 1702131053;
      break;
    case 3:
      v1 = 0x6574756D6E75;
      break;
    case 4:
      v1 = 0x7263536E69676562;
      break;
    case 5:
      v1 = 0x6275726353646E65;
      break;
    case 6:
      v1 = 0x6565537472617473;
      break;
    case 7:
      v1 = 0x6B656553706F7473;
      break;
    case 8:
      v1 = 0x6163536E69676562;
      break;
    case 9:
      v1 = 0x6E6E616353646E65;
      break;
    case 10:
      OUTLINED_FUNCTION_7_35();
      v1 = v4 + 2;
      break;
    case 11:
      OUTLINED_FUNCTION_89();
      break;
    case 12:
      OUTLINED_FUNCTION_7_35();
      v1 = v2 + 3;
      break;
    case 13:
      OUTLINED_FUNCTION_7_35();
      v1 = v3 | 1;
      break;
    default:
      v1 = 0x206E776F6E6B6E75;
      break;
  }

  v7 = v1;
  MEMORY[0x1C69534E0](23328, 0xE200000000000000);
  v5 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v5);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  return v7;
}

void sub_1C5DE6258(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C5DE6424(a2);
  }
}

void sub_1C5DE6308(void *a1)
{
  v2 = [a1 playerViewController];
  if (v2)
  {
    v3 = v2;
    [v2 setCanPausePlaybackWhenExitingFullScreen_];
  }

  v4 = [a1 playerViewController];
  if (v4)
  {
    v5 = v4;
    [v4 setUpdatesNowPlayingInfoCenter_];
  }
}

void sub_1C5DE6424(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 behaviorContext];
  v5 = sub_1C5DE71F8(a1, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000044, 0x80000001C6055290);
    v26 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
    MEMORY[0x1C69534E0](v26);

    MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
    type metadata accessor for Description();
    v27 = sub_1C5DCA77C(v5);
    MEMORY[0x1C69534E0](v27);

    MEMORY[0x1C69534E0](0x746E6F63202D205DLL, 0xED0000203A747865);
    v28 = [v2 behaviorContext];
    v29 = sub_1C5DE829C(v28);
    v31 = v30;

    MEMORY[0x1C69534E0](v29, v31);

    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    sub_1C5DB12C8(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    sub_1C6016880();
    sub_1C5DE73FC(v5);

    return;
  }

  v8 = [v2 behaviorContext];
  v9 = sub_1C5DE732C(a1, v8);

  if (v9)
  {
    v10 = [v2 behaviorContext];
    if (!v10)
    {
      __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000049, 0x80000001C6055080);
      v36 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
      MEMORY[0x1C69534E0](v36);

      *&__src[0] = 0;
      *(&__src[0] + 1) = 0xE000000000000000;
      sub_1C5D45B74(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      v37 = objc_opt_self();
      v38 = *MEMORY[0x1E69B1338];
      v39 = sub_1C6016900();
      v40 = sub_1C6016900();
      v41 = sub_1C6016900();
      [v37 snapshotWithDomain:v38 type:v39 subType:v40 context:v41 triggerThresholdValues:0 events:0 completion:0];

      return;
    }

    v11 = v10;
    v12 = [v10 playerViewController];
    if (v12 && (v13 = v12, v14 = [v12 player], v13, v14) && (v15 = objc_msgSend(v14, sel_currentItem), v14, v15))
    {
      v16 = &v2[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo];
      v17 = *&v2[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo + 8];
      if (!v17)
      {
        __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD00000000000006ALL, 0x80000001C6055180);
        v47 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
        MEMORY[0x1C69534E0](v47);

        *&__src[0] = 0;
        *(&__src[0] + 1) = 0xE000000000000000;
        sub_1C5D45B74(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();

        v48 = objc_opt_self();
        v49 = *MEMORY[0x1E69B1338];
        v50 = sub_1C6016900();
        v51 = sub_1C6016900();
        v52 = sub_1C6016900();
        [v48 snapshotWithDomain:v49 type:v50 subType:v51 context:v52 triggerThresholdValues:0 events:0 completion:0];

        return;
      }

      v75 = *v16;
      v76 = v15;
      v18 = *(v16 + 2);
      v19 = v16[24];
      sub_1C5CDAF64(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], v81);
      __swift_project_boxed_opaque_existential_0(v81, v82);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;

      sub_1C6017540();
      v78 = __dst[0];
      MEMORY[0x1C69534E0](0xD000000000000054, 0x80000001C6055210);
      *&__dst[0] = a1;
      type metadata accessor for AVMusicAppBehaviorContextUserAction();
      sub_1C6017650();
      v85.value = MEMORY[0x1C69534E0](0x72617473202D205DLL, 0xEF203A656D695474);
      v85.is_nil = v18;
      DefaultStringInterpolation.appendInterpolation(time:)(v85);
      MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C6055270);
      v20 = [v2 behaviorContext];
      if (v20)
      {
        v22 = v20;
        v23 = [v20 seekTargetTime];

        if (v23)
        {
          [v23 doubleValue];
          v25 = v24;

          LOBYTE(v20) = v25;
        }

        else
        {
          LOBYTE(v20) = 0;
        }
      }

      DefaultStringInterpolation.appendInterpolation(time:)(*(&v20 - 1));
      MEMORY[0x1C69534E0](0x546D657469202D20, 0xED0000203A656D69);
      [v76 currentTime];
      sub_1C6017220();
      v54 = v53;
      sub_1C5DE9844(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v55 = swift_allocObject();
      v56 = MEMORY[0x1E69E63B0];
      *(v55 + 16) = xmmword_1C60311E0;
      v57 = MEMORY[0x1E69E6438];
      *(v55 + 56) = v56;
      *(v55 + 64) = v57;
      *(v55 + 32) = v54;
      v58 = sub_1C6016960();
      MEMORY[0x1C69534E0](v58);

      MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
      v59 = [v2 behaviorContext];
      v60 = sub_1C5DE829C(v59);
      v62 = v61;

      MEMORY[0x1C69534E0](v60, v62);

      __src[0] = v78;
      sub_1C5DB12C8(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v81);
      v63 = MEMORY[0x1E69E6370];
      *(&v80 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v79) = 1;
      sub_1C5C70758(&v79, v77);
      v64 = MEMORY[0x1E69E7CC8];
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v77, 0x64656873696E6966, 0xE800000000000000);
      *(&v80 + 1) = MEMORY[0x1E69E6158];
      *&v79 = v75;
      *(&v79 + 1) = v17;
      sub_1C5C70758(&v79, v77);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v77, 0x696669746E656469, 0xEA00000000007265);
      if (v19)
      {
        v65 = sub_1C5CE2084(0x6D69547472617473, 0xE900000000000065);
        v66 = MEMORY[0x1E69E7CA0];
        if (v67)
        {
          v68 = v65;
          swift_isUniquelyReferenced_nonNull_native();
          *&v77[0] = v64;
          sub_1C5DE98A0(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
          v56 = MEMORY[0x1E69E63B0];
          sub_1C6017660();
          v69 = *&v77[0];

          sub_1C5C70758((*(v69 + 56) + 32 * v68), &v79);
          sub_1C6017680();
        }

        else
        {
          v79 = 0u;
          v80 = 0u;
        }

        sub_1C5DE9158(&v79, &qword_1ED7E0200, v66 + 8);
      }

      else
      {
        *(&v80 + 1) = v56;
        *&v79 = v18;
        sub_1C5C70758(&v79, v77);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C5E361A8(v77, 0x6D69547472617473, 0xE900000000000065);
      }

      [v76 currentTime];
      sub_1C6017220();
      *(&v80 + 1) = v56;
      *&v79 = v70;
      sub_1C5C70758(&v79, v77);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v77, 0x656D6954646E65, 0xE700000000000000);
      *(&v80 + 1) = v63;
      LOBYTE(v79) = 1;
      sub_1C5C70758(&v79, v77);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v77, 0x65766973736170, 0xE700000000000000);
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      v16[24] = 0;
      *v16 = 0;

      v71 = [objc_opt_self() defaultCenter];
      if (qword_1ED7DCE20 != -1)
      {
        swift_once();
      }

      v72 = qword_1ED7E1680;
      v46 = v76;
      sub_1C5E10480();
      v74 = v73;

      sub_1C5DC96C0(v72, v76, v74, v71);
    }

    else
    {
      sub_1C5CDAF64(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], v81);
      __swift_project_boxed_opaque_existential_0(v81, v82);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_1C6017540();
      v77[0] = __dst[0];
      MEMORY[0x1C69534E0](0xD00000000000004ELL, 0x80000001C60550F0);
      v32 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
      MEMORY[0x1C69534E0](v32);

      MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C6055140);
      v33 = [v2 behaviorContext];
      if (v33 && (v34 = v33, v35 = [v33 playerViewController], v34, v35))
      {
        *(&v80 + 1) = sub_1C5C64D74(0, &qword_1EC1AB9D8);
        *&v79 = v35;
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
      }

      DefaultStringInterpolation.appendInterpolation(describing:default:)(&v79, 7104878, 0xE300000000000000);
      sub_1C5DE9158(&v79, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      __src[0] = v77[0];
      sub_1C5D45B74(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v81);
      v42 = objc_opt_self();
      v43 = *MEMORY[0x1E69B1338];
      v44 = sub_1C6016900();
      v45 = sub_1C6016900();
      v46 = sub_1C6016900();
      [v42 snapshotWithDomain:v43 type:v44 subType:v45 context:v46 triggerThresholdValues:0 events:0 completion:0];
    }
  }
}

uint64_t sub_1C5DE71F8(uint64_t a1, void *a2)
{
  result = 0;
  switch(a1)
  {
    case 0:
      result = 1;
      break;
    case 1:
      return result;
    case 4:
    case 6:
      if (sub_1C5DE72AC(a1, a2))
      {
        result = 6;
      }

      else
      {
        result = 0;
      }

      break;
    case 10:
      result = 2;
      break;
    case 11:
      result = 3;
      break;
    case 12:
      result = 4;
      break;
    case 13:
      result = 5;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1C5DE72AC(uint64_t a1, id a2)
{
  if (a1 == 4)
  {
    return 1;
  }

  result = 0;
  if (a1 == 6 && a2)
  {
    if ([a2 isScrubbing])
    {
      return 0;
    }

    result = [a2 seekTargetTime];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_1C5DE732C(uint64_t a1, id a2)
{
  if (!*(v2 + OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo + 8))
  {
    return 0;
  }

  if (a2)
  {
    v5 = [a2 isScrubbing];
  }

  else
  {
    v5 = 2;
  }

  v6 = [a2 seekTargetTime];
  if (a1 == 7)
  {
    if (v5 == 2 || (v5 & 1) != 0)
    {
      goto LABEL_13;
    }

    if (v6)
    {
      v7 = 1;
      goto LABEL_14;
    }

    return 0;
  }

  if (a1 != 5)
  {
LABEL_13:
    v7 = 0;
LABEL_14:

    return v7;
  }

  v7 = 0;
  if (v5 == 2 || (v5 & 1) == 0 || v6)
  {
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1C5DE73FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6015060();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6015050();
  v8 = sub_1C6015030();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  sub_1C5E10F64();
  type metadata accessor for VideoUserAction();
  v11 = swift_allocObject();
  sub_1C5DE579C();
  v12 = [v2 behaviorContext];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = v11;

  sub_1C5DE7AE0(a1, v12, v8, v10, sub_1C5DE97C4, v14, &v33);

  v15 = v37 | (v38 << 16);
  if ((~v15 & 0xFEFEFE) != 0)
  {
    v39[0] = v33;
    v39[1] = v34;
    v39[2] = v35;
    v39[3] = v36;
    v40 = v37;
    v41 = BYTE2(v15);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    if (a1 == 6)
    {
      v17 = sub_1C5DE8500();
      v18 = 0;
      if (v17 && (v19 = v17, v20 = [v17 currentItem], v19, v20))
      {
        [v20 currentTime];
        v27[1] = v43;
        v27[2] = *(&v42 + 1);

        sub_1C6017220();
        v18 = v21;
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v23 = &v2[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo];
      *v23 = v8;
      *(v23 + 1) = v10;
      *(v23 + 2) = v18;
      v23[24] = v22;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_1C5DE95C0(v24);

      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      if (((v41 << 16) & 0xF00000) != 0xC00000)
      {
        v42 = v29;
        v43 = v30;
        v44 = v31;
        v45 = v32;
        v46 = v15;
        v47 = BYTE2(v15);
        v48 = 0;
        swift_unknownObjectRetain();
        sub_1C5DE97D0(&v33, &v28, &qword_1ED7DC2D0, &type metadata for UserEvent);
        sub_1C5DE294C(&v42, v26, v26, v39);
      }

      sub_1C5DE9158(&v33, &qword_1ED7DC2D0, &type metadata for UserEvent);

      return swift_unknownObjectRelease();
    }

    else
    {

      return sub_1C5DE9158(&v33, &qword_1ED7DC2D0, &type metadata for UserEvent);
    }
  }

  else
  {
  }
}

void sub_1C5DE7808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1C5CDAF64(Strong + OBJC_IVAR___PlayerViewControllerBehavior_reporter, v25);
    __swift_project_boxed_opaque_existential_0(v25, v25[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v23 = __dst[0];
    v24 = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000040, 0x80000001C6055030);
    type metadata accessor for Description();
    v13 = sub_1C5DCA77C(a5);
    MEMORY[0x1C69534E0](v13);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
    MEMORY[0x1C69534E0](a1, a2);
    MEMORY[0x1C69534E0](0x726F727265202D20, 0xE90000000000003ALL);
    if (a3)
    {
      swift_getErrorValue();
      *(&v22 + 1) = v19;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
      (*(*(v19 - 8) + 16))(boxed_opaque_existential_0);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    DefaultStringInterpolation.appendInterpolation(describing:default:)(&v21, 7104878, 0xE300000000000000);
    sub_1C5DE9158(&v21, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
    v15 = [v12 behaviorContext];
    v16 = sub_1C5DE829C(v15);
    v18 = v17;

    MEMORY[0x1C69534E0](v16, v18);

    __src[0] = v23;
    __src[1] = v24;
    sub_1C5DB12C8(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v25);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DE968C(a6, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1C5DE7AE0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a3;
  switch(a1)
  {
    case 0:
      if (a2)
      {

        v19 = [a2 playerViewController];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 player];

          if (v21)
          {
            [v21 defaultRate];
            v23 = v22;

            LODWORD(v13) = v23;
LABEL_17:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v14 = 0;
            v15 = 2097153;
            goto LABEL_23;
          }
        }
      }

      else
      {
      }

      LODWORD(v13) = 1065353216;
      goto LABEL_17;
    case 1:

      v16 = 0;
      v17 = 0;
      v18 = 0;
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 3145729;
      goto LABEL_23;
    case 2:

      v14 = 0;
      OUTLINED_FUNCTION_35_14();
      LODWORD(v13) = v16;
      goto LABEL_23;
    case 3:
    case 5:
      LODWORD(v13) = a3;
      v14 = a3 & 0xFFFFFFFF00000000;

      v15 = 6291456;
      v10 = 1;
      v16 = a4;
      v17 = a5;
      v18 = a6;
      goto LABEL_23;
    case 4:

      LODWORD(v13) = 0;
      v14 = 0;
      OUTLINED_FUNCTION_35_14();
      goto LABEL_23;
    case 6:
      if (a2)
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v24 = [a2 seekTargetTime];
        if (v24)
        {
          v25 = v24;
          [v24 doubleValue];
          v27 = v26;

          v13 = v27;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v13 = 0x7FF8000000000000;
LABEL_21:
      v14 = v13 & 0xFFFFFFFF00000000;
LABEL_22:
      OUTLINED_FUNCTION_34_12();
LABEL_23:
      *a7 = v14 | v13;
      *(a7 + 8) = v16;
      *(a7 + 16) = v17;
      *(a7 + 24) = v18;
      *(a7 + 32) = v10;
      *(a7 + 40) = a4;
      *(a7 + 48) = a5;
      *(a7 + 56) = a6;
      *(a7 + 64) = v15;
      *(a7 + 66) = BYTE2(v15);
      return;
    case 7:

      v14 = 0;
      LODWORD(v13) = 1;
      OUTLINED_FUNCTION_34_12();
      goto LABEL_23;
    case 8:

      LODWORD(v13) = 0;
      v14 = 0;
      goto LABEL_22;
    default:
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_1C60178A0();
      __break(1u);
      return;
  }
}

uint64_t sub_1C5DE7DF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6015060();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 7) <= 1)
  {
    sub_1C6015050();
    v9 = sub_1C6015030();
    v11 = v10;
    (*(v5 + 8))(v8, v4);

    sub_1C6016880();
    type metadata accessor for VideoUserAction();
    swift_allocObject();
    sub_1C5DE579C();
    v12 = &v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter];
    v25[0] = __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003CLL, 0x80000001C6054F90);
    v25[1] = type metadata accessor for Description();
    v13 = sub_1C5DCA77C(a1);
    MEMORY[0x1C69534E0](v13);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
    v26 = v9;
    MEMORY[0x1C69534E0](v9, v11);
    MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
    v14 = [v2 behaviorContext];
    v15 = sub_1C5DE829C(v14);
    v17 = v16;

    MEMORY[0x1C69534E0](v15, v17);

    v28[0] = v30[0];
    v28[1] = v30[1];
    sub_1C5DB12C8(v28);
    memcpy(v30, v28, 0xD9uLL);
    sub_1C5DBBF0C();

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_1C5DE95C0(v18);

      swift_unknownObjectRelease();
    }

    __swift_project_boxed_opaque_existential_0(v12, *(v12 + 3));
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003ELL, 0x80000001C6054FD0);
    v19 = sub_1C5DCA77C(a1);
    MEMORY[0x1C69534E0](v19);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
    MEMORY[0x1C69534E0](v26, v11);

    MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
    v20 = [v2 behaviorContext];
    v21 = sub_1C5DE829C(v20);
    v23 = v22;

    MEMORY[0x1C69534E0](v21, v23);

    v27[0] = v29[0];
    v27[1] = v29[1];
    sub_1C5DB12C8(v27);
    memcpy(v29, v27, 0xD9uLL);
    sub_1C5DBBF0C();

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_1C5DE968C(v24, 0);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C5DE829C(void *a1)
{
  if (!a1)
  {
    return 0x65746E6F63206F4ELL;
  }

  v1 = a1;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000010, 0x80000001C6054F10);
  v2 = [v1 isScrubbing];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v4, v5);

  MEMORY[0x1C69534E0](0x3A656D6974202D20, 0xE800000000000000);
  v6 = [v1 seekTargetTime];
  v8 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v10 = v9;

    LOBYTE(v6) = v10;
  }

  DefaultStringInterpolation.appendInterpolation(time:)(*(&v6 - 1));
  MEMORY[0x1C69534E0](0xD000000000000016, 0x80000001C6054F30);
  v11 = [v1 showsSkipItemButtons];
  v12 = v11 == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v13, v14);

  MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C6054F50);
  v15 = [v1 isSkipToPreviousItemButtonEnabled];
  v16 = v15 == 0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v17, v18);

  MEMORY[0x1C69534E0](0xD000000000000010, 0x80000001C6054F70);
  v19 = [v1 isSkipToNextItemButtonEnabled];
  v20 = v19 == 0;
  if (v19)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v21, v22);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);

  return 0;
}

id sub_1C5DE8500()
{
  v1 = [v0 behaviorContext];
  v2 = [v1 playerViewController];

  v3 = [v2 player];
  return v3;
}

id sub_1C5DE85CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerViewControllerBehavior();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5DE873C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C5DE877C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore16PlayerControllerC9StackModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C5DE87E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5DE883C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C5DE88A8()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13, v9, v3);
  OUTLINED_FUNCTION_27();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1C5D5C4CC(v15, v7, Strong, v3, v1);
    swift_unknownObjectRelease();
  }

  v17 = OUTLINED_FUNCTION_32_8();
  v18(v17);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v19, v20);
  OUTLINED_FUNCTION_37_7();
  v21 = sub_1C6015290();
  v22 = OUTLINED_FUNCTION_39_8();
  v23(v22);
  if ((v21 & 1) != 0 && *(v5 + 208))
  {

    sub_1C5D6D350(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  (*(v11 + 8))(v15, v3);
  OUTLINED_FUNCTION_237();
}

void sub_1C5DE8AAC()
{
  if (!qword_1EC1A9690)
  {
    sub_1C5D11E0C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A9690);
    }
  }
}

void sub_1C5DE8BB8()
{
  if (!qword_1EC1A95D0)
  {
    sub_1C5DE990C(255, qword_1ED7DC2D8, &type metadata for Event, MEMORY[0x1E69E6720]);
    sub_1C5DE9844(255, &qword_1ED7DCAD0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A95D0);
    }
  }
}

void sub_1C5DE8C84(void *a1, char a2, char a3, void *a4)
{
  v7 = [a1 prefersSeekOverSkip];
  v8 = [a4 behaviorContext];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      [v8 setShowsSkipItemButtons_];
    }

    v13 = [a4 behaviorContext];
    [v13 setSkipToNextItemButtonEnabled_];

    v14 = [a4 behaviorContext];
    [v14 setSkipToPreviousItemButtonEnabled_];
    goto LABEL_11;
  }

  if (v8)
  {
    [v8 setShowsSkipItemButtons_];
  }

  v10 = [a4 behaviorContext];
  if (v10)
  {
    v11 = v10;
    [v10 setSkipToNextItemButtonEnabled_];
  }

  v12 = [a4 behaviorContext];
  if (v12)
  {
    v14 = v12;
    [v12 setSkipToPreviousItemButtonEnabled_];
LABEL_11:
  }
}

uint64_t sub_1C5DE8E14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C5DE9230(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5DE8E78()
{
  if (!qword_1EC1AB9C0)
  {
    sub_1C5C64D74(255, &qword_1EC1AB9C8);
    v0 = sub_1C6014DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB9C0);
    }
  }
}

id sub_1C5DE8EFC(uint64_t a1, char *a2)
{
  v8[3] = type metadata accessor for EventReporter();
  v8[4] = &off_1F4544D18;
  v8[0] = a1;
  *&a2[OBJC_IVAR___PlayerViewControllerBehavior_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &a2[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo];
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v4[24] = 0;
  sub_1C5CDAF64(v8, &a2[OBJC_IVAR___PlayerViewControllerBehavior_reporter]);
  v7.receiver = a2;
  v7.super_class = type metadata accessor for PlayerViewControllerBehavior();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

id sub_1C5DE8FB0(uint64_t *a1)
{
  v10 = *a1;
  v11 = &off_1F4544D18;
  v9[0] = a1;
  v1 = objc_allocWithZone(type metadata accessor for PlayerViewControllerBehavior());
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v9[-1] - v3);
  (*(v5 + 16))(&v9[-1] - v3);
  v6 = sub_1C5DE8EFC(*v4, v1);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_1C5DE90D0(uint64_t a1, uint64_t a2)
{
  sub_1C5DE990C(0, qword_1ED7DF310, &type metadata for SystemObserver, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5DE9158(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1C5DE990C(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C5DE91C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_120();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C5DE9230(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6016470();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C5DE92A8()
{
  if (!qword_1EC1AB9D0)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1C5DE9964(255, &qword_1EC1A9148);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1AB9D0);
    }
  }
}

uint64_t sub_1C5DE93E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

void sub_1C5DE9440()
{
  if (!qword_1EC1A8D00)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1C5DE9964(255, &qword_1EC1A9148);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1A8D00);
    }
  }
}

uint64_t objectdestroy_71Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C5DE95C0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong userActionDidBegin_];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE968C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        if (a2)
        {
          a2 = sub_1C6014D30();
        }

        [v6 userActionDidEnd:a1 error:a2];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_80Tm()
{

  v0 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5DE97D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1C5DE990C(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return a2;
}

void sub_1C5DE9844(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_43();
    sub_1C5DE99B0(v7, v8);
    v9 = OUTLINED_FUNCTION_120();
    v10 = a5(v9);
    if (!v11)
    {
      atomic_store(v10, v5);
    }
  }
}

void sub_1C5DE98A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5DE990C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5DE9964(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_43();
    sub_1C5DE99B0(v3, v4);
    OUTLINED_FUNCTION_34_4();
    v5 = sub_1C6017350();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1C5DE99B0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C5DE9A10()
{
  if (!qword_1ED7DD6D8[0])
  {
    sub_1C5DE91C8(255, &qword_1ED7DD6D0, type metadata accessor for State, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED7DD6D8);
    }
  }
}

void sub_1C5DE9AA8()
{
  if (!qword_1ED7DD7C0)
  {
    type metadata accessor for State();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7DD7C0);
    }
  }
}

void sub_1C5DE9B10()
{
  if (!qword_1EC1A9688)
  {
    sub_1C5DE91C8(255, &qword_1ED7DF158, sub_1C5D11E0C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A9688);
    }
  }
}

uint64_t sub_1C5DE9BB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C5DE9C0C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5DE9C50(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C5DE91C8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayerController.PlayerState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0xFFE)
  {
    if (a2 + 61442 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 61442 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 61443;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 14) | (4 * ((*a1 >> 4) & 0x3E0 | (*a1 >> 3)))) ^ 0xFFF;
  if (v5 >= 0xFFD)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for PlayerController.PlayerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61442 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61442 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFFD)
  {
    v6 = ((a2 - 4094) >> 16) + 1;
    *result = a2 - 4094;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          v7 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
          *result = (16 * v7) & 0xFE00 | (8 * (v7 & 0x1F));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C5DE9E44(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 7 | (8 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1C5DE9E7C(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x107 | (a2 << 14);
  }

  else
  {
    v2 = (32 * (a2 - 2)) & 0x100 | (a2 - 2) & 7 | 0x8000;
  }

  *result = v2;
  return result;
}

void *OUTLINED_FUNCTION_16_24()
{
  sub_1C5D7E534(v0 + 32);

  return memcpy((v0 + 256), (v0 + 32), 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return sub_1C6017650();
}

uint64_t OUTLINED_FUNCTION_43_11()
{

  return sub_1C60176D0();
}

uint64_t OUTLINED_FUNCTION_54_7()
{

  return sub_1C6017650();
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return sub_1C5DBBF0C();
}

uint64_t OUTLINED_FUNCTION_58_7()
{

  return swift_getObjectType();
}

uint64_t sub_1C5DEA0B4()
{
  v1 = [v0 contentItemID];
  v2 = sub_1C6016940();

  return v2;
}

uint64_t sub_1C5DEA10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C6017860();
  }
}

uint64_t sub_1C5DEA140()
{
  sub_1C60179F0();
  sub_1C60169F0();
  return sub_1C6017A20();
}

uint64_t sub_1C5DEA1A0()
{
  sub_1C60179F0();
  sub_1C60169F0();
  return sub_1C6017A20();
}

unint64_t QueuePlayerItemType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C5DEA23C()
{
  result = qword_1EC1AB9E0;
  if (!qword_1EC1AB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB9E0);
  }

  return result;
}

unint64_t sub_1C5DEA290@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = QueuePlayerItemType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C5DEA2E8()
{
  result = qword_1EC1AB9E8[0];
  if (!qword_1EC1AB9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1AB9E8);
  }

  return result;
}

void sub_1C5DEA33C()
{
  sub_1C6017350();
  if (v0 <= 0x3F)
  {
    sub_1C5DED248(319, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1C5DEA470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & 0x7FFFFFFF;
  v6 = &unk_1F453C2D8;
  v7 = MEMORY[0x1E69E7CC0];
  if ((a3 & 0x7FFFFFFF) == 0)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if ((a3 & 0x100000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_1F453C2A0;
  }

  v9 = v8[2];

  if (!v9)
  {
    return 0;
  }

  v10 = &unk_1F453C258;
  if (!v5)
  {
    v10 = v7;
  }

  if ((a3 & 0x100000000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = &unk_1F453C220;
  }

  v12 = v11[2];

  v14 = v12 - 1;
  if (v12 - 1 >= a1)
  {
    v14 = a1;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < v11[2])
  {
    v15 = v11[v14 + 4];

    return v15;
  }

  __break(1u);
  return result;
}

void sub_1C5DEA54C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = &unk_1F453C378;
  if ((a3 & 0x7FFFFFFF) == 0)
  {
    v6 = &unk_1F453C350;
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_1F453C320;
  }

  v8 = v7[2];

  v9 = v8 - 1;
  if (v8 - 1 >= a1)
  {
    v9 = a1;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < v7[2])
  {

    sub_1C5DEA614(a2, a3 | ((HIDWORD(a3) & 1) << 32));
    return;
  }

  __break(1u);
}

float sub_1C5DEA614(uint64_t a1, uint64_t a2)
{
  v2 = -1.0;
  if (a1 == 1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  if (a1 == 1)
  {
    v4 = *&a2;
  }

  else
  {
    v4 = -*&a2;
  }

  if (*&a2 != 0.0)
  {
    v3 = v4;
  }

  if (a1 == 1)
  {
    v2 = 1.0;
    v5 = *&a2;
  }

  else
  {
    v5 = -*&a2;
  }

  if (*&a2 == 0.0)
  {
    result = v2;
  }

  else
  {
    result = v5;
  }

  if ((a2 & 0x100000000) != 0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C5DEA658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  OUTLINED_FUNCTION_2_45();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_57();
  type metadata accessor for RateScanningSubscription();
  v12 = OUTLINED_FUNCTION_4_44();
  v13(v12);
  sub_1C5DEA768(v7, v6, v5 | ((HIDWORD(v5) & 1) << 32), a4, a5);
  v17 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_45(WitnessTable);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t *sub_1C5DEA818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v24 = a1;
  v9 = *v5;
  v10 = *(*v5 + 80);
  v11 = sub_1C6017350();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  __swift_storeEnumTagSinglePayload(v5 + *(v9 + 104), 1, 1, v10);
  v15 = (v5 + *(*v5 + 112));
  *v15 = 0u;
  v15[1] = 0u;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  v16 = *(*v5 + 136);
  v17 = sub_1C6015020();
  __swift_storeEnumTagSinglePayload(v5 + v16, 1, 1, v17);
  v18 = *(*v5 + 144);
  v19 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C5DED354(0, 0xE000000000000000, v19);
  [v19 setMinimumFractionDigits_];
  [v19 setMaximumFractionDigits_];
  *(v5 + v18) = v19;
  v5[2] = a2;
  *(v5 + 6) = a3;
  *(v5 + 28) = BYTE4(a3) & 1;
  v5[4] = a4;
  *(v5 + 40) = v23;
  (*(*(v10 - 8) + 32))(v14, v24, v10);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
  v20 = *(*v5 + 104);
  swift_beginAccess();
  (*(v12 + 40))(v5 + v20, v14, v11);
  swift_endAccess();
  return v5;
}

uint64_t sub_1C5DEAAC8(uint64_t a1)
{
  sub_1C5DED248(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C6016460();
  if (sub_1C6016450() & 1) != 0 && (sub_1C6016460(), result = sub_1C6016450(), (result))
  {
    __break(1u);
  }

  else
  {
    sub_1C6016460();
    if ((sub_1C6016450() & 1) != 0 || (sub_1C6016460(), result = sub_1C6016450(), a1) && (result & 1) == 0)
    {
      sub_1C6015010();
      v7 = sub_1C6015020();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
      v8 = *(*v1 + 136);
      swift_beginAccess();
      sub_1C5DED118(v5, v1 + v8);
      swift_endAccess();
      return sub_1C5DEAC18();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEAC18()
{
  v1 = v0;
  v2 = *v0;
  v77 = sub_1C6016630();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C6016690();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6016620();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v84 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v71 - v8;
  v82 = sub_1C60166B0();
  v81 = *(v82 - 8);
  v9 = MEMORY[0x1EEE9AC00](v82);
  v79 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v71 - v11;
  v12 = sub_1C6017030();
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[11];
  v15 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = v14;
  swift_getAssociatedConformanceWitness();
  v17 = sub_1C6016440();
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v71 - v19;
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  v23 = v1[2];
  v24 = *(v1 + 6);
  v26 = v2[15];
  v27 = *(v1 + v26);
  LOBYTE(aBlock[0]) = *(v1 + 28);
  v25 = LOBYTE(aBlock[0]);
  sub_1C5DEA54C(v27, v23, v24 | (LOBYTE(aBlock[0]) << 32));
  v29 = v28;
  v30 = *(*v1 + 104);
  swift_beginAccess();
  v94 = v15;
  if (!__swift_getEnumTagSinglePayload(v1 + v30, 1, v15))
  {
    v31 = v94;
    (*(v20 + 16))(v22, v1 + v30, v94);
    LODWORD(aBlock[0]) = v29;
    sub_1C6016430();
    (*(v20 + 8))(v22, v31);
  }

  v32 = v20;
  v33 = *(v1 + v26);
  v78 = v24 & 0x7FFFFFFF;
  v34 = &unk_1F453C378;
  if ((v24 & 0x7FFFFFFF) == 0)
  {
    v34 = &unk_1F453C350;
  }

  if (v25)
  {
    v35 = v34;
  }

  else
  {
    v35 = &unk_1F453C320;
  }

  v36 = v35[2];

  if (v33 == v36 - 1 && !__swift_getEnumTagSinglePayload(v1 + v30, 1, v94))
  {
    v38 = v32;
    v39 = *(v32 + 16);
    v40 = v94;
    v39(v22, v1 + v30, v94);
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v90, 1, 1, AssociatedTypeWitness);
    sub_1C6016410();
    (*(v91 + 8))(v41, v92);
    (*(v38 + 8))(v22, v40);
  }

  v42 = *(v1 + v26);
  LOBYTE(aBlock[0]) = v25;
  result = sub_1C5DEA470(v42, v37, v24 | (v25 << 32));
  if ((v44 & 1) == 0)
  {
    v45 = *(*v1 + 128);
    if (!*(v1 + v45))
    {
      v46 = MEMORY[0x1E69E7CC0];
      if (*(v1 + 40) == 1)
      {
        v47 = &unk_1F453C258;
        if (!v78)
        {
          v47 = MEMORY[0x1E69E7CC0];
        }

        if (v25)
        {
          v48 = v47;
        }

        else
        {
          v48 = &unk_1F453C220;
        }

        sub_1C5DEB900(v48);
      }

      v49 = *(v1 + v26);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        __break(1u);
      }

      else
      {
        *(v1 + v26) = v51;
        sub_1C5DED1AC();
        aBlock[0] = v46;
        sub_1C5DED1F0();
        sub_1C5DED248(0, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
        sub_1C5DED2AC();
        v52 = v87;
        v53 = v89;
        sub_1C60173B0();
        v54 = sub_1C6017040();
        (*(v88 + 8))(v52, v53);
        *(v1 + v45) = v54;
        result = swift_unknownObjectRelease();
        if (*(v1 + v45))
        {
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          v56 = v79;
          sub_1C60166A0();
          v57 = v80;
          sub_1C60166E0();
          v92 = v45;
          v58 = *(v81 + 8);
          v59 = v82;
          v58(v56, v82);
          v60 = v83;
          sub_1C5DEDA0C(v83);
          v61 = v84;
          sub_1C5DEDA78(v84);
          MEMORY[0x1C6953BE0](v57, v60, v61, ObjectType);
          swift_unknownObjectRelease();
          v62 = v86;
          v63 = *(v85 + 8);
          v63(v61, v86);
          v63(v60, v62);
          result = (v58)(v57, v59);
          v64 = v92;
          if (*(v1 + v92))
          {
            swift_getObjectType();
            v65 = swift_allocObject();
            swift_weakInit();
            v66 = swift_allocObject();
            v67 = v93;
            v66[2] = v94;
            v66[3] = v67;
            v66[4] = v65;
            aBlock[4] = sub_1C5DED334;
            aBlock[5] = v66;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1C5DBC798;
            aBlock[3] = &block_descriptor_26;
            v68 = _Block_copy(aBlock);
            swift_unknownObjectRetain();

            v69 = v72;
            sub_1C5DEDAE8();
            v70 = v74;
            sub_1C5DEDAEC();
            sub_1C6017050();
            _Block_release(v68);
            swift_unknownObjectRelease();
            (*(v76 + 8))(v70, v77);
            (*(v73 + 8))(v69, v75);

            if (*(v1 + v64))
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1C6017070();
              return swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5DEB65C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1C6016440();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v13 = *(v2 + 104);
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v13, 1, v3))
  {
    (*(v10 + 16))(v12, v1 + v13, v3);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, AssociatedTypeWitness);
    sub_1C6016410();
    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v12, v3);
  }

  v14 = *(*v1 + 128);
  if (*(v1 + v14))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(v1 + v14) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DEB900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1C5DEB944()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(*result + 128);
    if (*(result + v2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C6017060();
      swift_unknownObjectRelease();
    }

    *(v1 + v2) = 0;
    v3 = swift_unknownObjectRelease();
    sub_1C5DEAC18(v3);
  }

  return result;
}

id *sub_1C5DEB9FC()
{
  v1 = *(*v0 + 13);
  v2 = sub_1C6017350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C5CBCF4C(v0 + *(*v0 + 14));
  swift_unknownObjectRelease();
  sub_1C5D01DB8(v0 + *(*v0 + 17));

  return v0;
}

void sub_1C5DEBB30()
{
  sub_1C6017350();
  if (v0 <= 0x3F)
  {
    sub_1C5DED248(319, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1C5DEBCB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = &unk_1F453C3F8;
  }

  else
  {
    v5 = &unk_1F453C3B0;
  }

  v6 = v5[2];

  v8 = v6 - 1;
  if (v6 - 1 >= a1)
  {
    v8 = a1;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < v5[2])
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEBD70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  OUTLINED_FUNCTION_2_45();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_57();
  type metadata accessor for JumpScanningSubscription();
  v12 = OUTLINED_FUNCTION_4_44();
  v13(v12);
  sub_1C5DEBE78(v7, v6, v5, a4 & 1, a5);
  v17 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_45(WitnessTable);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t *sub_1C5DEBF0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v24 = a5;
  v25 = a1;
  v9 = *v5;
  v10 = *(*v5 + 80);
  v11 = sub_1C6017350();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  __swift_storeEnumTagSinglePayload(v5 + *(v9 + 104), 1, 1, v10);
  v15 = (v5 + *(*v5 + 112));
  *v15 = 0u;
  v15[1] = 0u;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 136)) = 0;
  v16 = *(*v5 + 144);
  v17 = sub_1C6015020();
  __swift_storeEnumTagSinglePayload(v5 + v16, 1, 1, v17);
  v18 = *(*v5 + 152);
  v19 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C5DED354(0, 0xE000000000000000, v19);
  [v19 setMinimumFractionDigits_];
  [v19 setMaximumFractionDigits_];
  *(v5 + v18) = v19;
  v5[2] = a2;
  v5[3] = a3;
  *(v5 + 32) = a4 & 1;
  v20 = v25;
  v5[5] = v24;
  (*(*(v10 - 8) + 32))(v14, v20, v10);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
  v21 = *(*v5 + 104);
  swift_beginAccess();
  (*(v12 + 40))(v5 + v21, v14, v11);
  swift_endAccess();
  return v5;
}

uint64_t sub_1C5DEC1C4(uint64_t a1)
{
  sub_1C5DED248(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C6016460();
  if (sub_1C6016450() & 1) != 0 && (sub_1C6016460(), result = sub_1C6016450(), (result))
  {
    __break(1u);
  }

  else
  {
    sub_1C6016460();
    if ((sub_1C6016450() & 1) != 0 || (sub_1C6016460(), result = sub_1C6016450(), a1) && (result & 1) == 0)
    {
      sub_1C6015010();
      v7 = sub_1C6015020();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
      v8 = *(*v1 + 144);
      swift_beginAccess();
      sub_1C5DED118(v5, v1 + v8);
      swift_endAccess();
      return sub_1C5DEC314();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEC314()
{
  v1 = v0;
  v67 = *v0;
  v2 = v67;
  v58 = sub_1C6016630();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C6016690();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6016620();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v63 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v8;
  v9 = sub_1C60166B0();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v52 - v13;
  v14 = sub_1C6017030();
  v66 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 80);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v22 = *(v1 + 32);
  v23 = *(v2 + 120);
  sub_1C5DEBCB0(*(v1 + v23), v1[2], v1[3], *(v1 + 32));
  v25 = v24;
  v26 = *(*v1 + 104);
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v26, 1, v18))
  {
    (*(v19 + 16))(v21, v1 + v26, v18);
    aBlock[0] = v25;
    sub_1C6016430();
    (*(v19 + 8))(v21, v18);
  }

  v27 = *(v1 + v23);
  v28 = &unk_1F453C3C0;
  if (v22)
  {
    v28 = &unk_1F453C408;
  }

  v29 = *v28;

  if (v27 >= v29 - 1)
  {
    goto LABEL_10;
  }

  v31 = *(*v1 + 128);
  v32 = *(v1 + v31);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + v31) = v34;
  if (v34 >= 4)
  {
    *(v1 + v31) = 0;
    v35 = *(v1 + v23);
    v33 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v33)
    {
      *(v1 + v23) = v36;
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
  v37 = *(*v1 + 136);
  if (!*(v1 + v37))
  {
    sub_1C5DED1AC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C5DED1F0();
    sub_1C5DED248(0, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    sub_1C5DED2AC();
    sub_1C60173B0();
    v38 = sub_1C6017040();
    (*(v66 + 8))(v17, v14);
    *(v1 + v37) = v38;
    result = swift_unknownObjectRelease();
    if (*(v1 + v37))
    {
      swift_unknownObjectRetain();
      sub_1C60166A0();
      ObjectType = swift_getObjectType();
      v40 = v59;
      sub_1C60166E0();
      v41 = v61;
      v66 = *(v60 + 8);
      (v66)(v12, v61);
      v42 = v62;
      sub_1C5DEDA0C(v62);
      v43 = v63;
      sub_1C5DEDA78(v63);
      MEMORY[0x1C6953BE0](v40, v42, v43, ObjectType);
      swift_unknownObjectRelease();
      v44 = *(v64 + 8);
      v45 = v43;
      v46 = v65;
      v44(v45, v65);
      v44(v42, v46);
      result = (v66)(v40, v41);
      if (*(v1 + v37))
      {
        swift_getObjectType();
        v47 = swift_allocObject();
        swift_weakInit();
        v48 = swift_allocObject();
        v48[2] = v18;
        v48[3] = *(v67 + 88);
        v48[4] = v47;
        aBlock[4] = sub_1C5DED348;
        aBlock[5] = v48;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C5DBC798;
        aBlock[3] = &block_descriptor_25_0;
        v49 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        v50 = v53;
        sub_1C5DEDAE8();
        v51 = v55;
        sub_1C5DEDAEC();
        sub_1C6017050();
        _Block_release(v49);
        swift_unknownObjectRelease();
        (*(v57 + 8))(v51, v58);
        (*(v54 + 8))(v50, v56);

        if (*(v1 + v37))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1C6017070();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5DECB60()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1C6016440();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v13 = *(v2 + 104);
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v13, 1, v3))
  {
    (*(v10 + 16))(v12, v1 + v13, v3);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, AssociatedTypeWitness);
    sub_1C6016410();
    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v12, v3);
  }

  v14 = *(*v1 + 136);
  if (*(v1 + v14))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(v1 + v14) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DECE04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(*result + 136);
    if (*(result + v2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C6017060();
      swift_unknownObjectRelease();
    }

    *(v1 + v2) = 0;
    v3 = swift_unknownObjectRelease();
    sub_1C5DEC314(v3);
  }

  return result;
}

id *sub_1C5DECEBC()
{
  v1 = *(*v0 + 13);
  v2 = sub_1C6017350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C5CBCF4C(v0 + *(*v0 + 14));
  swift_unknownObjectRelease();
  sub_1C5D01DB8(v0 + *(*v0 + 18));

  return v0;
}

uint64_t sub_1C5DECFD8(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1C5DED118(uint64_t a1, uint64_t a2)
{
  sub_1C5DED248(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5DED1AC()
{
  result = qword_1ED7DC238;
  if (!qword_1ED7DC238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DC238);
  }

  return result;
}

unint64_t sub_1C5DED1F0()
{
  result = qword_1ED7DC240;
  if (!qword_1ED7DC240)
  {
    sub_1C6017030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC240);
  }

  return result;
}

void sub_1C5DED248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C5DED2AC()
{
  result = qword_1ED7DC270;
  if (!qword_1ED7DC270)
  {
    sub_1C5DED248(255, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC270);
  }

  return result;
}

void sub_1C5DED354(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C6016900();

  [a3 setNegativePrefix_];
}

uint64_t sub_1C5DED3B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C5DED3F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5DED448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C5DED488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5DED4D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1C5DED514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_1C5DED58C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 13))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
      if (v3 <= 1)
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

uint64_t sub_1C5DED5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5DED650(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C6017440();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C5D0F1D8(0, v2 & ~(v2 >> 63), 0);
    v36 = v44;
    result = sub_1C5DF4ACC(v1);
    v40 = result;
    v41 = v4;
    v42 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v8 = v40;
        v9 = v42;
        v35 = v41;
        v10 = v1;
        v11 = sub_1C5DF4B2C(v40, v41, v42, v1);
        if ((~(*(v11 + 96) | (*(v11 + 98) << 16)) & 0xFEFEFE) != 0)
        {
          memcpy(__dst, (v11 + 32), sizeof(__dst));
          memmove(__src, (v11 + 32), 0x43uLL);
          memcpy(v43, __src, sizeof(v43));
          sub_1C5D95E74(__src, v37);
          v12 = sub_1C5D61CD4();
          v13 = v14;
          sub_1C5DF47C8();
        }

        else
        {

          v12 = 0;
          v13 = 0;
        }

        v15 = v36;
        v44 = v36;
        v17 = *(v36 + 16);
        v16 = *(v36 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_1C5D0F1D8((v16 > 1), v17 + 1, 1);
          v15 = v44;
        }

        *(v15 + 16) = v17 + 1;
        v18 = v15 + 16 * v17;
        *(v18 + 32) = v12;
        *(v18 + 40) = v13;
        v36 = v15;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_39;
          }

          v1 = v10;
          if (sub_1C6017410())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          sub_1C5DF508C(0, &qword_1EC1ABB28, MEMORY[0x1E69E64B8]);
          v24 = sub_1C6016D80();
          sub_1C6017490();
          result = v24(__src, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_40;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v1 = v10;
          v19 = 1 << *(v10 + 32);
          if (v8 >= v19)
          {
            goto LABEL_35;
          }

          v20 = v8 >> 6;
          v21 = *(v32 + 8 * (v8 >> 6));
          if (((v21 >> v8) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_37;
          }

          v22 = v21 & (-2 << (v8 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                result = sub_1C5D380F8(v8, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_30;
              }
            }

            result = sub_1C5D380F8(v8, v35, 0);
          }

LABEL_30:
          v30 = *(v10 + 36);
          v40 = v19;
          v41 = v30;
          v42 = 0;
        }

        if (v6 == v23)
        {
          sub_1C5D380F8(v40, v41, v42);
          return v36;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DED9EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C6017440();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1C5DEDA0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  sub_1C6016620();
  OUTLINED_FUNCTION_105();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1C5DEDA78@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  sub_1C6016620();
  OUTLINED_FUNCTION_105();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1C5DEDAEC()
{
  sub_1C6016630();
  sub_1C5DF5240(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
  v0 = MEMORY[0x1E69E7F60];
  sub_1C5DF4F4C(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C5DF4FC0(&qword_1ED7DC280, &qword_1ED7DC288, v0);
  return sub_1C60173B0();
}

void sub_1C5DEDBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_27();
  v19 = *(v18 + 40);
  if ((v19 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v20, v21);
    sub_1C6016D90();
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    a15 = v19 + 56;
    a16 = ~v27;
    OUTLINED_FUNCTION_12_27();
    a18 = v28 & v29;
    swift_bridgeObjectRetain_n();
    a17 = 0;
    a14 = v19;
  }

  if (a14 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v30 = a17;
  v31 = a17;
  if (a18)
  {
LABEL_9:
    OUTLINED_FUNCTION_9_2();
    v34 = v33 & v32;
    v36 = *(*(a14 + 48) + ((v31 << 9) | (8 * v35)));

    if (v36)
    {
      while (!sub_1C5DEF878())
      {

        a17 = v31;
        a18 = v34;
        if ((a14 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (sub_1C6017470())
        {
          type metadata accessor for UserEventCompletionMonitor();
          OUTLINED_FUNCTION_42_11();
          v31 = a17;
          v34 = a18;
          if (a10)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      OUTLINED_FUNCTION_37_8();
    }

    else
    {
LABEL_16:
      OUTLINED_FUNCTION_37_8();
    }

    OUTLINED_FUNCTION_30_14();
  }

  else
  {
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= ((a16 + 64) >> 6))
      {
        goto LABEL_16;
      }

      ++v30;
      if (*(a15 + 8 * v31))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C5DEDDC0(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 66) >> 4) < 0xDu && ((0x1A81u >> ((*(a1 + 64) | (*(a1 + 66) << 16)) >> 20)))
  {
    return 0;
  }

  v30 = a1;
  OUTLINED_FUNCTION_27();
  v4 = *(v1 + 40);
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v5, v6);
    result = sub_1C6016D90();
    v4 = v32[8];
    v7 = v32[9];
    v8 = v32[10];
    v9 = v32[11];
    v10 = v32[12];
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v7 = v4 + 56;
    v8 = ~v11;
    OUTLINED_FUNCTION_12_27();
    v10 = v12 & v13;

    v9 = 0;
  }

  v29[1] = v8;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v9;
    v15 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    OUTLINED_FUNCTION_9_2();
    v18 = v17 & v16;
    v20 = *(*(v4 + 48) + ((v15 << 9) | (8 * v19)));

    if (!v20)
    {
LABEL_20:
      sub_1C5C8C7F4();
      sub_1C5CDAF64(v2 + 48, v32);
      v22 = *(v2 + 16);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
      MEMORY[0x1EEE9AC00](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v25;

      v28 = v30;
      sub_1C5D95E74(v30, v31);
      sub_1C5DF4D00(v28, v27, v22, v2, &off_1F45469E0);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_51_9();

      sub_1C5E1F79C();
      swift_endAccess();

      return 1;
    }

    while (1)
    {
      if (sub_1C5DEE974(v30))
      {
        OUTLINED_FUNCTION_51_9();
        sub_1C5DF3CF0(v20);
        swift_endAccess();

        sub_1C5DEEB7C(v30);
      }

      v9 = v15;
      v10 = v18;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v21 = sub_1C6017470();
      if (v21)
      {
        v32[0] = v21;
        type metadata accessor for UserEventCompletionMonitor();
        OUTLINED_FUNCTION_42_11();
        v20 = v31[0];
        v15 = v9;
        v18 = v10;
        if (v31[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= ((v8 + 64) >> 6))
    {
      goto LABEL_20;
    }

    ++v14;
    if (*(v7 + 8 * v15))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEE158(uint64_t result, void *a2)
{
  v3 = *(result + 16);
  v65 = *result;
  v66 = v3;
  v4 = *(result + 48);
  v67 = *(result + 32);
  v68 = v4;
  if ((*(result + 66) >> 4) <= 0xCu && ((1 << (*(result + 66) >> 4)) & 0x1A81) != 0)
  {
    return result;
  }

  v7 = result;
  v37 = *(result + 64) | (*(result + 66) << 16);
  OUTLINED_FUNCTION_27();
  v33 = a2;
  if ((*(v2 + 40) & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v8, v9);
    result = sub_1C6016D90();
    v10 = v56;
    v11 = v57;
    v12 = v58;
    v13 = v59;
    v14 = v60;
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v10 = v15;
    v11 = v15 + 56;
    v12 = ~v16;
    OUTLINED_FUNCTION_12_27();
    v14 = v17 & v18;
    result = swift_bridgeObjectRetain_n();
    v13 = 0;
  }

  v19 = (v12 + 64) >> 6;
  v36 = v37 & 0xFEFEFEFE;
  v35 = v10;
  if (v10 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v20 = v13;
  v21 = v13;
  if (!v14)
  {
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v21 >= v19)
      {
        break;
      }

      ++v20;
      if (*(v11 + 8 * v21))
      {
        goto LABEL_14;
      }
    }

LABEL_27:
    OUTLINED_FUNCTION_50_7();
  }

LABEL_14:
  OUTLINED_FUNCTION_9_2();
  v24 = v23 & v22;
  v26 = *(*(v10 + 48) + ((v21 << 9) | (8 * v25)));

  if (!v26)
  {
    goto LABEL_27;
  }

  while (1)
  {
    memcpy(__dst, v26 + 2, 0x43uLL);
    v28 = v26[3];
    v51 = v26[2];
    v52 = v28;
    v29 = v26[5];
    v53 = v26[4];
    v54 = v29;
    *(__src + 5) = v65;
    *(&__src[2] + 5) = v66;
    *(&__src[4] + 5) = v67;
    v30 = __dst[32] | (LOBYTE(__dst[33]) << 16);
    *(&__src[6] + 5) = v68;
    if ((~v30 & 0xFEFEFE) == 0)
    {
      if (v36 == 16711422)
      {
        sub_1C5D936A8(__dst, v44);
        sub_1C5D95E74(v7, v44);
        OUTLINED_FUNCTION_50_7();
        OUTLINED_FUNCTION_23_16();
        v46 = BYTE2(v30);
        v45 = v30;
        sub_1C5DF47C8();
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    v31 = v26[3];
    v40 = v26[2];
    v41 = v31;
    v32 = v26[5];
    v42 = v26[4];
    v43 = v32;
    if (v36 != 16711422)
    {
      break;
    }

LABEL_22:
    sub_1C5D936A8(__dst, v44);
    sub_1C5D95E74(v7, v44);

    OUTLINED_FUNCTION_23_16();
    v45 = v30;
    v46 = BYTE2(v30);
    memcpy(v47, __src, sizeof(v47));
    v49 = BYTE2(v37);
    v48 = v37;
    result = sub_1C5DF4518();
LABEL_25:
    v13 = v21;
    v14 = v24;
    v10 = v35;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v27 = sub_1C6017470();
    if (v27)
    {
      __src[0] = v27;
      type metadata accessor for UserEventCompletionMonitor();
      OUTLINED_FUNCTION_42_11();
      v26 = v44[0];
      v21 = v13;
      v24 = v14;
      if (v44[0])
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v39[0] = v65;
  v39[1] = v66;
  v39[2] = v67;
  v39[3] = v68;
  BYTE2(v39[4]) = BYTE2(v37);
  LOWORD(v39[4]) = v37;
  memcpy(v64, v39, 0x43uLL);
  v61[0] = v40;
  v61[1] = v41;
  v61[2] = v42;
  v61[3] = v43;
  v63 = BYTE2(v30);
  v62 = __dst[32];
  sub_1C5D936A8(__dst, v38);
  sub_1C5D936A8(__dst, v38);
  sub_1C5D95E74(v7, v38);
  v34 = sub_1C5D614C0(v61, v64);
  sub_1C5DF47C8();
  sub_1C5DF47C8();
  OUTLINED_FUNCTION_23_16();
  v46 = BYTE2(v30);
  v45 = v30;
  sub_1C5DF47C8();
  if ((v34 & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_1C5C8C7F4();
LABEL_29:

  swift_beginAccess();
  sub_1C5DF3CF0(v26);
  swift_endAccess();

  sub_1C5DEF600(v33);
}

uint64_t sub_1C5DEE624()
{
  sub_1C5D5D630();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C60558C0;
  OUTLINED_FUNCTION_27();

  v2 = sub_1C5DED9EC(v1);

  v3 = MEMORY[0x1E69E6530];
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x65726F74696E6F4DLL;
  *(inited + 88) = 0xEF73746E65764564;

  v5 = sub_1C5DED650(v4);

  sub_1C5DF5024();
  *(inited + 120) = v6;
  *(inited + 96) = v5;
  return sub_1C6016880();
}

uint64_t sub_1C5DEE73C(void *a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 40);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_1C6017440();

    if (!v5)
    {
      return result;
    }
  }

  else if (!*(v4 + 16))
  {
    return result;
  }

  v6 = *(v1 + 40);
  *(v1 + 40) = MEMORY[0x1E69E7CD0];
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v7, v8);
    result = sub_1C6016D90();
    v10 = v26;
    v9 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v9 = v6 + 56;
    v11 = ~v14;
    OUTLINED_FUNCTION_12_27();
    v13 = v15 & v16;

    v12 = 0;
    v10 = v6;
  }

  v17 = (v11 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v18 = v12;
    v19 = v12;
    if (!v13)
    {
      break;
    }

LABEL_13:
    OUTLINED_FUNCTION_9_2();
    v22 = v21 & v20;
    v24 = *(*(v10 + 48) + ((v19 << 9) | (8 * v23)));

    if (!v24)
    {
LABEL_19:
      sub_1C5C8C7F4();
    }

    while (1)
    {
      sub_1C5DEF600(a1);

      v12 = v19;
      v13 = v22;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1C6017470())
      {
        type metadata accessor for UserEventCompletionMonitor();
        OUTLINED_FUNCTION_42_11();
        v19 = v12;
        v22 = v13;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      goto LABEL_19;
    }

    ++v18;
    if (*(v9 + 8 * v19))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEE974(unsigned __int8 *__src)
{
  memcpy(v14, __src, sizeof(v14));
  memcpy(__dst, (v1 + 32), 0x43uLL);
  memcpy(v13, (v1 + 32), sizeof(v13));
  v3 = LOWORD(__dst[8]) | (BYTE2(__dst[8]) << 16);
  if ((~v3 & 0xFEFEFE) != 0)
  {
    switch(v3 >> 20)
    {
      case 1u:
        if (((__src[66] << 16) & 0xF00000) != 0x100000)
        {
          goto LABEL_22;
        }

        if (__dst[2] == *(__src + 2) && __dst[3] == *(__src + 3))
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      case 2u:
        if (((__src[66] << 16) & 0xF00000) == 0x300000)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 8u:
        v5 = __src[66] >> 4;
        if (v5 == 3)
        {
          goto LABEL_25;
        }

        if (v5 != 8)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      case 0xAu:
        v6 = __src[66] >> 4;
        if (v6 == 3)
        {
LABEL_25:
          sub_1C5D95E74(__src, v11);
          sub_1C5D936A8(__dst, v11);
          sub_1C5DF4818();
          v9 = 1;
          return v9 & 1;
        }

        if (v6 == 10)
        {
LABEL_17:
          if (__dst[1] != *(__src + 1) || __dst[2] != *(__src + 2))
          {
LABEL_21:
            v8 = sub_1C6017860();
            sub_1C5D95E74(__src, v11);
            sub_1C5D936A8(__dst, v11);
            sub_1C5DF4818();
            v9 = v8 ^ 1;
            return v9 & 1;
          }
        }

LABEL_22:
        sub_1C5D95E74(__src, v11);
        sub_1C5D936A8(__dst, v11);
        break;
      default:
        goto LABEL_22;
    }
  }

  else
  {
    sub_1C5D95E74(__src, v11);
  }

  sub_1C5DF4818();
  v9 = 0;
  return v9 & 1;
}

void sub_1C5DEEB7C(uint64_t *__src)
{
  v2 = v1;
  memcpy(v50, __src, sizeof(v50));
  memcpy(__dst, v1 + 2, 0x43uLL);
  memcpy(v49, v1 + 2, sizeof(v49));
  v4 = LOWORD(__dst[8]) | (BYTE2(__dst[8]) << 16);
  if ((~v4 & 0xFEFEFE) != 0)
  {
    v5 = __dst[2];
    v7 = __dst[3];
    v6 = __dst[4];
    switch(v4 >> 20)
    {
      case 1u:
        if (((*(__src + 66) << 16) & 0xF00000) != 0x100000)
        {
          goto LABEL_30;
        }

        v8 = __src[2];
        v9 = __src[3];
        if (__dst[2] == v8 && __dst[3] == v9)
        {
          goto LABEL_30;
        }

        v11 = __src[4];
        if (sub_1C6017860())
        {
          goto LABEL_30;
        }

        strcpy(v41, "Replaced by ");
        v41[13] = 0;
        *&v41[14] = -5120;
        sub_1C5D95E74(__src, &v42);
        sub_1C5D936A8(__dst, &v42);

        sub_1C5C74C28(v6);

        sub_1C5C74C28(v11);
        MEMORY[0x1C69534E0](v8, v9);
        v12 = sub_1C5DBA4F0(v5, v7, 0, *v41, *&v41[8]);

        sub_1C5DF053C(v12, v1, __src);

        sub_1C5C74C18(v11);

        sub_1C5C74C18(v6);
        goto LABEL_31;
      case 2u:
        goto LABEL_20;
      case 8u:
        v13 = *(__src + 66) >> 4;
        if (v13 == 3)
        {
          goto LABEL_33;
        }

        if (v13 != 8)
        {
          goto LABEL_30;
        }

        if (__dst[1] == __src[1] && __dst[2] == __src[2])
        {
          goto LABEL_30;
        }

        v15 = __src[3];
        if (sub_1C6017860())
        {
          goto LABEL_30;
        }

        *v41 = 0;
        *&v41[8] = 0xE000000000000000;
        sub_1C5D95E74(__src, &v42);
        sub_1C5D936A8(__dst, &v42);

        sub_1C5C74C28(v7);
        v37 = v15;
        sub_1C5C74C28(v15);
        sub_1C6017540();
        *&v40 = 0;
        *(&v40 + 1) = 0xE000000000000000;
        memcpy(v41, v2 + 2, sizeof(v41));
        v16 = *&v41[64] | (v41[66] << 16);
        if ((~v16 & 0xFEFEFE) != 0)
        {
          goto LABEL_36;
        }

        __break(1u);
LABEL_20:
        if (((*(__src + 66) << 16) & 0xF00000) != 0x300000)
        {
          goto LABEL_30;
        }

        *v41 = 0;
        *&v41[8] = 0xE000000000000000;
        sub_1C5D95E74(__src, &v42);
        sub_1C5D936A8(__dst, &v42);
        sub_1C6017540();
        v40 = *v41;
        memcpy(v41, v2 + 2, sizeof(v41));
        v17 = *&v41[64] | (v41[66] << 16);
        if ((~v17 & 0xFEFEFE) == 0)
        {
          goto LABEL_38;
        }

        v18 = v2[3];
        v42 = v2[2];
        v43 = v18;
        v19 = v2[5];
        v44 = v2[4];
        v45 = v19;
        v46 = *&v41[64];
        v47 = BYTE2(v17);
        memcpy(v39, v2 + 2, 0x43uLL);
        sub_1C5D95E74(v39, v38);
        v20 = sub_1C5D61CD4();
        MEMORY[0x1C69534E0](v20);

        sub_1C5DF47C8();
        MEMORY[0x1C69534E0](0xD00000000000001ALL, 0x80000001C6055830);
        v21 = sub_1C5D61CD4();
        MEMORY[0x1C69534E0](v21);

        MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C6055850);
        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        v38[0] = 2;
        sub_1C6016880();
        _s3__C4CodeOMa_6();
        sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
        v22 = sub_1C6017280();

        sub_1C5DF053C(v22, v2, __src);

        goto LABEL_31;
      case 0xAu:
        v23 = *(__src + 66) >> 4;
        if (v23 == 3)
        {
LABEL_33:
          sub_1C5D95E74(__src, &v42);
          sub_1C5D936A8(__dst, &v42);
          sub_1C5DF4818();
          *&v42 = 0;
          *(&v42 + 1) = 0xE000000000000000;
          sub_1C6017540();
          v40 = v42;
          memcpy(v41, v1 + 2, sizeof(v41));
          v26 = *&v41[64] | (v41[66] << 16);
          if ((~v26 & 0xFEFEFE) != 0)
          {
            v27 = v1[3];
            v42 = v1[2];
            v43 = v27;
            v28 = v1[5];
            v44 = v1[4];
            v45 = v28;
            v46 = *&v41[64];
            v47 = BYTE2(v26);
            memcpy(v39, v1 + 2, 0x43uLL);
            sub_1C5D95E74(v39, v38);
            v29 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v29);

            sub_1C5DF47C8();
            MEMORY[0x1C69534E0](0x2C64656C69616620, 0xE900000000000020);
            v30 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v30);

            MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C6055850);
            sub_1C5C64D74(0, &qword_1ED7DCCF0);
            sub_1C6016940();
            v38[0] = 10;
            sub_1C6016880();
            _s3__C4CodeOMa_6();
            sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
            v31 = sub_1C6017280();

            sub_1C5DF053C(v31, v2, __src);

            return;
          }

          __break(1u);
LABEL_38:
          __break(1u);
        }

        else
        {
          if (v23 != 10 || (__dst[1] == __src[1] ? (v24 = __dst[2] == __src[2]) : (v24 = 0), v24 || (v25 = __src[3], (sub_1C6017860() & 1) != 0)))
          {
LABEL_30:
            sub_1C5D95E74(__src, &v42);
            sub_1C5D936A8(__dst, &v42);
            goto LABEL_31;
          }

          *v41 = 0;
          *&v41[8] = 0xE000000000000000;
          sub_1C5D95E74(__src, &v42);
          sub_1C5D936A8(__dst, &v42);

          sub_1C5C74C28(v7);
          v37 = v25;
          sub_1C5C74C28(v25);
          sub_1C6017540();
          *&v40 = 0;
          *(&v40 + 1) = 0xE000000000000000;
          memcpy(v41, v2 + 2, sizeof(v41));
          v16 = *&v41[64] | (v41[66] << 16);
          if ((~v16 & 0xFEFEFE) != 0)
          {
LABEL_36:
            v32 = v2[3];
            v42 = v2[2];
            v43 = v32;
            v33 = v2[5];
            v44 = v2[4];
            v45 = v33;
            v46 = v16;
            v47 = BYTE2(v16);
            memcpy(v39, v2 + 2, 0x43uLL);
            sub_1C5D95E74(v39, v38);
            v34 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v34);

            sub_1C5DF47C8();
            MEMORY[0x1C69534E0](0xD00000000000001ALL, 0x80000001C6055830);
            v35 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v35);

            MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C6055850);
            sub_1C5C64D74(0, &qword_1ED7DCCF0);
            sub_1C6016940();
            v38[0] = 2;
            sub_1C6016880();
            _s3__C4CodeOMa_6();
            sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
            v36 = sub_1C6017280();

            sub_1C5DF053C(v36, v2, __src);

            sub_1C5C74C18(v37);

            sub_1C5C74C18(v7);
            goto LABEL_31;
          }
        }

        __break(1u);
        break;
      default:
        goto LABEL_30;
    }
  }

  else
  {
    sub_1C5D95E74(__src, &v42);
LABEL_31:
    sub_1C5DF4818();
  }
}

uint64_t sub_1C5DEF600(void *a1)
{
  v2 = v1;
  sub_1C5DF09CC(&v14);
  v4 = v18 | (v19 << 16);
  if ((~v4 & 0xFEFEFE) != 0)
  {
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = BYTE2(v4);
    v10[0] = v14;
    v10[1] = v15;
    v10[2] = v16;
    v10[3] = v17;
    __swift_project_boxed_opaque_existential_0((v1 + 192), *(v1 + 216));
    BYTE2(v10[4]) = BYTE2(v4);
    LOWORD(v10[4]) = v4;
    *(&v10[4] + 8) = 0u;
    *(&v10[5] + 8) = 0u;
    *(&v10[6] + 8) = 0u;
    *(&v10[7] + 8) = 0u;
    *(&v10[8] + 1) = 0;
    LOBYTE(v10[9]) = -1;
    *(&v10[9] + 1) = a1;
    memcpy(__dst, v10, 0xA0uLL);
    sub_1C5DE8BA4(__dst);
    memcpy(v30, __dst, sizeof(v30));
    v6 = a1;
    sub_1C5D936A8(&v14, v13);
    sub_1C5DBBF0C();
    sub_1C5DF4518();
    memcpy(v12, (v1 + 104), sizeof(v12));
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 170) = -2;
    *(v1 + 168) = -258;
    sub_1C5DF47C8();
    memcpy(v13, (v1 + 32), 0x43uLL);
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 98) = -2;
    *(v1 + 96) = -258;
    sub_1C5DF47C8();
    sub_1C5D61B3C(&v20);
    v7 = v21;
    v29 = v20;
    sub_1C5CC583C(&v29);
    if (v7)
    {
      sub_1C5D61B3C(v22);
      v8 = v22[0];
      v9 = v22[1];
      sub_1C5C74C18(v22[2]);
      v7(v8, v9, a1);
      sub_1C5C74C18(v7);
    }

    sub_1C5DF47C8();
    return sub_1C5DF08B8(v2);
  }

  else
  {

    return sub_1C5DF08B8(v1);
  }
}

BOOL sub_1C5DEF878()
{
  sub_1C5DF09CC(v3);
  v0 = v4 | (v5 << 16);
  if ((~v0 & 0xFEFEFE) == 0)
  {
    return 0;
  }

  v1 = (v0 & 0xF00000) == 0x100000;
  sub_1C5DF47C8();
  return v1;
}

uint64_t sub_1C5DEF8F0()
{
  sub_1C5C96DF0(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  return v0;
}

uint64_t sub_1C5DEF920()
{
  sub_1C5DEF8F0();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1C5DEFA4C(uint64_t a1, unsigned __int8 *a2)
{
  swift_beginAccess();
  sub_1C5DF3CF0(a1);
  swift_endAccess();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5DE2A78(a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DEFADC(const void *a1)
{
  v2 = v1;
  v4 = sub_1C6016630();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C6016690();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6016620();
  v58 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v57 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v44 - v10;
  v11 = sub_1C60166B0();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v44 - v14;
  v15 = sub_1C6017030();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((v1 + 192), *(v1 + 216));
  memcpy(v65, a1, 0x43uLL);
  sub_1C5DF4F38(v65);
  memcpy(v64, v65, sizeof(v64));
  sub_1C5DBBF0C();
  sub_1C5D61B3C(&v60);
  v19 = v62;
  v63 = v60;
  sub_1C5CC583C(&v63);
  result = sub_1C5C74C18(v61);
  if (v19)
  {
    v45 = sub_1C5C64D74(0, &qword_1ED7DC238);
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_1C5DF5240(&qword_1ED7DC240, MEMORY[0x1E69E80B0]);
    v51 = v2;
    v21 = v16;
    v22 = v7;
    v23 = v4;
    v24 = MEMORY[0x1E69E80B0];
    sub_1C5DF4F4C(0, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    v25 = v24;
    v26 = v23;
    sub_1C5DF4FC0(&qword_1ED7DC270, &qword_1ED7DC278, v25);
    v27 = v51;
    sub_1C60173B0();
    sub_1C5C64D74(0, &qword_1ED7DCE50);
    v28 = sub_1C6016FD0();
    v29 = sub_1C6017040();

    (*(v21 + 8))(v18, v15);
    *(v27 + 184) = v29;
    result = swift_unknownObjectRelease();
    if (*(v27 + 184))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = v52;
      sub_1C60166A0();
      v32 = v53;
      sub_1C60166E0();
      v45 = v26;
      v33 = v55;
      v34 = *(v54 + 8);
      v34(v31, v55);
      v35 = v56;
      sub_1C5DEDA0C(v56);
      v36 = v57;
      sub_1C5DEDA78(v57);
      MEMORY[0x1C6953BE0](v32, v35, v36, ObjectType);
      swift_unknownObjectRelease();
      v37 = *(v58 + 8);
      v37(v36, v22);
      v37(v35, v22);
      result = (v34)(v32, v33);
      v38 = v51;
      v39 = v45;
      if (*(v51 + 184))
      {
        swift_getObjectType();
        v40 = swift_allocObject();
        swift_weakInit();
        v59[4] = sub_1C5DF4FB0;
        v59[5] = v40;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 1107296256;
        v59[2] = sub_1C5DBC798;
        v59[3] = &block_descriptor_27;
        v41 = _Block_copy(v59);
        swift_unknownObjectRetain();

        v42 = v46;
        sub_1C6016670();
        v43 = v48;
        sub_1C5DEDAEC();
        sub_1C6017050();
        _Block_release(v41);
        swift_unknownObjectRelease();
        (*(v50 + 8))(v43, v39);
        (*(v47 + 8))(v42, v49);

        if (*(v38 + 184))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1C6017070();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5DF01E0()
{
  memcpy(__dst, (v0 + 32), 0x43uLL);
  v1 = __dst[32] | (LOBYTE(__dst[33]) << 16);
  if ((~v1 & 0xFEFEFE) != 0)
  {
    v2 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = v2;
    v3 = *(v0 + 80);
    v11 = *(v0 + 64);
    v12 = v3;
    v13 = __dst[32];
    v14 = BYTE2(v1);
    memcpy(v8, (v0 + 32), 0x43uLL);
    sub_1C5D95E74(v8, v7);
    sub_1C6017540();
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    MEMORY[0x1C69534E0](0xD00000000000001FLL, 0x80000001C6055870);
    v4 = sub_1C5D61CD4();
    MEMORY[0x1C69534E0](v4);

    MEMORY[0x1C69534E0](0xD000000000000022, 0x80000001C6055890);
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v7[0] = 2;
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
    v5 = sub_1C6017280();

    sub_1C5DEF600(v5);

    sub_1C5DF47C8();
  }

  if (*(v0 + 184))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(v0 + 184) = 0;
  swift_unknownObjectRelease();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  sub_1C5C96DF0(v0 + 16);
  memcpy(v7, (v0 + 32), 0x43uLL);
  sub_1C5DF47C8();
  memcpy(v8, (v0 + 104), 0x43uLL);
  sub_1C5DF47C8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 192);

  return v0;
}
id sub_1C5E34F5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_1C6016900();

  v9 = sub_1C6014F50();
  v10 = [swift_getObjCClassFromMetadata() responseWithIdentifier:v8 sessionType:a3 data:v9];

  sub_1C5C8F8BC(a4, a5);
  return v10;
}

void sub_1C5E35000(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a1;
  sub_1C5E378E8(0, qword_1EC1AC0A8, &unk_1EC1AC048, 0x1E69B09E8, MEMORY[0x1E69E8548]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = sub_1C6016650();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5E10480();
  v13 = sub_1C6016840();

  v14 = [a3 destinationPlayerPath];
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F98], v9);
  v15 = sub_1C6017010();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 16))(v8, v20, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v8, v5);
  aBlock[4] = sub_1C5E380F0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5CBAC6C;
  aBlock[3] = &block_descriptor_66;
  v18 = _Block_copy(aBlock);

  MRMediaRemoteSendCommandToPlayerWithResult();
  _Block_release(v18);
}

uint64_t sub_1C5E35324(void *a1)
{
  if (a1)
  {
    sub_1C5E378E8(0, qword_1EC1AC0A8, &unk_1EC1AC048, 0x1E69B09E8, MEMORY[0x1E69E8548]);
    v2 = a1;
    return sub_1C6016BC0();
  }

  else
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
    sub_1C6017280();

    sub_1C5E378E8(0, qword_1EC1AC0A8, &unk_1EC1AC048, 0x1E69B09E8, MEMORY[0x1E69E8548]);
    return sub_1C6016BB0();
  }
}

void sub_1C5E354FC(void *a1)
{
  v2 = [a1 leaseManager];
  v3 = sub_1C6016900();
  [v2 endIgnoringLeaseEndEventsForReason_];

  v6 = [a1 player];
  v4 = sub_1C5D3877C();
  if (v4)
  {
    v5 = v4;
    sub_1C5DCD90C();
  }
}

uint64_t sub_1C5E355D8(void *a1)
{
  v2 = [a1 shortHashedDSID];
  sub_1C6016940();

  MEMORY[0x1C69534E0](0x44554F4C432DLL, 0xE600000000000000);
  LOBYTE(v2) = sub_1C6015330();

  if (v2)
  {
    return 4;
  }

  v4 = [a1 shortHashedDSID];
  sub_1C6016940();

  MEMORY[0x1C69534E0](0x544147454C45442DLL, 0xE900000000000045);
  LOBYTE(v4) = sub_1C6015330();

  if (v4)
  {
    return 1;
  }

  v5 = [a1 shortHashedDSID];
  sub_1C6016940();

  MEMORY[0x1C69534E0](1112888109, 0xE400000000000000);
  LOBYTE(v5) = sub_1C6015330();

  if (v5)
  {
    return 3;
  }

  v6 = [a1 shortHashedDSID];
  sub_1C6016940();

  MEMORY[0x1C69534E0](0x4255534E4F4E2DLL, 0xE700000000000000);
  v7 = sub_1C6015330();

  if (v7)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5E3581C()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1C6014F20();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C5E37504(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-v8];
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v28[0] = 0;
  v12 = [v11 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v28];

  v13 = v28[0];
  if (v12)
  {
    sub_1C6014EC0();
    v14 = v13;

    v15 = 0;
  }

  else
  {
    v16 = v28[0];
    v17 = sub_1C6014D40();

    swift_willThrow();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v15, 1, v0);
  sub_1C5E38014(v9, v7, &unk_1ED7E01F0, MEMORY[0x1E6968FB0]);
  if (__swift_getEnumTagSinglePayload(v7, 1, v0) == 1)
  {
    v18 = [v10 defaultManager];
    v19 = [v18 temporaryDirectory];

    sub_1C6014EC0();
    if (__swift_getEnumTagSinglePayload(v7, 1, v0) != 1)
    {
      sub_1C5E37FBC(v7, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1C5E37504);
    }
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
  }

  sub_1C6014EB0();
  v20 = [v10 defaultManager];
  v21 = sub_1C6014EA0();
  v28[0] = 0;
  v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v28];

  if (v22)
  {
    v23 = *(v1 + 8);
    v24 = v28[0];
    v23(v3, v0);
    return sub_1C5E37FBC(v9, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1C5E37504);
  }

  else
  {
    v26 = v28[0];
    sub_1C6014D40();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t PlaybackEngineSessionManager.deinit()
{
  MEMORY[0x1C6956A70](v0 + 16);
  OUTLINED_FUNCTION_62_9();
  sub_1C5E37FBC(v0 + v1, v2, v3, MEMORY[0x1E69E6720], sub_1C5E37504);
  return v0;
}

uint64_t PlaybackEngineSessionManager.__deallocating_deinit()
{
  MEMORY[0x1C6956A70](v0 + 16);
  OUTLINED_FUNCTION_62_9();
  sub_1C5E37FBC(v0 + v1, v2, v3, MEMORY[0x1E69E6720], sub_1C5E37504);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

id sub_1C5E35DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1C6016900();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithBehaviorType:a1 sessionID:v5];

  return v6;
}

id sub_1C5E35E20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1C6014F50();
  if (a3)
  {
    v9 = sub_1C6016840();
  }

  else
  {
    v9 = 0;
  }

  v13[0] = 0;
  v10 = [v4 initForReadingFromData:v8 userInfo:v9 error:v13];

  v11 = v13[0];
  if (!v10)
  {
    OUTLINED_FUNCTION_152_2();
    sub_1C6014D40();

    swift_willThrow();
  }

  sub_1C5C8F8BC(a1, a2);
  return v10;
}

id sub_1C5E35F4C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C6014F50();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1C6014D40();

    swift_willThrow();
  }

  sub_1C5C8F8BC(a1, a2);
  return v7;
}

id sub_1C5E3602C(void *a1, uint64_t a2)
{
  v3 = v2;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = sub_1C6016840();
  }

  else
  {
    v5 = 0;
  }

  v10[0] = 0;
  v6 = [v3 initWithCodingPackage:a1 userInfo:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C6014D40();

    swift_willThrow();
  }

  return v6;
}

id sub_1C5E3613C()
{
  OUTLINED_FUNCTION_155_2();
  if (!v2 & v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C6014F50();
    v4 = OUTLINED_FUNCTION_303();
    sub_1C5CB6098(v4, v5);
  }

  v6 = [v0 initWithData_];

  return v6;
}

_OWORD *sub_1C5E361A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_37();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v7 = v5;
  OUTLINED_FUNCTION_190_0();
  sub_1C5D3BA44();
  OUTLINED_FUNCTION_31_13();
  if (sub_1C6017660())
  {
    v8 = OUTLINED_FUNCTION_303();
    sub_1C5CE2084(v8, v9);
    OUTLINED_FUNCTION_50_8();
    if (!v11)
    {
      goto LABEL_14;
    }

    v7 = v10;
  }

  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(*(*v3 + 56) + 32 * v7);
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_237_0();

    return sub_1C5C70758(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1C5E20884(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_237_0();
  }
}

unint64_t sub_1C5E3628C(double a1)
{
  OUTLINED_FUNCTION_136_3();
  sub_1C5CE2140(v4);
  OUTLINED_FUNCTION_7_37();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  sub_1C5E37A20();
  if ((OUTLINED_FUNCTION_124_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_1C5CE2140(a1);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v2;
  if (v9)
  {
    *(v12[7] + 8 * v8) = v1;
  }

  else
  {

    return sub_1C5E36EBC(v8, v1, v12, a1);
  }
}

void sub_1C5E36380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_37();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1C60178D0();
    __break(1u);
    return;
  }

  v8 = v6;
  OUTLINED_FUNCTION_190_0();
  sub_1C5E37BD4();
  OUTLINED_FUNCTION_31_13();
  if (sub_1C6017660())
  {
    v9 = OUTLINED_FUNCTION_303();
    sub_1C5CE2084(v9, v10);
    OUTLINED_FUNCTION_50_8();
    if (!v12)
    {
      goto LABEL_12;
    }

    v8 = v11;
  }

  if (v5)
  {
    sub_1C5E38088(v3, *(*v4 + 56) + 32 * v8, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C5E37D38);
    OUTLINED_FUNCTION_237_0();
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1C5E36F00(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_237_0();
  }
}

_OWORD *sub_1C5E3648C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_136_3();
  sub_1C5CE20FC(v6);
  OUTLINED_FUNCTION_7_37();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v9 = v7;
  OUTLINED_FUNCTION_190_0();
  sub_1C5CFB3CC();
  if (sub_1C6017660())
  {
    sub_1C5CE20FC(a2);
    OUTLINED_FUNCTION_50_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v9 = v10;
  }

  v12 = *v3;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v12[7] + 32 * v9);
    v13 = OUTLINED_FUNCTION_255();

    return sub_1C5C70758(v13, v14);
  }

  else
  {
    sub_1C5CE34A8(a2, v16);
    return sub_1C5E36F50(v9, v16, v2, v12);
  }
}

void sub_1C5E365A0()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v25 = v3;
  v5 = v4;
  v6 = sub_1C6015D90();
  OUTLINED_FUNCTION_25();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v12 = v11 - v10;
  sub_1C5CE2248();
  OUTLINED_FUNCTION_7_37();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  sub_1C5E381DC();
  if ((sub_1C6017660() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1C5CE2248();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_1C60178D0();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v0;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = v5;
    v21[1] = v25;
    OUTLINED_FUNCTION_237();
  }

  else
  {
    (*(v8 + 16))(v12, v2, v6);
    v23 = OUTLINED_FUNCTION_63_4();
    sub_1C5E36FCC(v23, v24, v5, v25, v20);
    OUTLINED_FUNCTION_237();
  }
}

void sub_1C5E3672C()
{
  OUTLINED_FUNCTION_136_3();
  v14 = v2;
  sub_1C5CE36D0(v2);
  OUTLINED_FUNCTION_7_37();
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v3;
  v7 = v4;
  sub_1C5E37B14();
  if ((OUTLINED_FUNCTION_124_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_1C5CE36D0(v14);
  if ((v7 & 1) != (v9 & 1))
  {
LABEL_13:
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    sub_1C60178D0();
    __break(1u);
    return;
  }

  v6 = v8;
LABEL_5:
  v10 = *v1;
  if (v7)
  {
    v11 = v10[7];
    v12 = *(v11 + 8 * v6);
    *(v11 + 8 * v6) = v0;
  }

  else
  {
    sub_1C5D01FAC(v6, v14, v0, v10);

    v13 = v14;
  }
}

_OWORD *sub_1C5E368AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), void (*a5)(uint64_t), void (*a6)(void))
{
  OUTLINED_FUNCTION_136_3();
  v24 = v12;
  v13(v12);
  OUTLINED_FUNCTION_7_37();
  if (v15)
  {
    __break(1u);
LABEL_14:
    a6(0);
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v16 = v14;
  v17 = OUTLINED_FUNCTION_190_0();
  a5(v17);
  OUTLINED_FUNCTION_31_13();
  if (sub_1C6017660())
  {
    a4(v24);
    OUTLINED_FUNCTION_50_8();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  v20 = *v7;
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_0(*(v20 + 56) + 32 * v16);
    v21 = OUTLINED_FUNCTION_255();

    return sub_1C5C70758(v21, v22);
  }

  else
  {
    sub_1C5E3708C(v16, v24, v6, v20);

    return v24;
  }
}

uint64_t sub_1C5E369E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5CE2084(a2, a3);
  OUTLINED_FUNCTION_7_37();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  sub_1C5E37DEC(0, &unk_1ED7DCBA0, type metadata accessor for AssetSlidingQueue.Position);
  OUTLINED_FUNCTION_31_13();
  if (sub_1C6017660())
  {
    sub_1C5CE2084(a2, a3);
    OUTLINED_FUNCTION_50_8();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
    OUTLINED_FUNCTION_237_0();
  }

  else
  {
    sub_1C5E3712C(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_237_0();
  }
}

unint64_t sub_1C5E36B1C(char a1, double a2)
{
  sub_1C5CE2398(a1);
  OUTLINED_FUNCTION_7_37();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  sub_1C5E37D88();
  result = OUTLINED_FUNCTION_124_2();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C5CE2398(a1);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  v12 = *v2;
  if (v9)
  {
    *(v12[7] + 8 * v8) = a2;
  }

  else
  {

    return sub_1C5E37174(v8, a1, v12, a2);
  }

  return result;
}

void sub_1C5E36C40()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C5CE2404(v5);
  OUTLINED_FUNCTION_7_37();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  sub_1C5E37DEC(0, v4, v2);
  OUTLINED_FUNCTION_31_13();
  if ((sub_1C6017660() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1C5CE2404(v6);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_1C60178D0();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  if (v15)
  {
    v18 = (*(*v0 + 56) + 16 * v14);
    *v18 = v10;
    v18[1] = v8;
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1C5E371B8(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_237();
  }
}

void sub_1C5E36D50()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  sub_1C60151D0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  sub_1C5CE2448();
  OUTLINED_FUNCTION_7_37();
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4;
  v8 = v5;
  sub_1C5E37C64();
  OUTLINED_FUNCTION_31_13();
  if ((sub_1C6017660() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1C5CE2448();
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_11:
    sub_1C60178D0();
    __break(1u);
    return;
  }

  v7 = v9;
LABEL_5:
  v11 = *v0;
  if (v8)
  {
    *(v11[7] + 8 * v7) = v2;
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_102_0();
    v14(v13);
    v15 = OUTLINED_FUNCTION_15_1();
    sub_1C5E37200(v15, v16, v2, v11);
    OUTLINED_FUNCTION_237();
  }
}

unint64_t sub_1C5E36EBC(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_1C5E36F00(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1C5E36F50(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1C5C70758(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1C5E36FCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1C6015D90();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_1C5E3708C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_187_0(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + 8 * v5) = v7;
  result = sub_1C5C70758(v8, (*(v6 + 56) + 32 * v5));
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

uint64_t sub_1C5E370E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_187_0(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

unint64_t sub_1C5E3712C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1C5E37174(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_1C5E371B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_187_0(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * result) = v7;
  v8 = (v6[7] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_1C5E37200(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C60151D0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_1C5E372B8()
{
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_1_62();
  sub_1C5E37564(v0, 255, v1);
  v4 = sub_1C6016840();

  v2 = OUTLINED_FUNCTION_96_2();
  [v2 v3];
}

void sub_1C5E37398()
{
  if (!qword_1EC1A9400)
  {
    sub_1C5CB5808();
    v0 = sub_1C6016CC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9400);
    }
  }
}

void sub_1C5E37404()
{
  if (!qword_1EC1A9410)
  {
    sub_1C5E37474();
    sub_1C5CB5808();
    v0 = sub_1C6016CC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9410);
    }
  }
}

void sub_1C5E37474()
{
  if (!qword_1EC1A9418)
  {
    sub_1C5E37D38(255, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A9418);
    }
  }
}

void sub_1C5E37504(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

uint64_t sub_1C5E37564(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5E3764C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C6014F50();
  [a3 setData_];
}

uint64_t sub_1C5E376A4(void *a1)
{
  v2 = [a1 data];

  if (v2)
  {
    sub_1C6014F60();
  }

  return OUTLINED_FUNCTION_255();
}

uint64_t sub_1C5E37710(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C6014F60();
  }

  return OUTLINED_FUNCTION_255();
}

id sub_1C5E3776C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = sub_1C6016840();

  v8 = [v5 encodedDataWithRootObject:v6 userInfo:v7 error:a3];

  return v8;
}

void sub_1C5E37820(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_43();
    sub_1C5E37868(v3, v4);
    OUTLINED_FUNCTION_34_4();
    v5 = sub_1C60177E0();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

void sub_1C5E37868(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_100();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C5E378C8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    sub_1C5DBBEE4(a1);
  }
}

id sub_1C5E378D4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1C5DBBED4(a1);
  }
}

void sub_1C5E378E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_43();
    v10 = sub_1C5C64D74(v8, v9);
    v11 = sub_1C5CB5808();
    v12 = a5(a1, v10, v11, MEMORY[0x1E69E7288]);
    if (!v13)
    {
      atomic_store(v12, v5);
    }
  }
}

void sub_1C5E37A20()
{
  if (!qword_1EC1AC080)
  {
    sub_1C5E37AAC(255, &qword_1EC1A8D58, MEMORY[0x1E69E63B0], MEMORY[0x1E69E86B8]);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AC080);
    }
  }
}

void sub_1C5E37AAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5E37B14()
{
  if (!qword_1EC1AC090)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    sub_1C5C64D74(255, &qword_1ED7DCC30);
    sub_1C5E37564(&unk_1ED7DCD50, 255, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AC090);
    }
  }
}

void sub_1C5E37BD4()
{
  if (!qword_1EC1A8970)
  {
    sub_1C5E37D38(255, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8970);
    }
  }
}

void sub_1C5E37C64()
{
  if (!qword_1EC1AC0A0)
  {
    sub_1C60151D0();
    sub_1C5E37D38(255, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1C5E37564(&qword_1EC1AAA50, 255, MEMORY[0x1E69C6758]);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AC0A0);
    }
  }
}

void sub_1C5E37D38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5E37D88()
{
  if (!qword_1ED7DBB28)
  {
    sub_1C5D8F5A4();
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DBB28);
    }
  }
}

void sub_1C5E37DEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_303();
    v4 = sub_1C6017690();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5E37E54()
{
  if (!qword_1EC1A8948)
  {
    type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey();
    sub_1C5E37564(qword_1EC1A9300, 255, type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8948);
    }
  }
}

uint64_t sub_1C5E37EF8()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1C5CBCD24;

  return sub_1C5E3312C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C5E37FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_105();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1C5E38014(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C5E37504(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return a2;
}

uint64_t sub_1C5E38088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  a6(0, a3, a4, a5);
  OUTLINED_FUNCTION_105();
  v7 = OUTLINED_FUNCTION_255();
  v8(v7);
  return a2;
}

uint64_t sub_1C5E380F0(void *a1)
{
  OUTLINED_FUNCTION_72_5(a1, qword_1EC1AC0A8, &unk_1EC1AC048, 0x1E69B09E8);

  return sub_1C5E35324(a1);
}

void sub_1C5E38184(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_43();
    sub_1C5C64D74(v7, v8);
    v9 = OUTLINED_FUNCTION_120();
    v10 = a5(v9);
    if (!v11)
    {
      atomic_store(v10, v5);
    }
  }
}

void sub_1C5E381DC()
{
  if (!qword_1EC1A8988)
  {
    sub_1C6015D90();
    sub_1C5E37D38(255, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1C5E37564(&unk_1EC1A8F20, 255, MEMORY[0x1E69C4D38]);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8988);
    }
  }
}

uint64_t OUTLINED_FUNCTION_18_26()
{

  return sub_1C6017280();
}

void OUTLINED_FUNCTION_36_11()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_40_10()
{

  JUMPOUT(0x1C6956920);
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2114;
  return result;
}

unint64_t OUTLINED_FUNCTION_54_9(uint64_t a1, ...)
{
  va_start(va, a1);
  *(v1 + 4) = v3;
  *(v1 + 12) = 2082;

  return sub_1C5C6AB10(v2, v4, va);
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_10(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_68_6()
{

  JUMPOUT(0x1C6956920);
}

void OUTLINED_FUNCTION_71_5()
{

  sub_1C5E354FC(v0);
}

void OUTLINED_FUNCTION_72_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E8548];

  sub_1C5E378E8(0, a2, a3, a4, v5);
}

unint64_t OUTLINED_FUNCTION_74_5(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C5C6AB10(v2, v1, va);
}

id OUTLINED_FUNCTION_101_2(float a1)
{
  *v1 = a1;

  return [v2 (v3 + 1981)];
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_103_3()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_105_2()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_114_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C5CE2084(a2, a3);
}

id OUTLINED_FUNCTION_116_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 4) = v13;
  *(v10 + 12) = 2114;
  *(v10 + 14) = v11;
  *(v10 + 22) = 2114;
  *(v10 + 24) = a10;
  *v12 = v11;
  v12[1] = a10;

  return v11;
}

void OUTLINED_FUNCTION_120_1()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_121_2()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_122_2()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_123_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_124_2()
{

  return sub_1C6017660();
}

uint64_t OUTLINED_FUNCTION_125_2()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_132_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_137_3()
{

  sub_1C5E372B8();
}

uint64_t OUTLINED_FUNCTION_138_2()
{

  return sub_1C60162D0();
}

uint64_t OUTLINED_FUNCTION_166_1()
{
}

uint64_t OUTLINED_FUNCTION_167_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 352) = a1;
  *(v2 + 360) = a2;

  return sub_1C60169A0();
}

uint64_t OUTLINED_FUNCTION_168_1()
{

  return sub_1C6017280();
}

id OUTLINED_FUNCTION_169_1()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2114;
  *(v0 + 14) = v3;
  *v1 = v3;

  return v3;
}

void OUTLINED_FUNCTION_170_0()
{

  JUMPOUT(0x1C69534E0);
}

BOOL OUTLINED_FUNCTION_171_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_176_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_177_0()
{

  return sub_1C60162D0();
}

void OUTLINED_FUNCTION_178_0()
{
  v2 = *(v0 + 640);
}

uint64_t OUTLINED_FUNCTION_179_0()
{

  return sub_1C60169A0();
}

id OUTLINED_FUNCTION_180_0()
{
  v2 = *(v0 + 472);

  return [v2 queueController];
}

id OUTLINED_FUNCTION_182_0(void *a1)
{

  return [a1 (v1 + 3448)];
}

id OUTLINED_FUNCTION_183_0(float a1)
{
  *v1 = a1;

  return [v2 (v3 + 1981)];
}

void OUTLINED_FUNCTION_184_0()
{
  v2 = *(v0 + 440);
}

uint64_t OUTLINED_FUNCTION_185_0()
{

  return swift_unknownObjectWeakLoadStrong();
}

void OUTLINED_FUNCTION_186_0()
{

  sub_1C5E378C8(v0, 1);
}

id OUTLINED_FUNCTION_188_0(uint64_t a1)
{
  *(v2 + 416) = a1;
  *(v2 + 392) = v1;
  sub_1C5C70758((v2 + 392), (v2 + 360));

  return sub_1C5E378D4(v1, 0);
}

uint64_t OUTLINED_FUNCTION_189_0(uint64_t result)
{
  *(v1 + 24) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_216_0()
{

  return sub_1C6016900();
}

void OUTLINED_FUNCTION_218_0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x20u);
}

void OUTLINED_FUNCTION_219_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_221_0(uint64_t a1)
{
  *(v2 + 480) = 0;

  return sub_1C5E3776C(v1, a1, v2 + 480);
}

void OUTLINED_FUNCTION_223_0()
{
}

id OUTLINED_FUNCTION_224_0()
{
  v2 = *(v0 + 520);

  return v2;
}

void OUTLINED_FUNCTION_225_0(uint64_t a1)
{
  *(v1 + 56) = a1;

  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
}

void OUTLINED_FUNCTION_226_0()
{
}

void OUTLINED_FUNCTION_227_0()
{
}

id OUTLINED_FUNCTION_228_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_229_0()
{
}

uint64_t OUTLINED_FUNCTION_230_0()
{
}

uint64_t OUTLINED_FUNCTION_231_0(float a1)
{
  *v1 = a1;

  return swift_unknownObjectWeakLoadStrong();
}

void OUTLINED_FUNCTION_232_0(uint64_t a1)
{
  *(v1 + 40) = a1;

  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
}

uint64_t OUTLINED_FUNCTION_234_0()
{
  sub_1C5E378C8(*(v0 + 744), 1);
}

uint64_t sub_1C5E38DBC()
{
  v31 = *MEMORY[0x1E69E9840];
  v0 = sub_1C6015020();
  OUTLINED_FUNCTION_25();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v29 = 0;
  HIDWORD(v27) = 0;
  TMGetReferenceTime();
  if ((~v29 & 0x7FF0000000000000) != 0 || (v29 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v21 = sub_1C60162D0();
    __swift_project_value_buffer(v21, qword_1ED7E16A8);

    v9 = sub_1C60162B0();
    v22 = sub_1C6016F30();

    if (os_log_type_enabled(v9, v22))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136446978;
      v23 = OUTLINED_FUNCTION_147();
      *(v11 + 4) = sub_1C5C6AB10(v23, v24, v25);
      *(v11 + 12) = 2048;
      OUTLINED_FUNCTION_27();
      *(v11 + 14) = v29;
      *(v11 + 22) = 2048;
      OUTLINED_FUNCTION_27();
      *(v11 + 24) = v28;
      *(v11 + 32) = 1024;
      OUTLINED_FUNCTION_27();
      *(v11 + 34) = HIDWORD(v27);
      v16 = "%{public}s | currentReferenceTime=%f, uncertainty=%f, reliability=%d";
      v17 = v22;
      v18 = v9;
      v19 = v11;
      v20 = 38;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C6015000();
    sub_1C6014F80();
    v7 = v6;
    (*(v2 + 8))(v5, v0);
    v29 = v7;
    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v8 = sub_1C60162D0();
    __swift_project_value_buffer(v8, qword_1ED7E16A8);

    v9 = sub_1C60162B0();
    v10 = sub_1C6016F20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136446466;
      v13 = OUTLINED_FUNCTION_147();
      *(v11 + 4) = sub_1C5C6AB10(v13, v14, v15);
      *(v11 + 12) = 2048;
      OUTLINED_FUNCTION_27();
      *(v11 + 14) = v29;
      v16 = "%{public}s | TMGetReferenceTime returned NaN, falling back to device time: %f";
      v17 = v10;
      v18 = v9;
      v19 = v11;
      v20 = 22;
LABEL_11:
      _os_log_impl(&dword_1C5C61000, v18, v17, v16, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1C6956920](v12, -1, -1);
      MEMORY[0x1C6956920](v11, -1, -1);
    }
  }

  return OUTLINED_FUNCTION_27();
}

id sub_1C5E39134(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v74 = *MEMORY[0x1E69E9840];
  v7 = [v4 type];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C6016940();
    v11 = v10;
    v12 = v9 == 0xD000000000000025 && 0x80000001C6057840 == v10;
    if (v12 || (v13 = v9, (OUTLINED_FUNCTION_9_34() & 1) != 0))
    {

      swift_beginAccess();
      v14 = objc_getAssociatedObject(v4, &unk_1EC1AC0E0);
      swift_endAccess();
      if (v14)
      {
        sub_1C6017390();
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
      }

      v71 = v69;
      v72 = v70;
      if (*(&v70 + 1))
      {
        type metadata accessor for MPCMigrationData();
        if (swift_dynamicCast())
        {
LABEL_19:

          return v73;
        }
      }

      else
      {
        sub_1C5CBCF4C(&v71);
      }

      sub_1C5E375A8(v4);
      if (v22 >> 60 == 15)
      {
LABEL_22:
        v23 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_0_78();
        sub_1C6017540();

        OUTLINED_FUNCTION_89();
        *&v71 = 0xD000000000000025;
        *(&v71 + 1) = v24;
        v25 = sub_1C6016940();
        MEMORY[0x1C69534E0](v25);

        sub_1C6016880();
        _s3__C4CodeOMa_1();
        sub_1C5E3A8C0();
        OUTLINED_FUNCTION_2_51();
        v21 = v23;
        sub_1C6017280();

        swift_willThrow();
LABEL_25:

        return v21;
      }

      sub_1C5C72C60(0, &qword_1EC1A9220, sub_1C5E20C3C);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C60311E0;
      OUTLINED_FUNCTION_89();
      *&v71 = 0xD000000000000010;
      *(&v71 + 1) = v27;
      v28 = OUTLINED_FUNCTION_15_1();
      sub_1C5CFAC9C(v28, v29);
      v30 = MEMORY[0x1E69E6158];
      sub_1C60174C0();
      *(inited + 96) = v30;
      *(inited + 72) = a1;
      *(inited + 80) = a2;

      v31 = sub_1C6016880();
      v32 = objc_allocWithZone(MEMORY[0x1E69B1460]);
      v33 = OUTLINED_FUNCTION_15_1();
      v34 = v31;
      v21 = v35;
      v37 = sub_1C5E35E20(v33, v36, v34);
      if (!v3)
      {
        v45 = v37;
        type metadata accessor for MPCMigrationData();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        *&v71 = 0;
        if (![v45 decodeRootObjectOfClass:ObjCClassFromMetadata error:&v71])
        {
          v21 = v71;
          sub_1C6014D40();

          swift_willThrow();
          v61 = OUTLINED_FUNCTION_15_1();
          sub_1C5CB6098(v61, v62);

          return v21;
        }

        v47 = v71;
        sub_1C6017390();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v21 = v69;
          OUTLINED_FUNCTION_18_27();
          v48 = v69;
          OUTLINED_FUNCTION_17_27();
          swift_endAccess();

          v49 = OUTLINED_FUNCTION_15_1();
          sub_1C5CB6098(v49, v50);

          return v21;
        }

        v68 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_15_27();
        sub_1C6016880();
        _s3__C4CodeOMa_1();
        sub_1C5E3A8C0();
        OUTLINED_FUNCTION_2_51();
        v21 = v68;
        sub_1C6017280();

        swift_willThrow();
      }
    }

    else
    {
      if (v13 == 0xD000000000000025 && 0x80000001C60575F0 == v11)
      {
      }

      else
      {
        v42 = OUTLINED_FUNCTION_9_34();

        if ((v42 & 1) == 0)
        {
          v43 = objc_opt_self();
          *&v71 = 0;
          if ([v43 isSupportedSessionType:v8 reason:&v71])
          {

            return 0;
          }

          v63 = v71;
          v64 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          OUTLINED_FUNCTION_0_78();
          v65 = v63;
          sub_1C6017540();
          MEMORY[0x1C69534E0](0xD00000000000001FLL, 0x80000001C6057EB0);
          v73 = v8;
          type metadata accessor for MPPlaybackSessionType();
          sub_1C6017650();
          MEMORY[0x1C69534E0](0x3A6E6F7361657220, 0xE900000000000020);
          v73 = v63;
          sub_1C5E3A918();
          v66 = v65;
          v67 = sub_1C60169A0();
          MEMORY[0x1C69534E0](v67);

          sub_1C6016880();
          _s3__C4CodeOMa_1();
          sub_1C5E3A8C0();
          OUTLINED_FUNCTION_2_51();
          v21 = v64;
          sub_1C6017280();

          swift_willThrow();

          goto LABEL_25;
        }
      }

      swift_beginAccess();
      v44 = objc_getAssociatedObject(v4, &unk_1EC1AC0E1);
      swift_endAccess();
      if (v44)
      {
        sub_1C6017390();
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
      }

      v71 = v69;
      v72 = v70;
      if (*(&v70 + 1))
      {
        sub_1C5C64D74(0, &qword_1EC1AC170);
        if (swift_dynamicCast())
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1C5CBCF4C(&v71);
      }

      sub_1C5E375A8(v4);
      if (v51 >> 60 == 15)
      {
        goto LABEL_22;
      }

      v52 = objc_allocWithZone(_MPCProtoMigrationData);
      v53 = OUTLINED_FUNCTION_15_1();
      sub_1C5CFAC9C(v53, v54);
      v55 = OUTLINED_FUNCTION_15_1();
      v57 = sub_1C5E1EF5C(v55, v56);
      if (v57)
      {
        v21 = v57;
        OUTLINED_FUNCTION_18_27();
        v58 = v21;
        OUTLINED_FUNCTION_17_27();
        swift_endAccess();

        v59 = OUTLINED_FUNCTION_15_1();
        sub_1C5CB6098(v59, v60);

        return v21;
      }

      v21 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_15_27();
      sub_1C6016880();
      _s3__C4CodeOMa_1();
      sub_1C5E3A8C0();
      OUTLINED_FUNCTION_2_51();
      sub_1C6017280();

      swift_willThrow();
    }

    v38 = OUTLINED_FUNCTION_15_1();
    sub_1C5CB6098(v38, v39);
    goto LABEL_25;
  }

  sub_1C6016940();
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  *&v71 = 0xD00000000000002DLL;
  *(&v71 + 1) = v15;
  v16 = sub_1C5E20954(v4);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x676E697373696D3CLL;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE90000000000003ELL;
  }

  v20 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
  MEMORY[0x1C69534E0](v18, v19);

  sub_1C6016880();
  _s3__C4CodeOMa_1();
  sub_1C5E3A8C0();
  v21 = v20;
  sub_1C6017280();

  swift_willThrow();
  return v21;
}

id sub_1C5E39C38()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_playbackRate);
  v2 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_playbackPosition);
  v3 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_referenceTime);
  v4 = objc_allocWithZone(type metadata accessor for _MPCSessionMigrationTimeContinuity());
  return sub_1C5E3A584(0, v1, v2, v3);
}

id sub_1C5E39CA8()
{
  result = [(_MPCProtoMigrationData *)v0 timeSync];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = [(_MPCProtoMigrationDataTimeSync *)result rate];
  v4 = *&v3;

  result = [(_MPCProtoMigrationData *)v0 timeSync];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v6 = [(_MPCProtoMigrationDataTimeSync *)result anchorTime];

  result = [(_MPCProtoMigrationData *)v0 timeSync];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  v8 = [(_MPCProtoMigrationDataTimeSync *)result anchorTimestamp];

  result = [(_MPCProtoMigrationData *)v0 timeSync];
  if (result)
  {
    v9 = result;
    v10 = [(_MPCProtoMigrationDataTimeSync *)result isLive];

    v11 = objc_allocWithZone(type metadata accessor for _MPCSessionMigrationTimeContinuity());
    return sub_1C5E3A584(v10, v4, v6, v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C5E39D98()
{
  sub_1C6015020();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v1);
  if (*(v0 + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_scheduledRateChangeTime + 8))
  {
    sub_1C6015010();
    sub_1C6014F80();
    v3 = v2;
    v4 = OUTLINED_FUNCTION_147();
    v5(v4);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_scheduledRateChangeTime);
  }

  v6 = v3 + *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referencePosition) - *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referenceTime);
  v7 = MSVLogDateFormatter();
  sub_1C6017540();

  sub_1C5C72C60(0, &qword_1ED7DCB08, sub_1C5D60C10);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E63B0];
  *(v8 + 16) = xmmword_1C60311E0;
  v10 = MEMORY[0x1E69E6438];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v6;
  v11 = sub_1C6016910();
  v13 = v12;

  MEMORY[0x1C69534E0](v11, v13);

  MEMORY[0x1C69534E0](0x695474736F682073, 0xEB000000003A656DLL);
  sub_1C6014F70();
  v14 = sub_1C6014FB0();
  v15 = OUTLINED_FUNCTION_147();
  v16(v15);
  v17 = [v7 stringFromDate_];

  v18 = sub_1C6016940();
  v20 = v19;

  MEMORY[0x1C69534E0](v18, v20);

  return 0x656D69546D657469;
}

void sub_1C5E3A084(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_queueController);
  v4 = sub_1C6016900();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_1C6016900();
  OUTLINED_FUNCTION_6_35();

  v6 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_playbackRate);
  v7 = OUTLINED_FUNCTION_8_38();
  LODWORD(v8) = v6;
  [a1 encodeFloat:v7 forKey:v8];

  v9 = sub_1C6016900();
  OUTLINED_FUNCTION_6_35();

  v10 = OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_6_35();

  v11 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_delegateInfo);
  v12 = sub_1C6016900();
  [a1 encodeObject:v11 forKey:v12];
}

uint64_t sub_1C5E3A2A8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_delegateInfo;
  *&v2[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_delegateInfo] = 0;
  sub_1C5C64D74(0, &unk_1ED7DC250);
  result = sub_1C6017260();
  if (result)
  {
    *&v2[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_queueController] = result;
    v7 = sub_1C6016900();
    OUTLINED_FUNCTION_10_34();
    v9 = v8;

    *&v2[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_playbackPosition] = v9;
    v10 = OUTLINED_FUNCTION_8_38();
    [a1 decodeFloatForKey_];
    LODWORD(v9) = v11;

    *&v2[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_playbackRate] = v9;
    v12 = sub_1C6016900();
    OUTLINED_FUNCTION_10_34();
    v14 = v13;

    *&v2[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_currentItemDuration] = v14;
    v15 = OUTLINED_FUNCTION_5_41();
    OUTLINED_FUNCTION_10_34();
    v17 = v16;

    *&v2[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_referenceTime] = v17;
    sub_1C5C64D74(0, &qword_1EC1AC160);
    v18 = sub_1C6017260();
    v19 = *&v2[v5];
    *&v2[v5] = v18;

    v21.receiver = v2;
    v21.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v21, sel_init);

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C5E3A584(char a1, float a2, double a3, double a4)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_3(OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_scheduledRateChangeTime);
  *&v4[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_playbackRate] = a2;
  *&v4[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referencePosition] = a3;
  *&v4[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referenceTime] = a4;
  v4[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_isLive] = a1;
  v11.receiver = v4;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

double sub_1C5E3A620()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referencePosition);
  sub_1C5E38DBC();
  return v1 + (v2 - *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referenceTime)) * *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_playbackRate);
}

id sub_1C5E3A7A8()
{
  OUTLINED_FUNCTION_3(OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35_MPCProtoSetPlaybackSessionResponse15_TimeContinuity_scheduledRateChangeTime);
  *&v0[OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35_MPCProtoSetPlaybackSessionResponse15_TimeContinuity_elapsedTime] = v1;
  *v3 = v2;
  *(v3 + 8) = v4 & 1;
  v6.receiver = v0;
  v6.super_class = _s15_TimeContinuityCMa();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1C5E3A840()
{
  v2.receiver = v0;
  v2.super_class = _s15_TimeContinuityCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5E3A8C0()
{
  result = qword_1EC1A9320;
  if (!qword_1EC1A9320)
  {
    _s3__C4CodeOMa_1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9320);
  }

  return result;
}

void sub_1C5E3A918()
{
  if (!qword_1EC1AC168)
  {
    sub_1C5C64D74(255, &qword_1EC1A92B0);
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AC168);
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_38()
{

  return sub_1C6016900();
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return swift_beginAccess();
}

uint64_t sub_1C5E3A9D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_36();
  sub_1C5C6B024(0, v4, v5, MEMORY[0x1E69E6720]);
  v7 = OUTLINED_FUNCTION_13_3(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  OUTLINED_FUNCTION_15();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  OUTLINED_FUNCTION_15();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C6044EF8;
  v12[5] = v11;
  sub_1C5E410E0(0, 0, v9, &unk_1C6044F08, v12);
}

uint64_t sub_1C5E3AAE8(uint64_t a1)
{
  result = sub_1C5C6AA20(a1);
  v3 = result;
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = *(MEMORY[0x1C6954040](v4, a1) + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid);
      result = swift_unknownObjectRelease();
      if (v6)
      {
        return v4;
      }

      goto LABEL_6;
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    if (*(*(a1 + 8 * v4 + 32) + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid))
    {
      return v4;
    }

LABEL_6:
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C5E3ABB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_6_36();
  sub_1C5C6B024(0, v8, v9, MEMORY[0x1E69E6720]);
  v11 = OUTLINED_FUNCTION_13_3(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  sub_1C5CE2ACC(a1, v23 - v12);
  v14 = sub_1C6016C30();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C5C7ACE0(v13);
  }

  else
  {
    sub_1C6016C20();
    OUTLINED_FUNCTION_50_0();
    (*(v15 + 8))(v13, v14);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1C6016BA0();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *v4;
  OUTLINED_FUNCTION_58();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_1C5E3AD90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_10();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5E3ADBC()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1C5E3AEB4;
  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C5E3AEB4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = sub_1C5E3AFBC;
  }

  else
  {

    v7 = sub_1C5D99EEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C5E3AFBC()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5E3B01C()
{

  return v0;
}

uint64_t sub_1C5E3B044()
{
  sub_1C5E3B01C();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C5E3B074(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (![Strong delegate])
    {
LABEL_6:

      return;
    }

    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_])
      {
        [v5 engine:v3 didUpdatePlaybackPositionWithEvent:a1];
        swift_unknownObjectRelease();
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t MPCPlaybackEngine.loadSession(identifier:)()
{
  OUTLINED_FUNCTION_248();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1C6016C10();
  v1[5] = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  v5 = sub_1C6016BA0();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C5E3B1EC, v5, v4);
}

uint64_t sub_1C5E3B1EC()
{
  OUTLINED_FUNCTION_248();
  *(v0 + 64) = *(sub_1C5C75008() + 16);

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1C5E3B2A8;

  return PlaybackEngineSessionManager.loadSession(identifier:)();
}

uint64_t sub_1C5E3B2A8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1C5E137B4;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1C5E3B3B0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E3B3B0()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5E3B494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E3B530, v5, v4);
}

uint64_t sub_1C5E3B530()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  sub_1C6016940();
  v0[7] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1C5E3B600;
  OUTLINED_FUNCTION_142_2();

  return MPCPlaybackEngine.loadSession(identifier:)();
}

uint64_t sub_1C5E3B600()
{
  OUTLINED_FUNCTION_9();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  v6 = *(v3 + 32);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = sub_1C6014D30();

    v9 = OUTLINED_FUNCTION_11_23();
    v10(v9, v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_11_23();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 48));
  v13 = *(v7 + 8);

  return v13();
}

uint64_t MPCPlaybackEngine.reloadQueue(reason:)()
{
  OUTLINED_FUNCTION_248();
  v1[15] = v2;
  v1[16] = v0;
  sub_1C6016C10();
  v1[17] = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  v4 = sub_1C6016BA0();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5E3B814, v4, v3);
}

uint64_t sub_1C5E3B814()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = [v1 eventStream];
  sub_1C5C6B024(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  v0[20] = v4;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"reload-current-item-reason";
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v7 = @"reload-current-item-reason";
  *(inited + 40) = [v6 initWithInteger_];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  v0[21] = v8;
  v0[22] = sub_1C5CC547C();
  v0[23] = sub_1C5C662E8(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  sub_1C6016880();
  sub_1C5E372B8();

  v0[24] = [v1 player];
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_1C5E3BA1C;

  return sub_1C5D38EC8();
}

uint64_t sub_1C5E3BA1C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (v0)
  {
    v7 = *(v3 + 144);
    v8 = *(v3 + 152);
    v9 = sub_1C5E3BE44;
  }

  else
  {

    v7 = *(v3 + 144);
    v8 = *(v3 + 152);
    v9 = sub_1C5E3BB24;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E3BB24()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  if ([v1 isVocalAttenuationEnabled])
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = [*(v0 + 128) player];
  v5 = [v4 currentItem];

  if (![v5 supportsVocalAttenuation] || !objc_msgSend(v5, sel_isAssetLoaded) || (v6 = objc_msgSend(*(v0 + 128), sel_player), v7 = objc_msgSend(v6, sel_currentItem), v6, LOBYTE(v6) = objc_msgSend(v7, sel_isConfiguredForVocalAttenuation), v7, (v6 & 1) != 0))
  {

LABEL_10:
    v8 = [*(v0 + 128) eventStream];
    [v8 emitEventType:@"reload-current-item-end" payload:0];

    OUTLINED_FUNCTION_172();
    goto LABEL_11;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  *(v0 + 112) = 220;
  sub_1C6016880();
  type metadata accessor for Code();
  v12 = v11;
  v17 = sub_1C5C662E8(&qword_1EC1A9D60, type metadata accessor for Code);
  sub_1C6017280();

  swift_willThrow();

  v13 = [*(v0 + 128) eventStream];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"reload-current-item-error";
  v15 = @"reload-current-item-error";
  v16 = sub_1C6014D30();
  OUTLINED_FUNCTION_35_18(v16);
  sub_1C5E372B8();

  swift_willThrow();
  OUTLINED_FUNCTION_172();
LABEL_11:

  return v9();
}

uint64_t sub_1C5E3BE44()
{
  v1 = *(v0 + 192);

  v2 = [*(v0 + 128) eventStream];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"reload-current-item-error";
  v4 = @"reload-current-item-error";
  v5 = sub_1C6014D30();
  OUTLINED_FUNCTION_35_18(v5);
  sub_1C5E372B8();

  swift_willThrow();
  OUTLINED_FUNCTION_172();

  return v6();
}

uint64_t sub_1C5E3BFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E3C06C, v5, v4);
}

uint64_t sub_1C5E3C06C()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C5E3C118;
  OUTLINED_FUNCTION_29_17();

  return MPCPlaybackEngine.reloadQueue(reason:)();
}

uint64_t sub_1C5E3C118()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  v6 = *(v3 + 32);
  *v5 = *v1;

  v7 = *(v3 + 48);
  if (v2)
  {
    sub_1C6014D30();

    (*(v7 + 16))(v7, v1);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 48));
  OUTLINED_FUNCTION_142_2();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t MPCPlaybackEngine.beginScanning(direction:supportsRateChange:identifier:)()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 96) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  sub_1C6016C10();
  *(v1 + 48) = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  v7 = sub_1C6016BA0();
  *(v1 + 56) = v7;
  *(v1 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5E3C31C, v7, v6);
}

uint64_t sub_1C5E3C31C()
{
  OUTLINED_FUNCTION_248();
  *(v0 + 72) = [*(v0 + 40) player];
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C5E3C3CC;
  OUTLINED_FUNCTION_29_17();

  return sub_1C5D38854();
}

uint64_t sub_1C5E3C3CC()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C5E3C530;
  }

  else
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C5E3C4D4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E3C4D4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5E3C530()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5E3C638(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 80) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  sub_1C6016C10();
  *(v5 + 48) = sub_1C6016C00();
  v7 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E3C6D8, v7, v6);
}

uint64_t sub_1C5E3C6D8()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = v0[5];
  v2 = v0[4];

  v0[7] = _Block_copy(v2);
  sub_1C6016940();
  v0[8] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1C5E3C7AC;
  OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_142_2();

  return MPCPlaybackEngine.beginScanning(direction:supportsRateChange:identifier:)();
}

uint64_t sub_1C5E3C7AC()
{
  OUTLINED_FUNCTION_9();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  v6 = *(v3 + 40);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = sub_1C6014D30();

    v9 = OUTLINED_FUNCTION_11_23();
    v10(v9, v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_11_23();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 56));
  v13 = *(v7 + 8);

  return v13();
}

uint64_t MPCPlaybackEngine.skipShouldJumpToItemStart(direction:)()
{
  v1 = [v0 player];
  v2 = OUTLINED_FUNCTION_73();
  v3 = sub_1C5D38800(v2);

  return v3 & 1;
}

Swift::Void __swiftcall MPCPlaybackEngine.relativeVolumeDidUpdate(to:)(Swift::Float to)
{
  if ([v1 isSystemPodcastsApplication] && objc_msgSend(v1, sel_delegate))
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        *&v5 = to;
        [v4 engine:v1 didUpdateRelativeVolume:v5];
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C5E3CAD0(char a1)
{
  v3 = [v1 player];
  v4 = sub_1C5D3877C();

  if (v4)
  {
    sub_1C5DD45C4(a1 & 1);
  }
}

void sub_1C5E3CBE0(void *a1)
{
  v1 = qword_1EC1A9590;
  v2 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_1C60162D0();
  __swift_project_value_buffer(v3, qword_1EC1BE438);
  v12 = v2;
  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v12;
    *v7 = v12;
    v8 = v12;
    _os_log_impl(&dword_1C5C61000, v4, v5, "[CRIT] MRCriticalSectionAssertion | exit [] | token=%{public}@", v6, 0xCu);
    sub_1C5C75594(v7, sub_1C5CC55A0);
    MEMORY[0x1C6956920](v7, -1, -1);
    MEMORY[0x1C6956920](v6, -1, -1);
  }

  [objc_opt_self() exitCriticalSection_];
  v9 = sub_1C60162B0();
  v10 = sub_1C6016F30();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C5C61000, v9, v10, "[CRIT] MRCriticalSectionAssertion | stopped []", v11, 2u);
    MEMORY[0x1C6956920](v11, -1, -1);
  }
}

uint64_t sub_1C5E3CDD8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1C5CBD218;

  return v5();
}

uint64_t sub_1C5E3CEE0()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_ready) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_counter);
  *(v0 + 24) = v2;
  if (v2 < 1)
  {
    if (qword_1EC1A9590 != -1)
    {
      OUTLINED_FUNCTION_2_52();
    }

    v24 = *(v0 + 16);
    v25 = sub_1C60162D0();
    *(v0 + 64) = __swift_project_value_buffer(v25, qword_1EC1BE438);
    v26 = v24;
    v27 = sub_1C60162B0();
    sub_1C6016F00();

    if (OUTLINED_FUNCTION_67())
    {
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_21_26();
      OUTLINED_FUNCTION_38_12();
      *v26 = 136446210;
      *(v26 + 1) = OUTLINED_FUNCTION_43_13((v2 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), v69, v73);
      OUTLINED_FUNCTION_23_0();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      OUTLINED_FUNCTION_13_30();
      OUTLINED_FUNCTION_11_8();
    }

    v33 = *(v0 + 16) + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_actions;
    os_unfair_lock_lock(v33);
    v34 = *(v33 + 8);
    v35 = *(v33 + 24);
    v71 = v35;
    if (v34)
    {
      v36 = *(v33 + 16);
      OUTLINED_FUNCTION_58();
      v37 = swift_allocObject();
      *&v35 = v71;
      v38 = v37;
      *(v37 + 16) = v34;
      *(v37 + 24) = v36;
      v39 = &unk_1C6044E88;
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    v60 = v35;
    if (v35)
    {
      OUTLINED_FUNCTION_58();
      v61 = swift_allocObject();
      *(v61 + 16) = v71;
      v62 = sub_1C5E41D4C;
      if (v34)
      {
LABEL_32:
        OUTLINED_FUNCTION_58();
        v63 = swift_allocObject();
        *(v63 + 16) = v39;
        *(v63 + 24) = v38;
        v64 = &unk_1C6044E78;
        goto LABEL_35;
      }
    }

    else
    {
      v62 = 0;
      v61 = 0;
      if (v34)
      {
        goto LABEL_32;
      }
    }

    v64 = 0;
    v63 = 0;
LABEL_35:
    *(v0 + 72) = v64;
    *(v0 + 80) = v63;
    if (v60)
    {
      OUTLINED_FUNCTION_58();
      v65 = swift_allocObject();
      *(v65 + 16) = v62;
      *(v65 + 24) = v61;
      v66 = sub_1C5DB7080;
    }

    else
    {
      v66 = 0;
      v65 = 0;
    }

    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *(v33 + 24) = v66;
    *(v33 + 32) = v65;
    os_unfair_lock_unlock(v33);
    if (v34)
    {
      v72 = (v64 + *v64);
      v47 = swift_task_alloc();
      *(v0 + 88) = v47;
      *v47 = v0;
      v48 = sub_1C5E3D7E8;
      goto LABEL_40;
    }

    v67 = *(v0 + 16);
    v50 = sub_1C60162B0();
    sub_1C6016F00();

    if (OUTLINED_FUNCTION_67())
    {
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_21_26();
      OUTLINED_FUNCTION_38_12();
      *v67 = 136446210;
      *(v67 + 1) = OUTLINED_FUNCTION_43_13((v62 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), v71, *(&v71 + 1));
      OUTLINED_FUNCTION_23_0();
      v59 = 12;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (qword_1EC1A9590 != -1)
  {
    OUTLINED_FUNCTION_2_52();
  }

  v3 = *(v0 + 16);
  v4 = sub_1C60162D0();
  *(v0 + 32) = __swift_project_value_buffer(v4, qword_1EC1BE438);
  v5 = v3;
  v6 = sub_1C60162B0();
  sub_1C6016F00();

  if (OUTLINED_FUNCTION_67())
  {
    v7 = *(v0 + 16);
    OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_21_26();
    OUTLINED_FUNCTION_38_12();
    *v5 = 136446466;
    v8 = OUTLINED_FUNCTION_43_13((v7 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), v69, v73);
    result = OUTLINED_FUNCTION_22_22(v8);
    if (v11)
    {
      __break(1u);
      goto LABEL_50;
    }

    *(v5 + 14) = v10;
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    OUTLINED_FUNCTION_13_30();
    OUTLINED_FUNCTION_11_8();
  }

  v17 = *(v0 + 16) + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_actions;
  os_unfair_lock_lock(v17);
  v18 = *(v17 + 8);
  v19 = *(v17 + 24);
  v70 = v19;
  if (v18)
  {
    v20 = *(v17 + 16);
    OUTLINED_FUNCTION_58();
    v21 = swift_allocObject();
    *&v19 = v70;
    v22 = v21;
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    v23 = &unk_1C6044E98;
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v40 = v19;
  if (v19)
  {
    OUTLINED_FUNCTION_58();
    v41 = swift_allocObject();
    *(v41 + 16) = v70;
    v42 = sub_1C5E42530;
    if (v18)
    {
LABEL_18:
      OUTLINED_FUNCTION_58();
      v43 = swift_allocObject();
      *(v43 + 16) = v23;
      *(v43 + 24) = v22;
      v44 = &unk_1C6044E90;
      goto LABEL_21;
    }
  }

  else
  {
    v42 = 0;
    v41 = 0;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  v44 = 0;
  v43 = 0;
LABEL_21:
  *(v0 + 40) = v44;
  *(v0 + 48) = v43;
  if (v40)
  {
    OUTLINED_FUNCTION_58();
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v41;
    v46 = sub_1C5E4253C;
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = v46;
  *(v17 + 32) = v45;
  os_unfair_lock_unlock(v17);
  if (v18)
  {
    v72 = (v44 + *v44);
    v47 = swift_task_alloc();
    *(v0 + 56) = v47;
    *v47 = v0;
    v48 = sub_1C5E3D5C8;
LABEL_40:
    v47[1] = v48;

    return v72();
  }

  v49 = *(v0 + 16);
  v50 = sub_1C60162B0();
  sub_1C6016F00();

  if (OUTLINED_FUNCTION_67())
  {
    v51 = *(v0 + 16);
    OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_21_26();
    OUTLINED_FUNCTION_38_12();
    *v49 = 136446466;
    v52 = OUTLINED_FUNCTION_43_13((v51 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), v70, *(&v70 + 1));
    result = OUTLINED_FUNCTION_22_22(v52);
    if (!v11)
    {
      *(v49 + 14) = v53;
      OUTLINED_FUNCTION_23_0();
      v59 = 22;
LABEL_45:
      _os_log_impl(v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_13_30();
      OUTLINED_FUNCTION_11_8();
      goto LABEL_46;
    }

LABEL_50:
    __break(1u);
    return result;
  }

LABEL_46:

  OUTLINED_FUNCTION_172();

  return v68();
}

uint64_t sub_1C5E3D5C8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;

  sub_1C5C74C18(v2);
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E3D6E0()
{
  v15 = v0;
  v1 = *(v0 + 16);
  v2 = sub_1C60162B0();
  sub_1C6016F00();

  if (OUTLINED_FUNCTION_67())
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_68_0();
    v14 = OUTLINED_FUNCTION_21_26();
    *v1 = 136446466;
    v4 = sub_1C5C6AB10(*(v3 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), *(v3 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8), &v14);
    result = OUTLINED_FUNCTION_22_22(v4);
    if (v7)
    {
      __break(1u);
      return result;
    }

    *(v1 + 14) = v6;
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    OUTLINED_FUNCTION_13_30();
    OUTLINED_FUNCTION_11_8();
  }

  OUTLINED_FUNCTION_172();

  return v13();
}

uint64_t sub_1C5E3D7E8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;

  sub_1C5C74C18(v2);
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E3D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_136();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_9();
  a14 = v16;
  v20 = *(v16 + 16);
  v21 = sub_1C60162B0();
  sub_1C6016F00();

  if (OUTLINED_FUNCTION_67())
  {
    OUTLINED_FUNCTION_33_8();
    a9 = OUTLINED_FUNCTION_21_26();
    *v20 = 136446210;
    *(v20 + 1) = sub_1C5C6AB10(*(v17 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), *(v17 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8), &a9);
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    OUTLINED_FUNCTION_13_30();
    OUTLINED_FUNCTION_11_8();
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_142_2();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1C5E3D9E4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C5CBD218;

  return v4();
}

void sub_1C5E3DACC()
{
  v1 = v0 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_actions;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_actions));
  v2 = *(v1 + 1);
  v3 = *(v1 + 24);
  v56 = v3;
  if (v2)
  {
    v4 = *(v1 + 2);
    v5 = swift_allocObject();
    *&v3 = v56;
    v6 = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v7 = &unk_1C6044ED8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  oslog = v0;
  v8 = v3;
  if (v3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v56;
    v10 = sub_1C5E42530;
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = 0;
    v11 = 0;
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v10 = 0;
  v9 = 0;
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = &unk_1C6044ED0;
  if (v8)
  {
LABEL_7:
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;
    v14 = sub_1C5E4253C;
    goto LABEL_11;
  }

LABEL_10:
  v14 = 0;
  v13 = 0;
LABEL_11:
  v15 = oslog;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  os_unfair_lock_unlock(v1);
  if (!v2)
  {
    v17 = 0;
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  v17 = &unk_1C6044EC8;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_13:
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  v19 = sub_1C5E42530;
LABEL_16:
  v20 = *(&oslog->isa + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_counter);
  v21 = &qword_1EC1A8FF0[2];
  if (!v2)
  {
    if (v20 < 1)
    {
      if (qword_1EC1A9590 == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_57;
    }

    if (qword_1EC1A9590 != -1)
    {
      swift_once();
    }

    v29 = sub_1C60162D0();
    __swift_project_value_buffer(v29, qword_1EC1BE438);
    v30 = oslog;
    v31 = sub_1C60162B0();
    v32 = sub_1C6016F30();

    if (!os_log_type_enabled(v31, v32))
    {

      goto LABEL_47;
    }

    v58 = v17;
    v33 = v19;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1C5C6AB10(*(&v30->isa + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), *(&v30[1].isa + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name), &v61);
    *(v34 + 12) = 2048;
    if (!__OFADD__(v20, 1))
    {
      *(v34 + 14) = v20 + 1;
      _os_log_impl(&dword_1C5C61000, v31, v32, "[CRIT] perform(uniqueTaskNamed: %{public}s) | cancel [continuation canceled] uniqueCounter=%ld", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1C6956920](v35, -1, -1);
      MEMORY[0x1C6956920](v34, -1, -1);

      v19 = v33;
      v17 = v58;
      goto LABEL_45;
    }

    __break(1u);
    return;
  }

  if (!v8)
  {
LABEL_48:

    sub_1C5C74C18(v17);
    return;
  }

  while (1)
  {
    v22 = v21[178];

    if (v20 <= 0)
    {
      break;
    }

    v57 = v17;
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1C60162D0();
    __swift_project_value_buffer(v23, qword_1EC1BE438);
    v17 = v15;
    v24 = sub_1C60162B0();
    v15 = sub_1C6016F00();

    if (os_log_type_enabled(v24, v15))
    {
      v8 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v61 = v25;
      *v8 = 136446466;
      *(v8 + 4) = sub_1C5C6AB10(*&v17[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name], *&v17[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8], &v61);
      *(v8 + 12) = 2048;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      *(v8 + 14) = v20 + 1;
      _os_log_impl(&dword_1C5C61000, v24, v15, "[CRIT] perform(uniqueTaskNamed: %{public}s) | onCancel start [] uniqueCounter=%ld", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1C6956920](v25, -1, -1);
      MEMORY[0x1C6956920](v8, -1, -1);
    }

    v19();
    v15 = v17;
    oslog = sub_1C60162B0();
    v26 = sub_1C6016F00();

    if (!os_log_type_enabled(oslog, v26))
    {
      v47 = v57;
      goto LABEL_52;
    }

    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v61 = v27;
    *v17 = 136446466;
    *(v17 + 4) = sub_1C5C6AB10(*&v15[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name], *&v15[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8], &v61);
    *(v17 + 6) = 2048;
    if (!__OFADD__(v20, 1))
    {
      *(v17 + 14) = v20 + 1;
      _os_log_impl(&dword_1C5C61000, oslog, v26, "[CRIT] perform(uniqueTaskNamed: %{public}s) | onCancel finish [] uniqueCounter=%ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1C6956920](v27, -1, -1);
      MEMORY[0x1C6956920](v17, -1, -1);
      v28 = v57;
LABEL_39:
      sub_1C5C74C18(v28);
      sub_1C5C74C18(v19);
      sub_1C5C74C18(v19);

      return;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_42:
    v48 = sub_1C60162D0();
    __swift_project_value_buffer(v48, qword_1EC1BE438);
    v49 = v15;
    v50 = sub_1C60162B0();
    v51 = sub_1C6016F30();

    if (os_log_type_enabled(v50, v51))
    {
      v59 = v17;
      v52 = v19;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_1C5C6AB10(*&v49[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name], *&v49[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8], &v61);
      _os_log_impl(&dword_1C5C61000, v50, v51, "[CRIT] perform(taskNamed: %{public}s) | cancel [continuation canceled]", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1C6956920](v54, -1, -1);
      v55 = v53;
      v19 = v52;
      v17 = v59;
      MEMORY[0x1C6956920](v55, -1, -1);
    }

LABEL_45:
    v15 = oslog;
LABEL_47:
    v21 = qword_1EC1A8FF0 + 16;
    if (!v8)
    {
      goto LABEL_48;
    }
  }

  v36 = v17;
  if (v22 != -1)
  {
    swift_once();
  }

  v37 = sub_1C60162D0();
  __swift_project_value_buffer(v37, qword_1EC1BE438);
  v38 = v15;
  v39 = sub_1C60162B0();
  v40 = sub_1C6016F00();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v61 = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_1C5C6AB10(*&v38[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name], *&v38[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8], &v61);
    _os_log_impl(&dword_1C5C61000, v39, v40, "[CRIT] perform(taskNamed: %{public}s) | onCancel start []", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1C6956920](v42, -1, -1);
    MEMORY[0x1C6956920](v41, -1, -1);
  }

  v19();
  v43 = v38;
  oslog = sub_1C60162B0();
  v44 = sub_1C6016F00();

  if (os_log_type_enabled(oslog, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v61 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_1C5C6AB10(*&v43[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name], *&v43[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8], &v61);
    _os_log_impl(&dword_1C5C61000, oslog, v44, "[CRIT] perform(taskNamed: %{public}s) | onCancel finish []", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1C6956920](v46, -1, -1);
    MEMORY[0x1C6956920](v45, -1, -1);
    v28 = v36;
    goto LABEL_39;
  }

  v47 = v36;
LABEL_52:
  sub_1C5C74C18(v47);
  sub_1C5C74C18(v19);
  sub_1C5C74C18(v19);
}

id sub_1C5E3E4D4()
{
  ObjectType = swift_getObjectType();
  if ((v0[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid] & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_onInvalidate];

    v2(v3);
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1C5E3E638()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name);

  return v1;
}

void sub_1C5E3E6A8()
{
  v1 = OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid;
  if ((v0[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid] & 1) == 0)
  {
    v2 = v0;
    if (qword_1EC1A9590 != -1)
    {
      swift_once();
    }

    v3 = sub_1C60162D0();
    __swift_project_value_buffer(v3, qword_1EC1BE438);
    v4 = v0;
    v5 = sub_1C60162B0();
    v6 = sub_1C6016F30();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1C5C6AB10(*&v4[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name], *&v4[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name + 8], &v28);
      *(v7 + 12) = 2082;
      v9 = sub_1C60168E0();
      v11 = sub_1C5C6AB10(v9, v10, &v28);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_1C5C61000, v5, v6, "[CRIT] takeAssertion(%{public}s) | invalidate [] %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v8, -1, -1);
      MEMORY[0x1C6956920](v7, -1, -1);
    }

    v2[v1] = 1;
    v12 = v4;
    v13 = sub_1C60162B0();
    v14 = sub_1C6016F00();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_1C5C6AB10(*&v12[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name], *&v12[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name + 8], &v28);
      *(v15 + 12) = 2082;
      v17 = sub_1C60168E0();
      v19 = sub_1C5C6AB10(v17, v18, &v28);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1C5C61000, v13, v14, "[CRIT] takeAssertion(%{public}s) | onInvalidate start [] %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v16, -1, -1);
      MEMORY[0x1C6956920](v15, -1, -1);
    }

    (*&v12[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_onInvalidate])();
    v20 = v12;
    oslog = sub_1C60162B0();
    v21 = sub_1C6016F00();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1C5C6AB10(*&v20[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name], *&v20[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name + 8], &v28);
      *(v22 + 12) = 2082;
      v24 = sub_1C60168E0();
      v26 = sub_1C5C6AB10(v24, v25, &v28);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_1C5C61000, oslog, v21, "[CRIT] takeAssertion(%{public}s) | onInvalidate finish [] %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v23, -1, -1);
      MEMORY[0x1C6956920](v22, -1, -1);
    }

    else
    {
    }
  }
}

void __swiftcall MPCCriticalSectionManager.init()(MPCCriticalSectionManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1C5E3EB88()
{
  v1 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context__assertions;
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_mediaRemoteCriticalSection);
  if (v3)
  {
    sub_1C5E3CBE0(v3);
  }

  return v0;
}

uint64_t sub_1C5E3EC3C()
{
  v0 = sub_1C5E3EB88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C5E3ECC4()
{
  v1 = v0 + OBJC_IVAR___MPCCriticalSectionManager__context;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPCCriticalSectionManager__context));
  v2 = *(*(v1 + 8) + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_inCriticalSection);
  os_unfair_lock_unlock(v1);
  return v2;
}

id sub_1C5E3ED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C6016900();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C5DBC798;
  v11[3] = &block_descriptor_32;
  v8 = _Block_copy(v11);

  v9 = [v4 performTaskNamed:v7 afterCriticalSection:v8 onCancel:0];
  _Block_release(v8);

  return v9;
}

id sub_1C5E3EEB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  v13 = a5 + OBJC_IVAR___MPCCriticalSectionManager__context;
  _Block_copy(a6);
  os_unfair_lock_lock(v13);
  sub_1C5E3F1D4((v13 + 8), a1, a2, sub_1C5E4252C, v12, a3, a4, &v26);
  os_unfair_lock_unlock(v13);
  v14 = v26;
  if (!v26)
  {
    if (qword_1EC1A9590 != -1)
    {
      swift_once();
    }

    v15 = sub_1C60162D0();
    __swift_project_value_buffer(v15, qword_1EC1BE438);

    v16 = sub_1C60162B0();
    v17 = sub_1C6016F30();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1C5C6AB10(a1, a2, &v26);
      _os_log_impl(&dword_1C5C61000, v16, v17, "[CRIT] perform(taskNamed: %{public}s) | running [immediate]", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1C6956920](v19, -1, -1);
      MEMORY[0x1C6956920](v18, -1, -1);
    }

    a6[2](a6);

    v20 = sub_1C60162B0();
    v21 = sub_1C6016F30();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1C5C6AB10(a1, a2, &v26);
      _os_log_impl(&dword_1C5C61000, v20, v21, "[CRIT] perform(taskNamed: %{public}s) | finished [immediate]", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1C6956920](v23, -1, -1);
      MEMORY[0x1C6956920](v22, -1, -1);
    }

    v24 = objc_allocWithZone(type metadata accessor for _CriticalSectionContinuation());

    v14 = sub_1C5C74A9C(a1, a2, 0, 0, 0, 0);
  }

  _Block_release(a6);
  return v14;
}

uint64_t sub_1C5E3F1D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (qword_1EC1A9590 != -1)
  {
    swift_once();
  }

  v11 = sub_1C60162D0();
  __swift_project_value_buffer(v11, qword_1EC1BE438);

  v12 = sub_1C60162B0();
  v13 = sub_1C6016F30();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1C5C6AB10(a2, a3, v33);
    _os_log_impl(&dword_1C5C61000, v12, v13, "[CRIT] perform(taskNamed: %{public}s) | checking", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1C6956920](v15, -1, -1);
    MEMORY[0x1C6956920](v14, -1, -1);
  }

  v16 = *a1;
  swift_beginAccess();
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  sub_1C6015430();
  swift_endAccess();
  v17 = sub_1C5C6AA20();

  if (v17)
  {

    v19 = sub_1C60162B0();
    v20 = sub_1C6016F30();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1C5C6AB10(a2, a3, v33);
      _os_log_impl(&dword_1C5C61000, v19, v20, "[CRIT] perform(taskNamed: %{public}s) | staging", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1C6956920](v22, -1, -1);
      MEMORY[0x1C6956920](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v24 = objc_allocWithZone(type metadata accessor for _CriticalSectionContinuation());

    sub_1C5C74C28(a6);
    v25 = sub_1C5C74A9C(a2, a3, &unk_1C6044EC0, v23, a6, a7);
    v26 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_continuations;
    swift_beginAccess();
    v27 = v25;
    MEMORY[0x1C69535C0]();
    sub_1C5C68934(*((*(v16 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C6016B70();
    result = swift_endAccess();
  }

  else
  {
    v27 = 0;
  }

  *a8 = v27;
  return result;
}

uint64_t sub_1C5E3F578(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C5E3F6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[0] = a5;
  v27[1] = a1;
  sub_1C5C6B024(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - v13;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1C6016BA0();
    v17 = v16;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v15 = 0;
    v17 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1C5CE2ACC(a3, v14);
  v19 = sub_1C6016C30();
  if (__swift_getEnumTagSinglePayload(v14, 1, v19) == 1)
  {
    sub_1C5C7ACE0(v14);
  }

  else
  {
    sub_1C6016C20();
    (*(*(v19 - 8) + 8))(v14, v19);
  }

  if (a2)
  {
    v20 = sub_1C60169C0() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a6;
    *(v21 + 24) = a7;
    swift_unknownObjectRetain();

    if (v17 | v15)
    {
      v29[0] = 0;
      v29[1] = 0;
      v22 = v29;
      v29[2] = v15;
      v29[3] = v17;
    }

    else
    {
      v22 = 0;
    }

    if (a4 != 1)
    {
      v28[0] = 6;
      v28[1] = v22;
      v28[2] = a4;
      v28[3] = v27[0];
      v22 = v28;
    }

    v27[2] = 7;
    v27[3] = v22;
    v27[4] = v20;
    v25 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;
    swift_unknownObjectRetain();

    if (v17 | v15)
    {
      v30[0] = 0;
      v30[1] = 0;
      v24 = v30;
      v30[2] = v15;
      v30[3] = v17;
    }

    else
    {
      v24 = 0;
    }

    if (a4 != 1)
    {
      v29[4] = 6;
      v29[5] = v24;
      v29[6] = a4;
      v29[7] = v27[0];
    }

    v25 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();

  return v25;
}

void sub_1C5E3FA30(uint64_t a1, void *a2)
{
  v19 = a2;
  v16 = a1;
  sub_1C5D3A084();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v18 = sub_1C6016900();
  v7 = *(v5 + 16);
  v7(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(v5 + 32);
  v10(v9 + v8, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v24 = sub_1C5E423FC;
  v25 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1C5DBC798;
  v23 = &block_descriptor_212;
  v17 = _Block_copy(&aBlock);

  v7(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v4);
  v11 = swift_allocObject();
  v10(v11 + v8, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v24 = sub_1C5E42498;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1C5DBC798;
  v23 = &block_descriptor_218;
  v12 = _Block_copy(&aBlock);

  v13 = v18;
  v14 = v17;
  v15 = [v19 performTaskNamed:v18 afterCriticalSection:v17 onCancel:v12];
  _Block_release(v12);
  _Block_release(v14);
  swift_unknownObjectRelease();
}

uint64_t sub_1C5E3FD04()
{
  sub_1C6016BE0();
  sub_1C5C662E8(&qword_1ED7DCF38, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_1C6016820();
  sub_1C5D3A084();
  return sub_1C6016BB0();
}

uint64_t sub_1C5E3FDA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C5CBD218;

  return v7();
}

void sub_1C5E3FE8C()
{
  sub_1C5C6B024(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = &v0[OBJC_IVAR___MPCCriticalSectionManager__context];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPCCriticalSectionManager__context]);
  sub_1C5E400C0(v4 + 1, &v15);
  os_unfair_lock_unlock(v4);
  v5 = v15;
  if (sub_1C5C6AA20(v15))
  {
    v6 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v7[5] = v0;
    v8 = v0;
    sub_1C5E3F6EC(0, 0, v3, 0, 0, &unk_1C6044E20, v7);

    sub_1C5C7ACE0(v3);
  }

  else
  {

    if (qword_1EC1A9590 != -1)
    {
      swift_once();
    }

    v9 = sub_1C60162D0();
    __swift_project_value_buffer(v9, qword_1EC1BE438);
    v14 = sub_1C60162B0();
    v10 = sub_1C6016F30();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C5C61000, v14, v10, "[CRIT] invalidateAssertions | skipping [no continuations]", v11, 2u);
      MEMORY[0x1C6956920](v11, -1, -1);
    }

    v12 = v14;
  }
}

void sub_1C5E400C0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  v4 = sub_1C6015430();
  swift_endAccess();
  v5 = sub_1C5C6AA20(v4);

  swift_beginAccess();
  v6 = sub_1C6015430();
  swift_endAccess();
  v34 = v6;
  sub_1C5E41588(&v34);
  v8 = v7;
  v9 = v34;
  v10 = sub_1C5C6AA20(v34);
  v11 = v10 - v8;
  if (v10 < v8)
  {
    goto LABEL_28;
  }

  if (v8 < 0)
  {
    goto LABEL_29;
  }

  v12 = v10;
  if (sub_1C5C6AA20(v9) < v10)
  {
    goto LABEL_30;
  }

  v13 = __OFSUB__(0, v11);
  v14 = -v11;
  if (v13)
  {
    goto LABEL_31;
  }

  v15 = sub_1C5C6AA20(v9);
  v13 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (v13)
  {
    goto LABEL_32;
  }

  sub_1C5D12108(v16, 1);
  sub_1C5D10E88(v8, v12);
  swift_beginAccess();
  sub_1C6015440();
  swift_endAccess();
  sub_1C5C72280();
  if (qword_1EC1A9590 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v17 = sub_1C60162D0();
    __swift_project_value_buffer(v17, qword_1EC1BE438);
    v18 = sub_1C60162B0();
    v19 = sub_1C6016F30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = a2;
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v5;
      _os_log_impl(&dword_1C5C61000, v18, v19, "[CRIT] invalidateAssertions | removed assertions [] count=%ld", v21, 0xCu);
      v22 = v21;
      a2 = v20;
      MEMORY[0x1C6956920](v22, -1, -1);
    }

    swift_beginAccess();
    v23 = sub_1C6015430();
    swift_endAccess();
    v5 = sub_1C5C6AA20(v23);

    if (v5)
    {
      break;
    }

    v33 = a2;
    v30 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_continuations;
    swift_beginAccess();
    v3 = *(v3 + v30);
    v34 = MEMORY[0x1E69E7CC0];
    v31 = sub_1C5C6AA20(v3);

    a2 = &qword_1EC1AC000;
    while (1)
    {
      if (v31 == v5)
      {

        v29 = v34;
        a2 = v33;
        goto LABEL_25;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1C6954040](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v32 = *(v3 + 8 * v5 + 32);
      }

      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (*(v32 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_ready))
      {
        sub_1C60175D0();
        sub_1C6017600();
        sub_1C6017610();
        sub_1C60175E0();
      }

      else
      {
      }

      ++v5;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  swift_beginAccess();
  v24 = sub_1C6015430();
  swift_endAccess();
  v25 = sub_1C5C6AA20(v24);

  v26 = sub_1C60162B0();
  v27 = sub_1C6016F30();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v25;
    _os_log_impl(&dword_1C5C61000, v26, v27, "[CRIT] invalidateAssertions | still critical [%ld assertions]", v28, 0xCu);
    MEMORY[0x1C6956920](v28, -1, -1);
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_25:
  *a2 = v29;
}

uint64_t sub_1C5E4055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C5E40580, 0, 0);
}

uint64_t sub_1C5E40580()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1C5E4065C;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE8](v3, v4, 0, 0, &unk_1C6044E40, v1, v5);
}

uint64_t sub_1C5E4065C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5E40758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_1C5C6B024(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5E40828, 0, 0);
}

void sub_1C5E40828()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    v2 = sub_1C6017440();
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v24 = **(v0 + 72);
  v23 = v1 & 0xC000000000000001;
  v22 = *(v0 + 80) + 32;
  do
  {
    if (v23)
    {
      v4 = MEMORY[0x1C6954040](v3, *(v0 + 80));
    }

    else
    {
      v4 = *(v22 + 8 * v3);
    }

    v5 = v4;
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    OUTLINED_FUNCTION_15();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v5;
    v10[5] = v8;
    sub_1C5CE2ACC(v6, v7);
    LODWORD(v6) = __swift_getEnumTagSinglePayload(v7, 1, v9);
    v11 = v5;
    v12 = v8;
    v13 = *(v0 + 96);
    if (v6 == 1)
    {
      sub_1C5C7ACE0(*(v0 + 96));
    }

    else
    {
      sub_1C6016C20();
      OUTLINED_FUNCTION_50_0();
      (*(v14 + 8))(v13, v9);
    }

    if (v10[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1C6016BA0();
      v17 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    OUTLINED_FUNCTION_58();
    v18 = swift_allocObject();
    *(v18 + 16) = &unk_1C6044E58;
    *(v18 + 24) = v10;

    if (v17 | v15)
    {
      v19 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v15;
      *(v0 + 40) = v17;
    }

    else
    {
      v19 = 0;
    }

    ++v3;
    v20 = *(v0 + 104);
    *(v0 + 48) = 1;
    *(v0 + 56) = v19;
    *(v0 + 64) = v24;
    swift_task_create();

    sub_1C5C7ACE0(v20);
  }

  while (v2 != v3);
LABEL_18:

  OUTLINED_FUNCTION_172();

  v21();
}

uint64_t sub_1C5E40B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1C5E40BA0;

  return sub_1C5E3CEC0();
}

uint64_t sub_1C5E40BA0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5E40C84()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) + OBJC_IVAR___MPCCriticalSectionManager__context;
  os_unfair_lock_lock(v2);
  sub_1C5E40D24((v2 + 8), v1);
  os_unfair_lock_unlock(v2);
  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5E40D24(uint64_t *a1, void *a2)
{
  if (qword_1EC1A9590 != -1)
  {
    swift_once();
  }

  v5 = sub_1C60162D0();
  __swift_project_value_buffer(v5, qword_1EC1BE438);
  v6 = a2;
  v7 = sub_1C60162B0();
  v8 = sub_1C6016F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1C5C6AB10(*&v6[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name], *&v6[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8], v17);
    _os_log_impl(&dword_1C5C61000, v7, v8, "[CRIT] invalidateAssertions | removing task [completed] task=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1C6956920](v10, -1, -1);
    MEMORY[0x1C6956920](v9, -1, -1);
  }

  v11 = *a1;
  v12 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_continuations;
  swift_beginAccess();
  sub_1C5D37D7C((v11 + v12), v6);
  if (!v2)
  {
    v14 = v13;
    v15 = sub_1C5C6AA20();
    if (v15 >= v14)
    {
      sub_1C5D106EC(v14, v15);
      return swift_endAccess();
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C5E40F10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C5CBD218;

  return v6();
}

uint64_t sub_1C5E40FF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C5CBCD24;

  return v7();
}

uint64_t sub_1C5E410E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C5C6B024(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1C5CE2ACC(a3, v22 - v10);
  v12 = sub_1C6016C30();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C5C7ACE0(v11);
  }

  else
  {
    sub_1C6016C20();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1C6016BA0();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1C60169C0() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1C5C7ACE0(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C5C7ACE0(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1C5E413A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C5E42528;

  return v6(a1);
}

uint64_t sub_1C5E41498(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C5C834C8;

  return v4();
}

void sub_1C5E41588(uint64_t *a1)
{
  v3 = *a1;
  v4 = sub_1C5E3AAE8(*a1);
  v6 = v4;
  if (!v1)
  {
    if (v5)
    {
      sub_1C5C6AA20(v3);
      return;
    }

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      while (1)
      {
        if (v3 >> 62)
        {
          v8 = sub_1C6017440();
        }

        else
        {
          v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v7 == v8)
        {
          return;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v20 = *(MEMORY[0x1C6954040](v7, v3) + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid);
          swift_unknownObjectRelease();
          if ((v20 & 1) == 0)
          {
            if (v6 != v7)
            {
              v11 = MEMORY[0x1C6954040](v6, v3);
              v12 = MEMORY[0x1C6954040](v7, v3);
              goto LABEL_16;
            }

LABEL_26:
            v19 = __OFADD__(v6++, 1);
            if (v19)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            break;
          }

          v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v9)
          {
            goto LABEL_38;
          }

          v10 = *(v3 + 32 + 8 * v7);
          if ((*(v10 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid) & 1) == 0)
          {
            if (v6 != v7)
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_41;
              }

              if (v6 >= v9)
              {
                goto LABEL_42;
              }

              v11 = *(v3 + 32 + 8 * v6);
              v12 = v10;
LABEL_16:
              v13 = v12;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1C5D120FC(v3);
                v14 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v14) = 0;
              }

              v15 = v3 & 0xFFFFFFFFFFFFFF8;
              v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v13;

              if ((v3 & 0x8000000000000000) != 0 || v14)
              {
                v3 = sub_1C5D120FC(v3);
                v15 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v7 & 0x8000000000000000) != 0)
                {
LABEL_35:
                  __break(1u);
                  return;
                }
              }

              else if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_35;
              }

              if (v7 >= *(v15 + 16))
              {
                goto LABEL_43;
              }

              v17 = v15 + 8 * v7;
              v18 = *(v17 + 32);
              *(v17 + 32) = v11;

              *a1 = v3;
            }

            goto LABEL_26;
          }
        }

        v19 = __OFADD__(v7++, 1);
        if (v19)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
  }
}

void sub_1C5E4178C()
{
  if (!qword_1EC1AC278)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1C5C6B024(255, &qword_1EC1AC280, sub_1C5E4185C, MEMORY[0x1E69E6720]);
    sub_1C5C6B024(255, &unk_1EC1A91F0, sub_1C5C755F0, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1AC278);
    }
  }
}

unint64_t sub_1C5E4185C()
{
  result = qword_1EC1AC288;
  if (!qword_1EC1AC288)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC1AC288);
  }

  return result;
}

void sub_1C5E418A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6015450();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C5E418FC()
{
  if (!qword_1EC1AC320)
  {
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AC320);
    }
  }
}

void **sub_1C5E4196C(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1C5E419A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C5E419E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5E41A50()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_31_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_23_19();
  OUTLINED_FUNCTION_142_2();

  return sub_1C5E4055C(v3, v4, v5, v6, v7);
}

uint64_t sub_1C5E41AE4()
{
  OUTLINED_FUNCTION_13();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_0(v7);
  *v8 = v9;
  v8[1] = sub_1C5CBD218;

  return sub_1C5E40758(v4, v2, v6, v5);
}

uint64_t sub_1C5E41B8C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_27_0(v4);
  *v5 = v6;
  v5[1] = sub_1C5CBD218;
  v7 = OUTLINED_FUNCTION_60_9();

  return sub_1C5E40B0C(v7, v1, v3, v2);
}

uint64_t sub_1C5E41C2C()
{
  OUTLINED_FUNCTION_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_63(v1);

  return v4(v3);
}

uint64_t sub_1C5E41CBC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_1C5E41D74()
{
  OUTLINED_FUNCTION_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_63(v1);

  return v4(v3);
}

uint64_t sub_1C5E41E04()
{
  OUTLINED_FUNCTION_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_63(v1);

  return v4(v3);
}

uint64_t sub_1C5E41E9C()
{
  OUTLINED_FUNCTION_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_63(v1);

  return v4(v3);
}

uint64_t sub_1C5E41F34()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_23_19();

  return v3();
}

uint64_t sub_1C5E41FEC()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_142_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C5E42098()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_31_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBCD24;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_23_19();

  return v3();
}

uint64_t sub_1C5E42140()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_1C5E421D0()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_27_0(v3);
  *v4 = v5;
  v4[1] = sub_1C5CBD218;
  v6 = OUTLINED_FUNCTION_60_9();

  return v7(v6, v1, v2);
}

uint64_t sub_1C5E42278()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_27_0(v3);
  *v4 = v5;
  v4[1] = sub_1C5CBD218;
  v6 = OUTLINED_FUNCTION_60_9();

  return v7(v6, v1, v2);
}

uint64_t objectdestroy_170Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5E4235C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_31_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_23_19();
  OUTLINED_FUNCTION_142_2();

  return sub_1C5E3FDA4(v3, v4, v5, v6);
}

uint64_t objectdestroy_208Tm()
{
  sub_1C5D3A084();
  OUTLINED_FUNCTION_50_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C5E424B0(uint64_t (*a1)(uint64_t))
{
  sub_1C5D3A084();
  OUTLINED_FUNCTION_13_3(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

_OWORD *OUTLINED_FUNCTION_36_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6)
{

  return sub_1C5C70758(&a6, (a1 + 32));
}

unint64_t OUTLINED_FUNCTION_43_13@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v4 = *a1;
  v5 = a1[1];

  return sub_1C5C6AB10(v4, v5, va);
}

uint64_t sub_1C5E425A4()
{
  v1 = [v0 msv_codeDescription];
  v2 = sub_1C6016940();

  return v2;
}

uint64_t sub_1C5E4268C()
{
  sub_1C5C6AACC();
  result = sub_1C6017310();
  qword_1EC1BE360 = result;
  return result;
}

uint64_t sub_1C5E426F4()
{
  sub_1C5C6AACC();
  result = sub_1C6017310();
  qword_1EC1BE350 = result;
  return result;
}

uint64_t sub_1C5E4275C()
{
  sub_1C5C6AACC();
  result = sub_1C6017310();
  qword_1EC1BE358 = result;
  return result;
}

uint64_t sub_1C5E427F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C5C6AACC();
  result = sub_1C6017310();
  *a4 = result;
  return result;
}

uint64_t sub_1C5E4298C(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1C60162D0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_1C60162E0();
}

void sub_1C5E42A80(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v7 = sub_1C60162D0();
  __swift_project_value_buffer(v7, qword_1EC1BE3A0);
  v8 = sub_1C60162B0();
  v9 = sub_1C6016F30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5C61000, v8, v9, "Received call in getRemotePlaybackQueue", v10, 2u);
    MEMORY[0x1C6956920](v10, -1, -1);
  }

  if ((a2 - 1) < 2)
  {
    v18 = sub_1C60162B0();
    v19 = sub_1C6016F30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C5C61000, v18, v19, "In process or local device, we create a custom data queue", v20, 2u);
      MEMORY[0x1C6956920](v20, -1, -1);
    }

    if ([a1 tracklistToken])
    {
      sub_1C5E436FC();
      if (swift_dynamicCast())
      {
        v14 = v38;
        v21 = objc_allocWithZone(MEMORY[0x1E6970510]);
        sub_1C5CFAC9C(v37, v38);
        v22 = sub_1C5E43670(0xD00000000000001BLL, 0x80000001C604A260, v37, v38);
        [v22 setRequestingImmediatePlayback_];
        sub_1C5E43758(a1);
        if (v23)
        {
          [v22 _mediaRemotePlaybackQueue];
          v24 = v22;
          v25 = v22;
          v26 = sub_1C6016900();

          MRSystemAppPlaybackQueueSetFeatureName();
        }

        goto LABEL_22;
      }
    }

LABEL_23:
    a4[2](a4, 0, 0);
    goto LABEL_24;
  }

  if (a2 == 3)
  {
    v11 = sub_1C60162B0();
    v12 = sub_1C6016F30();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C5C61000, v11, v12, "Remote device, we create an old school queue", v13, 2u);
      MEMORY[0x1C6956920](v13, -1, -1);
    }

    if ([a1 tracklistToken])
    {
      sub_1C5E436FC();
      if (swift_dynamicCast())
      {
        v14 = v38;
        sub_1C5C64D74(0, &unk_1EC1AC0C0);
        sub_1C5C64D74(0, &qword_1EC1A92B0);
        if (sub_1C6016F60())
        {
          v27 = MRSystemAppPlaybackQueueCreate();
          if (v27)
          {
            v28 = v27;
            v29 = sub_1C60162B0();
            v30 = sub_1C6016F30();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&dword_1C5C61000, v29, v30, "MR queue created, converting to MPGenericTracklistPlaybackQueue", v31, 2u);
              MEMORY[0x1C6956920](v31, -1, -1);
            }

            v32 = sub_1C6016AF0();

            MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

            sub_1C5C64D74(0, &qword_1EC1AC020);
            v22 = [swift_getObjCClassFromMetadata() queueWithMediaRemotePlaybackQueue_];
            [v22 setRequestingImmediatePlayback_];
            sub_1C5E43758(a1);
            if (v33)
            {
              [v22 _mediaRemotePlaybackQueue];
              v34 = v22;
              v35 = v22;
              v36 = sub_1C6016900();

              MRSystemAppPlaybackQueueSetFeatureName();
            }

LABEL_22:
            (a4)[2](a4, v22, 0);

            sub_1C5C8F8BC(v37, v14);
            goto LABEL_24;
          }
        }

        sub_1C5C8F8BC(v37, v38);
      }
    }

    v15 = sub_1C60162B0();
    v16 = sub_1C6016F30();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5C61000, v15, v16, "We couldn't decode the data properly", v17, 2u);
      MEMORY[0x1C6956920](v17, -1, -1);
    }

    goto LABEL_23;
  }

  a4[2](a4, 0, 0);

LABEL_24:
  _Block_release(a4);
}

void sub_1C5E43198(uint64_t a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  sub_1C5E43500();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = sub_1C6015120();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  v14[1] = 2;
  sub_1C6016880();
  _s3__C4CodeOMa_3();
  sub_1C5E43558();
  v11 = sub_1C6017280();

  sub_1C5E435B0(v9, v7);
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
  {
    v12 = sub_1C6015110();
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  v13 = sub_1C6014D30();
  (a3)[2](a3, 0, v12, v13);

  sub_1C5E43614(v9);
  _Block_release(a3);
}

MPCPodcastsPlaybackIntentDataSource __swiftcall MPCPodcastsPlaybackIntentDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1C5E43500()
{
  if (!qword_1EC1AC410)
  {
    sub_1C6015120();
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AC410);
    }
  }
}

unint64_t sub_1C5E43558()
{
  result = qword_1EC1AAF00;
  if (!qword_1EC1AAF00)
  {
    _s3__C4CodeOMa_3();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAF00);
  }

  return result;
}

uint64_t sub_1C5E435B0(uint64_t a1, uint64_t a2)
{
  sub_1C5E43500();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5E43614(uint64_t a1)
{
  sub_1C5E43500();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C5E43670(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1C6016900();

  v8 = sub_1C6014F50();
  v9 = [v4 initWithIdentifier:v7 data:v8];

  sub_1C5C8F8BC(a3, a4);
  return v9;
}

unint64_t sub_1C5E436FC()
{
  result = qword_1EC1A93B8;
  if (!qword_1EC1A93B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC1A93B8);
  }

  return result;
}

uint64_t sub_1C5E43758(void *a1)
{
  v1 = [a1 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C6016940();

  return v3;
}

id sub_1C5E43810()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MPCAVPlayerItemMetricSubscription();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5E438CC()
{
  v1 = v0;
  sub_1C5E44598(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v84 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v85 = Strong;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v10 = [v85 mpc_loggingIdentifier];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v88 = v12;
      sub_1C5D020A4(v11, @"av-player-item-id", isUniquelyReferenced_nonNull_native, &v88);
      v14 = v88;
      *&v88 = swift_getObjectType();
      sub_1C5E44514();
      sub_1C60169A0();
      v15 = sub_1C6016900();

      v16 = swift_isUniquelyReferenced_nonNull_native();
      *&v88 = v14;
      sub_1C5D020A4(v15, @"item-avmetric-event-name", v16, &v88);
      v17 = v88;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        sub_1C5E44598(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C60311E0;
        *(inited + 32) = 0xD000000000000016;
        *(inited + 40) = 0x80000001C6058550;
        v21 = [v19 isMultivariantPlaylist];
        *(inited + 72) = MEMORY[0x1E69E6370];
        *(inited + 48) = v21;
        v22 = sub_1C6016880();
        v23 = [v19 mediaResourceRequestEvent];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 url];

          if (v25)
          {
            sub_1C6014EC0();

            v26 = 0;
          }

          else
          {
            v26 = 1;
          }

          v39 = sub_1C6014F20();
          __swift_storeEnumTagSinglePayload(v5, v26, 1, v39);
          sub_1C5E01078(v5, v7);
          if (__swift_getEnumTagSinglePayload(v7, 1, v39) == 1)
          {
            sub_1C5E445FC(v7);
          }

          else
          {
            v40 = sub_1C6014E70();
            v42 = v41;
            (*(*(v39 - 8) + 8))(v7, v39);
            v89 = MEMORY[0x1E69E6158];
            *&v88 = v40;
            *(&v88 + 1) = v42;
            sub_1C5C70758(&v88, v87);
            swift_isUniquelyReferenced_nonNull_native();
            v86 = v22;
            sub_1C5E361A8(v87, 7107189, 0xE300000000000000);
            v22 = v86;
          }
        }

        v43 = [v19 mediaResourceRequestEvent];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 wasReadFromCache];

          v89 = MEMORY[0x1E69E6370];
          LOBYTE(v88) = v45;
          sub_1C5C70758(&v88, v87);
          swift_isUniquelyReferenced_nonNull_native();
          v86 = v22;
          sub_1C5E361A8(v87, 0x6D6F724664616572, 0xED00006568636143);
        }

        v46 = sub_1C6016840();

        v47 = swift_isUniquelyReferenced_nonNull_native();
        *&v88 = v17;
        v48 = v46;
        goto LABEL_24;
      }

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        sub_1C5E44598(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_1C6035C00;
        *(v29 + 32) = 0xD000000000000011;
        *(v29 + 40) = 0x80000001C6058510;
        v30 = [v28 isClientInitiated];
        v31 = MEMORY[0x1E69E6370];
        *(v29 + 48) = v30;
        *(v29 + 72) = v31;
        *(v29 + 80) = 0xD000000000000013;
        *(v29 + 88) = 0x80000001C6058530;
        v32 = [v28 contentKeySpecifier];
        v33 = [v32 identifier];

        sub_1C6017390();
        swift_unknownObjectRelease();
        v34 = __swift_project_boxed_opaque_existential_0(&v88, v89);
        MEMORY[0x1EEE9AC00](v34);
        (*(v36 + 16))(&v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        v37 = sub_1C60169A0();
        *(v29 + 120) = MEMORY[0x1E69E6158];
        *(v29 + 96) = v37;
        *(v29 + 104) = v38;
        __swift_destroy_boxed_opaque_existential_0(&v88);
LABEL_23:
        sub_1C6016880();
        v58 = sub_1C6016840();

        v47 = swift_isUniquelyReferenced_nonNull_native();
        *&v88 = v17;
        v48 = v58;
LABEL_24:
        sub_1C5D020A4(v48, @"item-avmetric-event-data", v47, &v88);
        v17 = v88;
LABEL_25:
        v59 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_08709029BCFC5F804BD389B2E158328D33MPCAVPlayerItemMetricSubscription_handler);

        v59(v17);

        return;
      }

      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (v49)
      {
        v50 = v49;
        sub_1C5E44598(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_1C6035C00;
        *(v51 + 32) = 0x766F636552646964;
        *(v51 + 40) = 0xEA00000000007265;
        v52 = [v50 didRecover];
        v53 = MEMORY[0x1E69E6370];
        *(v51 + 48) = v52;
        *(v51 + 72) = v53;
        *(v51 + 80) = 0x726F727265;
        *(v51 + 88) = 0xE500000000000000;
        v54 = [v50 error];
        swift_getErrorValue();
        v55 = v90;
        v56 = v91;
        *(v51 + 120) = v91;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v51 + 96));
        (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v55, v56);

        goto LABEL_23;
      }

      objc_opt_self();
      v60 = swift_dynamicCastObjCClass();
      if (v60)
      {
        v61 = v60;
        sub_1C5E44598(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
        v62 = swift_initStackObject();
        *(v62 + 16) = xmmword_1C6035C00;
        *(v62 + 32) = 0xD000000000000019;
        *(v62 + 40) = 0x80000001C60584D0;
        v63 = [v61 fromVariant];
        v64 = MEMORY[0x1E69E63B0];
        if (v63)
        {
          v65 = v63;
          v66 = sub_1C6016F40();
          v68 = v67;

          *(v62 + 72) = v64;
          if ((v68 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          *(v62 + 72) = MEMORY[0x1E69E63B0];
        }

        v66 = 0;
LABEL_37:
        *(v62 + 48) = v66;
        *(v62 + 80) = 0xD000000000000017;
        *(v62 + 88) = 0x80000001C60584F0;
        v76 = [v61 toVariant];
        v77 = sub_1C6016F40();
        v79 = v78;

        *(v62 + 120) = v64;
LABEL_41:
        if (v79)
        {
          v82 = 0;
        }

        else
        {
          v82 = v77;
        }

        *(v62 + 96) = v82;
        sub_1C6016880();
        v83 = sub_1C6016840();

        v47 = swift_isUniquelyReferenced_nonNull_native();
        *&v88 = v17;
        v48 = v83;
        goto LABEL_24;
      }

      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (!v69)
      {
        goto LABEL_25;
      }

      v70 = v69;
      sub_1C5E44598(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
      v62 = swift_initStackObject();
      *(v62 + 16) = xmmword_1C6035C00;
      *(v62 + 32) = 0xD000000000000019;
      *(v62 + 40) = 0x80000001C60584D0;
      v71 = [v70 fromVariant];
      if (v71)
      {
        v72 = v71;
        v73 = sub_1C6016F40();
        v75 = v74;

        *(v62 + 72) = MEMORY[0x1E69E63B0];
        if ((v75 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        *(v62 + 72) = MEMORY[0x1E69E63B0];
      }

      v73 = 0;
LABEL_40:
      *(v62 + 48) = v73;
      *(v62 + 80) = 0xD000000000000017;
      *(v62 + 88) = 0x80000001C60584F0;
      v80 = [v70 toVariant];
      v77 = sub_1C6016F40();
      v79 = v81;

      *(v62 + 120) = MEMORY[0x1E69E63B0];
      goto LABEL_41;
    }
  }

  v9 = v85;
}

unint64_t sub_1C5E44514()
{
  result = qword_1EC1AC4A8;
  if (!qword_1EC1AC4A8)
  {
    sub_1C5E44554();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC1AC4A8);
  }

  return result;
}

unint64_t sub_1C5E44554()
{
  result = qword_1EC1AC4B0;
  if (!qword_1EC1AC4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1AC4B0);
  }

  return result;
}

void sub_1C5E44598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5E445FC(uint64_t a1)
{
  sub_1C5E44598(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5E44688()
{
  v1 = sub_1C6016940();
  v3 = v2;
  *&v101[0] = v0;
  sub_1C5CFF12C();
  v4 = sub_1C5D4A854();
  v5 = v0;
  v6 = sub_1C6017810();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_64();
    *v8 = v5;
  }

  v9 = sub_1C6014D30();

  v10 = &selRef_timeZoneWithName_;
  v11 = [v9 userInfo];
  v12 = sub_1C6016860();

  sub_1C5E44D18(v1, v3, v12, &v98);

  if (v100)
  {

    v13 = sub_1C5C70758(&v98, v101);
    v21 = OUTLINED_FUNCTION_0_79(v13, v14, v15, v16, v17, v18, v19, v20, v91, v93, v95, v97, v98, *(&v98 + 1), v99, v100, v101[0]);
    sub_1C5C70758(v21, v22);
LABEL_19:
    if (*(&v103 + 1))
    {
      sub_1C5E0110C();
      OUTLINED_FUNCTION_0_79(v48, v49, v50, v48, v51, v52, v53, v54, v92, v94, v96, v97, v98, *(&v98 + 1), v99, v100, v101[0]);
      if (swift_dynamicCast())
      {
        return *&v101[0];
      }
    }

    else
    {
      sub_1C5CBCF4C(&v102);
    }

    *&v101[0] = v5;
    v55 = v5;
    v56 = sub_1C6017810();
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = OUTLINED_FUNCTION_1_64();
      *v58 = v55;
    }

    v59 = sub_1C6014D30();

    v60 = [v59 v10[122]];
    v61 = sub_1C6016860();

    sub_1C5E44D18(0x676F6C616964, 0xE600000000000000, v61, &v98);

    if (v100)
    {

      v62 = sub_1C5C70758(&v98, v101);
    }

    else
    {
      sub_1C5CBCF4C(&v98);
      v72 = [v59 underlyingErrors];
      sub_1C5CB5808();
      v73 = sub_1C6016B10();

      *&v98 = v73;
      while (1)
      {
        if (!*(v73 + 16) || (*&v101[0] = *(v73 + 32), v74 = *&v101[0], (swift_dynamicCast() & 1) == 0))
        {

          v102 = 0u;
          v103 = 0u;
          goto LABEL_40;
        }

        v75 = [v97 v10[122]];
        v76 = sub_1C6016860();

        if (*(v76 + 16))
        {
          v77 = sub_1C5CE2084(0x676F6C616964, 0xE600000000000000);
          if (v78)
          {
            break;
          }
        }

        v79 = *(v73 + 16);
        if (!v79)
        {
          goto LABEL_48;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v79 - 1) > *(v73 + 24) >> 1)
        {
          v73 = sub_1C5E44EB0(isUniquelyReferenced_nonNull_native, v79, 1, v73);
        }

        v81 = *(v73 + 16);
        memmove((v73 + 32), (v73 + 40), 8 * v81 - 8);
        *(v73 + 16) = v81 - 1;
        *&v98 = v73;
        v82 = [v97 underlyingErrors];
        v83 = sub_1C6016B10();

        sub_1C5E44D7C(v83);
        v73 = v98;
      }

      sub_1C5C653C8(*(v76 + 56) + 32 * v77, v101);
    }

    v70 = OUTLINED_FUNCTION_0_79(v62, v63, v64, v65, v66, v67, v68, v69, v92, v94, v96, v97, v98, *(&v98 + 1), v99, v100, v101[0]);
    sub_1C5C70758(v70, v71);
LABEL_40:
    if (*(&v103 + 1))
    {
      sub_1C5E0110C();
      OUTLINED_FUNCTION_0_79(v84, v85, v86, v84, v87, v88, v89, v90, v92, v94, v96, v97, v98, *(&v98 + 1), v99, v100, v101[0]);
      if (swift_dynamicCast())
      {
        return *&v101[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1C5CBCF4C(&v102);
      return 0;
    }
  }

  else
  {
    v94 = v5;
    v96 = v4;
    sub_1C5CBCF4C(&v98);
    v92 = v9;
    v23 = [v9 underlyingErrors];
    sub_1C5CB5808();
    v24 = sub_1C6016B10();

    *&v98 = v24;
    while (1)
    {
      if (!*(v24 + 16) || (*&v101[0] = *(v24 + 32), v25 = *&v101[0], (swift_dynamicCast() & 1) == 0))
      {

        v102 = 0u;
        v103 = 0u;
LABEL_18:
        v5 = v94;
        goto LABEL_19;
      }

      v26 = v10;
      v27 = [v97 v10[122]];
      v28 = sub_1C6016860();

      if (*(v28 + 16))
      {
        v29 = sub_1C5CE2084(v1, v3);
        if (v30)
        {
          v37 = v29;

          sub_1C5C653C8(*(v28 + 56) + 32 * v37, v101);

          v46 = OUTLINED_FUNCTION_0_79(v38, v39, v40, v41, v42, v43, v44, v45, v9, v94, v4, v97, v98, *(&v98 + 1), v99, v100, v101[0]);
          sub_1C5C70758(v46, v47);
          v10 = v26;
          goto LABEL_18;
        }
      }

      v32 = *(v24 + 16);
      if (!v32)
      {
        break;
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      if (!v33 || (v32 - 1) > *(v24 + 24) >> 1)
      {
        v24 = sub_1C5E44EB0(v33, v32, 1, v24);
      }

      v34 = *(v24 + 16);
      memmove((v24 + 32), (v24 + 40), 8 * v34 - 8);
      *(v24 + 16) = v34 - 1;
      *&v98 = v24;
      v35 = [v97 underlyingErrors];
      v36 = sub_1C6016B10();

      sub_1C5E44D7C(v36);
      v24 = v98;
      v10 = v26;
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  return result;
}

double sub_1C5E44D18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1C5CE2084(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1C5C653C8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

int64_t sub_1C5E44D7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C5E44E48(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C5CB5808();
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1C5E44E48(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1C5E44EB0(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1C5E44EB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C5E44FC8();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C5CB5808();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C5E44FC8()
{
  if (!qword_1EC1ABDC0)
  {
    sub_1C5CB5808();
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1ABDC0);
    }
  }
}

void sub_1C5E45284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFSecurityConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFSecurityConnectionClass_softClass;
  v7 = getAFSecurityConnectionClass_softClass;
  if (!getAFSecurityConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFSecurityConnectionClass_block_invoke;
    v3[3] = &unk_1E8238488;
    v3[4] = &v4;
    __getAFSecurityConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C5E4E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFSecurityConnectionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8230E88;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPCAssistantEncodings.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AFSecurityConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFSecurityConnectionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPCAssistantEncodings.m" lineNumber:17 description:{@"Unable to find class %s", "AFSecurityConnection"}];

LABEL_10:
    __break(1u);
  }

  getAFSecurityConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id MPCAssistantCreateError(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((a1 - 1) > 0xC)
  {
    v2 = @"An unknown error occurred.";
  }

  else
  {
    v2 = off_1E8231088[a1 - 1];
  }

  v3 = v2;
  v7 = *MEMORY[0x1E696A278];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPAssistantErrorDomain" code:a1 userInfo:v4];

  return v5;
}

id MPCAssistantWrapError(void *a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = MPCAssistantCreateError(0);
    goto LABEL_31;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqual:*MEMORY[0x1E69B0DC0]];

  if (!v4)
  {
    v6 = 0;
    v7 = @"An unknown error occurred.";
    goto LABEL_30;
  }

  v5 = [v2 code];
  v6 = 0;
  v7 = @"An unknown error occurred.";
  if (v5 > 99)
  {
    if (v5 > 120)
    {
      if (v5 != 121)
      {
        if (v5 == 125)
        {
          v8 = 13;
          goto LABEL_29;
        }

        if (v5 == 202)
        {
          v8 = 11;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else if (v5 != 100 && v5 != 116)
    {
      if (v5 != 118)
      {
        goto LABEL_30;
      }

LABEL_25:
      v8 = 4;
      goto LABEL_29;
    }

    v8 = 3;
    goto LABEL_29;
  }

  v8 = 1;
  if (v5 <= 39)
  {
    switch(v5)
    {
      case 5:
        v8 = 2;
        break;
      case 26:
        v8 = 9;
        break;
      case 39:
        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_29;
  }

  switch(v5)
  {
    case '(':
      goto LABEL_25;
    case '/':
LABEL_29:
      v7 = off_1E8231088[v8 - 1];
      v6 = v8;
      break;
    case '0':
      v8 = 12;
      goto LABEL_29;
  }

LABEL_30:
  v10 = v7;
  v11 = *MEMORY[0x1E696A278];
  v17[0] = v10;
  v12 = *MEMORY[0x1E696AA08];
  v16[0] = v11;
  v16[1] = v12;
  v13 = [v2 copy];
  v17[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPAssistantErrorDomain" code:v6 userInfo:v14];
LABEL_31:

  return v9;
}

id MPCAssistantCreateSendCommandError(unsigned int a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MRMediaRemoteCopySendCommandErrorDescription();
  v6 = *MEMORY[0x1E696A278];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPCAssistantMediaRemoteSendCommandErrorDomain" code:a1 userInfo:v3];

  return v4;
}

uint64_t MPCAssistantErrorIsInformational(void *a1)
{
  v1 = a1;
  if ((MRMediaRemoteErrorIsInformational() & 1) != 0 || ([v1 underlyingErrors], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "msv_firstWhere:", &__block_literal_global_214), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = 1;
  }

  else if ([v1 code] == 6 || objc_msgSend(v1, "code") == 7 || objc_msgSend(v1, "code") == 11)
  {
    v6 = [v1 domain];
    v4 = [v6 isEqualToString:@"MPAssistantErrorDomain"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1C5E53200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5E59B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__466(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__493(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5E5C554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _MPCAudioTapProcess(const opaqueMTAudioProcessingTap *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MTAudioProcessingTapGetStorage(a1);
  [v7 _analyzeSamples:a5 numberFrames:a3];
}

void _MPCAudioTapPrepareCallback(const opaqueMTAudioProcessingTap *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MTAudioProcessingTapGetStorage(a1);
  [v7 _prepareTap:a1 maxFrames:a3 processingFormat:a4];
}

void _MPCAudioTapFinalize(const opaqueMTAudioProcessingTap *a1)
{
  v1 = MTAudioProcessingTapGetStorage(a1);
  [v1 setSelfRef:0];
}

uint64_t __Block_byref_object_copy__1205(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t inputRenderCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v7 = 2;
    do
    {
      *&a6[v7] = *(*(a1 + 88) + v7 * 4);
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t __Block_byref_object_copy__1539(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5E68ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5E6BBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _MPCHandleProcessTapBuffer(void *a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, uint64_t a4, uint64_t a5, const AudioStreamPacketDescription *a6)
{
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a1];
  os_unfair_lock_lock(&_activeTapsLock);
  v12 = [_activeTaps containsObject:v11];
  os_unfair_lock_unlock(&_activeTapsLock);

  if (v12)
  {
    v14 = a1;
    if ([v14 isEnabled])
    {
      v13 = [v14 delegate];
      [v13 processAudioTapDidReceiveAudioSamples:a3->mAudioData numberOfSamples:a5];

      AudioQueueEnqueueBuffer(a2, a3, 0, a6);
    }
  }
}

void _MPCAudioTapUnprepareCallback_1808(const opaqueMTAudioProcessingTap *a1)
{
  v2 = MTAudioProcessingTapGetStorage(a1);
  [v2 unprepareTap:a1];
}

void _MPCAudioTapProcess_1809(const opaqueMTAudioProcessingTap *a1, CMItemCount a2, uint64_t a3, AudioBufferList *a4, CMItemCount *a5, MTAudioProcessingTapFlags *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = MTAudioProcessingTapGetStorage(a1);
  memset(&timeRangeOut, 0, sizeof(timeRangeOut));
  MTAudioProcessingTapGetSourceAudio(a1, a2, a4, a6, &timeRangeOut, a5);
  if (timeRangeOut.start.flags)
  {
    value = -1;
    if ((timeRangeOut.duration.flags & 1) != 0 && !timeRangeOut.duration.epoch && (timeRangeOut.duration.value & 0x8000000000000000) == 0)
    {
      value = timeRangeOut.start.value;
      if (timeRangeOut.start.value <= -2)
      {
        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v24 = value;
          v25 = 2048;
          v26 = _MPCAudioTapProcess_lastIndex + a2;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[AP] - correcting time range start for tap: %lld -> %lld", buf, 0x16u);
        }

        value = _MPCAudioTapProcess_lastIndex + a2;
      }
    }
  }

  else
  {
    value = -1;
  }

  v14 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v15 = [v14 vocalAttenuationLogInputAndOuputRMSValues];

  if (v15)
  {
    v16 = *a6;
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[AP][DEBUG] ======================================================================================================", buf, 2u);
    }

    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (timeRangeOut.start.flags)
      {
        v19 = 0;
        if ((timeRangeOut.duration.flags & 1) != 0 && !timeRangeOut.duration.epoch)
        {
          v19 = timeRangeOut.duration.value >= 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v21 = *a5;
      *buf = 134219776;
      v24 = value;
      v25 = 2048;
      v26 = value - _MPCAudioTapProcess_lastIndex;
      v27 = 1024;
      v28 = v19;
      v29 = 1024;
      v30 = timeRangeOut.start.flags & 1;
      v31 = 2048;
      v32 = a2;
      v33 = 2048;
      v34 = v21;
      v35 = 1024;
      v36 = (v16 >> 8) & 1;
      v37 = 1024;
      v38 = (v16 >> 9) & 1;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[AP][DEBUG] - start: %lld - delta: %lld - valid range: %{BOOL}u - valid time: %{BOOL}u - numberFrames: %ld - numberFramesOut: %ld - startOfStream: %{BOOL}u - endOfStream: %{BOOL}u", buf, 0x42u);
    }
  }

  _MPCAudioTapProcess_lastIndex = value;
  [v12 processTap:a1 sampleIndex:value numberFrames:a2 flags:a3 audioBufferList:a4 numberFramesOut:a5 flagsOut:a6];
}

void _MPCAudioTapPrepareCallback_1814(const opaqueMTAudioProcessingTap *a1, uint64_t a2, uint64_t a3)
{
  v6 = MTAudioProcessingTapGetStorage(a1);
  [v6 prepareTap:a1 maxFrames:a2 processingFormat:a3];
}

void _MPCAudioTapFinalize_1815(const opaqueMTAudioProcessingTap *a1)
{
  v2 = MTAudioProcessingTapGetStorage(a1);
  [v2 finalizeTap:a1];
}

void sub_1C5E706E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1817(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5E7234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5E75A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5E77BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2135(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5E78664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1C5E7A27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

id _EVSEventToABCEvent(void *a1)
{
  v1 = [a1 payload];
  v2 = MPCPlaybackEngineEventPayloadJSONFromPayload(v1);

  return v2;
}

void sub_1C5EA40EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3197(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5EAA55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1C5EAC680(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1C5EB03B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3967(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5EB3618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EB499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EB7BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5EB952C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSASelfLoggerClass_block_invoke(uint64_t a1)
{
  SiriAudioSupportLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SASelfLogger");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSASelfLoggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSASelfLoggerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPCSiriSelfLogger.m" lineNumber:38 description:{@"Unable to find class %s", "SASelfLogger"}];

    __break(1u);
  }
}

void __getSASelfLoggerMWTMusicMetadataClass_block_invoke(uint64_t a1)
{
  SiriAudioSupportLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SASelfLoggerMWTMusicMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSASelfLoggerMWTMusicMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSASelfLoggerMWTMusicMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPCSiriSelfLogger.m" lineNumber:39 description:{@"Unable to find class %s", "SASelfLoggerMWTMusicMetadata"}];

    __break(1u);
  }
}

void SiriAudioSupportLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SiriAudioSupportLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SiriAudioSupportLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8232310;
    v5 = 0;
    SiriAudioSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriAudioSupportLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SiriAudioSupportLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MPCSiriSelfLogger.m" lineNumber:37 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SiriAudioSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriAudioSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void MPCPlaybackEngineEventMonotonicTimeConvertNSDate(void *a1@<X0>, uint64_t a2@<X8>)
{
  info = 0;
  v3 = a1;
  mach_timebase_info(&info);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  MPCPlaybackEngineEventGetMonotonicTime(a2);
  [v3 timeIntervalSinceReferenceDate];
  v5 = ((v4 - *(a2 + 32)) * 1000000000.0);
  [v3 timeIntervalSinceReferenceDate];
  v7 = v6;

  *(a2 + 32) = v7;
  v8 = *(a2 + 16) + v5;
  *(a2 + 8) += info.denom * v5 / info.numer;
  *(a2 + 16) = v8;
}

void MPCPlaybackEngineEventMonotonicTimeConvertCMTimebase(const void *a1@<X0>, uint64_t a2@<X8>, Float64 a3@<D0>)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  MPCPlaybackEngineEventGetMonotonicTime(&v12);
  memset(&v11, 0, sizeof(v11));
  CMTimeMakeWithSeconds(&v11, a3, 1000000000);
  memset(&v10, 0, sizeof(v10));
  HostTimeClock = CMClockGetHostTimeClock();
  time = v11;
  CMSyncConvertTime(&v10, &time, a1, HostTimeClock);
  if (v10.flags)
  {
    time = v10;
    MPCPlaybackEngineEventMonotonicTimeWithHostTime(&time, a2);
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      time = v10;
      v8 = CMTimeCopyDescription(0, &time);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = a1;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v8;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "Unable to convert timebase to host time - timebase=%{public}@ - hostTimeFromTimeBase=%{public}@", &time, 0x16u);
    }

    v9 = v13;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 32) = v14;
  }
}

double MPCPlaybackEngineEventMonotonicTimeWithHostTime@<D0>(CMTime *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0.0;
  v14 = 0u;
  v15 = 0u;
  MPCPlaybackEngineEventGetMonotonicTime(&v14);
  v13 = *a1;
  v4 = CMClockConvertHostTimeToSystemUnits(&v13);
  v5 = *(&v14 + 1) - v4;
  if (*(&v14 + 1) <= v4)
  {
    __assert_rtn("MPCPlaybackEngineEventMonotonicTimeWithHostTime", "MPCPlaybackEngineEvent.m", 78, "time.machAbsoluteTime > machAbsoluteTime");
  }

  v6 = v4;
  v13.value = 0;
  mach_timebase_info(&v13);
  v7 = v5 * LODWORD(v13.value) / HIDWORD(v13.value);
  v8 = v7;
  v9 = v15 - v7;
  v10 = v16;
  *a2 = v14;
  *(a2 + 8) = v6;
  v11 = *(&v15 + 1);
  result = v10 + v8 / -1000000000.0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = result;
  return result;
}

uint64_t MPCPlaybackEngineEventMonotonicTimeGetAbsoluteTimeWithOffset(uint64_t a1, double a2)
{
  info = 0;
  mach_timebase_info(&info);
  return info.denom * (a2 * 1000000000.0) / info.numer + *(a1 + 8);
}

id _MPCJSONSanitizedValue(void *a1)
{
  v1 = a1;
  if (_NSIsNSArray())
  {
    v2 = [v1 msv_compactMap:&__block_literal_global_401];
  }

  else
  {
    if (!_NSIsNSDictionary())
    {
      if ((_NSIsNSNumber() & 1) != 0 || _NSIsNSString())
      {
        v5 = v1;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_9;
    }

    v2 = [v1 msv_compactMapValues:&__block_literal_global_403];
  }

  v3 = v2;
  if ([v2 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

LABEL_9:

  return v5;
}

id MPCPlaybackEngineEventPayloadJSONFromPayload(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [v1 dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MPCPlaybackEngineEventPayloadJSONFromPayload_block_invoke;
  v6[3] = &unk_1E82323A0;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void sub_1C5EC1F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EC2074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5088(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5EC31DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EC7224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5ECF084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C5EDD734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6927(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5EE000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EE0524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1C5EE1B28(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_1C5EE2B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EE4798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5EE57E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5EE9410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7744(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5EEBA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C5EED82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EEDE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5EEE480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5EF108C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5EF3048(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C5EF7838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5EFE5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9819(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__9886(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1C5F00A34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1C5F02B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MPCCreateIdentifiersForOpaqueID(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E69706A0] unknownKind];
  v8 = [v5 hasPrefix:@"pl"];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_5:
    v12 = 0x1E6970730;
LABEL_6:
    v13 = [*v12 identityKind];

    v7 = v13;
    goto LABEL_7;
  }

  if ([v5 hasPrefix:@"p."])
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_5;
  }

  if ([v5 hasPrefix:@"i."])
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = 0x1E6970778;
    goto LABEL_6;
  }

  if ([v5 hasPrefix:@"l."])
  {
    v10 = 0;
    v11 = 0;
    v9 = 1;
    v12 = 0x1E6970638;
    goto LABEL_6;
  }

  v9 = 0;
  if ([v5 hasPrefix:@"ra."])
  {
    v10 = 1;
    v12 = 0x1E6970758;
    v11 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
LABEL_7:
  v14 = @"MPCOpaqueItem";
  if (a3)
  {
    v14 = @"MPCOpaqueItemPlaceholder";
  }

  v15 = MEMORY[0x1E6970550];
  v16 = v14;
  v17 = [v15 alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___MPCCreateIdentifiersForOpaqueID_block_invoke;
  v22[3] = &unk_1E82337B8;
  v25 = v8;
  v26 = v10;
  v27 = v11;
  v23 = v5;
  v24 = v6;
  v28 = v9;
  v29 = a3;
  v18 = v6;
  v19 = v5;
  v20 = [v17 initWithSource:v16 modelKind:v7 block:v22];

  return v20;
}

void sub_1C5F080C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F0A280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x298]);
  _Unwind_Resume(a1);
}

id MPCStoreModelPlaybackItemsRequestCopyGenericObjectPropertySet(void *a1)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 sectionProperties];
  v3 = [v1 sectionKind];
  v4 = [objc_msgSend(v3 "modelClass")];
  v5 = [v2 propertySetByCombiningWithPropertySet:v4];

  v6 = [v1 itemProperties];

  v98 = v6;
  v7 = [v6 relationships];
  v95 = *MEMORY[0x1E6970158];
  v8 = [v7 objectForKey:?];
  v9 = v8;
  v99 = v5;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  v11 = v10;

  v96 = [objc_opt_class() requiredStoreLibraryPersonalizationProperties];
  v12 = [v11 propertySetByCombiningWithPropertySet:?];

  v13 = objc_alloc(MEMORY[0x1E69708B0]);
  v117[0] = *MEMORY[0x1E696FF38];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:1];
  v115 = *MEMORY[0x1E6970200];
  v15 = MEMORY[0x1E69708B0];
  v16 = *MEMORY[0x1E6970008];
  v114 = *MEMORY[0x1E6970008];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
  v18 = [v15 propertySetWithProperties:v17];
  v116 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
  v20 = [v13 initWithProperties:v14 relationships:v19];

  v94 = v20;
  v93 = [v12 propertySetByCombiningWithPropertySet:v20];

  v91 = *MEMORY[0x1E6970110];
  v21 = [v7 objectForKey:?];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  v24 = v23;

  v92 = [objc_opt_class() requiredStoreLibraryPersonalizationProperties];
  v25 = [v24 propertySetByCombiningWithPropertySet:?];

  v26 = objc_alloc(MEMORY[0x1E69708B0]);
  v113 = *MEMORY[0x1E696FD40];
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
  v28 = *MEMORY[0x1E6970190];
  v110 = v16;
  v111 = v28;
  v29 = MEMORY[0x1E69708B0];
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  v31 = [v29 propertySetWithProperties:v30];
  v112 = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
  v33 = [v26 initWithProperties:v27 relationships:v32];

  v90 = v33;
  v89 = [v25 propertySetByCombiningWithPropertySet:v33];

  v87 = *MEMORY[0x1E6970160];
  v34 = [v7 objectForKey:?];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  v37 = v36;

  v88 = [objc_opt_class() requiredStoreLibraryPersonalizationProperties];
  v38 = [v37 propertySetByCombiningWithPropertySet:?];

  v39 = objc_alloc(MEMORY[0x1E69708B0]);
  v109 = *MEMORY[0x1E6970048];
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
  v41 = *MEMORY[0x1E6970228];
  v106 = v16;
  v107 = v41;
  v42 = MEMORY[0x1E69708B0];
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v44 = [v42 propertySetWithProperties:v43];
  v108 = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  v46 = [v39 initWithProperties:v40 relationships:v45];

  v86 = v46;
  v85 = [v38 propertySetByCombiningWithPropertySet:v46];

  v47 = [v99 relationships];
  v83 = *MEMORY[0x1E69700D8];
  v48 = [v47 objectForKey:?];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  v51 = v50;

  v84 = [objc_opt_class() requiredStoreLibraryPersonalizationProperties];
  v52 = [v51 propertySetByCombiningWithPropertySet:?];

  v53 = MEMORY[0x1E69708B0];
  v105 = *MEMORY[0x1E696FC48];
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v55 = [v53 propertySetWithProperties:v54];

  v82 = [v52 propertySetByCombiningWithPropertySet:v55];

  v56 = [v99 relationships];
  v81 = *MEMORY[0x1E6970118];
  v57 = [v56 objectForKey:?];
  v58 = v57;
  v97 = v7;
  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  v60 = v59;

  v80 = [objc_opt_class() requiredStoreLibraryPersonalizationProperties];
  v61 = [v60 propertySetByCombiningWithPropertySet:?];

  v62 = MEMORY[0x1E69708B0];
  v104 = *MEMORY[0x1E696FE30];
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v64 = [v62 propertySetWithProperties:v63];

  v79 = [v61 propertySetByCombiningWithPropertySet:v64];

  v65 = [v99 relationships];
  v66 = *MEMORY[0x1E6970138];
  v67 = [v65 objectForKey:*MEMORY[0x1E6970138]];
  v68 = v67;
  if (v67)
  {
    v69 = v67;
  }

  else
  {
    v69 = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  v70 = v69;

  v71 = MEMORY[0x1E69708B0];
  v72 = *MEMORY[0x1E69701A8];
  v102[0] = *MEMORY[0x1E69701A0];
  v102[1] = v72;
  v103[0] = v93;
  v103[1] = v85;
  v102[2] = *MEMORY[0x1E6970198];
  v103[2] = v89;
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:3];
  v74 = [v71 propertySetWithRelationships:v73];

  v75 = objc_alloc(MEMORY[0x1E69708B0]);
  v100[0] = v91;
  v100[1] = v87;
  v101[0] = v89;
  v101[1] = v85;
  v100[2] = v83;
  v100[3] = v81;
  v101[2] = v82;
  v101[3] = v79;
  v100[4] = *MEMORY[0x1E6970120];
  v100[5] = v95;
  v101[4] = v74;
  v101[5] = v93;
  v100[6] = v66;
  v101[6] = v70;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:7];
  v77 = [v75 initWithProperties:MEMORY[0x1E695E0F0] relationships:v76];

  return v77;
}

void sub_1C5F0ED44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F0FC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11236(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11410(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F15410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a29, 8);
  (*(v29 + 16))(v29);
  _Unwind_Resume(a1);
}

void sub_1C5F1775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F18150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__11709(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1C5F1BAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F1C99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F1EA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C5F1F580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C5F22550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1C5F231A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F26E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F28508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F2AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 72));
  objc_destroyWeak(&a38);
  objc_destroyWeak((v39 - 176));
  objc_destroyWeak((v39 - 168));
  _Unwind_Resume(a1);
}

void sub_1C5F2BCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F333CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose(&STACK[0x5A0], 8);
  _Block_object_dispose(&STACK[0x5D0], 8);
  _Block_object_dispose(&STACK[0x5F0], 8);
  _Block_object_dispose(&STACK[0x620], 8);
  _Block_object_dispose(&STACK[0x690], 8);
  _Block_object_dispose(&STACK[0x748], 8);
  _Unwind_Resume(a1);
}

void sub_1C5F33F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C5F386CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F403A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 240), 8);
  _Block_object_dispose((v43 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1C5F40784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    if (*(v14 + 96))
    {
      v17 = @"registryWantsChanges";
    }

    else
    {
      v17 = @"sectionWantsChanges";
    }

    v18 = v17;
    v19 = *(v14 + 40);
    if (!v19)
    {
      v19 = @"@";
    }

    v20 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [*(v14 + 40) _safeStateDumpObject];

      v20 = v21;
    }

    v22 = *(v14 + 48);
    if (!v22)
    {
      v22 = @"@";
    }

    v23 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [*(v14 + 48) _safeStateDumpObject];

      v23 = v24;
    }

    v25 = dispatch_semaphore_create(0);
    v26 = MEMORY[0x1E69B13D8];
    *(v15 - 144) = @"existingCollection";
    *(v15 - 136) = @"newCollection";
    *(v15 - 128) = v20;
    *(v15 - 120) = v23;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 - 128 forKeys:v15 - 144 count:2];
    *(v15 - 112) = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 - 112 count:1];
    v29 = *MEMORY[0x1E69B1340];
    v35 = v25;
    [v26 snapshotWithDomain:v29 type:@"Bug" subType:@"ModelQueueFeederDiffing" context:v18 triggerThresholdValues:&stru_1F454A698 events:v28 completion:?];

    dispatch_semaphore_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
    v30 = _MPCLogCategoryPlayback();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [*(v14 + 56) uniqueIdentifier];
      v32 = *(v14 + 56);
      *(v15 - 176) = 138543874;
      v33 = v15 - 176;
      *(v33 + 4) = v31;
      *(v15 - 164) = 2048;
      *(v33 + 14) = v32;
      *(v15 - 154) = 2114;
      *(v15 - 152) = v16;
      _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] defersResponse:completion: | crashing [exception while computing change details] exception=%{public}@", (v15 - 176), 0x20u);
    }

    v34 = v16;
    objc_exception_throw(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C5F433DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F43958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F44204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F559A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C5F56180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F56FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F5771C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C5F579DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F58838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F5901C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C5F60068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15746(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F631D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C5F63C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F64EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F65608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F65850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F67608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16341(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F67EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MPCModelRadioGetTracksDialogIsRetryDialog_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 action];
  v7 = [v6 kind];
  v8 = [v7 isEqualToString:@"getTracks"];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1C5F6AC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F6BC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5F73D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17334(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t MPCRadioPlaybackErrorGetCategory(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"MPCRadioPlaybackErrorCategoryKey"];
  if (_NSIsNSNumber())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MPCRadioPlaybackGetLocalizedUserInfoForError(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E695DF90];
  v5 = a2;
  v6 = [v4 dictionaryWithCapacity:4];
  v7 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
  v8 = [v5 msv_errorByUnwrappingDomain:*MEMORY[0x1E69E4208]];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 code];
  v10 = 0;
  if (v9 > 139)
  {
    if (v9 == 141)
    {
      [v6 setObject:&unk_1F4599400 forKeyedSubscript:@"MPCRadioPlaybackErrorCategoryKey"];
      v10 = [v7 localizedStringForKey:@"RADIO_LOCATION_RESTRICTION_TITLE" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
      goto LABEL_11;
    }

    v11 = 0;
    if (v9 != 140)
    {
      goto LABEL_18;
    }

    v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:3];
    [v6 setObject:v14 forKey:@"MPCRadioPlaybackErrorCategoryKey"];

LABEL_10:
    v10 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_18;
  }

  if (v9 == 120)
  {
    v15 = [v3 seedContentReference];
    v16 = [v15 contentType];
    if (v16 > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = [v7 localizedStringForKey:off_1E8235A58[v16] value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    }

    goto LABEL_17;
  }

  v11 = 0;
  if (v9 != 125)
  {
    goto LABEL_18;
  }

  v12 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
  v13 = [v12 allowsExplicitContent];

  if (v13)
  {
    goto LABEL_10;
  }

  v11 = [v7 localizedStringForKey:@"RADIO_EXPLICIT_CONTENT_NOT_ALLOWED_DUE_TO_RESTRICTIONS" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
LABEL_17:
  v10 = 0;
LABEL_18:
  if (v10 | v11)
  {
    v17 = [MEMORY[0x1E69708E8] dialogWithTitle:v10 message:v11];
    v18 = MEMORY[0x1E69708F0];
    v19 = [v7 localizedStringForKey:@"OK" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    v20 = [v18 actionWithTitle:v19 type:0 commandEvent:0];
    [v17 addAction:v20];

    [v6 setObject:v17 forKey:@"MPCErrorUserInfoKeyRemoteDialog"];
  }

  return v6;
}

void sub_1C5F76CAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1C5F774F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17976(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F81798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18856(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F83898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C5F83BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F83D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F841F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C5F84E10(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19399(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F85BD4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1C5F86728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F8797C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19581(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F8FAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20001(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5F91D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_1C5F9661C(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x8F8]);
  _Block_object_dispose(&STACK[0x900], 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

_DWORD *_MSV_XXH_XXH32_update(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

void sub_1C5F9CDE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C5FA5DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1C5FAC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *MPCRemoteCommandDescriptionCopy(int a1)
{
  if (a1 > 99989)
  {
    if (a1 == 99991)
    {
      v2 = @"StageCondition [MPC]";
      goto LABEL_15;
    }

    if (a1 == 99990)
    {
      v2 = @"Debug [MPC]";
      goto LABEL_15;
    }
  }

  else
  {
    if (a1 == 25020)
    {
      v2 = @"ShareQueue [MPC]";
      goto LABEL_15;
    }

    if (a1 == 25021)
    {
      v2 = @"ClearUpcomingQueue [MPC]";
      goto LABEL_15;
    }
  }

  v3 = MRMediaRemoteCopyCommandDescription();
  v4 = v3;
  if (v3 == @"<Unrecognized Command>" || (v5 = [(__CFString *)v3 isEqual:@"<Unrecognized Command>"], v4, v5))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unrecognized [%lld]", a1];
  }

  else
  {
    v6 = v4;
  }

  v2 = v6;

LABEL_15:

  return v2;
}

uint64_t __Block_byref_object_copy__22127(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5FB5874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5FB5954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C5FB631C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5FB9AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromMPCErrorCode(uint64_t a1)
{
  v4 = @"Unknown";
  switch(a1)
  {
    case 0:
      goto LABEL_180;
    case 1:
      v4 = @"UnableToPerformRequest";

      break;
    case 2:
      v4 = @"UnsupportedCommand";

      break;
    case 3:
      v4 = @"MissingBag";

      break;
    case 4:
      v4 = @"UnknownCustomQueueIdentifier";

      break;
    case 5:
      v4 = @"MissingTracklistData";

      break;
    case 6:
      v4 = @"MissingModelRequest";

      break;
    case 7:
      v4 = @"DelegatedAccountCreationFailure";

      break;
    case 8:
      v4 = @"MissingCreationPropertiesData";

      break;
    case 9:
      v4 = @"InvalidSuzeLeaseSessionToken";

      break;
    case 10:
      v4 = @"CellularRestricted";

      break;
    case 11:
      v4 = @"NetworkUnavailable";

      break;
    case 12:
      v4 = @"ExceededBagFileSizeLimit";

      break;
    case 14:
      v4 = @"RequestTimeout";

      break;
    case 15:
      v4 = @"InvalidResponse";

      break;
    case 16:
      v4 = @"InvalidDelegatedIdentity";

      break;
    case 17:
      v4 = @"SubscriptionRequired";

      break;
    case 18:
      v4 = @"MissingSubscriptionAdamID";

      break;
    case 19:
      v4 = @"MissingLeaseSession";

      break;
    case 20:
      v4 = @"MissingLocalFilePath";

      break;
    case 21:
      v4 = @"AssetQualityTooLow";

      break;
    case 22:
      v4 = @"InvalidCachedAsset";

      break;
    case 23:
      v4 = @"InvalidAssetURL";

      break;
    case 24:
      v4 = @"AssetUnavailable";

      break;
    case 25:
      v4 = @"MissingRedownloadParameters";

      break;
    case 26:
      v4 = @"MissingStoreRequestContext";

      break;
    case 27:
      v4 = @"SubscriptionRequiredForSharedQueue";

      break;
    case 28:
      v4 = @"Cancelled";

      break;
    case 29:
      v4 = @"MissingArtwork";

      break;
    case 30:
      v4 = @"SubscriptionLeaseTaken";

      break;
    case 40:
      v4 = @"ExplicitContentRequiresAgeVerification";

      break;
    case 41:
      v4 = @"ExplicitContentIsNotAllowed";

      break;
    case 42:
      v4 = @"ExplicitContentAgeVerificationFailed";

      break;
    case 43:
      v4 = @"ExplicitContentAgeGatingFailed";

      break;
    case 53:
      v4 = @"DroppedCompletion";

      break;
    case 54:
      v4 = @"SubscriptionAssetResponseMissingItem";

      break;
    case 55:
      v4 = @"FailedToResolveStartItem";

      break;
    case 56:
      v4 = @"NoNetworkConnection";

      break;
    case 57:
      v4 = @"UserIdentityNotSupported";

      break;
    case 58:
      v4 = @"UnsupportedPlaybackContext";

      break;
    case 59:
      v4 = @"UnrestorableArchive";

      break;
    case 60:
      v4 = @"UninitializedPlaybackStack";

      break;
    case 61:
      v4 = @"EmptyModelResponse";

      break;
    case 62:
      v4 = @"FailedToQueueItems";

      break;
    case 64:
      v4 = @"RadioServiceNotAllowed";

      break;
    case 65:
      v4 = @"HLSAssetMissingKeyURLs";

      break;
    case 66:
      v4 = @"UnsupportedPlaybackQueue";

      break;
    case 67:
      v4 = @"MissingUserIdentity";

      break;
    case 68:
      v4 = @"UserIdentityMismatch";

      break;
    case 69:
      v4 = @"NonPlayableEntity";

      break;
    case 70:
      v4 = @"PersonalizationTimeout";

      break;
    case 71:
      v4 = @"HLSAssetKeyDeliveryFailed";

      break;
    case 72:
      v4 = @"MissingTransportableLibraryIDs";

      break;
    case 73:
      v4 = @"MissingDelegationHostAccount";

      break;
    case 74:
      v4 = @"MissingDelegationToken";

      break;
    case 75:
      v4 = @"EmptyModelResponseWithCloudLibraryDisabled";

      break;
    case 76:
      v4 = @"BehaviorDoesNotSupportStartPlayerItemDonation";

      break;
    case 77:
      v4 = @"AccumulationSODImportFailed";

      break;
    case 78:
      v4 = @"AccumulationSODLookupFailed";

      break;
    case 79:
      v4 = @"ModelRequestFailed";

      break;
    default:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
LABEL_180:

      break;
  }

  return v4;
}

__CFString *NSStringFromMPCPlaybackSessionManagerErrorCode(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E8237628[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCPlayerRequestErrorCode(uint64_t a1)
{
  if (a1 <= 3100)
  {
    if (a1 <= 1001)
    {
      switch(a1)
      {
        case 0:
          v2 = @"Unknown";

          return v2;
        case 1000:
          v2 = @"UnableToSendCommand";

          return v2;
        case 1001:
          v2 = @"CommandFailed";

          return v2;
      }
    }

    else if (a1 > 2999)
    {
      if (a1 == 3000)
      {
        v2 = @"FailedToLoadArtwork";

        return v2;
      }

      if (a1 == 3100)
      {
        v2 = @"FailedToLoadArtworkMissingContentItems";

        return v2;
      }
    }

    else
    {
      if (a1 == 1002)
      {
        v2 = @"NoCommandsProvided";

        return v2;
      }

      if (a1 == 2000)
      {
        v2 = @"FailedToLoadMetadata";

        return v2;
      }
    }

LABEL_63:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];

    return v2;
  }

  if (a1 > 4999)
  {
    if (a1 > 6999)
    {
      if (a1 == 7000)
      {
        v2 = @"FailedToLoadParticipants";

        return v2;
      }

      if (a1 == 8000)
      {
        v2 = @"FeatureDisabled";

        return v2;
      }
    }

    else
    {
      if (a1 == 5000)
      {
        v2 = @"FailedToResolve";

        return v2;
      }

      if (a1 == 6000)
      {
        v2 = @"FailedToPlaybackState";

        return v2;
      }
    }

    goto LABEL_63;
  }

  if (a1 <= 3102)
  {
    if (a1 == 3101)
    {
      v2 = @"FailedToLoadArtworkIncorrectItemIdentifier";
    }

    else
    {
      v2 = @"FailedToLoadArtworkMissingAsset";
    }

    return v2;
  }

  if (a1 != 3103)
  {
    if (a1 == 4000)
    {
      v2 = @"FailedToLoadSupportedCommands";

      return v2;
    }

    goto LABEL_63;
  }

  v2 = @"FailedToLoadArtworkInvalidAsset";

  return v2;
}

__CFString *NSStringFromMPCModelRadioQueueFeederErrorCode(uint64_t a1)
{
  if (a1 <= -1005)
  {
    if (a1 == -1006)
    {
      v2 = @"AccountSignOut";
    }

    else
    {
      if (a1 != -1005)
      {
LABEL_22:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];

        return v2;
      }

      v2 = @"GetTracksFailed";
    }
  }

  else if (a1 == -1004)
  {
    v2 = @"NetworkUnavailable";
  }

  else
  {
    if (a1)
    {
      if (a1 == -1003)
      {
        v2 = @"CellularRestricted";

        return v2;
      }

      goto LABEL_22;
    }

    v2 = @"Unknown";
  }

  return v2;
}

__CFString *NSStringFromMPCPlayerEnqueueErrorCode(unint64_t a1)
{
  if (a1 < 6 && ((0x2Fu >> a1) & 1) != 0)
  {
    v2 = off_1E8237660[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  return v2;
}

__CFString *NSStringFromMPCPlaybackEngineInternalErrorCode(uint64_t a1)
{
  if (a1 <= 3107)
  {
    if (a1 > 2005)
    {
      if (a1 <= 3004)
      {
        if (a1 <= 2200)
        {
          if (a1 <= 2099)
          {
            if (a1 == 2006)
            {
              v2 = @"FailedToStopScanning";

              return v2;
            }

            if (a1 == 2007)
            {
              v2 = @"FailedToEndPlayback";

              return v2;
            }
          }

          else
          {
            switch(a1)
            {
              case 2100:
                v2 = @"CannotStopScanningIfNotScanning";

                return v2;
              case 2101:
                v2 = @"CannotSkipUnskippableItem";

                return v2;
              case 2200:
                v2 = @"FailedToPlaySharedListeningItem";

                return v2;
            }
          }
        }

        else
        {
          if (a1 > 3001)
          {
            if (a1 == 3002)
            {
              v2 = @"FailedToMoveItem";
            }

            else if (a1 == 3003)
            {
              v2 = @"FailedToRemoveItem";
            }

            else
            {
              v2 = @"FailedToRepeatItem";
            }

            return v2;
          }

          switch(a1)
          {
            case 2201:
              v2 = @"SharedListeningSessionDisconnected";

              return v2;
            case 3000:
              v2 = @"FailedToBuildPlaybackContext";

              return v2;
            case 3001:
              v2 = @"FailedToLoadPlaybackContext";

              return v2;
          }
        }
      }

      else
      {
        if (a1 > 3101)
        {
          if (a1 > 3104)
          {
            if (a1 == 3105)
            {
              v2 = @"SessionNotTransportable";
            }

            else if (a1 == 3106)
            {
              v2 = @"FailedToDecodeSessionRequirements";
            }

            else
            {
              v2 = @"FailedToDecodeSessionRequirementsFilter";
            }
          }

          else if (a1 == 3102)
          {
            v2 = @"FailedToFinalizeSession";
          }

          else if (a1 == 3103)
          {
            v2 = @"SessionRestoredUnexpectedCurrentItem";
          }

          else
          {
            v2 = @"SessionMigrationIdentifierMissing";
          }

          return v2;
        }

        if (a1 <= 3007)
        {
          if (a1 == 3005)
          {
            v2 = @"FailedToShuffleItem";
          }

          else if (a1 == 3006)
          {
            v2 = @"FailedToChangeAutoPlayMode";
          }

          else
          {
            v2 = @"FailedToProduceItem";
          }

          return v2;
        }

        switch(a1)
        {
          case 3008:
            v2 = @"FailedToPerformSetQueue";

            return v2;
          case 3100:
            v2 = @"FailedToLoadSession";

            return v2;
          case 3101:
            v2 = @"FailedToDecodeSession";

            return v2;
        }
      }
    }

    else if (a1 <= 100)
    {
      if (a1 <= 4)
      {
        if (a1 > 1)
        {
          if (a1 == 2)
          {
            v2 = @"NoCurrentItem";
          }

          else if (a1 == 3)
          {
            v2 = @"CannotFindReferencedItem";
          }

          else
          {
            v2 = @"FeatureDisabled";
          }

          return v2;
        }

        if (!a1)
        {
          v2 = @"Unknown";

          return v2;
        }

        if (a1 == 1)
        {
          v2 = @"NoContentToPlay";

          return v2;
        }
      }

      else
      {
        if (a1 <= 7)
        {
          if (a1 == 5)
          {
            v2 = @"CommandInvalid";
          }

          else if (a1 == 6)
          {
            v2 = @"CommandRequiresOverride";
          }

          else
          {
            v2 = @"FeatureNotImplemented";
          }

          return v2;
        }

        switch(a1)
        {
          case 8:
            v2 = @"FailedToDecodeCommandOptions";

            return v2;
          case 9:
            v2 = @"FailedToDecodeCommandCustomData";

            return v2;
          case 100:
            v2 = @"AccountMissing";

            return v2;
        }
      }
    }

    else
    {
      if (a1 > 1999)
      {
        if (a1 > 2002)
        {
          if (a1 == 2003)
          {
            v2 = @"FailedToChangeRate";
          }

          else if (a1 == 2004)
          {
            v2 = @"FailedToJumpToTime";
          }

          else
          {
            v2 = @"FailedToBeginScanning";
          }
        }

        else if (a1 == 2000)
        {
          v2 = @"FailedToPlayRate";
        }

        else if (a1 == 2001)
        {
          v2 = @"FailedToPauseRate";
        }

        else
        {
          v2 = @"FailedToToggleRate";
        }

        return v2;
      }

      if (a1 > 999)
      {
        switch(a1)
        {
          case 1000:
            v2 = @"MediaServicesUnavailable";

            return v2;
          case 1001:
            v2 = @"AudioSessionActivationFailed";

            return v2;
          case 1002:
            v2 = @"AudioSessionActivationCancelled";

            return v2;
        }
      }

      else
      {
        switch(a1)
        {
          case 101:
            v2 = @"AccountMissingSubscription";

            return v2;
          case 102:
            v2 = @"AccountMissingAuthentication";

            return v2;
          case 199:
            v2 = @"AccountNotPrepared";

            return v2;
        }
      }
    }

LABEL_395:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];

    return v2;
  }

  if (a1 <= 5300)
  {
    if (a1 <= 5050)
    {
      if (a1 <= 3300)
      {
        if (a1 <= 3199)
        {
          if (a1 == 3108)
          {
            v2 = @"FailedToDecodeSessionRequirementsFeatures";

            return v2;
          }

          if (a1 == 3109)
          {
            v2 = @"SessionMigrationMetricsUnavailable";

            return v2;
          }
        }

        else
        {
          switch(a1)
          {
            case 3200:
              v2 = @"FailedToPerformDelegation";

              return v2;
            case 3201:
              v2 = @"DeviceDoesNotSupportDelegation";

              return v2;
            case 3300:
              v2 = @"BehaviorDoesNotSupportToggleTransitions";

              return v2;
          }
        }
      }

      else if (a1 > 5000)
      {
        switch(a1)
        {
          case 5001:
            v2 = @"TimeoutUnknownCommandID";

            return v2;
          case 5002:
            v2 = @"TimeoutUnknownCommandInvalid";

            return v2;
          case 5050:
            v2 = @"TimeoutCommandDeliveredNotDispatched";

            return v2;
        }
      }

      else
      {
        switch(a1)
        {
          case 3301:
            v2 = @"FailedToToggleTransitions";

            return v2;
          case 3400:
            v2 = @"FailedToEnhanceDialogue";

            return v2;
          case 5000:
            v2 = @"TimeoutUnknown";

            return v2;
        }
      }
    }

    else if (a1 > 5200)
    {
      if (a1 > 5204)
      {
        switch(a1)
        {
          case 5205:
            v2 = @"TimeoutMissingItem";

            return v2;
          case 5206:
            v2 = @"TimeoutPlaceholderItem";

            return v2;
          case 5300:
            v2 = @"TimeoutAssetLoad";

            return v2;
        }
      }

      else
      {
        switch(a1)
        {
          case 5201:
            v2 = @"TimeoutQueueLoadMissing";

            return v2;
          case 5202:
            v2 = @"TimeoutModelLookup";

            return v2;
          case 5203:
            v2 = @"TimeoutGetTracks";

            return v2;
        }
      }
    }

    else if (a1 > 5109)
    {
      switch(a1)
      {
        case 5110:
          v2 = @"TimeoutMediaServicesLost";

          return v2;
        case 5111:
          v2 = @"TimeoutMediaServicesReset";

          return v2;
        case 5200:
          v2 = @"TimeoutQueueLoad";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 5051:
          v2 = @"TimeoutCommandBlockedByOtherCommands";

          return v2;
        case 5100:
          v2 = @"TimeoutSessionActivation";

          return v2;
        case 5105:
          v2 = @"TimeoutInterruptor";

          return v2;
      }
    }

    goto LABEL_395;
  }

  if (a1 > 5449)
  {
    if (a1 > 5601)
    {
      if (a1 > 6001)
      {
        switch(a1)
        {
          case 6002:
            v2 = @"FailedToPerformStoreAction";

            return v2;
          case 6003:
            v2 = @"FailedToDeleteItemFromLibrary";

            return v2;
          case 6004:
            v2 = @"FailedToOpenURL";

            return v2;
        }
      }

      else
      {
        switch(a1)
        {
          case 5602:
            v2 = @"TimeoutOnWeakCellularConnection";

            return v2;
          case 6000:
            v2 = @"FailedToPerformDialogAction";

            return v2;
          case 6001:
            v2 = @"FailedToDecodeDialogActionOptions";

            return v2;
        }
      }
    }

    else if (a1 > 5501)
    {
      switch(a1)
      {
        case 5502:
          v2 = @"TimeoutNetworkTaskCompletion";

          return v2;
        case 5600:
          v2 = @"TimeoutOnUnreachableNetwork";

          return v2;
        case 5601:
          v2 = @"TimeoutOnUnknownNetwork";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 5450:
          v2 = @"TimeoutFirstAudioFrame";

          return v2;
        case 5500:
          v2 = @"TimeoutNetworkTaskResume";

          return v2;
        case 5501:
          v2 = @"TimeoutNetworkTaskResponse";

          return v2;
      }
    }

    goto LABEL_395;
  }

  if (a1 > 5409)
  {
    if (a1 > 5420)
    {
      switch(a1)
      {
        case 5421:
          v2 = @"TimeoutLeaseRequest";

          return v2;
        case 5431:
          v2 = @"TimeoutTimeControlStatusMissing";

          return v2;
        case 5432:
          v2 = @"TimeoutTimeControlStatusWaiting";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 5410:
          v2 = @"TimeoutReadyToPlay";

          return v2;
        case 5411:
          v2 = @"TimeoutSKDRequest";

          return v2;
        case 5420:
          v2 = @"TimeoutSetRate";

          return v2;
      }
    }

    goto LABEL_395;
  }

  if (a1 <= 5303)
  {
    if (a1 == 5301)
    {
      v2 = @"TimeoutAssetLoadMissing";
    }

    else if (a1 == 5302)
    {
      v2 = @"TimeoutAssetConfiguration";
    }

    else
    {
      v2 = @"TimeoutAssetLoadEndMissing";
    }

    return v2;
  }

  switch(a1)
  {
    case 5304:
      v2 = @"TimeoutAssetLoadNetworkRequest";

      break;
    case 5310:
      v2 = @"TimeoutAssetInsertionMissing";

      break;
    case 5400:
      v2 = @"TimeoutMediaStart";

      return v2;
    default:
      goto LABEL_395;
  }

  return v2;
}

__CFString *NSStringFromMPCSuntoryErrorCode(uint64_t a1)
{
  if (a1 > 202)
  {
    if (a1 > 211)
    {
      switch(a1)
      {
        case 212:
          v2 = @"ProcessorOverflow";

          return v2;
        case 213:
          v2 = @"FailedToResetAudioUnit";

          return v2;
        case 220:
          v2 = @"FailedToConfigureAsset";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 203:
          v2 = @"FailedToInitializeAudioUnit";

          return v2;
        case 210:
          v2 = @"FailedToProcessData";

          return v2;
        case 211:
          v2 = @"ProcessorNotAvailable";

          return v2;
      }
    }

LABEL_51:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];

    return v2;
  }

  if (a1 > 199)
  {
    if (a1 == 200)
    {
      v2 = @"FailedToLoadProcessor";
    }

    else if (a1 == 201)
    {
      v2 = @"FailedToCreateAudioUnit";
    }

    else
    {
      v2 = @"FailedToSetupAudioUnit";
    }
  }

  else if (a1)
  {
    if (a1 != 101)
    {
      if (a1 == 102)
      {
        v2 = @"InvalidModel";

        return v2;
      }

      goto LABEL_51;
    }

    v2 = @"ModelNotFound";
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *NSStringFromMPCMusicSharePlayBehaviorErrorCode(unint64_t a1)
{
  if (a1 >= 0x10)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E8237690[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCMusicPlaybackContextSharePlayErrorCode(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E8237710[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCMusicBehaviorErrorCode(unint64_t a1)
{
  if (a1 >= 0xE)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E8237760[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCPodcastsBehaviorErrorCode(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E82377D0[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCEnginePlayerErrorCode(unint64_t a1)
{
  if (a1 >= 0x15)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E8237818[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCExternalContentErrorCode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E82378C0[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCAssistantXSchemeURLErrorCode(uint64_t a1)
{
  if (a1 <= 101)
  {
    if (a1 > 50)
    {
      if (a1 <= 53)
      {
        if (a1 == 51)
        {
          v2 = @"UnsupportedContentDatabaseMismatch";
        }

        else if (a1 == 52)
        {
          v2 = @"UnsupportedContentUnexpectedEntityType";
        }

        else
        {
          v2 = @"UnsupportedContentMissingContent";
        }

        return v2;
      }

      switch(a1)
      {
        case '6':
          v2 = @"UnsupportedContentMissingLibrary";

          return v2;
        case 'd':
          v2 = @"InvalidURLMissingScheme";

          return v2;
        case 'e':
          v2 = @"InvalidURLUnknownScheme";

          return v2;
      }
    }

    else if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          v2 = @"MissingMediaLibrary";

          return v2;
        case 10:
          v2 = @"UnsupportedDestinationRemoteSetQueueBlocked";

          return v2;
        case 50:
          v2 = @"UnsupportedContentLibraryEmpty";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          v2 = @"Unknown";

          return v2;
        case 1:
          v2 = @"MissingUserIdentity";

          return v2;
        case 2:
          v2 = @"MissingAccount";

          return v2;
      }
    }

LABEL_107:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];

    return v2;
  }

  if (a1 <= 113)
  {
    if (a1 > 110)
    {
      if (a1 == 111)
      {
        v2 = @"InvalidLibraryURLMissingComponentMediaType";
      }

      else if (a1 == 112)
      {
        v2 = @"InvalidLibraryURLMissingComponentPersistentID";
      }

      else
      {
        v2 = @"InvalidLibraryURLMissingComponentUniversalID";
      }

      return v2;
    }

    switch(a1)
    {
      case 'f':
        v2 = @"InvalidURLMissingHost";

        return v2;
      case 'g':
        v2 = @"InvalidURLUnknownHost";

        return v2;
      case 'n':
        v2 = @"InvalidLibraryURLMissingComponentDatabaseID";

        return v2;
    }

    goto LABEL_107;
  }

  if (a1 <= 151)
  {
    switch(a1)
    {
      case 114:
        v2 = @"InvalidLibraryURLMissingComponentPlaylistGlobalID";

        return v2;
      case 150:
        v2 = @"InvalidSyncIDURLMissingComponentSyncID";

        return v2;
      case 151:
        v2 = @"InvalidSyncIDURLMissingComponentPID";

        return v2;
    }

    goto LABEL_107;
  }

  if (a1 > 200)
  {
    if (a1 == 201)
    {
      v2 = @"InvalidStoreURLMissingComponentStationID";

      return v2;
    }

    if (a1 == 999)
    {
      v2 = @"FeatureDisabled";

      return v2;
    }

    goto LABEL_107;
  }

  if (a1 != 152)
  {
    if (a1 == 200)
    {
      v2 = @"InvalidStoreURLMissingComponentAdamID";

      return v2;
    }

    goto LABEL_107;
  }

  v2 = @"InvalidSyncIDURLUnexpectedEntityType";

  return v2;
}

os_log_t _MPCLogCategoryAnalytics()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");

  return v0;
}

os_log_t _MPCLogCategoryMediaRemote()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");

  return v0;
}

os_log_t _MPCLogCategoryPlayback()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");

  return v0;
}

os_log_t _MPCLogCategoryPlayback_Oversize()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");

  return v0;
}

os_log_t _MPCLogCategoryPublisher()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");

  return v0;
}

os_log_t _MPCLogCategoryQueueController()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");

  return v0;
}

os_log_t _MPCLogCategoryDelegation()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "Delegation");

  return v0;
}

os_log_t _MPCLogCategoryMusicBehavior()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");

  return v0;
}

_MPCProtoRadioContentReference *_MPCProtoRadioContentReferenceFromICRadioContentReference(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(_MPCProtoRadioContentReference);
    v3 = v1;
    v4 = objc_alloc_init(_MPCProtoRadioContentReferenceLibraryAlbumContentReference);
    v5 = [v3 albumName];
    if ([v5 length] && v4)
    {
      objc_storeStrong(&v4->_albumName, v5);
    }

    v6 = [v3 representativeCloudIdentifier];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 longLongValue];
      if (v4)
      {
        *&v4->_has |= 1u;
        v4->_representativeItemCloudID = v8;
      }
    }

    v9 = [v3 storeIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 longLongValue];
      if (v4)
      {
        *&v4->_has |= 2u;
        v4->_storeAdamID = v11;
      }
    }

    if (!v2)
    {
      goto LABEL_26;
    }

    v12 = 8;
LABEL_25:
    objc_storeStrong((&v2->super.super.isa + v12), v4);
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(_MPCProtoRadioContentReference);
    v13 = v1;
    v4 = objc_alloc_init(_MPCProtoRadioContentReferenceLibraryArtistContentReference);
    v5 = [v13 artistName];
    if ([v5 length] && v4)
    {
      objc_storeStrong(&v4->_albumName, v5);
    }

    v14 = [v13 representativeCloudIdentifier];
    v7 = v14;
    if (v14)
    {
      v15 = [v14 longLongValue];
      if (v4)
      {
        *&v4->_has |= 1u;
        v4->_representativeItemCloudID = v15;
      }
    }

    v16 = [v13 storeIdentifier];
    v10 = v16;
    if (v16)
    {
      v17 = [v16 longLongValue];
      if (v4)
      {
        *&v4->_has |= 2u;
        v4->_storeAdamID = v17;
      }
    }

    if (!v2)
    {
      goto LABEL_26;
    }

    v12 = 16;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(_MPCProtoRadioContentReference);
    v19 = v1;
    v4 = objc_alloc_init(_MPCProtoRadioContentReferenceLibraryItemContentReference);
    v5 = [v19 albumArtistName];
    if ([v5 length] && v4)
    {
      objc_storeStrong(&v4[1].super.super.isa, v5);
    }

    v20 = [v19 albumName];
    if ([v20 length] && v4)
    {
      objc_storeStrong(&v4[1]._storeAdamID, v20);
    }

    v21 = [v19 artistName];
    if ([v21 length] && v4)
    {
      objc_storeStrong(&v4[1]._has, v21);
    }

    v22 = [v19 composerName];
    if ([v22 length] && v4)
    {
      objc_storeStrong(&v4[2].super.super.isa, v22);
    }

    v23 = [v19 copyright];
    if ([v23 length] && v4)
    {
      objc_storeStrong(&v4[2]._storeAdamID, v23);
    }

    v62 = [v19 discCount];
    if (v62)
    {
      v24 = [v62 integerValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 0x10u;
        LODWORD(v4[1]._representativeItemCloudID) = v24;
      }
    }

    v25 = [v19 discNumber];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 integerValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 0x80u;
        LODWORD(v4[2]._albumName) = v27;
      }
    }

    v61 = [v19 fileSize];
    if (v61)
    {
      [v61 doubleValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 4u;
        v4->_albumName = v28;
      }
    }

    obj = [v19 genreName];
    if ([obj length] && v4)
    {
      objc_storeStrong(&v4[2]._has, obj);
    }

    v57 = v20;
    v60 = [v19 isCompilation];
    if (v60)
    {
      v29 = [v60 BOOLValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 0x400u;
        LOBYTE(v4[3]._storeAdamID) = v29;
      }
    }

    v30 = v21;
    v59 = [v19 duration];
    if (v59)
    {
      [v59 doubleValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 2u;
        v4->_storeAdamID = v31;
      }
    }

    v32 = [v19 kind];
    v52 = v32;
    if ([v32 isEqualToString:*MEMORY[0x1E69E41E8]])
    {
      v33 = 2;
    }

    else if ([v32 isEqualToString:*MEMORY[0x1E69E41F0]])
    {
      v33 = 1;
    }

    else if ([v32 isEqualToString:*MEMORY[0x1E69E41F8]])
    {
      v33 = 3;
    }

    else if ([v32 isEqualToString:*MEMORY[0x1E69E4200]])
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v53 = v26;
    if (v4)
    {
      WORD2(v4[3]._storeAdamID) |= 0x40u;
      LODWORD(v4[2]._representativeItemCloudID) = v33;
    }

    v55 = v22;
    v37 = [v19 name];
    if ([v37 length] && v4)
    {
      objc_storeStrong(&v4[3].super.super.isa, v37);
    }

    v54 = v23;
    v38 = [v19 storeAdamIdentifier];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 longLongValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 8u;
        *&v4->_has = v40;
      }
    }

    v41 = [v19 storeCloudIdentifier];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 longLongValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 1u;
        v4->_representativeItemCloudID = v43;
      }
    }

    v56 = v30;
    v44 = [v19 trackCount];
    if (v44)
    {
      v45 = [v62 integerValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 0x20u;
        LODWORD(v4[1]._albumName) = v45;
      }
    }

    v46 = [v19 trackNumber];
    v47 = v46;
    if (v46)
    {
      v48 = [v46 integerValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 0x100u;
        LODWORD(v4[3]._representativeItemCloudID) = v48;
      }
    }

    v49 = [v19 year];
    v50 = v49;
    if (v49)
    {
      v51 = [v49 integerValue];
      if (v4)
      {
        WORD2(v4[3]._storeAdamID) |= 0x200u;
        HIDWORD(v4[3]._representativeItemCloudID) = v51;
      }
    }

    if (v2)
    {
      objc_storeStrong(&v2->_libraryItemContentReference, v4);
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(_MPCProtoRadioContentReference);
    v34 = v1;
    v4 = objc_alloc_init(_MPCProtoRadioContentReferenceStoreContentReference);
    v35 = [v34 storeIdentifier];
    v5 = v35;
    if (v35)
    {
      v36 = [v35 longLongValue];
      if (v4)
      {
        LOBYTE(v4->_storeAdamID) |= 1u;
        v4->_representativeItemCloudID = v36;
      }
    }

    goto LABEL_27;
  }

  v2 = 0;
LABEL_28:

  return v2;
}

id _MPCProtoRadioContentReferenceToICRadioContentReference(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[4];
    if (v3)
    {
      v4 = v3;
      if (v4[1])
      {
        v5 = MEMORY[0x1E69E4538];
        v6 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        v7 = [v5 storeItemWithIdentifier:v6];
LABEL_19:

        goto LABEL_20;
      }

      v7 = 0;
      goto LABEL_20;
    }

    v8 = v1[1];
    if (v8)
    {
      v4 = v8;
      v7 = objc_alloc_init(MEMORY[0x1E69E4558]);
      v9 = v4[3];
      if (v9)
      {
        v10 = v9;
        [v7 setAlbumName:v10];
      }

      if (v4[2])
      {
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v7 setStoreIdentifier:v11];
      }

      goto LABEL_17;
    }

    v12 = v1[2];
    if (v12)
    {
      v4 = v12;
      v7 = objc_alloc_init(MEMORY[0x1E69E4560]);
      v13 = v4[3];
      if (v13)
      {
        v14 = v13;
        [v7 setArtistName:v14];
      }

      if (v4[2])
      {
        v15 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v7 setStoreIdentifier:v15];
      }

LABEL_17:
      if (v4[1])
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        [v7 setRepresentativeCloudIdentifier:v6];
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_40;
    }

    v16 = v1[3];
    if (v16)
    {
      v4 = v16;
      v7 = objc_alloc_init(MEMORY[0x1E69E4568]);
      v17 = v4[5];
      if (v17)
      {
        v18 = v17;
        [v7 setAlbumArtistName:v18];
      }

      v19 = v4[7];
      if (v19)
      {
        v20 = v19;
        [v7 setAlbumName:v20];
      }

      v21 = v4[9];
      if (v21)
      {
        v22 = v21;
        [v7 setArtistName:v22];
      }

      v23 = v4[10];
      if (v23)
      {
        v24 = v23;
        [v7 setComposerName:v24];
      }

      v25 = v4[12];
      if (v25)
      {
        v26 = v25;
        [v7 setCopyright:v26];
      }

      v27 = *(v4 + 70);
      if ((v27 & 0x10) != 0)
      {
        v29 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 12)];
        [v7 setDiscCount:v29];

        v27 = *(v4 + 70);
        if ((v27 & 0x80) == 0)
        {
LABEL_34:
          if ((v27 & 4) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_45;
        }
      }

      else if ((v27 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v30 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 26)];
      [v7 setDiscNumber:v30];

      v27 = *(v4 + 70);
      if ((v27 & 4) == 0)
      {
LABEL_35:
        if ((v27 & 0x400) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }

LABEL_45:
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:*(v4 + 3)];
      [v7 setFileSize:v31];

      v27 = *(v4 + 70);
      if ((v27 & 0x400) == 0)
      {
LABEL_36:
        if ((v27 & 2) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_47;
      }

LABEL_46:
      v32 = [MEMORY[0x1E696AD98] numberWithBool:*(v4 + 136)];
      [v7 setCompilation:v32];

      v27 = *(v4 + 70);
      if ((v27 & 2) == 0)
      {
LABEL_37:
        if ((v27 & 0x40) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_48;
      }

LABEL_47:
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:*(v4 + 2)];
      [v7 setDuration:v33];

      if ((*(v4 + 70) & 0x40) == 0)
      {
        goto LABEL_55;
      }

LABEL_48:
      v34 = *(v4 + 22) - 1;
      if (v34 > 3)
      {
        v35 = 0;
      }

      else
      {
        v35 = **(&unk_1E8237A88 + v34);
      }

      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = &stru_1F454A698;
      }

      [v7 setKind:v36];

LABEL_55:
      v37 = v4[15];
      if (v37)
      {
        v38 = v37;
        [v7 setName:v38];
      }

      v39 = v4[4];
      if (v39)
      {
        v40 = [MEMORY[0x1E696AD98] numberWithLongLong:v4[4]];
        [v7 setStoreAdamIdentifier:v40];
      }

      if (v4[1])
      {
        v41 = [MEMORY[0x1E696AD98] numberWithLongLong:v39];
        [v7 setStoreCloudIdentifier:v41];
      }

      v42 = *(v4 + 70);
      if ((v42 & 0x20) != 0)
      {
        v43 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 16)];
        [v7 setTrackCount:v43];

        v42 = *(v4 + 70);
        if ((v42 & 0x100) == 0)
        {
LABEL_63:
          if ((v42 & 0x200) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_67;
        }
      }

      else if ((*(v4 + 70) & 0x100) == 0)
      {
        goto LABEL_63;
      }

      v44 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 32)];
      [v7 setTrackNumber:v44];

      if ((*(v4 + 70) & 0x200) == 0)
      {
        goto LABEL_20;
      }

LABEL_67:
      v6 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 33)];
      [v7 setYear:v6];
      goto LABEL_19;
    }
  }

  v7 = 0;
LABEL_40:

  return v7;
}

void sub_1C5FC45E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5FC77A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25085(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25892(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5FCDB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26312(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5FCE068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMFDebugOverlayControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = MediaDebugUILibraryCore_frameworkLibrary;
  if (!MediaDebugUILibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E82384A8;
    v4[3] = _sl_dlopen();
    MediaDebugUILibraryCore_frameworkLibrary = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  result = objc_getClass("MFDebugOverlayController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMFDebugOverlayControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C5FCE1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaDebugUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MediaDebugUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__Block_byref_object_copy__146(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1C5FD47E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void _MPCMediaRemoteControllerAddCommandInfo(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = MPCRemoteCommandDescriptionCopy(a2);
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v4 setObject:v5 forKeyedSubscript:@"command"];

  [v4 setObject:v8 forKeyedSubscript:@"commandName"];
  if (!MRMediaRemoteCommandInfoGetEnabled())
  {
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"enabled"];
  }

  v6 = MRMediaRemoteCommandInfoCopyOptions();
  if ([v6 count])
  {
    [v4 setObject:v6 forKeyedSubscript:@"options"];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%d)", v8, a2];
  [v3 setObject:v4 forKeyedSubscript:v7];
}

void sub_1C5FD6720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5FD6B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5FD6F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26667(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27102(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _MPCRemotePlayerArtworkDataSourceValidSupportedSizes(void *a1, CGFloat a2, CGFloat a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 CGSizeValue];
        v24.size.width = v13;
        v24.size.height = v14;
        v23.origin.x = 0.0;
        v23.origin.y = 0.0;
        v24.origin.x = 0.0;
        v24.origin.y = 0.0;
        v23.size.width = a2;
        v23.size.height = a3;
        if (CGRectContainsRect(v23, v24))
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

void sub_1C5FE0298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28509(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5FE26F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29075(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5FE3070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5FF3C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromMPCPlayerAudioFormatTier(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", a1];
  }

  else
  {
    v2 = off_1E8238FF8[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCPlayerAudioRouteType(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", a1];
  }

  else
  {
    v2 = off_1E8239020[a1];
  }

  return v2;
}

__CFString *NSStringFromMPCPlayerAudioFormatRenderingMode(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8238FD0[a1 - 1];
  }
}

__CFString *NSStringFromMPCPlayerAudioFormatJustification(uint64_t a1)
{
  if (a1 <= 100)
  {
    switch(a1)
    {
      case 0:
        v2 = @"Unknown";

        return v2;
      case 1:
        v2 = @"Unavailable";

        return v2;
      case 100:
        v2 = @"UserPreference";

        return v2;
    }

LABEL_22:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", a1];

    return v2;
  }

  if (a1 > 500)
  {
    if (a1 == 501)
    {
      v2 = @"RouteUnknownCompatibility";

      return v2;
    }

    if (a1 == 1000)
    {
      v2 = @"BandwidthInsufficient";

      return v2;
    }

    goto LABEL_22;
  }

  if (a1 != 101)
  {
    if (a1 == 500)
    {
      v2 = @"RouteIncompatible";

      return v2;
    }

    goto LABEL_22;
  }

  v2 = @"UserDownload";

  return v2;
}

uint64_t MPCPlayerAudioFormatRenderingModeFrom(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

id NSStringComponentsFromMPCPlayerAudioFormatTierPreference(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 64; ++i)
  {
    if (((1 << i) & ~a1) == 0)
    {
      v4 = NSStringFromMPCPlayerAudioFormatTier(i);
      [v2 addObject:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

uint64_t _MPCProtoContainerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_46:
          *(a1 + 8) = v24;
          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(_MPCProtoContainerIdentifierSet);
          objc_storeStrong((a1 + 16), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoContainerIdentifierSetReadFrom(v16, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_29;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = objc_alloc_init(_MPCProtoItem);
            [(_MPCProtoContainer *)a1 addItem:v16];
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !_MPCProtoItemReadFrom(v16, a2))
            {
              goto LABEL_49;
            }

LABEL_29:
            PBReaderRecallMark();

            goto LABEL_47;
          case 4:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_31;
          case 5:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_31:
            v17 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoContainerIdentifierSetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v21 = PBReaderReadString();
            v22 = 48;
          }

          else
          {
            if (v13 != 8)
            {
LABEL_61:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_76;
            }

            v21 = PBReaderReadString();
            v22 = 40;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v40 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v40 & 0x7F) << v29;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v31;
            }

LABEL_70:
            v37 = 8;
LABEL_75:
            *(a1 + v37) = v20;
            goto LABEL_76;
          }

          if (v13 != 6)
          {
            goto LABEL_61;
          }

          v21 = PBReaderReadString();
          v22 = 32;
        }
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v42 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v42 & 0x7F) << v23;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_66:
            v37 = 16;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_61;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              v41 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v41 & 0x7F) << v14;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_74;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_74:
            v37 = 24;
          }

          goto LABEL_75;
        }

        if (v13 == 3)
        {
          v21 = PBReaderReadString();
          v22 = 56;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_61;
          }

          v21 = PBReaderReadString();
          v22 = 64;
        }
      }

      v35 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_76:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoDelegateInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v60) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v60 & 0x7F) << v5;
      if ((v60 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 124) |= 2u;
        while (1)
        {
          LOBYTE(v60) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v60 & 0x7F) << v13;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_89:
            v52 = 40;
            goto LABEL_94;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_89;
      case 2u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 124) |= 1u;
        while (1)
        {
          LOBYTE(v60) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v60 & 0x7F) << v31;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_93;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v33;
        }

LABEL_93:
        v52 = 32;
LABEL_94:
        *(a1 + v52) = v19;
        goto LABEL_113;
      case 3u:
        v21 = PBReaderReadString();
        v22 = 112;
        goto LABEL_73;
      case 4u:
        v21 = PBReaderReadString();
        v22 = 48;
        goto LABEL_73;
      case 5u:
        v21 = PBReaderReadString();
        v22 = 56;
        goto LABEL_73;
      case 6u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 124) |= 4u;
        while (1)
        {
          LOBYTE(v60) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v60 & 0x7F) << v37;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_98:
        *(a1 + 72) = v43;
        goto LABEL_113;
      case 7u:
        v21 = PBReaderReadString();
        v22 = 64;
        goto LABEL_73;
      case 8u:
        v21 = PBReaderReadString();
        v22 = 80;
LABEL_73:
        v44 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_113;
      case 9u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 124) |= 8u;
        while (1)
        {
          LOBYTE(v60) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v60 & 0x7F) << v45;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            LOBYTE(v51) = 0;
            goto LABEL_100;
          }
        }

        v51 = (v47 != 0) & ~[a2 hasError];
LABEL_100:
        *(a1 + 120) = v51;
        goto LABEL_113;
      case 0xAu:
        if ((v12 & 7) == 2)
        {
          v60 = 0;
          v61 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v24 = [a2 position];
            if (v24 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v62 = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v62 & 0x7F) << v25;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                goto LABEL_48;
              }
            }

            [a2 hasError];
LABEL_48:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          while (1)
          {
            LOBYTE(v60) = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v60 & 0x7F) << v53;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              goto LABEL_112;
            }
          }

          [a2 hasError];
LABEL_112:
          PBRepeatedInt32Add();
        }

        goto LABEL_113;
      case 0xBu:
        v20 = objc_alloc_init(_MPCProtoDelegateInfoTokenA);
        objc_storeStrong((a1 + 88), v20);
        v60 = 0;
        v61 = 0;
        if (PBReaderPlaceMark() && _MPCProtoDelegateInfoTokenAReadFrom(v20, a2))
        {
          goto LABEL_76;
        }

        goto LABEL_116;
      case 0xCu:
        v20 = objc_alloc_init(_MPCProtoDelegateInfoTokenE);
        objc_storeStrong((a1 + 104), v20);
        v60 = 0;
        v61 = 0;
        if (!PBReaderPlaceMark() || !_MPCProtoDelegateInfoTokenEReadFrom(v20, a2))
        {
          goto LABEL_116;
        }

        goto LABEL_76;
      case 0xDu:
        v20 = objc_alloc_init(_MPCProtoDelegateInfoTokenB);
        objc_storeStrong((a1 + 96), v20);
        v60 = 0;
        v61 = 0;
        if (PBReaderPlaceMark() && _MPCProtoDelegateInfoTokenBReadFrom(v20, a2))
        {
LABEL_76:
          PBReaderRecallMark();

LABEL_113:
          v59 = [a2 position];
          if (v59 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_116:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_113;
    }
  }
}

uint64_t _MPCProtoDelegateInfoTokenAReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3))
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoDelegateInfoTokenBReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 1)
      {
        if (!v13)
        {
          v21 = PBReaderReadData();
          v22 = 32;
          goto LABEL_36;
        }

        if (v13 == 1)
        {
          v21 = PBReaderReadData();
          v22 = 24;
LABEL_36:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            v21 = PBReaderReadData();
            v22 = 16;
            goto LABEL_36;
          case 3:
            v21 = PBReaderReadString();
            v22 = 40;
            goto LABEL_36;
          case 4:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_44;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_44:
            *(a1 + 8) = v20;
            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoDelegateInfoTokenEReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 1)
      {
        if (v13 == 2)
        {
          *(a1 + 40) |= 1u;
          v29 = 0;
          v25 = [a2 position] + 8;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
        }

        else
        {
          if (v13 != 3)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_45;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v31 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v31 & 0x7F) << v16;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_42;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_42:
          *(a1 + 16) = v22;
        }
      }

      else
      {
        if (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }

        else
        {
          v14 = PBReaderReadData();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_44;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 20) = v28;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(_MPCProtoItemIdentifierSet);
        objc_storeStrong((a1 + 8), v21);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_MPCProtoItemIdentifierSetReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        *(a1 + 16) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoItemIdentifierSetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            v56 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v56 & 0x7F) << v29;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_79:
          v49 = 16;
          goto LABEL_96;
        }

        if (v13 != 2)
        {
          if (v13 != 3)
          {
            goto LABEL_54;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v55 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v55 & 0x7F) << v21;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_95;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_95:
          v49 = 32;
          goto LABEL_96;
        }

        v27 = PBReaderReadString();
        v28 = 56;
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              v54 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v54 & 0x7F) << v36;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

LABEL_83:
            v49 = 40;
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_54;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v53 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v14;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v49 = 8;
          }

          goto LABEL_96;
        }

        if (v13 == 6)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v52 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v52 & 0x7F) << v42;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v44;
          }

LABEL_87:
          v49 = 24;
LABEL_96:
          *(a1 + v49) = v20;
          goto LABEL_97;
        }

        if (v13 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_97;
        }

        v27 = PBReaderReadString();
        v28 = 48;
      }

      v48 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_97:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoMigrationDataPayloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        *(a1 + 16) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoMigrationDataTimeSyncReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 48) |= 8u;
          LODWORD(v39) = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 40) = v39;
          goto LABEL_59;
        }

        if (v13 == 5)
        {
          *(a1 + 48) |= 4u;
          v39 = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v39;
          v35 = 24;
LABEL_58:
          *(a1 + v35) = v34;
          goto LABEL_59;
        }

        if (v13 != 6)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_59;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 48) |= 0x10u;
        while (1)
        {
          LOBYTE(v39) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v39 & 0x7F) << v16;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_49;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_49:
        *(a1 + 44) = v22;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            *(a1 + 48) |= 2u;
            v39 = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v39;
            v35 = 16;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_40;
            }

            *(a1 + 48) |= 1u;
            v39 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v39;
            v35 = 8;
          }

          goto LABEL_58;
        }

        v23 = PBReaderReadString();
        v24 = *(a1 + 32);
        *(a1 + 32) = v23;
      }

LABEL_59:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoRadioContentReferenceReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_MPCProtoRadioContentReferenceLibraryItemContentReference);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoRadioContentReferenceLibraryItemContentReferenceReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_MPCProtoRadioContentReferenceStoreContentReference);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoRadioContentReferenceStoreContentReferenceReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_MPCProtoRadioContentReferenceLibraryAlbumContentReference);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoRadioContentReferenceLibraryAlbumContentReferenceReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_MPCProtoRadioContentReferenceLibraryArtistContentReference);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoRadioContentReferenceLibraryArtistContentReferenceReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoRadioContentReferenceLibraryAlbumContentReferenceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v33 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_48:
        v30 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v34 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_44:
        v30 = 8;
      }

      *(a1 + v30) = v22;
LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoRadioContentReferenceLibraryArtistContentReferenceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v33 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_48:
        v30 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v34 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_44:
        v30 = 8;
      }

      *(a1 + v30) = v22;
LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoRadioContentReferenceLibraryItemContentReferenceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v85) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v85 & 0x7F) << v5;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 40;
          goto LABEL_93;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_93;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_93;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_93;
        case 5u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 140) |= 0x40u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v85 & 0x7F) << v29;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_124;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_124:
          v79 = 88;
          goto LABEL_150;
        case 6u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_93;
        case 7u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 140) |= 0x10u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v85 & 0x7F) << v39;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_128;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v41;
          }

LABEL_128:
          v79 = 48;
          goto LABEL_150;
        case 8u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 140) |= 0x80u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v85 & 0x7F) << v45;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_132;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v47;
          }

LABEL_132:
          v79 = 104;
          goto LABEL_150;
        case 9u:
          *(a1 + 140) |= 4u;
          v85 = 0;
          v64 = [a2 position] + 8;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 8, v65 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v81 = v85;
          v82 = 24;
          goto LABEL_155;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 112;
          goto LABEL_93;
        case 0xBu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 140) |= 0x400u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v85 & 0x7F) << v22;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_120;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_120:
          *(a1 + 136) = v28;
          goto LABEL_156;
        case 0xCu:
          *(a1 + 140) |= 2u;
          v85 = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v81 = v85;
          v82 = 16;
LABEL_155:
          *(a1 + v82) = v81;
          goto LABEL_156;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 120;
LABEL_93:
          v63 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_156;
        case 0xEu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 140) |= 8u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v85 & 0x7F) << v15;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_118:
          v78 = 32;
          goto LABEL_137;
        case 0x10u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 140) |= 1u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v85 & 0x7F) << v51;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_136;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v53;
          }

LABEL_136:
          v78 = 8;
LABEL_137:
          *(a1 + v78) = v21;
          goto LABEL_156;
        case 0x11u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 140) |= 0x20u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v85 & 0x7F) << v57;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_141;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v59;
          }

LABEL_141:
          v79 = 64;
          goto LABEL_150;
        case 0x12u:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          *(a1 + 140) |= 0x100u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v75 = [a2 position] + 1;
            if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
            {
              v77 = [a2 data];
              [v77 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v74 |= (v85 & 0x7F) << v72;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v11 = v73++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_149;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v74;
          }

LABEL_149:
          v79 = 128;
          goto LABEL_150;
        case 0x13u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 140) |= 0x200u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_156;
      }

      while (1)
      {
        LOBYTE(v85) = 0;
        v69 = [a2 position] + 1;
        if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
        {
          v71 = [a2 data];
          [v71 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v68 |= (v85 & 0x7F) << v66;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v66 += 7;
        v11 = v67++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_145;
        }
      }

      v35 = [a2 hasError] ? 0 : v68;
LABEL_145:
      v79 = 132;
LABEL_150:
      *(a1 + v79) = v35;
LABEL_156:
      v84 = [a2 position];
    }

    while (v84 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoRadioContentReferenceStoreContentReferenceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MPCProtoTracklistIndexPathReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR____MPCProtoTracklistIndexPath__containerIndex;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR____MPCProtoTracklistIndexPath__containerIndex;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR____MPCProtoTracklistIndexPath__itemIndex;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR____MPCProtoTracklistIndexPath__itemIndex;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C6007790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33920(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C600AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34392(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C600B470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C600FA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34809(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C6010BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C6011A50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C6011F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C6012B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C60136E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35168(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromAVFoundationErrorDomainCode(uint64_t a1)
{
  v3 = a1 + 11889;
  v4 = @"Unknown";
  switch(v3)
  {
    case 0:
      v4 = @"ContentKeyInvalid";

      break;
    case 1:
      v4 = @"ContentKeyRequestPlaybackDestinationDoesNotSupportDeviceIdentifierRandomization";

      break;
    case 4:
      v4 = @"ToneMappingFailed";

      break;
    case 5:
      v4 = @"SandboxExtensionDenied";

      break;
    case 6:
      v4 = @"EncodeFailed";

      break;
    case 7:
      v4 = @"AirPlayReceiverTemporarilyUnavailable";

      break;
    case 8:
      v4 = @"FailedToLoadSampleData";

      break;
    case 9:
      v4 = @"InvalidSampleCursor";

      break;
    case 10:
      v4 = @"ContentKeyRequestCancelled";

      break;
    case 11:
      v4 = @"OperationCancelled";

      break;
    case 12:
      v4 = @"RosettaNotInstalled";

      break;
    case 13:
      v4 = @"SegmentStartedWithNonSyncSample";

      break;
    case 14:
      v4 = @"IncorrectlyConfigured";

      break;
    case 16:
      v4 = @"UnsupportedDeviceActiveFormat";

      break;
    case 17:
      v4 = @"SessionHardwareCostOverage";

      break;
    case 18:
      v4 = @"OperationNotSupportedForPreset";

      break;
    case 19:
      v4 = @"ExternalPlaybackNotSupportedForAsset";

      break;
    case 20:
      v4 = @"NoSourceTrack";

      break;
    case 21:
      v4 = @"NoCompatibleAlternatesForExternalDisplay";

      break;
    case 22:
      v4 = @"NoLongerPlayable";

      break;
    case 23:
      v4 = @"ContentNotUpdated";

      break;
    case 24:
      v4 = @"MalformedDepth";

      break;
    case 25:
      v4 = @"FormatUnsupported";

      break;
    case 26:
      v4 = @"ContentIsUnavailable";

      break;
    case 27:
      v4 = @"OperationNotAllowed";

      break;
    case 28:
      v4 = @"UnsupportedOutputSettings";

      break;
    case 29:
      v4 = @"CreateContentKeyRequestFailed";

      break;
    case 30:
      v4 = @"RecordingAlreadyInProgress";

      break;
    case 31:
      v4 = @"VideoCompositorFailed";

      break;
    case 32:
      v4 = @"AirPlayReceiverRequiresInternet";

      break;
    case 33:
      v4 = @"AirPlayControllerRequiresInternet";

      break;
    case 34:
      v4 = @"UndecodableMediaData";

      break;
    case 35:
      v4 = @"FileTypeDoesNotSupportSampleReferences";

      break;
    case 36:
      v4 = @"FailedToParse";

      break;
    case 37:
      v4 = @"ApplicationIsNotAuthorizedToUseDevice";

      break;
    case 39:
      v4 = @"ServerIncorrectlyConfigured";

      break;
    case 40:
      v4 = @"FailedToLoadMediaData";

      break;
    case 41:
      v4 = @"IncompatibleAsset";

      break;
    case 42:
      v4 = @"OperationInterrupted";

      break;
    case 43:
      v4 = @"TorchLevelUnavailable";

      break;
    case 44:
      v4 = @"DisplayWasDisabled";

      break;
    case 45:
      v4 = @"ScreenCaptureFailed";

      break;
    case 46:
      v4 = @"InvalidOutputURLPathExtension";

      break;
    case 47:
      v4 = @"ReferenceForbiddenByReferencePolicy";

      break;
    case 48:
      v4 = @"InvalidVideoComposition";

      break;
    case 49:
      v4 = @"EncoderTemporarilyUnavailable";

      break;
    case 50:
      v4 = @"DecoderTemporarilyUnavailable";

      break;
    case 51:
      v4 = @"OperationNotSupportedForAsset";

      break;
    case 52:
      v4 = @"DeviceIsNotAvailableInBackground";

      break;
    case 53:
      v4 = @"ApplicationIsNotAuthorized";

      break;
    case 54:
      v4 = @"ContentIsNotAuthorized";

      break;
    case 55:
      v4 = @"EncoderNotFound";

      break;
    case 56:
      v4 = @"DecoderNotFound";

      break;
    case 57:
      v4 = @"NoImageAtTime";

      break;
    case 58:
      v4 = @"ContentIsProtected";

      break;
    case 59:
      v4 = @"MaximumStillImageCaptureRequestsExceeded";

      break;
    case 60:
      v4 = @"FileFailedToParse";

      break;
    case 61:
      v4 = @"FileFormatNotRecognized";

      break;
    case 62:
      v4 = @"InvalidCompositionTrackSegmentSourceDuration";

      break;
    case 63:
      v4 = @"InvalidCompositionTrackSegmentSourceStartTime";

      break;
    case 64:
      v4 = @"InvalidCompositionTrackSegmentDuration";

      break;
    case 65:
      v4 = @"CompositionTrackSegmentsNotContiguous";

      break;
    case 66:
      v4 = @"FileAlreadyExists";

      break;
    case 67:
      v4 = @"InvalidSourceMedia";

      break;
    case 68:
      v4 = @"DecodeFailed";

      break;
    case 69:
      v4 = @"ExportFailed";

      break;
    case 70:
      v4 = @"MediaServicesWereReset";

      break;
    case 71:
      v4 = @"SessionWasInterrupted";

      break;
    case 72:
      v4 = @"DeviceLockedForConfigurationByAnotherProcess";

      break;
    case 74:
      v4 = @"DeviceInUseByAnotherApplication";

      break;
    case 75:
      v4 = @"DeviceNotConnected";

      break;
    case 76:
      v4 = @"MaximumNumberOfSamplesForFileFormatReached";

      break;
    case 77:
      v4 = @"MediaDiscontinuity";

      break;
    case 78:
      v4 = @"MaximumFileSizeReached";

      break;
    case 79:
      v4 = @"MaximumDurationReached";

      break;
    case 80:
      v4 = @"MediaChanged";

      break;
    case 81:
      v4 = @"DeviceWasDisconnected";

      break;
    case 82:
      v4 = @"DiskFull";

      break;
    case 83:
      v4 = @"SessionConfigurationChanged";

      break;
    case 84:
      v4 = @"NoDataCaptured";

      break;
    case 85:
      v4 = @"DeviceAlreadyUsedByAnotherSession";

      break;
    case 86:
      v4 = @"SessionNotRunning";

      break;
    case 88:
      v4 = @"OutOfMemory";

      break;
    case 89:
      goto LABEL_252;
    default:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownAVError/code=%lld", a1];
LABEL_252:

      break;
  }

  return v4;
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v2 = MEMORY[0x1EEE70CF0](__x, __y);
  result.rem = v3;
  result.quot = v2;
  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FE8](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FF0](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}
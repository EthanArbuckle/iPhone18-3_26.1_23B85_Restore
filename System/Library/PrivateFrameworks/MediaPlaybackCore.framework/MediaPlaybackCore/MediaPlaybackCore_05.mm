uint64_t sub_1C5CEEE74()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_0();
  v1 = OUTLINED_FUNCTION_97_0();
  v2(v1);
  v3 = sub_1C6015650();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_147();
  v7(v6);
  if (v5)
  {
    return v3;
  }

  else
  {
    return 4271950;
  }
}

id sub_1C5CEEFC4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a1;
  v6 = OUTLINED_FUNCTION_312();
  v7 = a4(v6);
  v9 = v8;

  if (v9)
  {
    OUTLINED_FUNCTION_108();
    sub_1C6016900();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1C5CEF058(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    OUTLINED_FUNCTION_108();
    sub_1C6016900();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id (*sub_1C5CEF14C())()
{
  OUTLINED_FUNCTION_7_3();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1C5CFB36C;
}

id sub_1C5CEF1A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_1C5CF5C7C();
  if (!v2)
  {
    v2 = sub_1C5CF56E8();
    if (!v2)
    {
      v2 = sub_1C5CF5978();
    }
  }

  v3 = v2;

  return v3;
}

id sub_1C5CEF2D0(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

uint64_t sub_1C5CEF348()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_0();
  v1 = OUTLINED_FUNCTION_97_0();
  v2(v1);
  v3 = sub_1C60156D0();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_147();
  v7(v6);
  if (v5)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_1C5CEF4A4()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  sub_1C6015F60();
  OUTLINED_FUNCTION_25();
  v50 = v4;
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  v47 = v6 - v5;
  OUTLINED_FUNCTION_85();
  sub_1C5CFB228();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_53_0();
  v49 = v12;
  sub_1C5C67E04(0, v13, v14, MEMORY[0x1E69E6720]);
  v16 = OUTLINED_FUNCTION_13_3(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_102();
  v48 = v17 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v46 - v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_95_0();
  v23 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_146();
  v29 = v28 - v27;
  v30 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_0();
  v31 = v2 + v30;
  v32 = v11;
  v33(v29, v31, v23);
  sub_1C6015750();
  v34 = v23;
  v35 = v0;
  v36 = v51;
  (*(v25 + 8))(v29, v34);
  v37 = v50;
  (*(v50 + 104))(v22, *MEMORY[0x1E69C4D88], v36);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v36);
  v38 = *(v8 + 56);
  sub_1C5CFB2BC(v35, v11);
  sub_1C5CFB2BC(v22, v11 + v38);
  v39 = OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_73_0(v39, v40, v36);
  if (!v42)
  {
    v49 = v35;
    v41 = v48;
    sub_1C5CFB2BC(v32, v48);
    OUTLINED_FUNCTION_73_0(v32 + v38, 1, v36);
    if (!v42)
    {
      (*(v37 + 32))(v47, v32 + v38, v36);
      sub_1C5CFB4C4(&unk_1EC1A8EF8, MEMORY[0x1E69C4D90]);
      v46[3] = sub_1C60168F0();
      v43 = *(v37 + 8);
      v44 = OUTLINED_FUNCTION_64_3();
      v43(v44);
      sub_1C5CFB17C();
      OUTLINED_FUNCTION_134_0();
      v45 = OUTLINED_FUNCTION_108();
      v43(v45);
      OUTLINED_FUNCTION_134_0();
      goto LABEL_10;
    }

    sub_1C5CFB17C();
    sub_1C5CFB17C();
    (*(v37 + 8))(v41, v36);
LABEL_9:
    sub_1C5CFB31C();
    goto LABEL_10;
  }

  sub_1C5CFB17C();
  OUTLINED_FUNCTION_255();
  sub_1C5CFB17C();
  OUTLINED_FUNCTION_73_0(v11 + v38, 1, v36);
  if (!v42)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_53_0();
  sub_1C5CFB17C();
LABEL_10:
  OUTLINED_FUNCTION_237();
}

void sub_1C5CEFAF4()
{
  OUTLINED_FUNCTION_247();
  v2 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_102();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v13 = *(v4 + 16);
  v16 = v0;
  v13(v11, v0 + v12, v2);
  sub_1C60156A0();
  OUTLINED_FUNCTION_99_0();
  v14 = *(v4 + 8);
  v14(v11, v2);
  if (!v1)
  {
    v13(v8, v16 + v12, v2);
    sub_1C60156B0();
    OUTLINED_FUNCTION_99_0();
    v15 = OUTLINED_FUNCTION_64_3();
    (v14)(v15);
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CEFC60()
{
  OUTLINED_FUNCTION_68();
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_14_8();
  v4 = v3(v2);
  v5 = v0(v4);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_27_6();
  v9(v8);
  if ((v7 & 1) == 0)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    if (v10)
    {
      v11 = v10;
      sub_1C60179C0();
    }
  }

  return 0;
}

void (*sub_1C5CEFDC0())(uint64_t)
{
  OUTLINED_FUNCTION_68();
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_14_8();
  v5 = v4(v3);
  v0(v5);
  OUTLINED_FUNCTION_318();
  v6 = OUTLINED_FUNCTION_27_6();
  v7(v6);
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CEFFD0()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_14_8();
  v2(v1);
  sub_1C6015510();
  v3 = OUTLINED_FUNCTION_27_6();
  return v4(v3);
}

uint64_t sub_1C5CF00C0()
{
  OUTLINED_FUNCTION_68();
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_14_8();
  v4 = v3(v2);
  v5 = v0(v4);
  v6 = OUTLINED_FUNCTION_27_6();
  v7(v6);
  return v5 & 1;
}

uint64_t sub_1C5CF01B4()
{
  v2 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_10();
  v4 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_0();
  v5(v1, v0 + v4, v2);
  v6 = sub_1C6015670();
  v7 = OUTLINED_FUNCTION_27_6();
  v8(v7);
  result = 0;
  if (v6 != 4)
  {
    return sub_1C6015CE0();
  }

  return result;
}

CMTimeValue sub_1C5CF0338()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_29_3();
  v2(v1);
  sub_1C6015700();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_147();
  result = v6(v5);
  v8 = v4 * 1000.0;
  if (COERCE__INT64(fabs(v4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    CMTimeMake(&v9, v8, 1000);
    return v9.value;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C5CF0544()
{
  if (sub_1C6014E30())
  {
    return 1;
  }

  else
  {
    return sub_1C6014E40() & 1;
  }
}

void sub_1C5CF0594()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_8_7();
  sub_1C5C67E04(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v5);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  v7 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v13 = v12 - v11;
  v14 = sub_1C60161F0();
  OUTLINED_FUNCTION_25();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  (*(v9 + 16))(v13, v0 + v21, v7);
  sub_1C6015760();
  (*(v9 + 8))(v13, v7);
  v22 = OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_73_0(v22, v23, v14);
  if (v24)
  {
    OUTLINED_FUNCTION_8_7();
    sub_1C5CFB17C();
  }

  else
  {
    (*(v16 + 32))(v20, v1, v14);
    v25 = *(v16 + 104);
    v25(v2, *MEMORY[0x1E69C4E30], v14);
    v26 = OUTLINED_FUNCTION_11_0();
    v28 = sub_1C5D13630(v26, v27);
    v29 = *(v16 + 8);
    v29(v2, v14);
    if ((v28 & 1) == 0)
    {
      v25(v2, *MEMORY[0x1E69C4E38], v14);
      v31 = OUTLINED_FUNCTION_11_0();
      sub_1C5D13630(v31, v32);
      v29(v2, v14);
    }

    v30 = OUTLINED_FUNCTION_64_3();
    (v29)(v30);
  }

  OUTLINED_FUNCTION_237();
}

id sub_1C5CF08CC()
{
  v1 = [v0 audioAssetTypeSelector];
  v2 = [v1 preferredAudioAssetTypeForItem_];

  return v2;
}

id sub_1C5CF095C()
{
  v1 = [v0 preferredAudioAssetTypeSelection];
  v2 = [v1 type];

  return v2;
}

uint64_t sub_1C5CF0A30()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_29_3();
  v2(v1);
  v3 = sub_1C6015690();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  return v3;
}

id sub_1C5CF0B50()
{
  v1 = v0;
  sub_1C5C64D74(0, &unk_1EC1A8B50);
  v2 = [swift_getObjCClassFromMetadata() identityKind];
  v12 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E6970550]);
  v4 = sub_1C5E1ED90(0x4174736163646F50, 0xED00006D65744956, v2, sub_1C5CFB16C, v11);
  v10[2] = v1;
  v5 = objc_allocWithZone(MEMORY[0x1E6970740]);
  v6 = v4;
  v7 = sub_1C5CFA690(v6, sub_1C5CFB174, v10);
  v8 = [objc_opt_self() genericObjectWithModelObject_];

  return v8;
}

uint64_t sub_1C5CF0C84(void *a1, void *a2)
{
  v4 = sub_1C6015770();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C5CFB220;
  *(v12 + 24) = v11;
  v40 = sub_1C5CB5C60;
  v41 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1C5CE5F58;
  v39 = &block_descriptor_108;
  v13 = _Block_copy(&aBlock);
  v14 = a2;

  v34 = a1;
  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = v11;
  v16 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  swift_beginAccess();
  v17 = *(v5 + 16);
  v35 = v14;
  v17(v10, &v14[v16], v4);
  sub_1C60156A0();
  v19 = v18;
  v20 = *(v5 + 8);
  v20(v10, v4);
  if (v19)
  {
    v21 = sub_1C6016900();
  }

  else
  {
    v21 = 0;
  }

  v22 = v34;
  [v34 setVendorID_];

  v17(v8, &v35[v16], v4);
  sub_1C60156B0();
  v24 = v23;
  v20(v8, v4);
  if (v24)
  {
    v25 = sub_1C6016900();

    v40 = j_nullsub_1;
    v41 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1C5CFB534;
    v39 = &block_descriptor_114;
    v26 = _Block_copy(&aBlock);

    [v22 setLibraryIdentifiersWithDatabaseID:v25 block:v26];

    _Block_release(v26);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      goto LABEL_16;
    }
  }

  v27 = sub_1C60157B0();
  if (!v27)
  {
  }

  v28 = v27;
  v29 = [v27 ams_DSID];

  if (!v29)
  {
  }

  v30 = [v29 stringValue];

  if (!v30)
  {
    sub_1C6016940();
    v30 = sub_1C6016900();
  }

  v40 = j_nullsub_1;
  v41 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1C5CFB534;
  v39 = &block_descriptor_111;
  v31 = _Block_copy(&aBlock);

  [v22 setPersonalStoreIdentifiersWithPersonID:v30 block:v31];

  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_1C5CF1184(void *a1, id a2)
{
  v3 = [a2 storeItemInt64ID];

  return [a1 setAdamID_];
}

void sub_1C5CF11D8(void *a1, uint64_t a2)
{
  v82 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1C5C67E04(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - v5;
  sub_1C5C67E04(0, &qword_1EC1A8EC0, MEMORY[0x1E69C4E48], v3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v71 - v8;
  sub_1C5C67E04(0, &unk_1EC1A8EE8, MEMORY[0x1E69C4D90], v3);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v71 - v10;
  sub_1C5C67E04(0, &qword_1EC1A8FA0, MEMORY[0x1E69C4B38], v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v71 - v12;
  v14 = sub_1C6015770();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v79 = &v71 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v77 = &v71 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v75 = &v71 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v74 = &v71 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v71 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v71 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v71 - v33;
  objc_opt_self();
  v35 = a1;
  v81 = swift_dynamicCastObjCClass();
  if (v81)
  {
    v72 = v18;
    v73 = v6;
    v36 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
    v37 = v82;
    swift_beginAccess();
    v38 = *(v15 + 16);
    v80 = v36;
    v84 = v38;
    v38(v34, v37 + v36, v14);
    v71 = v35;
    sub_1C60156E0();
    v40 = v39;
    v83 = *(v15 + 8);
    v83(v34, v14);
    if (v40)
    {
      v41 = sub_1C6016900();
    }

    else
    {
      v41 = 0;
    }

    [v81 setFeedURL_];

    v84(v32, v82 + v80, v14);
    sub_1C60156F0();
    v43 = v42;
    v83(v32, v14);
    if (v43)
    {
      v44 = sub_1C6016900();
    }

    else
    {
      v44 = 0;
    }

    [v81 setAssetURL_];

    v45 = v82;
    v84(v29, v82 + v80, v14);
    sub_1C6015710();
    v83(v29, v14);
    v46 = sub_1C60154D0();
    if (__swift_getEnumTagSinglePayload(v13, 1, v46) == 1)
    {
      sub_1C5CFB17C();
      v47 = 0;
    }

    else
    {
      sub_1C60154C0();
      (*(*(v46 - 8) + 8))(v13, v46);
      v47 = sub_1C6016900();
      v45 = v82;
    }

    v48 = v76;
    v49 = v81;
    [v81 setItemType_];

    v50 = v80;
    v51 = v74;
    v84(v74, v45 + v80, v14);
    sub_1C6015750();
    v83(v51, v14);
    v52 = sub_1C6015F60();
    if (__swift_getEnumTagSinglePayload(v48, 1, v52) == 1)
    {
      sub_1C5CFB17C();
      v53 = 0;
    }

    else
    {
      sub_1C6015F50();
      (*(*(v52 - 8) + 8))(v48, v52);
      v53 = sub_1C6016900();
    }

    v54 = v78;
    [v49 setMediaType_];

    v55 = v75;
    v84(v75, v45 + v50, v14);
    sub_1C6015760();
    v83(v55, v14);
    v56 = sub_1C60161F0();
    if (__swift_getEnumTagSinglePayload(v54, 1, v56) == 1)
    {
      sub_1C5CFB17C();
      v57 = 0;
    }

    else
    {
      sub_1C60161E0();
      (*(*(v56 - 8) + 8))(v54, v56);
      v57 = sub_1C6016900();
    }

    [v49 setPriceType_];

    v58 = v77;
    v84(v77, v45 + v50, v14);
    v59 = sub_1C6015570();
    v61 = v60;
    v83(v58, v14);
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v85 = v59;
      sub_1C5CFB1CC();
      sub_1C6017380();
      v62 = sub_1C6016900();
    }

    [v49 setPodcastStoreID_];

    v63 = v79;
    v84(v79, v45 + v50, v14);
    sub_1C60155D0();
    v65 = v64;
    v83(v63, v14);
    if (v65)
    {
      v66 = sub_1C6016900();
    }

    else
    {
      v66 = 0;
    }

    [v49 setExternalContentID_];

    v67 = v72;
    v84(v72, v45 + v50, v14);
    v68 = v73;
    sub_1C6015730();
    v83(v67, v14);
    v69 = sub_1C6014F20();
    v70 = 0;
    if (__swift_getEnumTagSinglePayload(v68, 1, v69) != 1)
    {
      v70 = sub_1C6014EA0();
      (*(*(v69 - 8) + 8))(v68, v69);
    }

    [v49 setShareURL_];
  }
}

void sub_1C5CF1C14()
{
  OUTLINED_FUNCTION_247();
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_95_0();
  sub_1C5C67E04(0, &qword_1EC1A88E0, sub_1C5CE9A70, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = sub_1C6016940();
  *(inited + 40) = v5;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_60_1();
  v33 = v7;
  v7(v6);
  v8 = sub_1C60156B0();
  v10 = v9;
  v11 = *(v1 + 8);
  v12 = OUTLINED_FUNCTION_254();
  v11(v12);
  if (v10)
  {
    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v8 = 0;
    v13 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 72) = v13;
  *(inited + 80) = sub_1C6016940();
  *(inited + 88) = v14;
  v15 = OUTLINED_FUNCTION_60_1();
  v33(v15);
  v16 = sub_1C6015500();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_254();
  v11(v19);
  if (v18)
  {
    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v16 = 0;
    v20 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v16;
  *(inited + 104) = v18;
  *(inited + 120) = v20;
  OUTLINED_FUNCTION_0_14();
  sub_1C5CFB11C(0, v22, v21 + 8, v23);
  v24 = MEMORY[0x1E69E6158];
  v25 = sub_1C6016880();
  if ((sub_1C6015840() & 1) == 0)
  {
    v26 = sub_1C60157B0();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 ams_DSID];

      if (v28)
      {
        v29 = [v28 stringValue];

        sub_1C6016940();
        OUTLINED_FUNCTION_128_1();

        v30 = sub_1C6016940();
        v32 = v31;
        v34[0] = v28;
        v34[1] = inited;
        v34[3] = v24;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C5E36380(v34, v30, v32);
      }
    }
  }

  sub_1C5CEBC10(v25);

  sub_1C5E10480();
  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_237();
}

id sub_1C5CF1F98(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_1C6016840();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double sub_1C5CF2058()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_29_3();
  v2(v1);
  sub_1C6015700();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v4;
}

uint64_t sub_1C5CF2170()
{
  v1 = v0[OBJC_IVAR____MPCPodcastAVItem_isAssetAndPlayerItemLoaded];
  if (v1 == 2)
  {
    v3.receiver = v0;
    v3.super_class = type metadata accessor for PodcastAVItem();
    LOBYTE(v1) = objc_msgSendSuper2(&v3, sel_isAssetLoaded);
  }

  return v1 & 1;
}

id sub_1C5CF21C0()
{
  *&v0[OBJC_IVAR____MPCPodcastAVItem_loadAssetAndPlayerItemTask] = 0;

  v0[OBJC_IVAR____MPCPodcastAVItem_isAssetAndPlayerItemLoaded] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAVItem();
  return objc_msgSendSuper2(&v2, sel__clearAssetNow);
}

uint64_t sub_1C5CF2260()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_99();
  v0[2] = sub_1C6016C10();
  v0[3] = sub_1C6016C00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C5CF2304;

  return sub_1C5CEB2C8();
}

uint64_t sub_1C5CF2304()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 40) = v0;

  if (!v0)
  {
    *(v4 + 48) = v3;
  }

  sub_1C6016BA0();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_103();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5CF246C()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1C5CF24D0()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CF25B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5CF2654, v5, v4);
}

uint64_t sub_1C5CF2654()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C5CF2710;

  return sub_1C5CF2260();
}

uint64_t sub_1C5CF2710()
{
  OUTLINED_FUNCTION_9();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_8_0();
  v6 = v5;
  OUTLINED_FUNCTION_30();
  *v7 = v6;
  v9 = *(v8 + 48);
  v10 = *(v8 + 32);
  v11 = *v1;
  OUTLINED_FUNCTION_101();
  *v12 = v11;

  swift_unknownObjectRelease();

  if (v2)
  {
    if (v9)
    {
      v13 = *(v6 + 48);
      v14 = sub_1C6014D30();

      (v13)[2](v13, 0, v14);
      _Block_release(v13);
    }

    else
    {
    }
  }

  else if (v9)
  {
    v15 = *(v6 + 48);
    v16 = OUTLINED_FUNCTION_255();
    v17(v16);

    _Block_release(v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_172();

  return v18();
}

void sub_1C5CF28CC()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v2 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_24_5();
  sub_1C5C67E04(0, v9, v10, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v11);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62_2();
  v64.receiver = v0;
  v64.super_class = type metadata accessor for PodcastAVItem();
  objc_msgSendSuper2(&v64, sel__willBecomeActivePlayerItem);
  sub_1C5CF2F2C();
  sub_1C5CED1D0();
  if (v13)
  {
  }

  else
  {
    OUTLINED_FUNCTION_124();
    sub_1C6016C30();
    v14 = OUTLINED_FUNCTION_25_3();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_1C6016C10();
    v18 = v0;
    v19 = sub_1C6016C00();
    OUTLINED_FUNCTION_178();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    sub_1C5CDC270();
  }

  v22 = *&v1[OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession];
  if (v22)
  {
    swift_getObjectType();
    v23 = [swift_unknownObjectRetain() asset];
    v24 = sub_1C6015A80();

    if ((v24 & 1) != 0 || (v25 = [v22 keyResponseData]) == 0)
    {
      if (qword_1EC1A8EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v39 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v39, qword_1EC1BE388);
      v40 = v1;
      v41 = sub_1C60162B0();
      v42 = sub_1C6016F30();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_334();
        v63 = swift_slowAlloc();
        *v43 = 141558787;
        OUTLINED_FUNCTION_15_5();
        *(v43 + 4) = v44;
        *(v43 + 12) = 2081;
        v45 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
        v60 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
        OUTLINED_FUNCTION_31_2();
        swift_beginAccess();
        v61 = *(v4 + 16);
        v61(v8, &v40[v45], v2);
        sub_1C6015540();
        v46 = *(v4 + 8);
        v46(v8, v2);
        OUTLINED_FUNCTION_0_14();
        v59 = v47;
        sub_1C5CFB11C(0, v48, v49, v50);
        v51 = OUTLINED_FUNCTION_136_1();
        v53 = sub_1C5C6AB10(v51, v52, &v63);

        *(v43 + 14) = v53;
        *(v43 + 22) = 2160;
        OUTLINED_FUNCTION_15_5();
        *(v43 + 24) = v54;
        *(v43 + 32) = 2081;
        v61(v8, &v40[v60], v2);
        sub_1C60156D0();
        v46(v8, v2);
        sub_1C5CFB11C(0, &qword_1EC1A9480, MEMORY[0x1E69E6158], v59);
        v55 = OUTLINED_FUNCTION_136_1();
        sub_1C5C6AB10(v55, v56, &v63);
        OUTLINED_FUNCTION_141_0();
        *(v43 + 34) = v2;
        _os_log_impl(&dword_1C5C61000, v41, v42, "[PodcastAVItem/FairPlay]: Attempting to play FairPlay content with adamID=%{private,mask.hash}s, and title=%{private,mask.hash}s.", v43, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      else
      {
      }

      v57 = sub_1C5CEC43C();
      OUTLINED_FUNCTION_7_3();
      *(swift_allocObject() + 16) = v40;
      v58 = v40;
      OUTLINED_FUNCTION_60_1();
      sub_1C6015CB0();
    }

    else
    {

      if (qword_1EC1A8EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v26 = sub_1C60162D0();
      __swift_project_value_buffer(v26, qword_1EC1BE388);
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRetain();
      v27 = sub_1C60162B0();
      v28 = sub_1C6016F30();
      swift_unknownObjectRelease();
      if (OUTLINED_FUNCTION_137_0())
      {
        v29 = OUTLINED_FUNCTION_334();
        v62[0] = swift_slowAlloc();
        *v29 = 141558787;
        OUTLINED_FUNCTION_15_5();
        *(v29 + 4) = v30;
        *(v29 + 12) = 2081;
        v31 = [v22 keyResponseData];
        sub_1C5C67E04(0, &qword_1EC1AABA8, MEMORY[0x1E69C4D78], MEMORY[0x1E69E6720]);
        v32 = OUTLINED_FUNCTION_136_1();
        v34 = sub_1C5C6AB10(v32, v33, v62);

        *(v29 + 14) = v34;
        *(v29 + 22) = 2160;
        OUTLINED_FUNCTION_15_5();
        *(v29 + 24) = v35;
        *(v29 + 32) = 2081;
        swift_unknownObjectRetain();
        v36 = sub_1C60169A0();
        v38 = sub_1C5C6AB10(v36, v37, v62);

        *(v29 + 34) = v38;
        _os_log_impl(&dword_1C5C61000, v27, v28, "[PodcastAVItem/FairPlay] Existing key=%{private,mask.hash}s found in session=%{private,mask.hash}s, attempting renewal instead of starting a new key request.", v29, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      sub_1C5CEC43C();
      OUTLINED_FUNCTION_73();
      sub_1C6015CA0();
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5CF2F2C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1C5C67E04(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  sub_1C5C67E04(0, &qword_1EC1A8F40, MEMORY[0x1E69C4CD8], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1C6015BF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  if ((*(v1 + OBJC_IVAR____MPCPodcastAVItem_hasProcessedChapters) & 1) == 0)
  {
    if ([v1 isAssetLoaded])
    {
      v16 = [v1 asset];
      if (v16)
      {
        v36 = v16;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          v37 = 0;
          sub_1C5CFA9D4();
          if (sub_1C6015290())
          {
            sub_1C5CF86BC();
            if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
            {

              sub_1C5CFB17C();
            }

            else
            {
              v35 = v18;
              v26 = *(v10 + 32);
              v34 = v10 + 32;
              v26(v15, v8, v9);
              v27 = sub_1C6016C30();
              __swift_storeEnumTagSinglePayload(v5, 1, 1, v27);
              (*(v10 + 16))(v13, v15, v9);
              sub_1C6016C10();
              v28 = v1;
              v36 = v36;
              v29 = sub_1C6016C00();
              v30 = (*(v10 + 80) + 48) & ~*(v10 + 80);
              v31 = swift_allocObject();
              v32 = MEMORY[0x1E69E85E0];
              *(v31 + 2) = v29;
              *(v31 + 3) = v32;
              v33 = v35;
              *(v31 + 4) = v28;
              *(v31 + 5) = v33;
              v26(&v31[v30], v13, v9);
              sub_1C5CDC270();

              (*(v10 + 8))(v15, v9);
            }
          }

          else
          {
            v20 = sub_1C6016C30();
            __swift_storeEnumTagSinglePayload(v5, 1, 1, v20);
            sub_1C6016C10();
            v21 = v1;
            v22 = v36;
            v23 = sub_1C6016C00();
            v24 = swift_allocObject();
            v25 = MEMORY[0x1E69E85E0];
            v24[2] = v23;
            v24[3] = v25;
            v24[4] = v21;
            v24[5] = v18;
            sub_1C5CDC270();
          }
        }

        else
        {
          v19 = v36;
        }
      }
    }
  }
}

uint64_t sub_1C5CF33E0()
{
  v0[2] = sub_1C6016C10();
  v0[3] = sub_1C6016C00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C5CF348C;

  return sub_1C5CF35B0();
}

uint64_t sub_1C5CF348C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  sub_1C6016BA0();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_103();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5CF35B0()
{
  v1[10] = v0;
  v2 = sub_1C6015770();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1C6015790();
  v1[16] = swift_task_alloc();
  sub_1C6016C10();
  v1[17] = sub_1C6016C00();
  v4 = sub_1C6016BA0();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5CF36E8, v4, v3);
}

uint64_t sub_1C5CF36E8()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  sub_1C6015780();
  sub_1C6015970();
  swift_allocObject();
  v5 = sub_1C6015910();
  v6 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  v0[20] = v5;
  v0[21] = v6;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v7 = *(v3 + 16);
  v0[22] = v7;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v12 = (*MEMORY[0x1E69C4B28] + MEMORY[0x1E69C4B28]);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1C5CF3824;
  v10 = v0[14];
  v9 = v0[15];

  return v12(v9, v10);
}

uint64_t sub_1C5CF3824()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_101();
  *v2 = v0;
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[11];
  *v2 = *v1;

  v6 = *(v4 + 8);
  v0[25] = v6;
  v0[26] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  OUTLINED_FUNCTION_116_0();
  v8 = *(v7 + 152);
  v9 = v0[18];

  return MEMORY[0x1EEE6DFA0](sub_1C5CF399C, v9, v8);
}

uint64_t sub_1C5CF399C()
{
  v68 = v0;

  if (qword_1EC1A8EA8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = sub_1C60162D0();
  __swift_project_value_buffer(v6, qword_1EC1BE388);
  v1(v3, v2, v4);
  v7 = v5;
  v8 = sub_1C60162B0();
  v9 = sub_1C6016F30();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 200);
  if (v10)
  {
    log = v8;
    v12 = *(v0 + 176);
    v13 = *(v0 + 168);
    v65 = v9;
    v14 = *(v0 + 112);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v64 = *(v0 + 104);
    v17 = OUTLINED_FUNCTION_21();
    v67 = swift_slowAlloc();
    *v17 = 136315650;
    v12(v14, &v16[v13], v15);
    v18 = sub_1C6015720();
    LOBYTE(v12) = v19;
    v11(v14, v15);
    *(v0 + 40) = v18;
    *(v0 + 48) = v12 & 1;
    OUTLINED_FUNCTION_0_14();
    sub_1C5CFB11C(0, v20, v21, v22);
    v23 = sub_1C60169A0();
    v25 = sub_1C5C6AB10(v23, v24, &v67);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    *(v0 + 56) = sub_1C6015720();
    *(v0 + 64) = v26 & 1;
    v27 = sub_1C60169A0();
    v11(v64, v15);
    v28 = OUTLINED_FUNCTION_108();
    sub_1C5C6AB10(v28, v29, v30);
    OUTLINED_FUNCTION_73();

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    v31 = [v16 initialPlaybackStartTime];
    *(v0 + 72) = v31;
    OUTLINED_FUNCTION_6_8(v31, &qword_1EC1A89F8, &qword_1ED7DCCD0, 0x1E696AD98);
    v32 = sub_1C60169A0();
    v34 = sub_1C5C6AB10(v32, v33, &v67);

    *(v17 + 24) = v34;
    _os_log_impl(&dword_1C5C61000, log, v65, "Original asset start time. %s new time: %s and current startTime: %s", v17, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_108();
    (v11)(v35);
  }

  v36 = sub_1C6015720();
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

  v38 = [*(v0 + 80) initialPlaybackStartTime];
  if (v38)
  {
    v39 = v38;
    [v38 doubleValue];
    v41 = v40;

    v36 = v41;
LABEL_9:
    v42 = *&v36;
    goto LABEL_10;
  }

  v42 = 0.0;
LABEL_10:
  v43 = *(v0 + 80);
  v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v43 setInitialPlaybackStartTimeOverride_];

  v45 = v43;
  v46 = sub_1C60162B0();
  LOBYTE(v44) = sub_1C6016F30();

  if (os_log_type_enabled(v46, v44))
  {
    v47 = *(v0 + 80);
    v48 = OUTLINED_FUNCTION_112();
    v49 = OUTLINED_FUNCTION_110();
    *v48 = 138412290;
    v50 = [v47 initialPlaybackStartTimeOverride];
    *(v48 + 4) = v50;
    *v49 = v50;
    OUTLINED_FUNCTION_239();
    _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    sub_1C5CB5700(v49);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  v56 = *(v0 + 200);
  v57 = *(v0 + 176);
  v58 = *(v0 + 120);
  v59 = *(v0 + 112);
  v61 = *(v0 + 80);
  v60 = *(v0 + 88);

  v57(v59, v58, v60);
  sub_1C5CEC0F0(v59);
  [v61 invalidateContentItemUserInfo];

  v56(v58, v60);

  OUTLINED_FUNCTION_172();

  return v62();
}

void sub_1C5CF3E50(void *a1, void *a2)
{
  v4 = sub_1C6015770();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    if (qword_1EC1A8EA8 != -1)
    {
      swift_once();
    }

    v9 = sub_1C60162D0();
    __swift_project_value_buffer(v9, qword_1EC1BE388);
    v10 = a1;
    v11 = a2;
    v12 = sub_1C60162B0();
    v13 = sub_1C6016F20();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 141558531;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
      swift_beginAccess();
      (*(v5 + 16))(v7, &v11[v16], v4);
      v17 = sub_1C6015540();
      v19 = v18;
      (*(v5 + 8))(v7, v4);
      v26[4] = v17;
      v27 = v19 & 1;
      sub_1C5CFB11C(0, &unk_1EC1AAB98, MEMORY[0x1E69C4DE0], MEMORY[0x1E69E6720]);
      v20 = sub_1C60169A0();
      v22 = sub_1C5C6AB10(v20, v21, &v28);

      *(v14 + 14) = v22;
      *(v14 + 22) = 2080;
      swift_getErrorValue();
      v23 = sub_1C6017930();
      v25 = sub_1C5C6AB10(v23, v24, &v28);

      *(v14 + 24) = v25;
      _os_log_impl(&dword_1C5C61000, v12, v13, "[PodcastAVItem/FairPlay]: Unable to initiate FairPlay playback for content with adamID=%{private,mask.hash}s with error=%s.", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v15, -1, -1);
      MEMORY[0x1C6956920](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C5CF41D8()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PodcastAVItem();
  objc_msgSendSuper2(&v1, sel__willResignActivePlayerItem);
  if (*&v0[OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession])
  {
    swift_unknownObjectRetain();
    sub_1C5CEC43C();
    OUTLINED_FUNCTION_73();
    sub_1C6015C90();
    swift_unknownObjectRelease();
  }
}

void sub_1C5CF4298()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_99();
  v2 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  v25.receiver = v1;
  v25.super_class = type metadata accessor for PodcastAVItem();
  objc_msgSendSuper2(&v25, sel_pauseContentKeySession);
  v4 = *&v1[OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession];
  if (v4)
  {
    v5 = qword_1EC1A8EA8;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v6 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v6, qword_1EC1BE388);
    v7 = v0;
    v8 = sub_1C60162B0();
    v9 = sub_1C6016F30();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_68_0();
      v23 = OUTLINED_FUNCTION_21();
      v24 = v23;
      *v10 = 141558275;
      OUTLINED_FUNCTION_15_5();
      *(v10 + 4) = v11;
      *(v10 + 12) = 2081;
      OUTLINED_FUNCTION_31_2();
      swift_beginAccess();
      v12 = OUTLINED_FUNCTION_100_0();
      v13(v12);
      sub_1C6015540();
      v14 = OUTLINED_FUNCTION_108_0();
      v15(v14);
      OUTLINED_FUNCTION_0_14();
      sub_1C5CFB11C(0, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_136_1();
      sub_1C5C6AB10(v19, v20, &v24);
      OUTLINED_FUNCTION_141_0();
      *(v10 + 14) = v2;
      OUTLINED_FUNCTION_135_0(&dword_1C5C61000, v21, v22, "[PodcastAVItem/FairPlay]: Pausing automatic FairPlay key renewal for item=%{private,mask.hash}s.");
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    [v4 pauseAutomaticKeyRenewal];
    swift_unknownObjectRelease();
  }

  sub_1C5CEC70C();
  sub_1C5CD7EA4();

  OUTLINED_FUNCTION_237();
}

void sub_1C5CF4520()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_99();
  v2 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  v25.receiver = v1;
  v25.super_class = type metadata accessor for PodcastAVItem();
  objc_msgSendSuper2(&v25, sel_resumeContentKeySession);
  v4 = *&v1[OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession];
  if (v4)
  {
    v5 = qword_1EC1A8EA8;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v6 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v6, qword_1EC1BE388);
    v7 = v0;
    v8 = sub_1C60162B0();
    v9 = sub_1C6016F30();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_68_0();
      v23 = OUTLINED_FUNCTION_21();
      v24 = v23;
      *v10 = 141558275;
      OUTLINED_FUNCTION_15_5();
      *(v10 + 4) = v11;
      *(v10 + 12) = 2081;
      OUTLINED_FUNCTION_31_2();
      swift_beginAccess();
      v12 = OUTLINED_FUNCTION_100_0();
      v13(v12);
      sub_1C6015540();
      v14 = OUTLINED_FUNCTION_108_0();
      v15(v14);
      OUTLINED_FUNCTION_0_14();
      sub_1C5CFB11C(0, v16, v17, v18);
      v19 = sub_1C60169A0();
      sub_1C5C6AB10(v19, v20, &v24);
      OUTLINED_FUNCTION_141_0();
      *(v10 + 14) = v2;
      OUTLINED_FUNCTION_135_0(&dword_1C5C61000, v21, v22, "[PodcastAVItem/FairPlay]: Resuming automatic FairPlay key renewal for item=%{private,mask.hash}s.");
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    [v4 resumeAutomaticKeyRenewal];
    swift_unknownObjectRelease();
  }

  sub_1C5CEC70C();
  sub_1C5CD7410();

  OUTLINED_FUNCTION_237();
}

void sub_1C5CF48A4(uint64_t a1, double a2, float a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(type metadata accessor for PodcastsPlaybackRateHelper());
  v9 = PodcastsPlaybackRateHelper.init(currentRate:playerState:)(a1, a3);
  if (a1 != 4 && a1 != 5 && a3 != 0.0)
  {
    v13 = OBJC_IVAR____MPCPodcastAVItem_preferredPlaybackRate;
    if (*&v3[OBJC_IVAR____MPCPodcastAVItem_preferredPlaybackRate] != a3 && PodcastsPlaybackRateHelper.supportsRate(_:)(a3))
    {
      if (qword_1EC1A8EB8 != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      v14 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v14, qword_1EC1BE3A0);
      v15 = v3;
      v16 = sub_1C60162B0();
      sub_1C6016F30();

      if (OUTLINED_FUNCTION_137_0())
      {
        v17 = OUTLINED_FUNCTION_68_0();
        *v17 = 134218240;
        *(v17 + 4) = *&v4[v13];
        *(v17 + 12) = 2048;
        *(v17 + 14) = a3;
        OUTLINED_FUNCTION_94();
        _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
        OUTLINED_FUNCTION_6();
      }

      v23.value._countAndFlagsBits = sub_1C5D29660(v15);
      PodcastsPlaybackRateHelper.save(rate:uuid:)(a3, v23);

      *&v4[v13] = a3;
    }
  }

  LODWORD(v10) = *&v4[OBJC_IVAR____MPCPodcastAVItem_preferredPlaybackRate];
  [v4 setDefaultPlaybackRate_];
  v24.receiver = v4;
  v24.super_class = type metadata accessor for PodcastAVItem();
  *&v12 = a3;
  objc_msgSendSuper2(&v24, sel__updateDurationSnapshotWithElapsedTime_playbackRate_, a2, v12);
  sub_1C5CF4B18();
}

void sub_1C5CF4B18()
{
  OUTLINED_FUNCTION_131();
  v84 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_11_4();
  v4 = MEMORY[0x1E69E6720];
  sub_1C5C67E04(0, v5, v6, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v7);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_2();
  v9 = type metadata accessor for PodcastChapter();
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_10_6();
  sub_1C5C67E04(0, v14, v15, v4);
  OUTLINED_FUNCTION_13_3(v16);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v79 - v18;
  OUTLINED_FUNCTION_85();
  v19 = sub_1C6016120();
  OUTLINED_FUNCTION_25();
  v81 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_102();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v79 - v26;
  OUTLINED_FUNCTION_9_8();
  sub_1C5C67E04(0, v28, v29, v4);
  OUTLINED_FUNCTION_13_3(v30);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v79 - v32);
  v34 = sub_1C60161C0();
  OUTLINED_FUNCTION_25();
  v83 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_146();
  v39 = (v38 - v37);
  LOBYTE(v85) = 0;
  sub_1C5CFA9D4();
  if ((sub_1C6015290() & 1) == 0)
  {
    v42 = v84;
    sub_1C5CF5380(v1, v3);
    v43 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_73_0(v43, v44, v9);
    if (!v41)
    {
      OUTLINED_FUNCTION_52_2();
      v53 = OUTLINED_FUNCTION_86();
      sub_1C5CFACF4(v53, v54);
      v48 = v13[1];
      v80 = *v13;
      v55 = v13[2];
      v56 = v13[3];
      v57 = *(v13 + *(v9 + 28) + 8);

      v58 = OUTLINED_FUNCTION_255();
      sub_1C5CFAF68(v58, v59);
      OUTLINED_FUNCTION_7_8();
      sub_1C5CFB31C();
      if (v57 >> 60 == 15)
      {
        v62 = 0;
      }

      else
      {
        v60 = OUTLINED_FUNCTION_255();
        sub_1C5CB6098(v60, v61);
        v62 = 1;
      }

      v40 = v42;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_11_4();
LABEL_8:
    sub_1C5CFB17C();
LABEL_35:
    OUTLINED_FUNCTION_130();
    return;
  }

  v40 = v84;
  sub_1C5CF5214(v33, v3);
  OUTLINED_FUNCTION_73_0(v33, 1, v34);
  if (v41)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_8;
  }

  v45 = OUTLINED_FUNCTION_105_0();
  v46(v45);
  v80 = sub_1C6016140();
  v48 = v47;
  sub_1C6016150();
  v49 = v81;
  (*(v81 + 104))(v24, *MEMORY[0x1E69C4DE8], v19);
  v50 = sub_1C5D135E8(v27, v24);
  v51 = *(v49 + 8);
  v51(v24, v19);
  v51(v27, v19);
  if (v50)
  {
    v55 = sub_1C6016160();
    v56 = v52;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v63 = v82;
  v64 = v39;
  sub_1C6016180();
  (*(v83 + 8))(v39, v34);
  v65 = sub_1C6016170();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v65);
  v62 = EnumTagSinglePayload != 1;
  OUTLINED_FUNCTION_10_6();
  sub_1C5CFB17C();
  if (!v56)
  {
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_24:
  v71 = [v40 contentItem];
  if (!v71)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v72 = v71;
  v85 = v55;
  v86 = v56;
  MEMORY[0x1C69534E0](0x209480E220, 0xA500000000000000);
  v73 = [v40 mainTitle];
  sub_1C6016940();

  v64 = &v85;
  v74 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x1C69534E0](v74);

  sub_1C5CD4190(v85, v86, v72, &selRef_setTitle_);

  if (!v62)
  {
LABEL_16:
    if ([v40 contentItem])
    {
      OUTLINED_FUNCTION_312();

      v67 = [v40 artworkCatalogForPlaybackTime_];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 visualIdenticalityIdentifier];

        if (v69)
        {
          if ([v69 respondsToSelector_])
          {
            v70 = [v69 stringRepresentation];
            swift_unknownObjectRelease();
            if (v70)
            {
              sub_1C6016940();
              OUTLINED_FUNCTION_128_1();

              goto LABEL_31;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      sub_1C5D2966C(v40);
      if (!v78)
      {
        v76 = 0;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_128_1();
LABEL_31:
      OUTLINED_FUNCTION_252();
      v76 = sub_1C6016900();

LABEL_33:
      [v64 setArtworkIdentifier_];

      v77 = 0;
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_26:
  v75 = [v40 contentItem];
  if (v75)
  {
    v76 = v75;
    sub_1C5CD4190(v80, v48, v75, &selRef_setArtworkIdentifier_);
    v77 = 1;
LABEL_34:

    *(v40 + OBJC_IVAR____MPCPodcastAVItem_shouldShowChapterArtwork) = v77;
    [v40 invalidateContentItemUserInfo];
    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_1C5CF5214@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v5 = *(*(v2 + OBJC_IVAR____MPCPodcastAVItem_chapterModels) + 16);

  for (i = v5 - 1; i != -1; --i)
  {
    sub_1C60161C0();
    v6 = sub_1C60161A0();
    if ((v8 & 1) == 0)
    {
      v9 = *&v6;
      v6 = sub_1C60161B0();
      if (v10 <= a2)
      {
        v6 = sub_1C60161B0();
        if (v11 + v9 > a2)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1C5D10060(sub_1C5CFAF48, v12, v13, a1);
}

uint64_t sub_1C5CF5380@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for PodcastChapter();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(v2 + OBJC_IVAR____MPCPodcastAVItem_podcastChapters);
  v12 = *(v11 + 16);

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v14)
    {

      sub_1C5D05168(v15, a1);
    }

    if (v14 >= *(v11 + 16))
    {
      break;
    }

    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = *(v6 + 72);
    sub_1C5CFAC38(v11 + v16 + v17 * v14, v10);
    v18 = *&v10[*(v5 + 36)];
    if (v18 <= a2 && v18 + *&v10[*(v5 + 32)] > a2)
    {
      sub_1C5CFACF4(v10, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v15;
      v23 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C5D0F120();
        v15 = v25;
      }

      v20 = *(v15 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v15 + 24) >> 1)
      {
        v22 = v20 + 1;
        sub_1C5D0F120();
        v21 = v22;
        v15 = v25;
      }

      ++v14;
      *(v15 + 16) = v21;
      result = sub_1C5CFACF4(v24, v15 + v16 + v20 * v17);
      a1 = v23;
    }

    else
    {
      result = sub_1C5CFB31C();
      ++v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5CF55EC()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_29_3();
  v2(v1);
  v3 = sub_1C60154E0();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  if (v3)
  {
    return [objc_opt_self() isExplicitContentAllowed];
  }

  else
  {
    return 1;
  }
}

id sub_1C5CF56E8()
{
  v1 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = OUTLINED_FUNCTION_97_0();
  v5(v6);
  v7 = type metadata accessor for PodcastsArtworkToken(0);
  v8 = objc_allocWithZone(v7);
  (v5)(&v8[OBJC_IVAR____TtC17MediaPlaybackCore20PodcastsArtworkToken_mediaItem], v0, v1);
  v30.receiver = v8;
  v30.super_class = v7;
  v9 = objc_msgSendSuper2(&v30, sel_init);
  v10 = OUTLINED_FUNCTION_147();
  v11(v10);
  v12 = qword_1EC1A9008;
  v13 = v9;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69704A0]) initWithToken:v13 dataSource:qword_1EC1BE3C0];

  if (sub_1C5D027BC(v14))
  {
    if (qword_1EC1A8EB8 != -1)
    {
      OUTLINED_FUNCTION_12_5();
    }

    v15 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v15, qword_1EC1BE3A0);
    v16 = v13;
    v17 = sub_1C60162B0();
    v18 = sub_1C6016F30();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_68_0();
      v20 = OUTLINED_FUNCTION_110();
      *v19 = 141558275;
      OUTLINED_FUNCTION_15_5();
      *(v19 + 4) = v21;
      *(v19 + 12) = 2113;
      *(v19 + 14) = v16;
      *v22 = v16;
      v23 = v16;
      OUTLINED_FUNCTION_239();
      _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
      sub_1C5CB5700(v20);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_35_1();
      v16 = v17;
      v17 = v23;
    }
  }

  else
  {

    return 0;
  }

  return v14;
}

id sub_1C5CF5978()
{
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_10();
  v1 = [objc_opt_self() sharedStoreArtworkDataSource];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_14_8();
  v4(v3);
  v5 = sub_1C6015680();
  v6 = OUTLINED_FUNCTION_27_6();
  v7(v6);
  if (!v5)
  {

    return v5;
  }

  sub_1C5C64D74(0, &qword_1EC1A8BC0);
  OUTLINED_FUNCTION_126();
  sub_1C5E10480();
  OUTLINED_FUNCTION_141_0();
  v8 = sub_1C5CF5BF4();
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [objc_opt_self() tokenWithImageArtworkInfo_];
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v11 = sub_1C60162D0();
  __swift_project_value_buffer(v11, qword_1EC1BE3A0);
  v12 = v10;
  v13 = sub_1C60162B0();
  sub_1C6016F30();

  if (OUTLINED_FUNCTION_137_0())
  {
    v14 = OUTLINED_FUNCTION_68_0();
    v15 = OUTLINED_FUNCTION_110();
    *v14 = 141558275;
    OUTLINED_FUNCTION_15_5();
    *(v14 + 4) = v16;
    *(v14 + 12) = 2113;
    *(v14 + 14) = v12;
    *v17 = v12;
    v18 = v12;
    OUTLINED_FUNCTION_94();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_1C5CB5700(v15);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_6();
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69704A0]) initWithToken:v12 dataSource:v2];
  return v5;
}

id sub_1C5CF5BF4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C6016840();

  v2 = [v0 initWithArtworkResponseDictionary_];

  return v2;
}

void sub_1C5CF5C7C()
{
  OUTLINED_FUNCTION_131();
  v3 = v2;
  OUTLINED_FUNCTION_11_4();
  v4 = MEMORY[0x1E69E6720];
  sub_1C5C67E04(0, v5, v6, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v7);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v167 - v9;
  v11 = type metadata accessor for PodcastChapter();
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_2_11();
  sub_1C5C67E04(0, v16, v17, v4);
  OUTLINED_FUNCTION_13_3(v18);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v19);
  v168 = &v167 - v20;
  OUTLINED_FUNCTION_85();
  sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v170 = v22;
  v171 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x1EEE9AC00](v23);
  v169 = &v167 - v24;
  OUTLINED_FUNCTION_85();
  v25 = sub_1C6015A40();
  v26 = OUTLINED_FUNCTION_13_3(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_146();
  v172 = v28 - v27;
  OUTLINED_FUNCTION_10_6();
  sub_1C5C67E04(0, v29, v30, v4);
  OUTLINED_FUNCTION_13_3(v31);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v167 - v33;
  v176 = sub_1C6016170();
  OUTLINED_FUNCTION_25();
  v173 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_102();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v174 = &v167 - v41;
  OUTLINED_FUNCTION_9_8();
  sub_1C5C67E04(0, v42, v43, v4);
  OUTLINED_FUNCTION_13_3(v44);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_49_2();
  v46 = sub_1C60161C0();
  OUTLINED_FUNCTION_25();
  v177 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_146();
  v175 = v50 - v49;
  LOBYTE(v178) = 0;
  sub_1C5CFA9D4();
  if ((sub_1C6015290() & 1) == 0)
  {
    sub_1C5CF5380(v10, v3);
    OUTLINED_FUNCTION_73_0(v10, 1, v11);
    if (v56)
    {
      OUTLINED_FUNCTION_11_4();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_52_2();
    sub_1C5CFACF4(v10, v15);
    if (*(v15 + *(v11 + 28) + 8) >> 60 != 15)
    {
      sub_1C5C64D74(0, &qword_1EC1AAB88);
      v91 = OUTLINED_FUNCTION_147();
      sub_1C5CFAC9C(v91, v92);
      v93 = OUTLINED_FUNCTION_147();
      sub_1C5CFAC9C(v93, v94);
      v95 = OUTLINED_FUNCTION_147();
      v97 = sub_1C5D02674(v95, v96);
      if (!v97)
      {
        OUTLINED_FUNCTION_7_8();
        sub_1C5CFB31C();
        v132 = OUTLINED_FUNCTION_147();
        sub_1C5CB6098(v132, v133);
        goto LABEL_12;
      }

      v98 = v97;
      [objc_opt_self() staticArtworkCatalogWithImage_];
      if (qword_1EC1A8EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v99 = sub_1C60162D0();
      __swift_project_value_buffer(v99, qword_1EC1BE388);
      v100 = v98;
      v101 = sub_1C60162B0();
      v102 = sub_1C6016F30();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = OUTLINED_FUNCTION_334();
        v177 = OUTLINED_FUNCTION_21();
        v178 = v177;
        *v103 = 141558787;
        OUTLINED_FUNCTION_15_5();
        *(v103 + 4) = v104;
        *(v103 + 12) = 2081;
        v105 = v100;
        LODWORD(v176) = v102;
        v106 = v105;
        v107 = [v105 description];
        sub_1C6016940();

        v108 = OUTLINED_FUNCTION_56_0();
        v111 = sub_1C5C6AB10(v108, v109, v110);

        *(v103 + 14) = v111;
        *(v103 + 22) = 2160;
        OUTLINED_FUNCTION_15_5();
        *(v103 + 24) = v112;
        *(v103 + 32) = 2049;
        *(v103 + 34) = v3;
        OUTLINED_FUNCTION_239();
        _os_log_impl(v113, v114, v115, v116, v117, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v177);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_35_1();

        v118 = OUTLINED_FUNCTION_147();
        sub_1C5CB6098(v118, v119);
      }

      else
      {
        v134 = OUTLINED_FUNCTION_147();
        sub_1C5CB6098(v134, v135);
      }
    }

    OUTLINED_FUNCTION_7_8();
    goto LABEL_34;
  }

  sub_1C5CF5214(v0, v3);
  v51 = OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_73_0(v51, v52, v46);
  if (v56)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_11;
  }

  v53 = v177;
  v54 = v175;
  (*(v177 + 32))(v175, v0, v46);
  sub_1C6016180();
  v55 = v176;
  OUTLINED_FUNCTION_73_0(v34, 1, v176);
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_81_0();
    v58(v57);
    OUTLINED_FUNCTION_10_6();
    goto LABEL_11;
  }

  v60 = v173;
  v59 = v174;
  (*(v173 + 32))(v174, v34, v55);
  (*(v60 + 16))(v39, v59, v55);
  v61 = OUTLINED_FUNCTION_102_0();
  v63 = v62(v61);
  if (v63 != *MEMORY[0x1E69C4E00])
  {
    if (v63 != *MEMORY[0x1E69C4E08])
    {
      v136 = *(v60 + 8);
      v136(v174, v55);
      v137 = OUTLINED_FUNCTION_81_0();
      v138(v137);
      v139 = OUTLINED_FUNCTION_102_0();
      (v136)(v139);
      goto LABEL_12;
    }

    v120 = OUTLINED_FUNCTION_102_0();
    v121(v120);
    sub_1C5CFACF4(v39, v172);
    v122 = [objc_opt_self() sharedStoreArtworkDataSource];
    if (v122)
    {
      v123 = v122;
      sub_1C6015C40();
      v124 = v168;
      OUTLINED_FUNCTION_31_2();
      sub_1C6015C30();
      v125 = OUTLINED_FUNCTION_56_1();
      v126 = v171;
      OUTLINED_FUNCTION_73_0(v125, v127, v171);
      if (!v56)
      {
        (*(v170 + 32))(v169, v124, v126);
        sub_1C5C64D74(0, &qword_1EC1A8BC0);
        v150 = OUTLINED_FUNCTION_80();
        v151(v150);
        v152 = sub_1C5CF69E8(v1);
        v153 = [objc_opt_self() tokenWithImageArtworkInfo_];

        if (qword_1EC1A8EB8 != -1)
        {
          OUTLINED_FUNCTION_12_5();
        }

        v154 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v154, qword_1EC1BE3A0);
        v155 = v153;
        v156 = sub_1C60162B0();
        v157 = sub_1C6016F30();

        if (os_log_type_enabled(v156, v157))
        {
          v158 = v46;
          v159 = OUTLINED_FUNCTION_334();
          v160 = OUTLINED_FUNCTION_110();
          *v159 = 141558787;
          OUTLINED_FUNCTION_15_5();
          *(v159 + 4) = v161;
          *(v159 + 12) = 2113;
          *(v159 + 14) = v155;
          *v162 = v155;
          *(v159 + 22) = 2160;
          *(v159 + 24) = v161;
          *(v159 + 32) = 2049;
          *(v159 + 34) = v3;
          v163 = v155;
          _os_log_impl(&dword_1C5C61000, v156, v157, "Returning store backed chapter artwork with token %{private,mask.hash}@ for elapsed time: %{private,mask.hash}f.", v159, 0x2Au);
          sub_1C5CB5700(v160);
          OUTLINED_FUNCTION_35_1();
          v46 = v158;
          v126 = v171;
          OUTLINED_FUNCTION_4();
        }

        v164 = objc_allocWithZone(MEMORY[0x1E69704A0]);
        v165 = v155;
        [v164 initWithToken:v165 dataSource:v123];

        (*(v170 + 8))(v169, v126);
        (*(v60 + 8))(v174, v176);
        OUTLINED_FUNCTION_127_0();
        v166(v175, v46);
        OUTLINED_FUNCTION_19_6();
        goto LABEL_34;
      }

      v128 = OUTLINED_FUNCTION_91_0();
      v129(v128);
      OUTLINED_FUNCTION_127_0();
      v130 = OUTLINED_FUNCTION_81_0();
      v131(v130);
      OUTLINED_FUNCTION_19_6();
      sub_1C5CFB31C();
      OUTLINED_FUNCTION_2_11();
LABEL_11:
      sub_1C5CFB17C();
      goto LABEL_12;
    }

    v146 = OUTLINED_FUNCTION_91_0();
    v147(v146);
    OUTLINED_FUNCTION_127_0();
    v148 = OUTLINED_FUNCTION_81_0();
    v149(v148);
    OUTLINED_FUNCTION_19_6();
LABEL_34:
    sub_1C5CFB31C();
    goto LABEL_12;
  }

  v172 = v46;
  v64 = OUTLINED_FUNCTION_102_0();
  v65(v64);
  sub_1C5C64D74(0, &qword_1EC1AAB88);
  v66 = OUTLINED_FUNCTION_64_3();
  sub_1C5CFAC9C(v66, v67);
  v68 = OUTLINED_FUNCTION_64_3();
  v70 = sub_1C5D02674(v68, v69);
  if (v70)
  {
    v71 = v70;
    [objc_opt_self() staticArtworkCatalogWithImage_];
    if (qword_1EC1A8EA8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v72 = sub_1C60162D0();
    __swift_project_value_buffer(v72, qword_1EC1BE388);
    v73 = v71;
    v74 = sub_1C60162B0();
    sub_1C6016F30();

    if (OUTLINED_FUNCTION_137_0())
    {
      v75 = OUTLINED_FUNCTION_334();
      v171 = OUTLINED_FUNCTION_21();
      v178 = v171;
      OUTLINED_FUNCTION_14_1(7.2227e-34);
      v76 = v73;
      v77 = [v76 description];
      v78 = sub_1C6016940();
      v80 = v79;

      v81 = sub_1C5C6AB10(v78, v80, &v178);

      *(v75 + 14) = v81;
      *(v75 + 22) = 2160;
      OUTLINED_FUNCTION_15_5();
      *(v75 + 24) = v82;
      *(v75 + 32) = 2049;
      *(v75 + 34) = v3;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v83, v84, v85, v86, v87, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v171);
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_6();

      v88 = OUTLINED_FUNCTION_64_3();
      sub_1C5C8F8BC(v88, v89);

      (*(v173 + 8))(v174, v176);
      OUTLINED_FUNCTION_127_0();
      v90(v175, v172);
    }

    else
    {

      v144 = OUTLINED_FUNCTION_64_3();
      sub_1C5C8F8BC(v144, v145);

      (*(v173 + 8))(v174, v176);
      (*(v53 + 8))(v175, v172);
    }
  }

  else
  {
    v140 = OUTLINED_FUNCTION_64_3();
    sub_1C5C8F8BC(v140, v141);
    v142 = OUTLINED_FUNCTION_91_0();
    v143(v142);
    (*(v53 + 8))(v54, v172);
  }

LABEL_12:
  OUTLINED_FUNCTION_130();
}

id sub_1C5CF69E8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C6014EA0();
  v4 = [v2 initWithArtworkURL_];

  v5 = sub_1C6014F20();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1C5CF6B2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAVItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PodcastAVItem()
{
  result = qword_1ED7DF648;
  if (!qword_1ED7DF648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5CF6D24()
{
  result = sub_1C6015770();
  if (v1 <= 0x3F)
  {
    result = sub_1C6014F20();
    if (v2 <= 0x3F)
    {
      result = sub_1C60158F0();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1C5CF6E94()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v4 = v3;
  sub_1C6015D90();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  v11 = sub_1C6015DB0();
  OUTLINED_FUNCTION_25();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v57 - v16;
  if ([v2 storeItemInt64ID] < 1)
  {

    sub_1C6015DD0();
    OUTLINED_FUNCTION_25_3();
    OUTLINED_FUNCTION_237();

    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  }

  else
  {
    v57[0] = v10;
    v59 = v0;
    v62 = v4;
    v18 = *MEMORY[0x1E69C4D50];
    v58 = v13;
    v19 = *(v13 + 104);
    v60 = v17;
    v61 = v11;
    v19(v17, v18, v11);
    sub_1C5C67E04(0, &qword_1EC1A8908, sub_1C5CFB430, MEMORY[0x1E69E6F90]);
    OUTLINED_FUNCTION_107();
    sub_1C5CFB430();
    v21 = v20 - 8;
    v22 = *(*(v20 - 8) + 72);
    v23 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C6035C00;
    v25 = v24 + v23;
    v26 = (v25 + *(v21 + 56));
    v57[1] = v6;
    v27 = *(v6 + 104);
    v28 = OUTLINED_FUNCTION_60_1();
    (v27)(v28);
    v63 = [v2 storeItemInt64ID];
    *v26 = sub_1C60177D0();
    v26[1] = v29;
    v30 = (v25 + v22 + *(v21 + 56));
    v27();
    v31 = v2;
    *v30 = sub_1C5D2CF90(v31);
    v30[1] = v32;
    OUTLINED_FUNCTION_0_14();
    sub_1C5CFB11C(0, v33, v34, v35);
    sub_1C5CFB4C4(&unk_1EC1A8F20, MEMORY[0x1E69C4D38]);
    OUTLINED_FUNCTION_81_0();
    v36 = sub_1C6016880();
    v37 = sub_1C60157B0();
    if (v37)
    {
      v38 = v37;
      v39 = [v37 ams_DSID];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 stringValue];

        sub_1C6016940();
        v42 = OUTLINED_FUNCTION_60_1();
        (v27)(v42);
        swift_isUniquelyReferenced_nonNull_native();
        v63 = v36;
        sub_1C5E365A0();

        v43 = OUTLINED_FUNCTION_254();
        v44(v43);
      }

      else
      {
      }
    }

    v51 = v59;
    v50 = v60;
    v52 = v58;
    OUTLINED_FUNCTION_54_0();
    v53 = v61;
    v54(v51, v50, v61);
    v55 = v62;
    sub_1C6015DC0();

    (*(v52 + 8))(v50, v53);
    v56 = sub_1C6015DD0();
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
    OUTLINED_FUNCTION_237();
  }
}

uint64_t sub_1C5CF7330()
{
  OUTLINED_FUNCTION_24_5();
  sub_1C5C67E04(0, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v3);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62_2();
  sub_1C6016C30();
  v5 = OUTLINED_FUNCTION_25_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1C6016C10();
  v9 = v0;
  v10 = sub_1C6016C00();
  OUTLINED_FUNCTION_178();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_1C5E1161C();
}

uint64_t sub_1C5CF7420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1C6016C10();
  v4[4] = sub_1C6016C00();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1C5CF74D0;

  return sub_1C5CEB2C8();
}

uint64_t sub_1C5CF74D0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v7 + 48) = v6;
  *(v7 + 56) = v0;

  v9 = sub_1C6016BA0();
  if (v0)
  {
    v10 = sub_1C5CF7690;
  }

  else
  {
    v10 = sub_1C5CF761C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1C5CF761C()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 48);

  if (v1)
  {

    sub_1C5CF2F2C();
  }

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5CF7690()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CF76EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v5 = sub_1C6015770();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_1C6016C10();
  v4[13] = sub_1C6016C00();
  v7 = sub_1C6016BA0();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5CF77EC, v7, v6);
}

uint64_t sub_1C5CF77EC()
{
  v21 = v0;
  if (qword_1EC1A8EA8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v1 = v0[8];
  v2 = sub_1C60162D0();
  v0[16] = OUTLINED_FUNCTION_144(v2, qword_1EC1BE388);
  v3 = v1;
  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_68_0();
    v9 = OUTLINED_FUNCTION_21();
    v20 = v9;
    *v8 = 136380931;
    v10 = [v7 mainTitle];
    v11 = sub_1C6016940();
    v13 = v12;

    v14 = sub_1C5C6AB10(v11, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2050;
    v15 = [v7 storeItemInt64ID];

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1C5C61000, v4, v5, "Loading asset for item: %{private}s, adamid: %{public}lld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
  }

  else
  {
  }

  if (sub_1C5CF8584())
  {
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_1C5CF7A54;

    return sub_1C5CF35B0();
  }

  else
  {
    sub_1C5CEC1B8();
    v0[18] = v18;
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_48_1(v19);

    return sub_1C5CE6618();
  }
}

uint64_t sub_1C5CF7A54()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_125_0();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;

  OUTLINED_FUNCTION_116_0();
  v5 = *(v4 + 120);
  v6 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C5CF7B60, v6, v5);
}

uint64_t sub_1C5CF7B60()
{
  OUTLINED_FUNCTION_13();
  sub_1C5D00808();
  v1 = OUTLINED_FUNCTION_252();
  sub_1C5D0059C(v1, v2);

  sub_1C5CEC1B8();
  *(v0 + 144) = v3;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_48_1(v4);

  return sub_1C5CE6618();
}

uint64_t sub_1C5CF7C0C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 160) = v6;

  OUTLINED_FUNCTION_116_0();
  v9 = *(v8 + 120);
  v10 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C5CF7D40, v10, v9);
}

void sub_1C5CF7D40()
{
  v81 = v0;

  sub_1C5CF0594();
  if (v1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    v79 = *(v4 + 16);
    v79(v2, &v5[v6], v3);
    v7 = sub_1C6015540();
    v9 = v8;
    (*(v4 + 8))(v2, v3);
    v10 = v5;
    v11 = sub_1C60162B0();
    v12 = *(v0 + 64);
    if (v9)
    {
      v13 = sub_1C6016F20();

      if (OUTLINED_FUNCTION_29_0())
      {
        v14 = *(v0 + 88);
        v15 = *(v0 + 72);
        v16 = OUTLINED_FUNCTION_68_0();
        v17 = OUTLINED_FUNCTION_21();
        v80[0] = v17;
        *v16 = 141558275;
        OUTLINED_FUNCTION_15_5();
        *(v16 + 4) = v18;
        *(v16 + 12) = 2081;
        v79(v14, &v5[v6], v15);
        OUTLINED_FUNCTION_56_0();
        v19 = sub_1C60169A0();
        v21 = sub_1C5C6AB10(v19, v20, v80);

        *(v16 + 14) = v21;
        _os_log_impl(&dword_1C5C61000, v11, v13, "[PodcastAVItem/FairPlay]: No AdamID available, unable to initiate FairPlay playback for item=%{private,mask.hash}s.", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        OUTLINED_FUNCTION_35_1();
        OUTLINED_FUNCTION_4();
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *(v0 + 40) = 6;
      sub_1C6016880();
      _s3__C4CodeOMa_3();
      OUTLINED_FUNCTION_23_4();
      sub_1C5CFB4C4(v22, v23);
      OUTLINED_FUNCTION_147();
      sub_1C6017280();
      OUTLINED_FUNCTION_73();

      swift_willThrow();
LABEL_18:

      OUTLINED_FUNCTION_172();
      goto LABEL_19;
    }

    v41 = sub_1C6016F30();

    v78 = v6;
    if (os_log_type_enabled(v11, v41))
    {
      v42 = OUTLINED_FUNCTION_112();
      v43 = OUTLINED_FUNCTION_21();
      v80[0] = v43;
      *v42 = 136380675;
      sub_1C6014F20();
      OUTLINED_FUNCTION_21_6();
      sub_1C5CFB4C4(v44, v45);
      v46 = sub_1C60177D0();
      v48 = sub_1C5C6AB10(v46, v47, v80);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_1C5C61000, v11, v41, "Asset is FairPlay content, using url: %{private}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_6();
    }

    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v49 = *(v0 + 160);
    v50 = *(v0 + 64);
    v51 = objc_allocWithZone(sub_1C6015AA0());
    v52 = v49;
    v53 = sub_1C6015A90();
    v54 = (v50 + OBJC_IVAR____MPCPodcastAVItem_playbackContext);
    if (!sub_1C60157B0())
    {
      v58 = *(v0 + 64);
      v59 = sub_1C60162B0();
      v60 = sub_1C6016F20();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v0 + 88);
        v62 = *(v0 + 72);
        v63 = OUTLINED_FUNCTION_68_0();
        v64 = OUTLINED_FUNCTION_21();
        v80[0] = v64;
        *v63 = 141558275;
        OUTLINED_FUNCTION_15_5();
        *(v63 + 4) = v65;
        *(v63 + 12) = 2081;
        v79(v61, &v5[v78], v62);
        v66 = sub_1C60169A0();
        v68 = sub_1C5C6AB10(v66, v67, v80);

        *(v63 + 14) = v68;
        OUTLINED_FUNCTION_239();
        _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v64);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_35_1();
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *(v0 + 48) = 8;
      sub_1C6016880();
      OUTLINED_FUNCTION_124();
      _s3__C4CodeOMa_3();
      OUTLINED_FUNCTION_23_4();
      sub_1C5CFB4C4(v74, v75);
      OUTLINED_FUNCTION_80();
      sub_1C6017280();
      OUTLINED_FUNCTION_312();

      swift_willThrow();

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_107();
    sub_1C6016030();
    v55 = v53;
    v56 = v54;
    OUTLINED_FUNCTION_105_0();
    v57 = sub_1C6016020();
    v76 = *(v0 + 160);
    v77 = *(v0 + 64);
    *&v77[OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession] = v57;
    swift_unknownObjectRelease();
    [v77 setAsset_];
    v36 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
    [v77 setPlayerItem_];
  }

  else
  {
    v24 = *(v0 + 64);
    v25 = sub_1C60162B0();
    v26 = sub_1C6016F30();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_112();
      v28 = OUTLINED_FUNCTION_21();
      v80[0] = v28;
      *v27 = 136380675;
      sub_1C6014F20();
      OUTLINED_FUNCTION_21_6();
      sub_1C5CFB4C4(v29, v30);
      v31 = sub_1C60177D0();
      v33 = sub_1C5C6AB10(v31, v32, v80);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1C5C61000, v25, v26, "Asset is STDQ, no fairplay needed, using url: %{private}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_35_1();
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 64);
    *&v35[OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession] = 0;
    swift_unknownObjectRelease();
    [v35 setAsset_];
    v36 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
    [v35 setPlayerItem_];
  }

  v37 = *(v0 + 160);
  v39 = *(v0 + 56);
  v38 = *(v0 + 64);
  [v36 setAudioTimePitchAlgorithm_];
  sub_1C5CFF3F4();

  *(v38 + OBJC_IVAR____MPCPodcastAVItem_isAssetAndPlayerItemLoaded) = 1;
  *v39 = v36;

  OUTLINED_FUNCTION_172();
LABEL_19:

  v40();
}

BOOL sub_1C5CF8584()
{
  v1 = v0;
  v2 = sub_1C6015770();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_1C6015740();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return 1;
  }

  sub_1C6014F90();
  return v8 - *(v1 + OBJC_IVAR____MPCPodcastAVItem_createdTimestamp) > 5.0;
}

void sub_1C5CF86BC()
{
  OUTLINED_FUNCTION_247();
  v36 = v2;
  v3 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v11 = *(v5 + 16);
  v35 = v0;
  v11(v9, v0 + v10, v3);
  v12 = sub_1C60156B0();
  v14 = v13;
  v15 = *(v5 + 8);
  v16 = v15(v9, v3);
  if (v14)
  {
    OUTLINED_FUNCTION_61_1(v16, &qword_1ED7DCB60, MEMORY[0x1E69E6158]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C60311E0;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
    v18 = v36;
    *v36 = v17;
    v19 = *MEMORY[0x1E69C4CB8];
    v20 = sub_1C6015BF0();
    OUTLINED_FUNCTION_105();
    (*(v21 + 104))(v18, v19, v20);
    v22 = v18;
  }

  else
  {
    v25 = v36;
    v11(v1, v35 + v10, v3);
    v26 = sub_1C6015540();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_80();
    (v15)(v29);
    if ((v28 & 1) != 0 || (v30 = sub_1C6016110(), v26 == v30))
    {
      v24 = sub_1C6015BF0();
      v22 = v25;
      v23 = 1;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_61_1(v30, &unk_1EC1A88F8, MEMORY[0x1E69C4DE0]);
    OUTLINED_FUNCTION_178();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C60311E0;
    *(v31 + 32) = v26;
    *v25 = v31;
    v32 = *MEMORY[0x1E69C4CD0];
    v20 = sub_1C6015BF0();
    OUTLINED_FUNCTION_105();
    (*(v33 + 104))(v25, v32, v20);
    v22 = v25;
  }

  v23 = 0;
  v24 = v20;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CF8950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v9 = sub_1C6015C50();
  v6[3] = v9;
  v6[4] = *(v9 - 8);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  sub_1C5C67E04(0, &qword_1EC1A8F38, MEMORY[0x1E69C4D08], MEMORY[0x1E69E6720]);
  v10 = swift_task_alloc();
  v6[7] = v10;
  v11 = sub_1C6015C80();
  v6[8] = v11;
  v6[9] = *(v11 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = sub_1C6016C10();
  v6[12] = sub_1C6016C00();
  v12 = swift_task_alloc();
  v6[13] = v12;
  *v12 = v6;
  v12[1] = sub_1C5CF8B4C;

  return sub_1C5CF91D8(v10, a5, a6);
}

uint64_t sub_1C5CF8B4C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_101();
  *v5 = v4;

  v7 = sub_1C6016BA0();
  *(v2 + 112) = v7;
  *(v2 + 120) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5CF8C78, v7, v6);
}

uint64_t sub_1C5CF8C78()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_73_0(v1, 1, v2);
  if (v3)
  {

    sub_1C5CFB17C();
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    (*(*(v0 + 72) + 32))(*(v0 + 80), v1, v2);
    v7 = sub_1C6015C70();
    sub_1C6015C60();
    v8 = *MEMORY[0x1E69C4CF0];
    *(v0 + 184) = v8;
    v24 = v8;
    v9 = *(v6 + 104);
    *(v0 + 128) = v9;
    *(v0 + 136) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v9(v4, v8, v5);
    v10 = OUTLINED_FUNCTION_105_0();
    v12 = sub_1C5D13750(v10, v11);
    v13 = *(v6 + 8);
    *(v0 + 144) = v13;
    *(v0 + 152) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14 = OUTLINED_FUNCTION_80();
    v13(v14);
    v15 = OUTLINED_FUNCTION_252();
    v13(v15);
    sub_1C5CF98F0(v7, v12 & 1);

    sub_1C6015C60();
    v9(v4, v24, v5);
    v16 = OUTLINED_FUNCTION_105_0();
    v18 = sub_1C5D13750(v16, v17);
    v19 = OUTLINED_FUNCTION_80();
    v13(v19);
    v20 = OUTLINED_FUNCTION_252();
    v13(v20);
    if (v18)
    {
      *(v0 + 160) = sub_1C6015C70();
      v21 = swift_task_alloc();
      *(v0 + 168) = v21;
      *v21 = v0;
      v21[1] = sub_1C5CF8F5C;

      return sub_1C5CFBD3C();
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  OUTLINED_FUNCTION_172();

  return v23();
}

uint64_t sub_1C5CF8F5C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 176) = v6;

  OUTLINED_FUNCTION_116_0();
  v9 = *(v8 + 120);
  v10 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C5CF9090, v10, v9);
}

uint64_t sub_1C5CF9090()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 184);
  v4 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 176);
  v13 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);

  sub_1C6015C60();
  v2(v6, v3, v7);
  v8 = sub_1C5D13750(v5, v6);
  v1(v6, v7);
  v1(v5, v7);
  sub_1C5CF98F0(v12, v8 & 1);

  (*(v4 + 8))(v11, v13);

  OUTLINED_FUNCTION_172();

  return v9();
}

uint64_t sub_1C5CF91D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_1C6015BF0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = sub_1C6015B90();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CF9304, 0, 0);
}

uint64_t sub_1C5CF9304()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[11];
  v2 = v0[7];
  v0[17] = sub_1C5CEC7F4();
  v0[18] = *(v1 + 16);
  v0[19] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3 = OUTLINED_FUNCTION_86();
  v4(v3);
  v5 = v2;
  sub_1C6015B80();
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1C5CF9404;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE2E448]();
}

uint64_t sub_1C5CF9404()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 168) = v0;

  v7 = OUTLINED_FUNCTION_56_0();
  v8(v7);

  if (!v0)
  {

    OUTLINED_FUNCTION_31();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5CF95C4()
{
  v40 = v0;
  if (qword_1EC1A8EA8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = sub_1C60162D0();
  __swift_project_value_buffer(v7, qword_1EC1BE388);
  v2(v3, v5, v4);
  v8 = v6;
  v9 = v1;
  v10 = sub_1C60162B0();
  v11 = sub_1C6016F20();

  if (OUTLINED_FUNCTION_29_0())
  {
    v36 = *(v0 + 144);
    v12 = *(v0 + 104);
    v35 = *(v0 + 96);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v38 = v11;
    v15 = *(v0 + 56);
    v37 = *(v0 + 168);
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_14_1(7.2228e-34);
    v17 = v15;
    v18 = [v17 description];
    v19 = sub_1C6016940();
    v21 = v20;

    sub_1C5C6AB10(v19, v21, &v39);
    OUTLINED_FUNCTION_126();

    *(v16 + 14) = v19;
    *(v16 + 22) = 2160;
    OUTLINED_FUNCTION_15_5();
    *(v16 + 24) = v22;
    *(v16 + 32) = 2081;
    v36(v12, v35, v14);
    v23 = sub_1C60169A0();
    v25 = v24;
    (*(v13 + 8))(v35, v14);
    sub_1C5C6AB10(v23, v25, &v39);
    OUTLINED_FUNCTION_312();

    *(v16 + 34) = v23;
    *(v16 + 42) = 2080;
    swift_getErrorValue();
    v26 = sub_1C6017930();
    sub_1C5C6AB10(v26, v27, &v39);
    OUTLINED_FUNCTION_126();

    *(v16 + 44) = v25;
    _os_log_impl(&dword_1C5C61000, v10, v38, "Unable to fetch chapters for asset %{private,mask.hash}s identifier %{private,mask.hash}s with error %s.", v16, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    v30 = *(v0 + 80);

    (*(v29 + 8))(v28, v30);
  }

  v31 = *(v0 + 48);
  v32 = sub_1C6015C80();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);

  OUTLINED_FUNCTION_172();

  return v33();
}

void sub_1C5CF98F0(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____MPCPodcastAVItem_hasProcessedChapters) = 1;

  sub_1C5CED020(v5);
  *(v2 + OBJC_IVAR____MPCPodcastAVItem_areChaptersGenerated) = a2;
  v6 = [v2 chapters];
  sub_1C5C64D74(0, &qword_1EC1A9390);
  sub_1C6016B10();

  sub_1C5CFA3B0(0, &qword_1EC1A9428, &qword_1EC1A9390, 0x1E6970830, MEMORY[0x1E69E62F8]);
  sub_1C5CFABB4();
  LOBYTE(v6) = sub_1C6016E00();

  if (v6)
  {
    v7 = [v3 initialPlaybackStartTimeOverride];
    if (v7)
    {
      v8 = v7;
      [v7 doubleValue];
    }

    sub_1C5CF4B18();
  }
}

uint64_t sub_1C5CF9A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_1C6016C10();
  v5[4] = sub_1C6016C00();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1C5CF9B08;

  return sub_1C5CF9CA0(a5);
}

uint64_t sub_1C5CF9B08()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v6 + 48) = v5;

  sub_1C6016BA0();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_103();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CF9C30()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 48);

  sub_1C5CFA108(v1);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5CF9CC0()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[13];
  type metadata accessor for PodcastsChapterController();
  v0[14] = swift_initStackObject();
  v0[15] = sub_1C5D0533C(v1);
  v2 = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1C5CF9D84;

  return sub_1C5D05370();
}

uint64_t sub_1C5CF9D84()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (v0)
  {
    v9 = sub_1C5CF9EF0;
  }

  else
  {
    *(v5 + 144) = v3;
    v9 = sub_1C5CF9E94;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C5CF9E94()
{
  OUTLINED_FUNCTION_248();

  v0 = OUTLINED_FUNCTION_30_3();

  return v1(v0);
}

uint64_t sub_1C5CF9EF0()
{
  v25 = v0;
  if (qword_1EC1A8EA8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v1 = v0[17];
  v2 = v0[13];
  v3 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v3, qword_1EC1BE388);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C60162B0();
  v7 = sub_1C6016F20();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  if (v8)
  {
    v10 = v0[13];
    v11 = OUTLINED_FUNCTION_21();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_14_1(7.2226e-34);
    v12 = v10;
    v13 = [v12 description];
    v14 = sub_1C6016940();
    v16 = v15;

    v17 = sub_1C5C6AB10(v14, v16, &v24);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_1C6017930();
    v20 = sub_1C5C6AB10(v18, v19, &v24);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1C5C61000, v6, v7, "Unable to fetch chapters for asset %{private,mask.hash}s with error %s.", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_6();
  }

  v21 = v0[1];
  v22 = MEMORY[0x1E69E7CC0];

  return v21(v22);
}

void sub_1C5CFA108(uint64_t a1)
{
  *&v1[OBJC_IVAR____MPCPodcastAVItem_podcastChapters] = a1;

  sub_1C5CEC4A8();
  v1[OBJC_IVAR____MPCPodcastAVItem_hasProcessedChapters] = 1;
  v2 = [v1 chapters];
  sub_1C5C64D74(0, &qword_1EC1A9390);
  v3 = sub_1C6016B10();

  v4 = sub_1C5C6AA20(v3);

  if (v4)
  {
    v5 = [v1 initialPlaybackStartTimeOverride];
    if (v5)
    {
      v6 = v5;
      [v5 doubleValue];
    }

    sub_1C5CF4B18();
  }
}

uint64_t sub_1C5CFA254()
{
  OUTLINED_FUNCTION_68();
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_14_8();
  v4 = v3(v2);
  v0(v4);
  OUTLINED_FUNCTION_318();
  v5 = OUTLINED_FUNCTION_27_6();
  v6(v5);
  return OUTLINED_FUNCTION_255();
}

id sub_1C5CFA348(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  OUTLINED_FUNCTION_128_1();

  OUTLINED_FUNCTION_252();
  v5 = sub_1C6016900();

  return v5;
}

void sub_1C5CFA3B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_103();
    v10 = sub_1C5C64D74(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1C5CFA414()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_98_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_28_4(v2);

  return sub_1C5CF76EC(v4, v5, v6, v0);
}

id sub_1C5CFA4A4()
{
  if (*&v0[OBJC_IVAR____MPCPodcastAVItem_serviceIdentifier + 8])
  {
    goto LABEL_4;
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PodcastAVItem();
  result = objc_msgSendSuper2(&v3, sel_rtcReportingServiceIdentifier);
  if (result)
  {
    v2 = result;
    sub_1C6016940();
    OUTLINED_FUNCTION_318();

LABEL_4:

    return OUTLINED_FUNCTION_255();
  }

  __break(1u);
  return result;
}

id sub_1C5CFA534()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C6016900();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_1C5CFA690(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v12[4] = sub_1C5CB5C00;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C5CFA7C4;
  v12[3] = &block_descriptor_99;
  v9 = _Block_copy(v12);

  v10 = [v4 initWithIdentifiers:a1 block:v9];

  _Block_release(v9);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_1C5CFA7C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1C5CFA810()
{
  OUTLINED_FUNCTION_68();
  sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_10();
  v0();
  OUTLINED_FUNCTION_21_6();
  sub_1C5CFB4C4(v2, v3);
  sub_1C60177D0();
  OUTLINED_FUNCTION_318();
  v4 = OUTLINED_FUNCTION_27_6();
  v5(v4);
  return OUTLINED_FUNCTION_255();
}

uint64_t sub_1C5CFA8F8(void (*a1)(void *__return_ptr))
{
  a1(v2);
  sub_1C5CAE9DC();
  OUTLINED_FUNCTION_318();
  sub_1C5CB56D0(v2);
  return OUTLINED_FUNCTION_255();
}

uint64_t sub_1C5CFA944()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_98_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_28_4(v2);

  return sub_1C5CF7420(v4, v5, v6, v0);
}

unint64_t sub_1C5CFA9D4()
{
  result = qword_1EC1A9140;
  if (!qword_1EC1A9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9140);
  }

  return result;
}

uint64_t sub_1C5CFAA28()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_4(v4);

  return sub_1C5CF9A48(v6, v7, v8, v2, v1);
}

uint64_t sub_1C5CFAACC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_68();
  v0 = sub_1C6015BF0();
  OUTLINED_FUNCTION_13_3(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  *v2 = v3;
  v2[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_31();

  return sub_1C5CF8950(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1C5CFABB4()
{
  result = qword_1EC1A8D80;
  if (!qword_1EC1A8D80)
  {
    sub_1C5CFA3B0(255, &qword_1EC1A9428, &qword_1EC1A9390, 0x1E6970830, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8D80);
  }

  return result;
}

uint64_t sub_1C5CFAC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastChapter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5CFAC9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C5CFACF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_107();
  v4(v3);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return a2;
}

unint64_t sub_1C5CFAD4C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_1C60161C0();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5CFADEC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return sub_1C5CDAF64(a2 + 40 * result + 32, a3);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5CFAE3C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1C5CFAE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1C6016900();
  v9 = sub_1C6016900();

  v10 = sub_1C6016900();
  [a7 setContentItemID:v8 queueSectionID:v9 queueItemID:v10];
}

uint64_t sub_1C5CFAF68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C5CFAC9C(a1, a2);
  }

  return a1;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5CFAFD8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_98_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_4(v1);

  return sub_1C5CF33E0();
}

uint64_t sub_1C5CFB070()
{
  OUTLINED_FUNCTION_13();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBD218;
  v2 = OUTLINED_FUNCTION_252();

  return v3(v2);
}

void sub_1C5CFB11C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C5CFB17C()
{
  v1 = OUTLINED_FUNCTION_68();
  v2(v1);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C5CFB1CC()
{
  result = qword_1EC1A8868;
  if (!qword_1EC1A8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8868);
  }

  return result;
}

void sub_1C5CFB228()
{
  if (!qword_1EC1A8EE0)
  {
    sub_1C5C67E04(255, &unk_1EC1A8EE8, MEMORY[0x1E69C4D90], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8EE0);
    }
  }
}

uint64_t sub_1C5CFB2BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_103();
  v3();
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

uint64_t sub_1C5CFB31C()
{
  v1 = OUTLINED_FUNCTION_68();
  v2(v1);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1C5CFB374(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C60168A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C5CFB3CC()
{
  if (!qword_1EC1A8938)
  {
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8938);
    }
  }
}

void sub_1C5CFB430()
{
  if (!qword_1EC1A8F10)
  {
    sub_1C6015D90();
    sub_1C5CFB11C(255, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8F10);
    }
  }
}

uint64_t sub_1C5CFB4C4(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_20_6(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = v2;
  a1[3] = a2;
  a1[4] = v3;

  sub_1C5E113F4();
}

_OWORD *OUTLINED_FUNCTION_36_1()
{
  *(v1 - 240) = v0;

  return sub_1C5E3648C(v1 - 232, v1 - 144);
}

uint64_t OUTLINED_FUNCTION_51_1()
{
  sub_1C5C70758((v0 - 176), (v0 - 232));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return sub_1C6017660();
}

void OUTLINED_FUNCTION_76_0()
{
  *(v1 - 232) = v0;

  sub_1C5CFB3CC();
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{
  *(v1 + 112) = a1;
  *(v2 + v3) = a1;
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  sub_1C5C70758((v0 - 176), (v0 - 232));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_111_0()
{

  return sub_1C5CE3504(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return sub_1C5CFB17C();
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return sub_1C6016C30();
}

uint64_t OUTLINED_FUNCTION_134_0()
{

  return sub_1C5CFB17C();
}

void OUTLINED_FUNCTION_135_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_136_1()
{

  return sub_1C60169A0();
}

BOOL OUTLINED_FUNCTION_137_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_140_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_141_0()
{
}

unint64_t OUTLINED_FUNCTION_142_0()
{

  return sub_1C5CE20FC(v0 - 144);
}

uint64_t sub_1C5CFB96C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

char *sub_1C5CFB9B4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C5C8CEE0(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    v4 = OUTLINED_FUNCTION_108();
    return MEMORY[0x1C6954040](v4);
  }

  result = OUTLINED_FUNCTION_12_6();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C5CFBA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1C60161C0();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1C60161C0();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1C5CFBB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for PodcastChapter();
    sub_1C5CFAC38(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for PodcastChapter();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

unint64_t sub_1C5CFBBE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 4 * v1 + 28);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 32);
}

void *sub_1C5CFBC18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
  v3 = v2;
  return v2;
}

uint64_t sub_1C5CFBC58(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C5C8CEE0(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return swift_unknownObjectRetain();
      }
    }

    v3 = OUTLINED_FUNCTION_108();
    return MEMORY[0x1C6954040](v3);
  }

  result = OUTLINED_FUNCTION_12_6();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C5CFBCDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 8 * v1 + 24);
  v3 = v2;
  return v2;
}

uint64_t sub_1C5CFBD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CFBD3C()
{
  OUTLINED_FUNCTION_248();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C60162D0();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CFBDF0()
{
  v31 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    sub_1C60162A0();

    v3 = v2;
    v4 = sub_1C60162B0();
    v5 = sub_1C6016F30();

    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    if (v6)
    {
      v29 = *(v0 + 48);
      v10 = *(v0 + 24);
      v28 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 134218499;
      *(v11 + 4) = *(v1 + 16);

      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      v13 = v10;
      v14 = [v13 description];
      v15 = sub_1C6016940();
      v17 = v16;

      v18 = sub_1C5C6AB10(v15, v17, &v30);

      *(v11 + 24) = v18;
      _os_log_impl(&dword_1C5C61000, v4, v5, "Aligning %ld chapters for %{private,mask.hash}s.", v11, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();

      (*(v8 + 8))(v29, v28);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    v22 = [*(v0 + 24) asset];
    *(v0 + 56) = v22;
    if (v22)
    {
      sub_1C5CFC4D8();
      v26 = sub_1C6015280();
      *(v0 + 64) = v26;
      v27 = swift_task_alloc();
      *(v0 + 72) = v27;
      *v27 = v0;
      v27[1] = sub_1C5CFC0C4;
      v22 = (v0 + 112);
      v23 = v26;
      v24 = 0;
      v25 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE68140](v22, v23, v24, v25);
  }

  else
  {

    OUTLINED_FUNCTION_5_1();
    v20 = MEMORY[0x1E69E7CC0];

    return v19(v20);
  }
}

uint64_t sub_1C5CFC0C4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = sub_1C5CFC464;
  }

  else
  {

    v6 = sub_1C5CFC224;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C5CFC224()
{
  OUTLINED_FUNCTION_248();
  sub_1C6017220();
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_0_15(v2);

  return sub_1C5CFC550(v3, v4);
}

uint64_t sub_1C5CFC2A4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CFC394()
{
  v1 = *(v0 + 80);
  sub_1C5CFCEE8(*(v0 + 104), 30.0);

  if (v1)
  {
    [*(v0 + 24) duration];
    sub_1C6017220();
  }

  v2 = sub_1C6016B50();

  OUTLINED_FUNCTION_5_1();

  return v3(v2);
}

uint64_t sub_1C5CFC464()
{
  OUTLINED_FUNCTION_248();
  *(v0 + 88) = 0;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_15(v1);

  return sub_1C5CFC550(v2, v3);
}

void sub_1C5CFC4D8()
{
  if (!qword_1EC1AAC18)
  {
    sub_1C5C64D74(255, &qword_1EC1AAC20);
    type metadata accessor for CMTime();
    v0 = sub_1C6015200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAC18);
    }
  }
}

uint64_t sub_1C5CFC550(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1C6016120();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_1C60161C0();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CFC69C, 0, 0);
}

void sub_1C5CFC69C()
{
  v3 = *(*(v2 + 56) + 16);
  *(v2 + 144) = v3;
  if (v3)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E69C4DE8];
    *(v2 + 184) = *(*(v2 + 104) + 80);
    *(v2 + 188) = v5;
    v6 = MEMORY[0x1E69E7CC0];
    v44 = 1;
    while (1)
    {
      while (1)
      {
        *(v2 + 152) = v6;
        if (v4 >= *(v2 + 144))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v7 = *(v2 + 104);
        *(v2 + 160) = *(v7 + 72);
        *(v2 + 168) = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        v47 = v4 + 1;
        OUTLINED_FUNCTION_16_6();
        v8 = *(v2 + 72);
        v9 = *(v2 + 80);
        v10 = *(v2 + 64);
        v48 = *(v7 + 16);
        v48(v0, *(v2 + 56) + ((v11 + 32) & ~v11) + v12 * v4);
        sub_1C6016150();
        (*(v8 + 104))(v9, v1, v10);
        sub_1C5CFDB10();
        OUTLINED_FUNCTION_10_7();
        OUTLINED_FUNCTION_22_6();
        v13 = OUTLINED_FUNCTION_19_7();
        v15 = (v14 + 8);
        if (v13 != v16 || v0 != v1)
        {
          break;
        }

        v27 = *v15;
        v28 = OUTLINED_FUNCTION_15_1();
        v27(v28);
        v29 = OUTLINED_FUNCTION_18();
        v27(v29);

LABEL_17:
        if ((v44 & 1) == 0)
        {
          v41 = swift_task_alloc();
          *(v2 + 176) = v41;
          *v41 = v2;
          v42 = OUTLINED_FUNCTION_1_12(v41);

          sub_1C5CFD284(v42, v43);
          return;
        }

        (v48)(*(v2 + 128), *(v2 + 136), *(v2 + 96));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_0();
          sub_1C5D0DC20();
          v6 = v38;
        }

        v30 = *(v6 + 16);
        if (v30 >= *(v6 + 24) >> 1)
        {
          sub_1C5D0DC20();
          v0 = v39;
        }

        else
        {
          v0 = v6;
        }

        v31 = *(v2 + 168);
        v32 = *(v2 + 144);
        v1 = *(v2 + 128);
        OUTLINED_FUNCTION_5_11();
        v33();
        v34 = OUTLINED_FUNCTION_4_11(v30 + 1);
        v35(v34);
        if (v31 == v32)
        {
          goto LABEL_26;
        }

        v44 = 0;
        v4 = *(v2 + 168);
      }

      v45 = v4;
      v46 = sub_1C6017860();
      v18 = v6;
      v19 = *v15;
      v20 = OUTLINED_FUNCTION_15_1();
      v19(v20);
      v21 = OUTLINED_FUNCTION_18();
      v19(v21);
      v6 = v18;

      if (v46)
      {
        goto LABEL_17;
      }

      (v48)(*(v2 + 112), *(v2 + 136), *(v2 + 96));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_0();
        sub_1C5D0DC20();
        v6 = v36;
      }

      v22 = *(v6 + 16);
      v0 = v22 + 1;
      if (v22 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_5();
        v6 = v37;
      }

      v23 = OUTLINED_FUNCTION_2_12();
      v24(v23);
      *(v6 + 16) = v0;
      v25 = OUTLINED_FUNCTION_14_9(v6 + v18);
      v26(v25);
      v4 = v45 + 1;
      if (v47 == v9)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_26:

  OUTLINED_FUNCTION_5_1();

  v40(v6);
}

uint64_t sub_1C5CFCA84()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5CFCB70()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_28:
    OUTLINED_FUNCTION_3_0();
    sub_1C5D0DC20();
    v3 = v41;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_1C5D0DC20();
    v3 = v42;
  }

  v5 = v0[15];
  v6 = v0[21];
  v7 = v0[18];
  OUTLINED_FUNCTION_5_11();
  v8();
  v9 = OUTLINED_FUNCTION_4_11(v4 + 1);
  v10(v9);
  if (v6 == v7)
  {
LABEL_5:

    OUTLINED_FUNCTION_5_1();

    return v11(v1);
  }

  else
  {
    v13 = v0[21];
    while (1)
    {
      v0[19] = v1;
      if (v13 >= v0[18])
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v46 = v1;
      v1 = v0[13];
      v0[20] = v1[9];
      v0[21] = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_27;
      }

      v45 = v13 + 1;
      OUTLINED_FUNCTION_16_6();
      v15 = v0[9];
      v14 = v0[10];
      v16 = v0[8];
      v44 = v1[2];
      v44(v3, v0[7] + ((v17 + 32) & ~v17) + v18 * v13);
      sub_1C6016150();
      (*(v15 + 104))(v14, v5, v16);
      sub_1C5CFDB10();
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_22_6();
      v19 = OUTLINED_FUNCTION_19_7();
      v21 = (v20 + 8);
      if (v19 == v22 && v3 == v5)
      {
        break;
      }

      v43 = v13;
      v24 = sub_1C6017860();
      v25 = *v21;
      v26 = OUTLINED_FUNCTION_15_1();
      v25(v26);
      v27 = OUTLINED_FUNCTION_18();
      v25(v27);

      if (v24)
      {
        goto LABEL_23;
      }

      (v44)(v0[14], v0[17], v0[12]);
      v1 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_0();
        sub_1C5D0DC20();
        v1 = v33;
      }

      v28 = v1[2];
      v3 = v28 + 1;
      if (v28 >= v1[3] >> 1)
      {
        OUTLINED_FUNCTION_11_5();
        v1 = v34;
      }

      v29 = OUTLINED_FUNCTION_2_12();
      v30(v29);
      v1[2] = v3;
      v31 = OUTLINED_FUNCTION_14_9(v1 + v24);
      v32(v31);
      v13 = v43 + 1;
      if (v45 == v14)
      {
        goto LABEL_5;
      }
    }

    v35 = *v21;
    v36 = OUTLINED_FUNCTION_15_1();
    v35(v36);
    v37 = OUTLINED_FUNCTION_18();
    v35(v37);

LABEL_23:
    v38 = swift_task_alloc();
    v0[22] = v38;
    *v38 = v0;
    v39 = OUTLINED_FUNCTION_1_12();

    return sub_1C5CFD284(v39, v40);
  }
}

uint64_t sub_1C5CFCEE8(uint64_t a1, double a2)
{
  sub_1C5CFDB68(0, &qword_1EC1A8ED0, MEMORY[0x1E69C4E18]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_1C60161C0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v37 - v13;
  v15 = *(a1 + 16);
  if (v15 < 2)
  {
  }

  else
  {
    v40 = v6;
    v41 = a1;
    v37 = v12;
    v38 = v11;
    v42 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = a1 + v42;
    v17 = *(v10 + 72);
    v18 = (v10 + 16);
    v39 = v10;
    v19 = (v10 + 32);
    v20 = v15 - 1;
    a1 = MEMORY[0x1E69E7CC0];
    do
    {
      v21 = v16 + v17;
      sub_1C60161B0();
      v23 = v22;
      sub_1C60161B0();
      if (v23 - v24 >= a2)
      {
        (*v18)(v14, v16, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C5D0DC20();
          a1 = v26;
        }

        v25 = *(a1 + 16);
        if (v25 >= *(a1 + 24) >> 1)
        {
          sub_1C5D0DC20();
          a1 = v27;
        }

        *(a1 + 16) = v25 + 1;
        (*v19)(a1 + v42 + v25 * v17, v14, v7);
      }

      v16 = v21;
      --v20;
    }

    while (v20);
    v28 = v40;
    sub_1C5CFBA38(v41, v40);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v7);
    if (EnumTagSinglePayload == 1)
    {
      sub_1C5CFDA98(v28);
    }

    else
    {
      v30 = *v19;
      v31 = v37;
      (*v19)(v37, v28, v7);
      v32 = v38;
      (*v18)(v38, v31, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C5D0DC20();
        a1 = v35;
      }

      v33 = *(a1 + 16);
      if (v33 >= *(a1 + 24) >> 1)
      {
        sub_1C5D0DC20();
        a1 = v36;
      }

      (*(v39 + 8))(v31, v7);
      *(a1 + 16) = v33 + 1;
      v30(a1 + v42 + v33 * v17, v32, v7);
    }
  }

  return a1;
}

uint64_t sub_1C5CFD284(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1C60161C0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1C60162D0();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1C5CFDB68(0, &qword_1EC1A8ED8, MEMORY[0x1E69C4E10]);
  v3[11] = swift_task_alloc();
  sub_1C6016120();
  v3[12] = swift_task_alloc();
  v6 = sub_1C60160C0();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CFD480, 0, 0);
}

uint64_t sub_1C5CFD480()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[3];
  sub_1C60161B0();
  v7 = v6;
  sub_1C60160B0();
  type metadata accessor for ScoutingAlignmentTask();
  v8 = swift_allocObject();
  (*(v4 + 16))(v2, v1, v3);
  v0[17] = sub_1C5CE2F20(v7, v2, v8);
  v9 = OUTLINED_FUNCTION_86();
  v10(v9);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1C5CFD5B8;

  return (sub_1C5CDCEE8)(v5);
}

uint64_t sub_1C5CFD5B8(double a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v4 + 152) = v1;

  if (v1)
  {
    v8 = sub_1C5CFD80C;
  }

  else
  {
    *(v4 + 160) = a1;
    v8 = sub_1C5CFD6D4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C5CFD6D4()
{
  sub_1C6016140();
  sub_1C6016150();
  sub_1C6016160();
  sub_1C6016190();
  sub_1C6016180();
  sub_1C6016130();

  OUTLINED_FUNCTION_21_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5CFD80C()
{
  v1 = v0[19];
  v2 = v0[6];

  sub_1C60162A0();
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_86();
  v3(v4);
  v5 = v1;
  v6 = sub_1C60162B0();
  v7 = sub_1C6016F30();

  v31 = v7;
  v8 = os_log_type_enabled(v6, v7);
  v32 = v0[19];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v30 = v3;
    v12 = swift_slowAlloc();
    log = v6;
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315394;
    sub_1C6016140();
    v14 = OUTLINED_FUNCTION_108();
    v15(v14);
    v16 = OUTLINED_FUNCTION_86();
    v19 = sub_1C5C6AB10(v16, v17, v18);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2112;
    v20 = v32;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v21;
    *v13 = v21;
    _os_log_impl(&dword_1C5C61000, log, v31, "[PodcastAVItem] Failed to resolve chapter start time for %s: %@", v12, 0x16u);
    sub_1C5CB5700(v13);
    OUTLINED_FUNCTION_4();
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_4();
    v3 = v30;
    OUTLINED_FUNCTION_4();

    (*(v10 + 8))(v9, v11);
  }

  else
  {

    v22 = OUTLINED_FUNCTION_108();
    v23(v22);
    v24 = OUTLINED_FUNCTION_86();
    v26(v24, v25);
  }

  (v3)(v0[2], v0[4], v0[5]);
  OUTLINED_FUNCTION_21_7();

  v27 = v0[1];

  return v27();
}

uint64_t sub_1C5CFDA98(uint64_t a1)
{
  sub_1C5CFDB68(0, &qword_1EC1A8ED0, MEMORY[0x1E69C4E18]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5CFDB10()
{
  result = qword_1EC1AAB90;
  if (!qword_1EC1AAB90)
  {
    sub_1C6016120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAB90);
  }

  return result;
}

void sub_1C5CFDB68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5CFDBE4()
{
  OUTLINED_FUNCTION_248();
  v1[52] = v2;
  v1[53] = v0;
  v3 = sub_1C6015770();
  v1[54] = v3;
  v1[55] = *(v3 - 8);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CFDCA8()
{
  v91 = v0;
  receiver = v0[26].receiver;
  if (!receiver)
  {
    v15 = 0;
LABEL_11:
    v0[33].receiver = v15;
    super_class = v0[26].super_class;
    v0[1].receiver = v0;
    v0[3].super_class = &v0[24];
    v0[1].super_class = sub_1C5CFE84C;
    v17 = swift_continuation_init();
    sub_1C5CFF0B4();
    v0[12].super_class = v18;
    v0[9].receiver = MEMORY[0x1E69E9820];
    v0[9].super_class = 1107296256;
    v0[10].receiver = sub_1C5CFEB9C;
    v0[10].super_class = &block_descriptor_10;
    v0[11].receiver = v17;
    v19 = type metadata accessor for PodcastAVItem();
    v0[20].receiver = super_class;
    v0[20].super_class = v19;
    objc_msgSendSuper2(v0 + 20, sel_resolvePlaybackError_withCompletion_, v15, &v0[9]);
LABEL_12:
    OUTLINED_FUNCTION_14_0();

    return MEMORY[0x1EEE6DEC8](v20);
  }

  v0[24].super_class = receiver;
  v2 = receiver;
  sub_1C5CB5808();
  sub_1C5CFF12C();
  if (!swift_dynamicCast())
  {
    v15 = sub_1C6014D30();
    goto LABEL_11;
  }

  v0[29].receiver = v0[25].receiver;
  v3 = *MEMORY[0x1E69874D8];
  v4 = OUTLINED_FUNCTION_7_9();
  v6 = [v4 v5];
  v7 = v6;
  if (v6)
  {
  }

  v8 = OUTLINED_FUNCTION_7_9();
  v10 = [v8 v9];
  v11 = v10;
  if (v10)
  {
  }

  v12 = OUTLINED_FUNCTION_7_9();
  v14 = [v12 v13];
  if (v14)
  {

LABEL_16:
    sub_1C5CEC1B8();
    v0[29].super_class = v22;
    OUTLINED_FUNCTION_14_0();

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }

  if (v7 | v11)
  {
    goto LABEL_16;
  }

  v27 = sub_1C6016900();
  v28 = OUTLINED_FUNCTION_7_9();
  v30 = [v28 v29];

  if (!v30)
  {
    goto LABEL_32;
  }

  if (qword_1EC1A8EA8 != -1)
  {
    swift_once();
  }

  v31 = v0[26].super_class;
  v32 = sub_1C60162D0();
  __swift_project_value_buffer(v32, qword_1EC1BE388);
  v33 = receiver;
  v34 = v31;
  v35 = sub_1C60162B0();
  v36 = sub_1C6016F20();
  if (os_log_type_enabled(v35, v36))
  {
    v87 = v36;
    v37 = v0[28].super_class;
    v38 = v0[27].super_class;
    v84 = v0[27].receiver;
    v39 = v0[26].super_class;
    v40 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v40 = 136446723;

    v41 = sub_1C6014D30();
    v42 = [v41 localizedDescription];

    v43 = sub_1C6016940();
    v45 = v44;

    v46 = sub_1C5C6AB10(v43, v45, &v90);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2160;
    *(v40 + 14) = 1752392040;
    *(v40 + 22) = 2081;
    v47 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
    swift_beginAccess();
    (*(v38 + 2))(v37, v39 + v47, v84);
    v48 = sub_1C60156D0();
    v50 = v49;
    (*(v38 + 1))(v37, v84);
    v0[23].receiver = v48;
    v0[23].super_class = v50;
    sub_1C5CFF170();
    v51 = sub_1C60169A0();
    v53 = sub_1C5C6AB10(v51, v52, &v90);

    *(v40 + 24) = v53;
    _os_log_impl(&dword_1C5C61000, v35, v87, "[PodcastAVItem/resolvePlaybackError]: Attempting to recover from key integrity error=%{public}s for episode=%{private,mask.hash}s.", v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
    v54 = v0[26].super_class;
  }

  v56 = v0[27].super_class;
  v55 = v0[28].receiver;
  v58 = v0[26].super_class;
  v57 = v0[27].receiver;
  v59 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  swift_beginAccess();
  v88 = *(v56 + 2);
  v88(v55, v58 + v59, v57);
  sub_1C6015540();
  v61 = v60;
  v62 = v57;
  v63 = *(v56 + 1);
  v63(v55, v62);
  if (v61)
  {
    v64 = v0[26].super_class;
    v65 = sub_1C60162B0();
    v66 = sub_1C6016F20();

    if (os_log_type_enabled(v65, v66))
    {
      v86 = v66;
      v67 = v0[28].super_class;
      log = v65;
      v68 = v0[27].receiver;
      v69 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v90 = v85;
      *v69 = 141558275;
      *(v69 + 4) = 1752392040;
      *(v69 + 12) = 2081;
      v88(v67, v58 + v59, v68);
      v70 = sub_1C60156D0();
      v72 = v71;
      v63(v67, v68);
      v0[22].receiver = v70;
      v0[22].super_class = v72;
      sub_1C5CFF170();
      v73 = sub_1C60169A0();
      v75 = sub_1C5C6AB10(v73, v74, &v90);

      *(v69 + 14) = v75;
      _os_log_impl(&dword_1C5C61000, log, v86, "[PodcastAVItem/resolvePlaybackError]: Unable to recover from key integrity error for episode=%{private,mask.hash}s.", v69, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v85);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    else
    {
    }

LABEL_32:
    v78 = v0[26].super_class;
    v79 = sub_1C6014D30();
    v0[32].receiver = v79;
    v0[5].receiver = v0;
    v0[7].super_class = &v0[25].super_class;
    v0[5].super_class = sub_1C5CFE6D8;
    v80 = swift_continuation_init();
    sub_1C5CFF0B4();
    v0[16].super_class = v81;
    v0[13].receiver = MEMORY[0x1E69E9820];
    v0[13].super_class = 1107296256;
    v0[14].receiver = sub_1C5CFEB9C;
    v0[14].super_class = &block_descriptor_6;
    v0[15].receiver = v80;
    v82 = type metadata accessor for PodcastAVItem();
    v0[21].receiver = v78;
    v0[21].super_class = v82;
    objc_msgSendSuper2(v0 + 21, sel_resolvePlaybackError_withCompletion_, v79, &v0[13]);
    goto LABEL_12;
  }

  sub_1C6015BE0();
  v0[30].super_class = sub_1C6015BC0();
  v76 = swift_task_alloc();
  v0[31].receiver = v76;
  *v76 = v0;
  v76[1] = sub_1C5CFE5D0;
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE2E478]();
}

uint64_t sub_1C5CFE4D0()
{
  OUTLINED_FUNCTION_13();
  sub_1C5CE7CC0();
  *(v0 + 480) = 0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5CFE55C()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1C5CFE5D0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CFE6D8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = *(v3 + 112);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CFE7D8()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 512);

  v2 = OUTLINED_FUNCTION_5_12();

  return v3(v2);
}

uint64_t sub_1C5CFE84C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 536) = *(v3 + 48);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CFE94C()
{
  OUTLINED_FUNCTION_248();

  v1 = OUTLINED_FUNCTION_5_12();

  return v2(v1);
}

uint64_t sub_1C5CFE9B8()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 528);
  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5CFEA34()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 464);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5CFEAA4()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 464);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5CFEB18()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 512);
  v2 = *(v0 + 464);
  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5CFEB9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1C5E0232C(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1C5E0231C(v9, a2);
  }
}

uint64_t sub_1C5CFECA8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  a3;
  v6 = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C5CFED68;

  return sub_1C5CFDBE4();
}

uint64_t sub_1C5CFED68(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v8 = v7[4];
  v9 = v7[3];
  v10 = v7[2];
  v11 = *v2;
  OUTLINED_FUNCTION_2();
  *v12 = v11;

  if (v1)
  {
    if (v8)
    {
      v13 = *(v5 + 32);
      v14 = sub_1C6014D30();

      (v13)[2](v13, 0, v14);
      _Block_release(v13);
    }

    else
    {
    }
  }

  else if (v8)
  {
    v15 = *(v5 + 32);
    v15[2](v15, a1, 0);
    _Block_release(v15);
  }

  OUTLINED_FUNCTION_172();

  return v16();
}

uint64_t sub_1C5CFEF20()
{
  OUTLINED_FUNCTION_13();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C5CFEFD0;

  return sub_1C5CFECA8(v2, v3, v4);
}

uint64_t sub_1C5CFEFD0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

void sub_1C5CFF0B4()
{
  if (!qword_1EC1AAC28)
  {
    type metadata accessor for MPAVItemPlaybackErrorResolutionType();
    sub_1C5CB5808();
    v0 = sub_1C6016CC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAC28);
    }
  }
}

unint64_t sub_1C5CFF12C()
{
  result = qword_1ED7DCCF0;
  if (!qword_1ED7DCCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DCCF0);
  }

  return result;
}

void sub_1C5CFF170()
{
  if (!qword_1EC1A9480)
  {
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9480);
    }
  }
}

uint64_t sub_1C5CFF1E4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C5CE36D0(a1);
  if (v2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

double sub_1C5CFF234@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1C5CE20FC(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_7_10(v4);

    sub_1C5C653C8(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1C5CFF290@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_1C5CE2084(a1, a2), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_7_10(v5);

    sub_1C5C653C8(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1C5CFF2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C5CE2084(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CFF33C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1C5CE2398(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_1C5CFF394@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_7_10(v4);

    sub_1C5C653C8(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C5CFF3F4()
{
  sub_1C5C6AFC0(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1C5CDC270();
}

uint64_t sub_1C5CFF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[72] = a4;
  sub_1C5C6AFC0(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4[73] = swift_task_alloc();
  v5 = sub_1C6015020();
  v4[74] = v5;
  v4[75] = *(v5 - 8);
  v4[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CFF614, 0, 0);
}

uint64_t sub_1C5CFF614()
{
  *(v0 + 616) = [*(v0 + 576) preferredAudioAssetTypeSelection];
  *(v0 + 624) = OBJC_IVAR____MPCPodcastAVItem_url;
  v1 = @"item-asset-url";
  v2 = sub_1C6014E70();
  *(v0 + 216) = MEMORY[0x1E69E6158];
  *(v0 + 192) = v2;
  *(v0 + 200) = v3;
  sub_1C5C70758((v0 + 192), (v0 + 224));
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C5E3682C(v0 + 224, v1, isUniquelyReferenced_nonNull_native);

  *(v0 + 632) = v4;
  *(v0 + 640) = @"item-asset-location";
  v6 = @"item-asset-location";
  sub_1C5CEC1B8();
  *(v0 + 648) = v7;
  *(v0 + 656) = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_assetLocation;

  return MEMORY[0x1EEE6DFA0](sub_1C5CFF750, v7, 0);
}

uint64_t sub_1C5CFF77C()
{
  v68 = v0;
  v3 = *(v0 + 664);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 616);
  v7 = *(v0 + 576);

  type metadata accessor for MPCAssetLocation();
  *(v0 + 280) = v8;
  *(v0 + 256) = v3;
  sub_1C5C70758((v0 + 256), (v0 + 288));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C5E3682C(v0 + 288, v4, isUniquelyReferenced_nonNull_native);

  v10 = @"item-asset-type";
  v11 = [v6 type];
  type metadata accessor for MPCAudioAssetType();
  *(v0 + 344) = v12;
  *(v0 + 320) = v11;
  sub_1C5C70758((v0 + 320), (v0 + 352));
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v67 = v5;
  sub_1C5E3682C(v0 + 352, v10, v13);

  v14 = v5;
  *(v0 + 672) = v5;
  *(v0 + 680) = @"player-item-identifier";
  v15 = @"player-item-identifier";
  v16 = [v7 playerItem];
  *(v0 + 688) = v16;
  if (v16)
  {
    sub_1C6016C10();
    *(v0 + 696) = sub_1C6016C00();
    v17 = sub_1C6016BA0();
    v19 = v18;
    v20 = sub_1C5CFFE10;
    v21 = v17;
    v22 = v19;

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

  v23 = sub_1C5CE36D0(v15);
  if (v24)
  {
    v7 = v23;
    swift_isUniquelyReferenced_nonNull_native();
    v67 = v5;
    sub_1C5D01F0C();
    sub_1C6017660();

    sub_1C5C70758((*(v5 + 56) + 32 * v7), (v0 + 544));
    type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey();
    sub_1C5C66218(&qword_1EC1A8A90, type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey);
    sub_1C6017680();
  }

  else
  {
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
  }

  sub_1C5CBCF4C(v0 + 544);
  OUTLINED_FUNCTION_8_8();
  v25 = v15;
  v26 = *(v0 + 592);
  v27 = *(v0 + 584);
  if (v25)
  {

    v28 = OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v28, v29, 1, v26);
    v27 = *(v0 + 584);
LABEL_11:
    sub_1C5D01DB8(v27);
    goto LABEL_12;
  }

  v30 = OUTLINED_FUNCTION_38();
  if (__swift_getEnumTagSinglePayload(v30, v31, v26) == 1)
  {
    goto LABEL_11;
  }

  v62 = OUTLINED_FUNCTION_5_13();
  v63(v62);
  v64 = @"item-asset-cache-age";
  sub_1C6014FD0();
  v66 = OUTLINED_FUNCTION_12_7(MEMORY[0x1E69E63B0], v65);
  v67 = v14;
  sub_1C5E3682C(v0 + 512, v64, v66);

  (*(v1 + 8))(v7, v26);
LABEL_12:
  v32 = *(v0 + 576);
  OUTLINED_FUNCTION_1_13();
  sub_1C5C6AFC0(0, v33, v34, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v36 = @"queue-section-id";
  v20 = [v32 queueSectionID];
  if (!v20)
  {
    __break(1u);
    goto LABEL_23;
  }

  v37 = *(v0 + 576);
  *(inited + 40) = v20;
  *(inited + 48) = @"queue-item-id";
  v38 = @"queue-item-id";
  v20 = [v37 queueItemID];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

  v39 = v20;
  v40 = *(v0 + 616);

  *(inited + 56) = v39;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_16();
  sub_1C5C66218(v41, v42);
  v43 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_4_12();
  sub_1C5C6AFC0(0, v44, v45, MEMORY[0x1E69E6F90]);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1C6035C00;
  *(v46 + 32) = @"audio-asset-type-selection-explanation";
  v47 = @"audio-asset-type-selection-explanation";
  v48 = [v40 explanation];
  v49 = sub_1C6016940();
  v51 = v50;

  v52 = MEMORY[0x1E69E6158];
  *(v46 + 40) = v49;
  *(v46 + 48) = v51;
  *(v46 + 64) = v52;
  *(v46 + 72) = @"audio-asset-type-selection-justification";
  v53 = @"audio-asset-type-selection-justification";
  if (sub_1C5D01960(v40, &selRef_justification))
  {
    sub_1C5D01EB0(0, &qword_1EC1AAC40);
    OUTLINED_FUNCTION_14_10(v54);
  }

  else
  {
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    v55 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v46 + 104) = sub_1C5C64D74(0, &qword_1EC1A8A28);
    *(v46 + 80) = v55;
    if (*(v0 + 472))
    {
      sub_1C5CBCF4C(v0 + 448);
    }
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_3_9();
  sub_1C5C66218(v56, v57);
  OUTLINED_FUNCTION_10_8();
  sub_1C6016880();
  OUTLINED_FUNCTION_10_8();
  v58 = sub_1C6016840();

  v59 = swift_isUniquelyReferenced_nonNull_native();
  v67 = v43;
  sub_1C5D01AF0(v58, @"item-audio-asset-type-selection-metadata", v59, &v67);
  sub_1C5D0059C(@"asset-selection", v67);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1C5CFFE10()
{
  v1 = *(v0 + 688);

  *(v0 + 704) = [v1 mpc_loggingIdentifier];

  return MEMORY[0x1EEE6DFA0](sub_1C5CFFE9C, 0, 0);
}

id sub_1C5CFFE9C()
{
  v54 = v0;
  v3 = *(v0 + 704);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = sub_1C6016940();
  v8 = v7;

  v9 = MEMORY[0x1E69E6158];
  *(v0 + 408) = MEMORY[0x1E69E6158];
  *(v0 + 384) = v6;
  *(v0 + 392) = v8;
  sub_1C5C70758((v0 + 384), (v0 + 416));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v5;
  sub_1C5E3682C(v0 + 416, v4, isUniquelyReferenced_nonNull_native);

  v11 = v5;
  OUTLINED_FUNCTION_8_8();
  v12 = v5;
  v13 = *(v0 + 592);
  v14 = *(v0 + 584);
  if (v12)
  {

    v15 = OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v15, v16, 1, v13);
    v14 = *(v0 + 584);
LABEL_4:
    sub_1C5D01DB8(v14);
    goto LABEL_5;
  }

  v17 = OUTLINED_FUNCTION_38();
  if (__swift_getEnumTagSinglePayload(v17, v18, v13) == 1)
  {
    goto LABEL_4;
  }

  v47 = OUTLINED_FUNCTION_5_13();
  v48(v47);
  v49 = @"item-asset-cache-age";
  sub_1C6014FD0();
  v51 = OUTLINED_FUNCTION_12_7(MEMORY[0x1E69E63B0], v50);
  v53 = v11;
  sub_1C5E3682C(v0 + 512, v49, v51);

  (*(v1 + 8))(v6, v13);
LABEL_5:
  v19 = *(v0 + 576);
  OUTLINED_FUNCTION_1_13();
  sub_1C5C6AFC0(0, v20, v21, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v23 = @"queue-section-id";
  result = [v19 queueSectionID];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = *(v0 + 576);
  *(inited + 40) = result;
  *(inited + 48) = @"queue-item-id";
  v26 = @"queue-item-id";
  result = [v25 queueItemID];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = *(v0 + 616);

  *(inited + 56) = v27;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_16();
  sub_1C5C66218(v29, v30);
  v52 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_4_12();
  sub_1C5C6AFC0(0, v31, v32, MEMORY[0x1E69E6F90]);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1C6035C00;
  *(v33 + 32) = @"audio-asset-type-selection-explanation";
  v34 = @"audio-asset-type-selection-explanation";
  v35 = [v28 explanation];
  v36 = sub_1C6016940();
  v38 = v37;

  *(v33 + 40) = v36;
  *(v33 + 48) = v38;
  *(v33 + 64) = v9;
  *(v33 + 72) = @"audio-asset-type-selection-justification";
  v39 = @"audio-asset-type-selection-justification";
  if (sub_1C5D01960(v28, &selRef_justification))
  {
    sub_1C5D01EB0(0, &qword_1EC1AAC40);
    OUTLINED_FUNCTION_14_10(v40);
  }

  else
  {
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    v41 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v33 + 104) = sub_1C5C64D74(0, &qword_1EC1A8A28);
    *(v33 + 80) = v41;
    if (*(v0 + 472))
    {
      sub_1C5CBCF4C(v0 + 448);
    }
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_3_9();
  sub_1C5C66218(v42, v43);
  OUTLINED_FUNCTION_10_8();
  sub_1C6016880();
  OUTLINED_FUNCTION_10_8();
  v44 = sub_1C6016840();

  v45 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v52;
  sub_1C5D01AF0(v44, @"item-audio-asset-type-selection-metadata", v45, &v53);
  sub_1C5D0059C(@"asset-selection", v53);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1C5D00334@<X0>(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((sub_1C6014E20() & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = [objc_opt_self() defaultManager];
  sub_1C6014EE0();
  v3 = sub_1C6016900();

  *&v16 = 0;
  v4 = [v2 attributesOfItemAtPath:v3 error:&v16];

  v5 = v16;
  if (!v4)
  {
    v8 = v16;
    sub_1C6014D40();

    return swift_willThrow();
  }

  type metadata accessor for FileAttributeKey();
  sub_1C5C66218(&qword_1EC1AA3E8, type metadata accessor for FileAttributeKey);
  v6 = sub_1C6016860();
  v7 = v5;

  sub_1C5CFF394(v6, sub_1C5CE36D0, &v14);
  if (v15)
  {

    sub_1C5C70758(&v14, &v16);
  }

  else
  {
    sub_1C5CFF394(v6, sub_1C5CE36D0, &v16);

    if (v15)
    {
      sub_1C5CBCF4C(&v14);
    }
  }

  if (!v17)
  {
    sub_1C5CBCF4C(&v16);
LABEL_11:
    v13 = sub_1C6015020();
    v12 = a1;
    v11 = 1;
    return __swift_storeEnumTagSinglePayload(v12, v11, 1, v13);
  }

  v10 = sub_1C6015020();
  v11 = swift_dynamicCast() ^ 1;
  v12 = a1;
  v13 = v10;
  return __swift_storeEnumTagSinglePayload(v12, v11, 1, v13);
}

void sub_1C5D0059C(void *a1, uint64_t a2)
{
  v5 = [v2 eventStream];
  if (v5)
  {
    oslog = v5;
    sub_1C5D01810(a1, a2, v5);
  }

  else
  {
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v6 = sub_1C60162D0();
    __swift_project_value_buffer(v6, qword_1EC1BE420);
    v7 = v2;
    v8 = a1;
    oslog = sub_1C60162B0();
    v9 = sub_1C6016F20();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 141558531;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = v7;
      v13 = [v12 description];
      v14 = sub_1C6016940();
      v16 = v15;

      v17 = sub_1C5C6AB10(v14, v16, &v23);

      *(v10 + 14) = v17;
      *(v10 + 22) = 2080;
      type metadata accessor for MPCPlaybackEngineEventType();
      v18 = v8;
      v19 = sub_1C60169A0();
      v21 = sub_1C5C6AB10(v19, v20, &v23);

      *(v10 + 24) = v21;
      _os_log_impl(&dword_1C5C61000, oslog, v9, "[%{private,mask.hash}s] Attempting to emit an event %s without an event stream.", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v11, -1, -1);
      MEMORY[0x1C6956920](v10, -1, -1);

      return;
    }
  }
}

id sub_1C5D00808()
{
  v1 = v0;
  [v0 durationIfAvailable];
  v3 = v2;
  if (sub_1C5D01960(v0, &selRef_playbackInfo))
  {
    v4 = sub_1C6016840();
  }

  else
  {
    v4 = 0;
  }

  [v1 _expectedStartTimeWithPlaybackInfo_];

  if (sub_1C5D01960(v1, &selRef_playbackInfo))
  {
    v5 = sub_1C6016840();
  }

  else
  {
    v5 = 0;
  }

  [v1 _expectedStopTimeWithPlaybackInfo_];

  result = [v1 modelGenericObject];
  if (!result)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v7 = result;
  v8 = [result flattenedGenericObject];

  if (v8 && (v9 = [v8 anyObject]) != 0)
  {
    v10 = v9;
    v11 = [v9 identifiers];
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C5C6AFC0(0, v12, v13, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035CF0;
  *(inited + 32) = @"queue-section-id";
  v15 = @"queue-section-id";
  result = [v1 queueSectionID];
  if (!result)
  {
    goto LABEL_69;
  }

  *(inited + 40) = result;
  *(inited + 48) = @"queue-item-id";
  v16 = @"queue-item-id";
  result = [v1 queueItemID];
  if (!result)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  *(inited + 56) = result;
  *(inited + 64) = @"item-kind";
  if (v11)
  {
    v17 = @"item-kind";
    v18 = [v11 modelKind];
    if (v18)
    {
      v19 = (inited + 88);
      *(inited + 72) = v18;
      *(inited + 80) = @"item-ids";
LABEL_19:
      *v19 = v11;
      v21 = @"item-ids";
      goto LABEL_21;
    }
  }

  else
  {
    v20 = @"item-kind";
  }

  v19 = (inited + 88);
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 80) = @"item-ids";
  if (v11)
  {
    goto LABEL_19;
  }

  v22 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v23 = @"item-ids";
  v24 = [v22 init];
  v11 = 0;
  *v19 = v24;
LABEL_21:
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_16();
  sub_1C5C66218(v25, v26);
  v27 = v11;
  v28 = sub_1C6016880();
  sub_1C5C6AFC0(0, &unk_1EC1A88C0, sub_1C5D018E0, MEMORY[0x1E69E6F90]);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1C6036710;
  *(v29 + 32) = @"item-duration";
  if ((*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0 || v3 <= 2.22044605e-16)
  {
    v32 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
    v33 = @"item-duration";
    v35 = [v32 init];
  }

  else
  {
    v34 = @"item-duration";
    v35 = sub_1C6016D00();
  }

  *(v29 + 40) = v35;
  *(v29 + 48) = @"item-title";
  v36 = @"item-title";
  *(v29 + 56) = [v1 mainTitle];
  *(v29 + 64) = @"item-has-video";
  v37 = @"item-has-video";
  [v1 type];
  *(v29 + 72) = sub_1C6016B90();
  *(v29 + 80) = @"item-initial-position";
  v38 = @"item-initial-position";
  v39 = [v1 lastMetadataChangeTime];
  if (!v39)
  {
    goto LABEL_33;
  }

  v40 = [v1 initialPlaybackStartTime];
  if (!v40)
  {
    __break(1u);
LABEL_33:
    v40 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 88) = v40;
  *(v29 + 96) = @"item-start-boundary";
  v41 = @"item-start-boundary";
  *(v29 + 104) = sub_1C6016D00();
  *(v29 + 112) = @"item-end-boundary";
  v42 = @"item-end-boundary";
  *(v29 + 120) = sub_1C6016D00();
  *(v29 + 128) = @"item-is-start-item";
  v43 = @"item-is-start-item";
  [v1 isStartItem];
  *(v29 + 136) = sub_1C6016B90();
  *(v29 + 144) = @"item-is-placeholder";
  v44 = sub_1C5C64D74(0, &qword_1ED7DCCD0);
  v45 = @"item-is-placeholder";
  *(v29 + 152) = sub_1C60172A0();
  *(v29 + 160) = @"uses-bookmarking";
  v46 = @"uses-bookmarking";
  [v1 usesBookmarking];
  *(v29 + 168) = sub_1C6016B90();
  *(v29 + 176) = @"explicit-treatment";
  v47 = @"explicit-treatment";
  sub_1C5CD41FC(v1, &selRef_explicitBadge);
  if (v48)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 184) = v44;
  *(v29 + 192) = @"podcast-store-id";
  v49 = @"podcast-store-id";
  sub_1C5CD41FC(v1, &selRef_podcastStoreID);
  if (v50)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 200) = v44;
  *(v29 + 208) = @"podcast-feed-url";
  v51 = @"podcast-feed-url";
  sub_1C5CD41FC(v1, &selRef_podcastFeedURL);
  if (v52)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 216) = v44;
  *(v29 + 224) = @"podcast-asset-url";
  v53 = @"podcast-asset-url";
  sub_1C5CD41FC(v1, &selRef_podcastAssetURL);
  if (v54)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 232) = v44;
  *(v29 + 240) = @"podcast-item-type";
  v55 = @"podcast-item-type";
  sub_1C5CD41FC(v1, &selRef_podcastItemType);
  if (v56)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 248) = v44;
  *(v29 + 256) = @"podcast-media-type";
  v57 = @"podcast-media-type";
  sub_1C5CD41FC(v1, &selRef_podcastMediaType);
  if (v58)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 264) = v44;
  *(v29 + 272) = @"podcast-price-type";
  v59 = @"podcast-price-type";
  sub_1C5CD41FC(v1, &selRef_podcastPriceType);
  if (v60)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 280) = v44;
  *(v29 + 288) = @"podcast-content-guid";
  v61 = @"podcast-content-guid";
  sub_1C5CD41FC(v1, &selRef_podcastContentGUID);
  if (v62)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 296) = v44;
  *(v29 + 304) = @"podcast-preferred-rate";
  v63 = @"podcast-preferred-rate";
  *(v29 + 312) = sub_1C6016D20();
  *(v29 + 320) = @"podcast-playback-setting-source";
  v64 = @"podcast-playback-setting-source";
  *(v29 + 328) = [v1 playbackSettingsSource];
  *(v29 + 336) = @"podcast-subscription-state";
  v65 = @"podcast-subscription-state";
  sub_1C5CD41FC(v1, &selRef_podcastSubscriptionState);
  if (v66)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 344) = v44;
  *(v29 + 352) = @"podcast-subscribable";
  v67 = @"podcast-subscribable";
  v68 = [v1 podcastIsSubscribable];
  *(v29 + 360) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(v29 + 368) = @"podcast-news-subscription-information";
  v69 = @"podcast-news-subscription-information";
  sub_1C5CD41FC(v1, &selRef_newsSubscriptionInformation);
  if (v70)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    v68 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(v29 + 376) = v68;
  type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
  sub_1C5C64D74(0, &qword_1ED7DCC30);
  OUTLINED_FUNCTION_2_13();
  sub_1C5C66218(v71, v72);
  v73 = sub_1C6016880();
  v74 = sub_1C5D01798(v1);
  if (v74)
  {
    v77 = v74;
    sub_1C5CC5674();
    sub_1C5C6AFC0(0, &qword_1EC1AAC38, sub_1C5CC547C, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      sub_1C6016AF0();

      swift_isUniquelyReferenced_nonNull_native();
      v77 = v73;
      sub_1C5E3672C();
    }
  }

  v75 = sub_1C6016840();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v28;
  sub_1C5D01AF0(v75, @"item-metadata", isUniquelyReferenced_nonNull_native, &v77);

  return v77;
}

uint64_t sub_1C5D012B8(uint64_t a1)
{
  v2 = sub_1C5D00808();
  v3 = sub_1C5CFF1E4(@"item-metadata", v2);
  if (v3)
  {
    v11 = v3;
    sub_1C5CC547C();
    sub_1C5D01FF0(0, &unk_1EC1AAC50, MEMORY[0x1E69E5E28]);
    if (swift_dynamicCast())
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v10;
      sub_1C5D01504(a1, sub_1C5D01A08, 0, isUniquelyReferenced_nonNull_native, &v11);
      type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
      sub_1C5C64D74(0, &qword_1ED7DCC30);
      OUTLINED_FUNCTION_2_13();
      sub_1C5C66218(v5, v6);
      v7 = sub_1C6016840();

      v8 = swift_isUniquelyReferenced_nonNull_native();
      v11 = v2;
      sub_1C5D01AF0(v7, @"item-metadata", v8, &v11);
      sub_1C5D0059C(@"item-update", v11);
    }
  }
}

id sub_1C5D01490(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C5C653C8(a3, a1);

  return a2;
}

id sub_1C5D014D0(void *a1, void *a2, void *a3)
{
  *a1 = a3;
  v4 = a2;
  v5 = a3;
  return v4;
}

uint64_t sub_1C5D01504(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v39 = a5;
  sub_1C5D019CC(a1, a2, a3, v38);
  v6 = v38[1];
  v7 = v38[3];
  v8 = v38[4];
  v33 = v38[5];
  v34 = v38[0];
  v9 = (v38[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v35 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
      v13 = *(*(v34 + 56) + v12);
      v37[0] = *(*(v34 + 48) + v12);
      v37[1] = v13;
      v14 = v37[0];
      v15 = v13;
      v33(v36, v37);

      v17 = v36[0];
      v16 = v36[1];
      v18 = *v39;
      v20 = sub_1C5CE36D0(v36[0]);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v23 = v19;
      if (v18[3] >= v21 + v22)
      {
        if ((v35 & 1) == 0)
        {
          sub_1C5D01FF0(0, &qword_1EC1AC090, MEMORY[0x1E69E6DC8]);
          sub_1C6017670();
        }
      }

      else
      {
        sub_1C5CE9EE0();
        v24 = sub_1C5CE36D0(v17);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_24;
        }

        v20 = v24;
      }

      v8 &= v8 - 1;
      v26 = *v39;
      if (v23)
      {

        v27 = v26[7];
        v28 = *(v27 + 8 * v20);
        *(v27 + 8 * v20) = v16;
      }

      else
      {
        v26[(v20 >> 6) + 8] |= 1 << v20;
        *(v26[6] + 8 * v20) = v17;
        *(v26[7] + 8 * v20) = v16;
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v26[2] = v31;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C5C8C7F4();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v35 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
  result = sub_1C60178D0();
  __break(1u);
  return result;
}

uint64_t sub_1C5D01798(void *a1)
{
  v1 = [a1 musicSubscriptionInformation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C5D01EB0(0, &qword_1EC1A9490);
  v3 = sub_1C6016B10();

  return v3;
}

void sub_1C5D01810(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  sub_1C5C66218(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v5 = sub_1C6016840();
  [a3 emitEventType:a1 payload:v5];
}

void sub_1C5D018E0()
{
  if (!qword_1EC1A8A98)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    sub_1C5C64D74(255, &qword_1ED7DCC30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8A98);
    }
  }
}

uint64_t sub_1C5D01960(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C6016860();

  return v4;
}

uint64_t sub_1C5D019CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

id sub_1C5D01A08@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_1C5D014D0(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1C5D01A44()
{
  if (!qword_1EC1A8960)
  {
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    sub_1C5C66218(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8960);
    }
  }
}

id sub_1C5D01AF0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *a4;
  v7 = sub_1C5CE36D0(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  sub_1C5D01A44();
  if ((sub_1C6017660() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1C5CE36D0(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *a4;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5D01FAC(v9, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_1C5D01C10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C5D01CC4;

  return sub_1C5CFF4F8(a1, v4, v5, v6);
}

uint64_t sub_1C5D01CC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C5D01DB8(uint64_t a1)
{
  sub_1C5C6AFC0(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5D01E44()
{
  if (!qword_1EC1A8A30)
  {
    type metadata accessor for MPCPlaybackEngineEventItemAssetTypeSelectionMetadataKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8A30);
    }
  }
}

void sub_1C5D01EB0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C60168A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C5D01F0C()
{
  if (!qword_1EC1A8950)
  {
    type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey();
    sub_1C5C66218(&qword_1EC1A8A90, type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey);
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8950);
    }
  }
}

unint64_t sub_1C5D01FAC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_1C5D01FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    v7 = v6;
    v8 = sub_1C5C64D74(255, &qword_1ED7DCC30);
    OUTLINED_FUNCTION_2_13();
    v11 = sub_1C5C66218(v9, v10);
    v12 = a3(a1, v7, v8, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  v2 = *(v0 + 584);

  return sub_1C5D00334(v2);
}

_OWORD *OUTLINED_FUNCTION_14_10(uint64_t a1)
{
  *(v3 + 472) = a1;
  *(v3 + 448) = v2;

  return sub_1C5C70758((v3 + 448), (v1 + 80));
}

id sub_1C5D02128()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = sub_1C5D021B4(KeyPath, v1, v2);

  return v3;
}

id sub_1C5D021B4(void (*a1)(char *, uint64_t), uint64_t a2, char *a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v33 = a1;
  sub_1C5CBD110();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = sub_1C6015770();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  swift_beginAccess();
  v15 = *(v11 + 16);
  v15(v13, &v3[v14], v10);
  v16 = sub_1C6015590();
  v17 = *(v11 + 8);
  v17(v13, v10);
  if ((v16 & 1) == 0 || (v15(v13, &v4[v14], v10), v18 = sub_1C6015530(), v17(v13, v10), v18 <= 0) && (v15(v13, &v4[v14], v10), v19 = sub_1C6015550(), v17(v13, v10), v19 < 1))
  {
    v34 = v4;
    v35 = v14;
    v33 = v17;
    v23 = [v4 releaseDate];
    if (v23)
    {
      v24 = v23;
      v25 = v36;
      sub_1C6014FF0();

      v26 = 0;
      v27 = v15;
    }

    else
    {
      v26 = 1;
      v27 = v15;
      v25 = v36;
    }

    v28 = sub_1C6015020();
    __swift_storeEnumTagSinglePayload(v25, v26, 1, v28);
    sub_1C5D02610(v25, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v28) == 1)
    {
      sub_1C5D01DB8(v9);
      v30 = v33;
      v29 = v34;
    }

    else
    {
      v22 = sub_1C6014FA0();
      (*(*(v28 - 8) + 8))(v9, v28);
      v29 = v34;
      v27(v13, &v34[v35], v10);
      v31 = sub_1C6015590();
      v30 = v33;
      v33(v13, v10);
      if ((v31 & 1) == 0)
      {
        return v22;
      }
    }

    v27(v13, &v29[v35], v10);
    v22 = sub_1C60156C0();
    v30(v13, v10);
    return v22;
  }

  result = [v4 contentItem];
  if (result)
  {
    v21 = result;
    [result episodeType];

    v15(v13, &v4[v14], v10);
    swift_getAtKeyPath();
    v17(v13, v10);
    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D02610(uint64_t a1, uint64_t a2)
{
  sub_1C5CBD110();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1C5D02674(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C6014F50();
  v6 = [v4 initWithData_];

  sub_1C5C8F8BC(a1, a2);
  return v6;
}

id sub_1C5D026EC()
{
  result = [objc_allocWithZone(type metadata accessor for PodcastsArtworkCatalogDataSource(0)) init];
  qword_1EC1BE3C0 = result;
  return result;
}

uint64_t sub_1C5D02758(char a1)
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](a1 & 1);
  return sub_1C6017A20();
}

BOOL sub_1C5D027BC(void *a1)
{
  v2 = MEMORY[0x1E69C4C68];
  sub_1C5D04C0C(0, &qword_1EC1A8F58, MEMORY[0x1E69C4C68]);
  v4 = OUTLINED_FUNCTION_13_3(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C5D03E6C(a1, &v10 - v5);
  v7 = sub_1C6015A40();
  v8 = __swift_getEnumTagSinglePayload(v6, 1, v7) != 1;
  sub_1C5D04B54(v6, &qword_1EC1A8F58, v2);
  return v8;
}

id sub_1C5D028E0(void *a1)
{
  OUTLINED_FUNCTION_1_14();
  sub_1C5D04C0C(0, v3, v4);
  v6 = OUTLINED_FUNCTION_13_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v24 - v7);
  v9 = sub_1C6015A40();
  OUTLINED_FUNCTION_105();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  sub_1C5D03E6C(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_1_14();
    sub_1C5D04B54(v8, v16, v17);
    return 0;
  }

  else
  {
    sub_1C5D04BA8(v8, v15);
    OUTLINED_FUNCTION_4_13();
    sub_1C5D04ADC(v15, v13, v19);
    v20 = type metadata accessor for PodcastsArtworkDataSourceVisualIdenticalityToken(0);
    v21 = objc_allocWithZone(v20);
    sub_1C5D04ADC(v13, v21 + OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel, v8);
    v24.receiver = v21;
    v24.super_class = v20;
    v22 = objc_msgSendSuper2(&v24, sel_init);
    sub_1C5D04A84(v13, v8);
    v18 = [*(v1 + OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsArtworkCatalogDataSource_cache) objectForKey_];

    sub_1C5D04A84(v15, v8);
  }

  return v18;
}

uint64_t sub_1C5D02B10(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1C6014F20();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = OUTLINED_FUNCTION_21_0();
  v4 = sub_1C6015AD0();
  v2[9] = v4;
  OUTLINED_FUNCTION_13_3(v4);
  v2[10] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_0_18();
  sub_1C5D04C0C(0, v5, v6);
  OUTLINED_FUNCTION_13_3(v7);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v8 = sub_1C6015DF0();
  OUTLINED_FUNCTION_13_3(v8);
  v2[13] = OUTLINED_FUNCTION_21_0();
  sub_1C5D04C0C(0, &qword_1EC1AAD48, MEMORY[0x1E69C4E28]);
  OUTLINED_FUNCTION_13_3(v9);
  v2[14] = OUTLINED_FUNCTION_21_0();
  v10 = sub_1C6015AF0();
  v2[15] = v10;
  v2[16] = *(v10 - 8);
  v2[17] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_1_14();
  sub_1C5D04C0C(0, v11, v12);
  OUTLINED_FUNCTION_13_3(v13);
  v2[18] = OUTLINED_FUNCTION_21_0();
  v14 = sub_1C6015A40();
  v2[19] = v14;
  OUTLINED_FUNCTION_13_3(v14);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5D02D40, 0, 0);
}

uint64_t sub_1C5D02D40()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_1C5D03E6C(*(v0 + 32), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_1_14();
    sub_1C5D04B54(v3, v4, v5);
    sub_1C5D04C60();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_6_10();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_27_7();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 112);
  v12 = *(v0 + 32);
  sub_1C5D04BA8(*(v0 + 144), v10);
  sub_1C5D04ADC(v10, v9, MEMORY[0x1E69C4C68]);
  [v12 fittingSize];
  v13 = sub_1C60161D0();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C6015DE0();
  sub_1C6015AE0();
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_1C5D02FB4;
  OUTLINED_FUNCTION_27_7();

  return MEMORY[0x1EEE2E690]();
}

uint64_t sub_1C5D02FB4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {

    v5 = sub_1C5D03518;
  }

  else
  {
    v5 = sub_1C5D030C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C5D030C8()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  OUTLINED_FUNCTION_15_6(v5, 0);
  v8 = v7;
  sub_1C5D04ADC(v2, v3, v7);
  v9 = type metadata accessor for PodcastsArtworkDataSourceVisualIdenticalityToken(0);
  v10 = objc_allocWithZone(v9);
  sub_1C5D04ADC(v3, v10 + OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel, v8);
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  v11 = objc_msgSendSuper2((v0 + 16), sel_init);
  sub_1C5D04A84(v3, v8);
  sub_1C5D04CB4(v5, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    OUTLINED_FUNCTION_0_18();
    sub_1C5D04B54(v12, v13, v14);
    goto LABEL_16;
  }

  v4 = *(v0 + 72);
  v6 = *(v0 + 80);
  OUTLINED_FUNCTION_8_9(*(v0 + 88));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *(v0 + 80);
  if (EnumCaseMultiPayload == 1)
  {
    v17 = OUTLINED_FUNCTION_19_8();
    v18(v17);
    sub_1C6014F30();
    v5 -= 24;
    if (v1)
    {
      OUTLINED_FUNCTION_26_4();
      v19 = OUTLINED_FUNCTION_18();
      v20(v19);
      OUTLINED_FUNCTION_3_10();
      sub_1C5D04A84(v6, v21);
      goto LABEL_16;
    }

    v22 = OUTLINED_FUNCTION_17_4();
    v23(v22);
  }

  else
  {
    v4 = *v16;
    v3 = *(v16 + 8);
  }

  v5 = *(v0 + 88);
  v6 = sub_1C5D04D34();
  v24 = OUTLINED_FUNCTION_18();
  sub_1C5CFAC9C(v24, v25);
  v26 = OUTLINED_FUNCTION_18();
  v28 = sub_1C5D02674(v26, v27);
  v29 = OUTLINED_FUNCTION_18();
  sub_1C5CB6098(v29, v30);
  OUTLINED_FUNCTION_3_10();
  sub_1C5D04A84(v5, v31);
  if (v28)
  {
    if (qword_1EC1A8EA8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v32 = sub_1C60162D0();
    __swift_project_value_buffer(v32, qword_1EC1BE388);
    v33 = sub_1C60162B0();
    v34 = sub_1C6016F00();
    if (os_log_type_enabled(v33, v34))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      OUTLINED_FUNCTION_23_5(&dword_1C5C61000, v35, v36, "Loaded artwork from local cache");
      MEMORY[0x1C6956920](v4, -1, -1);
    }

    OUTLINED_FUNCTION_9_10();
    v37 = v11;
    sub_1C6015A10();
    v38 = objc_opt_self();
    v39 = OUTLINED_FUNCTION_22_7(v38, sel_representationForVisualIdentity_withSize_image_);

    [*(v5 + OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsArtworkCatalogDataSource_cache) setObject:v39 forKey:v37];
    OUTLINED_FUNCTION_0_18();
    sub_1C5D04B54(v8, v40, v41);
    (*(v3 + 8))(v4, v10);
    OUTLINED_FUNCTION_2_14();
    sub_1C5D04A84(v34, v42);

    OUTLINED_FUNCTION_21_8();
    OUTLINED_FUNCTION_14_11();

    __asm { BRAA            X2, X16 }
  }

LABEL_16:
  OUTLINED_FUNCTION_25_4();
  v45 = swift_allocError();
  OUTLINED_FUNCTION_24_6(v45, v46);

  OUTLINED_FUNCTION_0_18();
  sub_1C5D04B54(v8, v47, v48);
  (*(v6 + 8))(v3, v5);
  OUTLINED_FUNCTION_2_14();
  sub_1C5D04A84(v4, v49);
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_11();

  __asm { BRAA            X1, X16 }
}

void sub_1C5D03518()
{
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  OUTLINED_FUNCTION_15_6(v5, 1);
  v8 = v7;
  sub_1C5D04ADC(v2, v3, v7);
  v9 = type metadata accessor for PodcastsArtworkDataSourceVisualIdenticalityToken(0);
  v10 = objc_allocWithZone(v9);
  sub_1C5D04ADC(v3, v10 + OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel, v8);
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  v11 = objc_msgSendSuper2((v0 + 16), sel_init);
  sub_1C5D04A84(v3, v8);
  sub_1C5D04CB4(v5, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    OUTLINED_FUNCTION_0_18();
    sub_1C5D04B54(v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_8_9(*(v0 + 88));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 80);
    if (EnumCaseMultiPayload == 1)
    {
      v17 = OUTLINED_FUNCTION_19_8();
      v18(v17);
      sub_1C6014F30();
      v19 = OUTLINED_FUNCTION_17_4();
      v20(v19);
    }

    else
    {
      v3 = *v16;
      v5 = *(v16 + 8);
    }

    v8 = *(v0 + 88);
    v6 = sub_1C5D04D34();
    v21 = OUTLINED_FUNCTION_18();
    sub_1C5CFAC9C(v21, v22);
    v23 = OUTLINED_FUNCTION_18();
    v25 = sub_1C5D02674(v23, v24);
    v26 = OUTLINED_FUNCTION_18();
    sub_1C5CB6098(v26, v27);
    OUTLINED_FUNCTION_3_10();
    sub_1C5D04A84(v8, v28);
    if (v25)
    {
      if (qword_1EC1A8EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v29 = sub_1C60162D0();
      __swift_project_value_buffer(v29, qword_1EC1BE388);
      v30 = sub_1C60162B0();
      v31 = sub_1C6016F00();
      if (os_log_type_enabled(v30, v31))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        OUTLINED_FUNCTION_23_5(&dword_1C5C61000, v32, v33, "Loaded artwork from local cache");
        MEMORY[0x1C6956920](v3, -1, -1);
      }

      OUTLINED_FUNCTION_9_10();
      v34 = v11;
      sub_1C6015A10();
      v35 = objc_opt_self();
      v36 = OUTLINED_FUNCTION_22_7(v35, sel_representationForVisualIdentity_withSize_image_);

      [*(v8 + OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsArtworkCatalogDataSource_cache) setObject:v36 forKey:v34];
      OUTLINED_FUNCTION_0_18();
      sub_1C5D04B54(v10, v37, v38);
      (*(v5 + 8))(v3, v1);
      OUTLINED_FUNCTION_2_14();
      sub_1C5D04A84(v31, v39);

      OUTLINED_FUNCTION_21_8();
      OUTLINED_FUNCTION_14_11();

      __asm { BRAA            X2, X16 }
    }
  }

  OUTLINED_FUNCTION_25_4();
  v42 = swift_allocError();
  OUTLINED_FUNCTION_24_6(v42, v43);

  OUTLINED_FUNCTION_0_18();
  sub_1C5D04B54(v10, v44, v45);
  (*(v6 + 8))(v5, v8);
  OUTLINED_FUNCTION_2_14();
  sub_1C5D04A84(v3, v46);
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_11();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C5D039F0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C5D03AB4;

  return sub_1C5D02B10(v6);
}

uint64_t sub_1C5D03AB4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_101();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_1C6014D30();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

id sub_1C5D03C68(void *a1)
{
  OUTLINED_FUNCTION_1_14();
  sub_1C5D04C0C(0, v2, v3);
  v5 = OUTLINED_FUNCTION_13_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1C6015A40();
  OUTLINED_FUNCTION_105();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  sub_1C5D03E6C(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    OUTLINED_FUNCTION_1_14();
    sub_1C5D04B54(v7, v15, v16);
    return 0;
  }

  else
  {
    sub_1C5D04BA8(v7, v14);
    OUTLINED_FUNCTION_4_13();
    sub_1C5D04ADC(v14, v12, v18);
    v19 = type metadata accessor for PodcastsArtworkDataSourceVisualIdenticalityToken(0);
    v20 = objc_allocWithZone(v19);
    sub_1C5D04ADC(v12, v20 + OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel, a1);
    v22.receiver = v20;
    v22.super_class = v19;
    v17 = objc_msgSendSuper2(&v22, sel_init);
    sub_1C5D04A84(v12, a1);
    sub_1C5D04A84(v14, a1);
  }

  return v17;
}

uint64_t sub_1C5D03E6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C60159E0();
  v5 = OUTLINED_FUNCTION_13_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v6 = sub_1C6015A40();
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  v11 = sub_1C6015770();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  v16 = [a1 token];
  sub_1C6017390();
  swift_unknownObjectRelease();
  type metadata accessor for PodcastsArtworkToken(0);
  if (swift_dynamicCast())
  {
    v41 = a2;
    (*(v12 + 16))(v15, v42 + OBJC_IVAR____TtC17MediaPlaybackCore20PodcastsArtworkToken_mediaItem, v11);
    v17 = sub_1C60156B0();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_1C6015500();
      v40 = v22;
      if (v22)
      {
        v38 = v21;
        sub_1C6015640();
        v24 = v23;
        sub_1C6015660();
        v26 = v25;
        if (v24)
        {

          v39 = 0;
          v40 = v20;
          a2 = v41;
LABEL_12:
          sub_1C60156D0();
          sub_1C60159D0();
          sub_1C6015A60();
          sub_1C6015A30();
          sub_1C6015A20();
          sub_1C5D04B3C(v19, v40, v39);

          OUTLINED_FUNCTION_2_14();
          sub_1C5D04A84(v10, v32);
          v33 = OUTLINED_FUNCTION_10_9();
          v34(v33);
          v27 = 0;
          return __swift_storeEnumTagSinglePayload(a2, v27, 1, v6);
        }

        if (v26)
        {
          v39 = 1;
          a2 = v41;
          v19 = v38;
          goto LABEL_12;
        }

        v36 = OUTLINED_FUNCTION_10_9();
        v37(v36);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_10_9();
        v31(v30);
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_10_9();
      v29(v28);
    }

    v27 = 1;
    a2 = v41;
  }

  else
  {
    v27 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v27, 1, v6);
}

id sub_1C5D04220()
{
  sub_1C6015FF0();
  v1 = OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsArtworkCatalogDataSource_storeArtworkDataSource;
  *&v0[v1] = [objc_opt_self() sharedStoreArtworkDataSource];
  v2 = OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsArtworkCatalogDataSource_cache;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PodcastsArtworkCatalogDataSource(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1C5D043AC()
{
  result = sub_1C6016010();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5D04454@<X0>(void *a1@<X8>)
{
  v4 = sub_1C6015A40();
  v5 = OUTLINED_FUNCTION_13_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_4_13();
  sub_1C5D04ADC(v1 + v9, v8, v10);
  v11 = type metadata accessor for PodcastsArtworkDataSourceVisualIdenticalityToken(0);
  v12 = objc_allocWithZone(v11);
  sub_1C5D04ADC(v8, v12 + OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel, v2);
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  result = sub_1C5D04A84(v8, v2);
  a1[3] = v11;
  *a1 = v13;
  return result;
}

uint64_t sub_1C5D04594(uint64_t a1)
{
  sub_1C5D04ADC(a1, v5, sub_1C5CBCFA8);
  if (!v6)
  {
    sub_1C5D04A84(v5, sub_1C5CBCFA8);
    goto LABEL_5;
  }

  type metadata accessor for PodcastsArtworkDataSourceVisualIdenticalityToken(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = MEMORY[0x1C69524D0](v1 + OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel, &v4[OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel]);

  return v2 & 1;
}

uint64_t sub_1C5D04718()
{
  sub_1C6017A30();
  sub_1C6015A00();
  return sub_1C6017A10();
}

uint64_t sub_1C5D04760()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore48PodcastsArtworkDataSourceVisualIdenticalityToken_artworkModel);

  return v1;
}

id sub_1C5D0484C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5D049F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5D04A84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C5D04ADC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C5D04B3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1C5D04B54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C5D04C0C(0, a2, a3);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C5D04BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6015A40();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C5D04C0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C5D04C60()
{
  result = qword_1EC1AAD50;
  if (!qword_1EC1AAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAD50);
  }

  return result;
}

uint64_t sub_1C5D04CB4(uint64_t a1, uint64_t a2)
{
  sub_1C5D04C0C(0, &qword_1EC1AAD40, MEMORY[0x1E69C4C80]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5D04D34()
{
  result = qword_1EC1AAB88;
  if (!qword_1EC1AAB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1AAB88);
  }

  return result;
}

uint64_t sub_1C5D04D78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C5D04E2C;

  return sub_1C5D039F0(v2, v3, v4);
}

uint64_t sub_1C5D04E2C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t getEnumTagSinglePayload for PodcastQueueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PodcastsArtworkCatalogDataSource.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5D05088()
{
  result = qword_1EC1AAD60;
  if (!qword_1EC1AAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAD60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1)
{
  v3 = MEMORY[0x1E69C4C80];

  return sub_1C5D04ADC(a1, v1, v3);
}

void OUTLINED_FUNCTION_23_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_1C5D05168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PodcastChapter();
  v6 = v5;
  if (v4)
  {
    sub_1C5CFAC38(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1C5D0520C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1C60150D0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1C5D052B4()
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](0);
  return sub_1C6017A20();
}

uint64_t sub_1C5D052FC()
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](0);
  return sub_1C6017A20();
}

void *sub_1C5D0533C(uint64_t a1)
{
  v1[4] = 0x3FA999999999999ALL;
  v1[5] = 2;
  v1[6] = MEMORY[0x1E69E7CC0];
  v1[2] = a1;
  v1[3] = &unk_1F453BD90;
  return v1;
}

uint64_t sub_1C5D05384()
{
  OUTLINED_FUNCTION_248();
  if (sub_1C6016CA0())
  {
LABEL_4:
    OUTLINED_FUNCTION_5_1();

    return v1();
  }

  if (*(*(*(v0 + 16) + 48) + 16))
  {

    goto LABEL_4;
  }

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1C5D05468;

  return sub_1C5D05554();
}

uint64_t sub_1C5D05468()
{
  OUTLINED_FUNCTION_248();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;

  OUTLINED_FUNCTION_5_1();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C5D05554()
{
  OUTLINED_FUNCTION_248();
  v1[9] = v0;
  v2 = sub_1C6015060();
  v1[10] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_21_0();
  v4 = type metadata accessor for PodcastChapter();
  v1[13] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[14] = v5;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_0_19();
  sub_1C5D0A178(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v8);
  v1[17] = OUTLINED_FUNCTION_21_0();
  v9 = sub_1C60150D0();
  v1[18] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_21_0();
  v11 = sub_1C6014F20();
  v1[21] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[22] = v12;
  v1[23] = OUTLINED_FUNCTION_21_0();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C5D05730()
{
  OUTLINED_FUNCTION_23();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[9];
  v5 = *(v4 + 16);
  v0[24] = v5;
  v6 = [v5 URL];
  sub_1C6014EC0();

  sub_1C6014E60();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1C60169B0();
  v9 = v8;

  v10 = *(v4 + 24);
  v0[6] = v7;
  v0[7] = v9;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 6;
  LOBYTE(v10) = sub_1C5D2AE18(sub_1C5D0A05C, v11, v10);

  if ((v10 & 1) == 0)
  {
    sub_1C5D0A07C();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_3_11();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X1, X16 }
  }

  sub_1C5D0A0D0();
  v0[25] = sub_1C6015260();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  v0[26] = v12;
  *v12 = v13;
  v12[1] = sub_1C5D05940;
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE68140](v14, v15, v16, v17);
}

uint64_t sub_1C5D05940()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D05A40()
{
  OUTLINED_FUNCTION_13();
  sub_1C5D07618(v0[8], v0[20]);

  sub_1C5D0A178(0, &qword_1EC1A88D8, type metadata accessor for AVMetadataKey, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v0[28] = v1;
  *(v1 + 16) = xmmword_1C6035C00;
  v2 = *MEMORY[0x1E69876B8];
  v3 = *MEMORY[0x1E6987680];
  *(v1 + 32) = *MEMORY[0x1E69876B8];
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1C5D05B7C;
  v7 = v0[20];

  return MEMORY[0x1EEE68150](v7, v1);
}

uint64_t sub_1C5D05B7C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30();
  *v2 = v1;
  *(v1 + 240) = v3;
  *(v1 + 248) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5D05CA8()
{
  OUTLINED_FUNCTION_23();
  v23 = v0;
  v1 = sub_1C5C6AA20(v0[30]);
  v2 = MEMORY[0x1E69E7CC0];
  v0[32] = v1;
  v0[33] = v2;
  v3 = v0[30];
  v4 = v0[31];
  if (v1)
  {
    v5 = v3 & 0xC000000000000001;
    sub_1C5C8CEE0(0, (v3 & 0xC000000000000001) == 0, v3);
    v6 = v0[30];
    if (v5)
    {
      v7 = MEMORY[0x1C6954040](0, v6);
    }

    else
    {
      v7 = *(v6 + 32);
    }

    v8 = v7;
    v0[34] = v7;
    v0[35] = 1;
    if (sub_1C6016CA0())
    {

      v9 = OUTLINED_FUNCTION_20_7();
      v10(v9);

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_34_2();

      __asm { BRAA            X2, X16 }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    v0[36] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_8_10(v15);
    OUTLINED_FUNCTION_34_2();

    return sub_1C5D07E00(v17, v18);
  }

  else
  {

    v22 = v2;

    sub_1C5D08E0C(&v22);
    if (v4)
    {

      OUTLINED_FUNCTION_34_2();
    }

    else
    {

      v0[45] = v22;
      v20 = swift_task_alloc();
      v0[46] = v20;
      *v20 = v0;
      OUTLINED_FUNCTION_7_11(v20);
      OUTLINED_FUNCTION_34_2();

      return sub_1C5D06C6C();
    }
  }
}

uint64_t sub_1C5D05EC0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 304) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_32_2(v10);

    return sub_1C5D084E4(v11);
  }
}

uint64_t sub_1C5D06018()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[39] = v6;
  v3[40] = v7;
  v3[41] = v0;

  if (v0)
  {

    v8 = OUTLINED_FUNCTION_10();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v3[42] = v11;
    *v11 = v5;
    v12 = OUTLINED_FUNCTION_32_2(v11);

    return sub_1C5D079C0(v12);
  }
}

uint64_t sub_1C5D0617C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  v3[43] = v9;
  v3[44] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C5D06290()
{
  v67 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 272);
  if (!v1)
  {
    v29 = *(v0 + 312);
    v28 = *(v0 + 320);
    OUTLINED_FUNCTION_0_19();
    sub_1C5D09FEC(v30, v31, v32);
    sub_1C5CB6098(v29, v28);

    v20 = *(v0 + 264);
    goto LABEL_8;
  }

  [*(v0 + 272) timeRange];
  v3 = *(v0 + 424);
  v4 = *(v0 + 416);
  *(v0 + 480) = *(v0 + 408);
  *(v0 + 488) = v4;
  *(v0 + 496) = v3;
  Seconds = CMTimeGetSeconds((v0 + 480));
  [v2 timeRange];
  v6 = *(v0 + 448);
  v7 = *(v0 + 440);
  *(v0 + 504) = *(v0 + 432);
  *(v0 + 512) = v7;
  *(v0 + 520) = v6;
  v8 = CMTimeGetSeconds((v0 + 504));
  if (Seconds <= 0.05)
  {
    v36 = *(v0 + 312);
    v35 = *(v0 + 320);
    v37 = *(v0 + 272);
    OUTLINED_FUNCTION_0_19();
    sub_1C5D09FEC(v38, v39, v40);
    sub_1C5CB6098(v36, v35);

    v33 = *(v0 + 352);
    v34 = *(v0 + 280);
    goto LABEL_10;
  }

  v62 = *(v0 + 24);
  v63 = *(v0 + 312);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v64 = *(v0 + 320);
  v65 = *(v0 + 120);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  sub_1C6015050();
  v15 = sub_1C6015030();
  v17 = v16;
  (*(v13 + 8))(v11, v14);
  sub_1C5CB5CB0(v9, v10 + v12[6]);
  *v10 = v15;
  v10[1] = v17;
  v10[2] = v62;
  v10[3] = v1;
  v18 = (v10 + v12[7]);
  *v18 = v63;
  v18[1] = v64;
  *(v10 + v12[8]) = Seconds;
  *(v10 + v12[9]) = v8;
  sub_1C5CFAC38(v10, v65);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v0 + 264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v21 = *(v20 + 16);
    if (v21 >= *(v20 + 24) >> 1)
    {
      sub_1C5D0DD0C();
      v20 = v61;
    }

    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);

    sub_1C5D09F2C(v23);
    OUTLINED_FUNCTION_0_19();
    sub_1C5D09FEC(v22, v26, v27);
    *(v20 + 16) = v21 + 1;
    sub_1C5D08DA8(v24, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21);
LABEL_8:
    v33 = *(v0 + 352);
    v34 = *(v0 + 280);
    *(v0 + 264) = v20;
LABEL_10:
    if (v34 == *(v0 + 256))
    {
      v41 = *(v0 + 264);

      v66 = v41;

      sub_1C5D08E0C(&v66);
      if (v33)
      {

        OUTLINED_FUNCTION_19_9();
      }

      else
      {

        *(v0 + 360) = v66;
        v58 = swift_task_alloc();
        *(v0 + 368) = v58;
        *v58 = v0;
        OUTLINED_FUNCTION_7_11(v58);
        OUTLINED_FUNCTION_19_9();

        return sub_1C5D06C6C();
      }
    }

    v44 = *(v0 + 240);
    v45 = v44 & 0xC000000000000001;
    sub_1C5C8CEE0(v34, (v44 & 0xC000000000000001) == 0, v44);
    v46 = *(v0 + 240);
    v47 = v45 ? MEMORY[0x1C6954040](v34, v46) : *(v46 + 8 * v34 + 32);
    v48 = v47;
    *(v0 + 272) = v47;
    *(v0 + 280) = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
      break;
    }

    __break(1u);
LABEL_30:
    sub_1C5D0DD0C();
    v20 = v60;
  }

  if (sub_1C6016CA0())
  {

    v49 = OUTLINED_FUNCTION_20_7();
    v50(v49);

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_19_9();

    __asm { BRAA            X2, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 288) = v53;
  *v53 = v54;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_19_9();

  return sub_1C5D07E00(v55, v56);
}

uint64_t sub_1C5D06704()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;
  *(v4 + 376) = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C5D0680C()
{
  OUTLINED_FUNCTION_23();
  (*(v0[19] + 8))(v0[20], v0[18]);

  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C5D068CC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D06964()
{
  OUTLINED_FUNCTION_9();
  (*(v0[19] + 8))(v0[20], v0[18]);
  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5D06A0C()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_172();

  return v4();
}

uint64_t sub_1C5D06AC4()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);

  OUTLINED_FUNCTION_0_19();
  sub_1C5D09FEC(v4, v5, v6);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_172();

  return v7();
}

uint64_t sub_1C5D06B90()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  sub_1C5CB6098(v1, v2);
  OUTLINED_FUNCTION_0_19();
  sub_1C5D09FEC(v6, v7, v8);
  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_172();

  return v9();
}

uint64_t sub_1C5D06C6C()
{
  OUTLINED_FUNCTION_248();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_11_6();
  sub_1C5D0A178(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v5);
  v1[4] = OUTLINED_FUNCTION_21_0();
  v6 = type metadata accessor for PodcastChapter();
  v1[5] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[6] = v7;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_1C5D08D40();
  v1[13] = v8;
  OUTLINED_FUNCTION_13_3(v8);
  v1[14] = OUTLINED_FUNCTION_21_0();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5D06DB8()
{
  v57 = v0[12];
  v58 = v0[11];
  v60 = v0[10];
  v59 = v0[9];
  v62 = v0[6];
  v63 = v0[13];
  v61 = v0[5];
  v1 = v0[2];
  v64 = *(v1 + 16);

  v2 = 0;
  while (1)
  {
    v0[15] = v1;
    if (v64 == v2)
    {
      break;
    }

    v3 = v1;
    v4 = v0[14];
    v5 = v0[12];
    v6 = *(v63 + 48);
    v7 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v8 = v0[2] + v7;
    v9 = *(v62 + 72);
    v10 = v9 * v2;
    sub_1C5CFAC38(v8 + v9 * v2, v4 + v6);
    sub_1C5D08DA8(v4 + v6, v5);
    if (sub_1C6016CA0())
    {
      v49 = v0[12];

      sub_1C5D09F2C(v49);
      goto LABEL_19;
    }

    v11 = v0[12];
    if (v2)
    {
      v13 = v0[9];
      v10 = v9 * (v2 - 1);
      v14 = v0[10];
      sub_1C5CFAC38(v8 + v10, v14);
      v15 = v61[9];
      v16 = *(v14 + v15);
      v17 = *(v11 + v15) - v16;
      v18 = *v14;
      v20 = v60[1];
      v19 = v60[2];
      v21 = v60[3];
      v22 = v61[6];
      v23 = (v14 + v61[7]);
      v24 = v14;
      v26 = *v23;
      v25 = v23[1];
      *v13 = v18;
      v59[1] = v20;
      v59[2] = v19;
      v59[3] = v21;
      sub_1C5CB5CB0(v24 + v22, v13 + v61[6]);
      v27 = (v13 + v61[7]);
      *v27 = v26;
      v27[1] = v25;
      *(v13 + v61[8]) = v17;
      *(v13 + v61[9]) = v16;

      sub_1C5CFAF68(v26, v25);
      v1 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C5D101C0();
        v1 = v42;
      }

      v28 = v0[12];
      sub_1C5D09F2C(v0[10]);
      v29 = sub_1C5D09F2C(v28);
      v33 = v0 + 9;
      if (v2 > *(v1 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return MEMORY[0x1EEE68140](v29, v30, v31, v32);
      }

LABEL_14:
      sub_1C5D09F88(*v33, v1 + v7 + v10);
      ++v2;
    }

    else
    {
      v12 = *(v11 + v61[9]);
      if (v12 != 0.0)
      {
        v34 = v0[11];
        v35 = v12 + *(v11 + v61[8]);
        v36 = v57[2];
        v37 = v57[3];
        v38 = v61[6];
        v39 = (v11 + v61[7]);
        v40 = *v39;
        v55 = v39[1];
        v56 = v57[1];
        *v34 = *v11;
        v58[1] = v56;
        v58[2] = v36;
        v58[3] = v37;
        sub_1C5CB5CB0(v11 + v38, v34 + v61[6]);
        v41 = (v34 + v61[7]);
        *v41 = v40;
        v41[1] = v55;
        *(v34 + v61[8]) = v35;
        *(v34 + v61[9]) = 0;

        sub_1C5CFAF68(v40, v55);
        v1 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C5D101C0();
          v1 = v43;
        }

        v29 = sub_1C5D09F2C(v0[12]);
        v33 = v0 + 11;
        if (!*(v1 + 16))
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      sub_1C5D09F2C(v0[12]);
      v2 = 1;
      v1 = v3;
    }
  }

  v45 = v0[4];
  v44 = v0[5];
  sub_1C5CFBB00(v0[2], v45);
  if (__swift_getEnumTagSinglePayload(v45, 1, v44) != 1)
  {
    sub_1C5D08DA8(v0[4], v0[8]);
    sub_1C5CDC0F0();
    v0[16] = sub_1C6015280();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    v0[17] = v53;
    *v53 = v54;
    v53[1] = sub_1C5D07234;
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x1EEE68140](v29, v30, v31, v32);
  }

  OUTLINED_FUNCTION_11_6();
  sub_1C5D09FEC(v46, v47, v48);
  if (*(v1 + 16) < 2uLL)
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_15_7();

  v50 = OUTLINED_FUNCTION_30_3();

  return v51(v50);
}

uint64_t sub_1C5D07234()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5D0736C()
{
  *(v0 + 168) = *(v0 + 144);
  v1 = *(v0 + 120);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 160);
  *(v0 + 176) = *(v0 + 152);
  *(v0 + 184) = v5;
  Seconds = CMTimeGetSeconds((v0 + 168));
  v7 = *(v1 + 16);
  v8 = *(v2 + v4[9]);
  v9 = Seconds - v8;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v4[6];
  v14 = (v2 + v4[7]);
  v15 = *v14;
  v16 = v14[1];
  *v3 = *v2;
  v3[1] = v10;
  v3[2] = v11;
  v3[3] = v12;
  sub_1C5CB5CB0(v2 + v13, v3 + v4[6]);
  v17 = (v3 + v4[7]);
  *v17 = v15;
  v17[1] = v16;
  *(v3 + v4[8]) = v9;
  *(v3 + v4[9]) = v8;

  sub_1C5CFAF68(v15, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + 120);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C5D101C0();
    v19 = v23;
  }

  result = sub_1C5D09F2C(*(v0 + 64));
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 > *(v19 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1C5D09F88(*(v0 + 56), v19 + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)) + *(*(v0 + 48) + 72) * (v7 - 1));
  if (*(v19 + 16) <= 1uLL)
  {
  }

  OUTLINED_FUNCTION_15_7();

  v21 = OUTLINED_FUNCTION_30_3();

  return v22(v21);
}

uint64_t sub_1C5D0754C()
{
  OUTLINED_FUNCTION_23();
  sub_1C5D09F2C(*(v0 + 64));
  if (*(*(v0 + 120) + 16) <= 1uLL)
  {
  }

  OUTLINED_FUNCTION_15_7();

  v1 = OUTLINED_FUNCTION_30_3();

  return v2(v1);
}

uint64_t sub_1C5D07618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_12_8();
  sub_1C5D0A178(0, v4, v5, MEMORY[0x1E69E6720]);
  v7 = OUTLINED_FUNCTION_13_3(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = sub_1C60150D0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v30 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v30 - v18;
  sub_1C60150C0();
  v40 = v19;
  v38 = a1;
  LOBYTE(a1) = sub_1C5D2AD44(sub_1C5D08D20, v39, a1);
  v20 = *(v11 + 8);
  v20(v19, v10);
  if (a1)
  {
    return sub_1C60150C0();
  }

  result = sub_1C6015090();
  v32 = *(result + 16);
  if (v32)
  {
    v22 = 0;
    v23 = *(v38 + 16);
    v36 = v11 + 16;
    v37 = v23;
    v34 = result;
    v35 = a2;
    v30[1] = result + 32;
    v31 = v9;
    v30[0] = v17;
    while (2)
    {
      if (v22 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v33 = v22 + 1;

      for (i = 0; v37 != i; ++i)
      {
        (*(v11 + 16))(v14, v38 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i, v10);

        sub_1C6015070();
        v25 = MEMORY[0x1C6951B90](v14, v19);
        v20(v19, v10);
        if (v25)
        {

          v28 = *(v11 + 32);
          v29 = v30[0];
          v28(v30[0], v14, v10);
          return v28(v35, v29, v10);
        }

        v20(v14, v10);
      }

      v22 = v33;
      result = v34;
      a2 = v35;
      v9 = v31;
      if (v33 != v32)
      {
        continue;
      }

      break;
    }
  }

  sub_1C5D0520C(v38, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v9, v10);
  }

  sub_1C60150C0();
  result = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (result != 1)
  {
    OUTLINED_FUNCTION_12_8();
    return sub_1C5D09FEC(v9, v26, v27);
  }

  return result;
}

uint64_t sub_1C5D079D4()
{
  v2 = [*(v0 + 32) items];
  sub_1C5C64D74(0, &qword_1EC1AADD0);
  v3 = sub_1C6016B10();

  v4 = sub_1C5C6AA20(v3);
  if (!v4)
  {
LABEL_15:

    OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_19_3();

    __asm { BRAA            X3, X16 }
  }

  v8 = v4;
  v9 = 0;
  v33 = v3 & 0xFFFFFFFFFFFFFF8;
  v34 = *MEMORY[0x1E69876B8];
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6954040](v9, v3);
    }

    else
    {
      if (v9 >= *(v33 + 16))
      {
        goto LABEL_23;
      }

      v10 = *(v3 + 8 * v9 + 32);
    }

    v4 = OUTLINED_FUNCTION_30_4(v10, v11, v12, v13, v14, v15, v16, v17, v33, v34, v35);
    if (v18)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x1EEE68140](v4, v5, v6, v7);
    }

    v19 = [v2 commonKey];
    if (v19)
    {
      break;
    }

LABEL_14:

    ++v9;
    if (v1 == v8)
    {
      goto LABEL_15;
    }
  }

  v20 = v19;
  v21 = sub_1C6016940();
  v23 = v22;
  if (v21 != sub_1C6016940() || v23 != v24)
  {
    v26 = OUTLINED_FUNCTION_26_5();

    if (v26)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_19:

  sub_1C5D08C90(0, &qword_1EC1AADF8, &qword_1EC1A9480);
  *(v35 + 48) = sub_1C6015230();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v35 + 56) = v29;
  *v29 = v30;
  v29[1] = sub_1C5D07C38;
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE68140](v4, v5, v6, v7);
}
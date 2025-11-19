uint64_t sub_1C48D99B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6A8, type metadata accessor for HUTenPointContext.POICategory);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48D9A50()
{
  sub_1C49231A4(&qword_1EC0BF438, type metadata accessor for HUTenPointContext.POICategory);

  return sub_1C4F00428();
}

uint64_t sub_1C48D9B18()
{
  sub_1C49231A4(&qword_1EC0BF438, type metadata accessor for HUTenPointContext.POICategory);

  return sub_1C4F00438();
}

uint64_t sub_1C48D9BD8()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FA91E0);
  qword_1EC152330 = v1[0];
  *algn_1EC152338 = v1[1];
  return result;
}

uint64_t sub_1C48D9C4C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152340);
  sub_1C442B738(v0, qword_1EC152340);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "semantic_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "update_reason";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "update_source";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48D9E50()
{
  v0 = type metadata accessor for HUTenPointContext.UserFocusComputedMode._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticType, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__updateReason, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__updateSource);
  qword_1EC0BE6C0 = result;
  return result;
}

void sub_1C48D9EF0()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for HUTenPointContext.UserFocusComputedMode._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48D9FAC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DA088()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DA164()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DA240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticType;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DA428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__updateReason;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__updateSource;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DA7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = *(v5(v4) + 20);
  if (*(v2 + v6) != *(a2 + v6))
  {
    v7 = *(v2 + v6);

    sub_1C4922578();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C44070A8();
  sub_1C49231A4(v10, v11);
  sub_1C4402120();
  return sub_1C4475AE4() & 1;
}

uint64_t sub_1C48DA9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6B0, type metadata accessor for HUTenPointContext.UserFocusComputedMode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DAA78()
{
  sub_1C49231A4(&qword_1EC0BF418, type metadata accessor for HUTenPointContext.UserFocusComputedMode);

  return sub_1C4F00428();
}

uint64_t sub_1C48DAB40()
{
  sub_1C49231A4(&qword_1EC0BF418, type metadata accessor for HUTenPointContext.UserFocusComputedMode);

  return sub_1C4F00438();
}

uint64_t sub_1C48DAC4C()
{
  v0 = *(type metadata accessor for HUTenPointContext.InferredMode(0) + 20);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C48DAD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HUTenPointContext.InferredMode(0);
  sub_1C4460108(a1 + *(v13 + 20), v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DAF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6B8, type metadata accessor for HUTenPointContext.InferredMode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DB020()
{
  sub_1C49231A4(&qword_1EC0BF3F8, type metadata accessor for HUTenPointContext.InferredMode);

  return sub_1C4F00428();
}

uint64_t sub_1C48DB0E8()
{
  sub_1C49231A4(&qword_1EC0BF3F8, type metadata accessor for HUTenPointContext.InferredMode);

  return sub_1C4F00438();
}

uint64_t sub_1C48DB1C4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152390);
  sub_1C442B738(v0, qword_1EC152390);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wifi_connected";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "airplane_mode";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "wearing_headphones";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DB3CC()
{
  v0 = type metadata accessor for HUTenPointContext.DeviceWireless._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__wifiConnected, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airplaneMode, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__wearingHeadphones);
  qword_1EC0BE6C8 = result;
  return result;
}

void sub_1C48DB428()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = *v5;
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v15);
  v19 = *v3;
  sub_1C43FCF64();
  sub_1C440BAA8(v20, v21, v22, v15);
  v23 = *v1;
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v15);
  v27 = *v5;
  sub_1C440D164();
  sub_1C4460108(v7 + v27, v13, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C442A428();
  sub_1C44408D4(v28, v29, v30, v31);
  swift_endAccess();
  v32 = *v3;
  sub_1C440D164();
  sub_1C442A428();
  sub_1C4460108(v33, v34, v35, v36);
  swift_beginAccess();
  sub_1C442A428();
  sub_1C44408D4(v37, v38, v39, v40);
  swift_endAccess();
  v41 = *v1;
  sub_1C440D164();
  sub_1C442A428();
  sub_1C4460108(v42, v43, v44, v45);

  swift_beginAccess();
  sub_1C442A428();
  sub_1C44408D4(v46, v47, v48, v49);
  swift_endAccess();
  sub_1C43FE9F0();
}

uint64_t sub_1C48DB5FC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1C44553C4(*a1);
  sub_1C4420C3C(v6, v7, &unk_1C4F2E1B0);
  v8 = sub_1C44553C4(*a2);
  sub_1C4420C3C(v8, v9, &unk_1C4F2E1B0);
  v10 = sub_1C44553C4(*a3);
  sub_1C4420C3C(v10, v11, &unk_1C4F2E1B0);
  return v3;
}

void sub_1C48DB6B8()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for HUTenPointContext.DeviceWireless(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for HUTenPointContext.DeviceWireless._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48DB774()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DB850()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DB92C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DBA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(void))
{
  result = a5();
  if (!v7)
  {
    sub_1C4417184();
    a6();
    sub_1C4417184();
    return a7();
  }

  return result;
}

uint64_t sub_1C48DBA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__wifiConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DBC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airplaneMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DBE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__wearingHeadphones;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DC130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6C0, type metadata accessor for HUTenPointContext.DeviceWireless);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DC1D0()
{
  sub_1C49231A4(&qword_1EC0BF3D8, type metadata accessor for HUTenPointContext.DeviceWireless);

  return sub_1C4F00428();
}

uint64_t sub_1C48DC298()
{
  sub_1C49231A4(&qword_1EC0BF3D8, type metadata accessor for HUTenPointContext.DeviceWireless);

  return sub_1C4F00438();
}

uint64_t sub_1C48DC388()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1523B8);
  sub_1C442B738(v0, qword_1EC1523B8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "device_plugged_in";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "low_power_mode";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "battery_percentage";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "battery_fully_charged";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mins_since_last_device_charge_start";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DC640()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48DC700(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode, 1, 1, v8);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage, 1, 1, v8);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged, 1, 1, v8);
  v19 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart, 1, 1, v8);
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  sub_1C4460108(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  sub_1C4460108(a1 + v15, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  sub_1C4460108(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v17 = v19;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48DCA28()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48DCB18()
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48DCBCC()
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48DCCC8();
        break;
      case 2:
        sub_1C48DCDA4();
        break;
      case 3:
        sub_1C48DCE80();
        break;
      case 4:
        sub_1C48DCF5C();
        break;
      case 5:
        sub_1C48DD038();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48DCCC8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DCDA4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DCE80()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DCF5C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DD038()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DD114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48DD1AC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48DD394(a1, a2, a3, a4);
    sub_1C48DD57C(a1, a2, a3, a4);
    sub_1C48DD764(a1, a2, a3, a4);
    return sub_1C48DD94C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48DD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

BOOL sub_1C48DDB34(uint64_t a1, uint64_t a2)
{
  v113 = type metadata accessor for FeatureValue(0);
  v4 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v110 = (&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v100 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v102 = &v99 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v99 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v109 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v99 - v16;
  v18 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v99 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v99 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v101 = &v99 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v106 = &v99 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v103 = &v99 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v104 = &v99 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v108 = &v99 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v111 = &v99 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v99 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v99 - v39;
  v41 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  sub_1C4460108(a1 + v41, v40, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v42 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  v112 = v6;
  v43 = *(v6 + 48);
  sub_1C4460108(v40, v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v44 = v113;
  sub_1C4460108(a2 + v42, &v17[v43], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v17, 1, v44) == 1)
  {

    sub_1C4420C3C(v40, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v45 = a2;
    if (sub_1C44157D4(&v17[v43], 1, v44) == 1)
    {
      sub_1C4420C3C(v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C4420C3C(v17, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  sub_1C4460108(v17, v38, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v17[v43], 1, v44) == 1)
  {

    sub_1C4420C3C(v40, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v46 = &v17[v43];
  v47 = v110;
  sub_1C4924B90(v46, v110);

  v48 = sub_1C47E3504(v38, v47);
  sub_1C4924B3C();
  sub_1C4420C3C(v40, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v45 = a2;
  sub_1C4924B3C();
  sub_1C4420C3C(v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v49 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  v50 = v111;
  sub_1C4460108(a1 + v49, v111, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  v52 = *(v112 + 48);
  v53 = v109;
  sub_1C4460108(v50, v109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v45 + v51, v53 + v52, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v54 = v44;
  v55 = sub_1C44157D4(v53, 1, v44);
  v56 = a1;
  if (v55 == 1)
  {
    sub_1C4420C3C(v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v53 + v52, 1, v54) == 1)
    {
      sub_1C4420C3C(v53, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_17;
    }

LABEL_14:
    sub_1C4420C3C(v53, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  v57 = v108;
  sub_1C4460108(v53, v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v53 + v52, 1, v54) == 1)
  {
    sub_1C4420C3C(v111, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_14;
  }

  v58 = v53 + v52;
  v59 = a1;
  v60 = v53;
  v61 = v110;
  sub_1C4924B90(v58, v110);
  v62 = sub_1C47E3504(v57, v61);
  sub_1C4924B3C();
  sub_1C4420C3C(v111, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  v63 = v60;
  v56 = v59;
  sub_1C4420C3C(v63, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  v64 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  v111 = v56;
  v65 = v104;
  sub_1C4460108(v56 + v64, v104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v66 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  v67 = *(v112 + 48);
  v68 = v105;
  sub_1C4460108(v65, v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v69 = v68;
  sub_1C4460108(v45 + v66, v68 + v67, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v68, 1, v54) == 1)
  {
    sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v70 = sub_1C44157D4(v68 + v67, 1, v54);
    v71 = v107;
    v72 = v106;
    if (v70 == 1)
    {
      sub_1C4420C3C(v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v73 = v111;
      goto LABEL_24;
    }

LABEL_22:
    sub_1C4420C3C(v69, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  v74 = v103;
  sub_1C4460108(v68, v103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v75 = sub_1C44157D4(v68 + v67, 1, v54);
  v76 = v107;
  v72 = v106;
  if (v75 == 1)
  {
    sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_22;
  }

  v77 = v69 + v67;
  v78 = v110;
  sub_1C4924B90(v77, v110);
  v79 = sub_1C47E3504(v74, v78);
  sub_1C4924B3C();
  sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v71 = v76;
  v73 = v111;
  if ((v79 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v80 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  sub_1C4460108(v73 + v80, v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v81 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  v82 = *(v112 + 48);
  v83 = v102;
  sub_1C4460108(v72, v102, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v45 + v81, v83 + v82, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v83, 1, v54) != 1)
  {
    v86 = v101;
    sub_1C4460108(v83, v101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v83 + v82, 1, v54) == 1)
    {
      sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_29;
    }

    v88 = v83 + v82;
    v89 = v110;
    sub_1C4924B90(v88, v110);
    v90 = sub_1C47E3504(v86, v89);
    sub_1C4924B3C();
    sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v85 = v111;
    if (v90)
    {
      goto LABEL_34;
    }

LABEL_30:

    return 0;
  }

  sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v84 = sub_1C44157D4(v83 + v82, 1, v54);
  v85 = v111;
  if (v84 != 1)
  {
LABEL_29:
    sub_1C4420C3C(v83, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  sub_1C4420C3C(v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_34:
  v91 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  sub_1C4460108(v85 + v91, v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v92 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  v93 = *(v112 + 48);
  v94 = v100;
  sub_1C4460108(v71, v100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v45 + v92, v94 + v93, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v94, 1, v54) == 1)
  {

    sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v94 + v93, 1, v54) == 1)
    {
      sub_1C4420C3C(v94, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      return 1;
    }

    goto LABEL_39;
  }

  v95 = v99;
  sub_1C4460108(v94, v99, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v94 + v93, 1, v54) == 1)
  {

    sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_39:
    sub_1C4420C3C(v94, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  v96 = v94 + v93;
  v97 = v110;
  sub_1C4924B90(v96, v110);
  v98 = sub_1C47E3504(v95, v97);

  sub_1C4924B3C();
  sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v94, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return (v98 & 1) != 0;
}

uint64_t sub_1C48DEAF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6C8, type metadata accessor for HUTenPointContext.DevicePower);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DEB98()
{
  sub_1C49231A4(&qword_1EC0BF3B8, type metadata accessor for HUTenPointContext.DevicePower);

  return sub_1C4F00428();
}

uint64_t sub_1C48DEC60()
{
  sub_1C49231A4(&qword_1EC0BF3B8, type metadata accessor for HUTenPointContext.DevicePower);

  return sub_1C4F00438();
}

uint64_t sub_1C48DED50()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1523E0);
  sub_1C442B738(v0, qword_1EC1523E0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "popularity_of_most_recent_micro_location";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "five_minute_intervals_since_most_recent_micro_location";
  *(v10 + 1) = 54;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DEF18()
{
  v0 = *(type metadata accessor for HUTenPointContext.MicroLocation(0) + 20);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  return sub_1C4F003F8();
}

void sub_1C48DEFCC()
{
  sub_1C441800C();
  v1 = *(v0(0) + 24);
  type metadata accessor for FeatureValue(0);
  sub_1C4423BC4();
  sub_1C49231A4(v2, v3);
  sub_1C4F003F8();
  sub_1C44512DC();
}

uint64_t sub_1C48DF06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  sub_1C4460108(a1 + *(v13 + 20), v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DF240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v24[3] = a4;
  v24[1] = a3;
  v7 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = type metadata accessor for FeatureValue(0);
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = a5(0);
  sub_1C4460108(a1 + *(v20 + 24), v12, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    return sub_1C4420C3C(v12, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v12, v19);
  sub_1C4423BC4();
  sub_1C49231A4(v22, v23);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DF4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6D0, type metadata accessor for HUTenPointContext.MicroLocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DF56C()
{
  sub_1C49231A4(&qword_1EC0BF398, type metadata accessor for HUTenPointContext.MicroLocation);

  return sub_1C4F00428();
}

uint64_t sub_1C48DF634()
{
  sub_1C49231A4(&qword_1EC0BF398, type metadata accessor for HUTenPointContext.MicroLocation);

  return sub_1C4F00438();
}

uint64_t sub_1C48DF708()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152408);
  sub_1C442B738(v0, qword_1EC152408);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "last_active_appbundle";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "last_active_appcategory";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "last_active_app_manual_category";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DF910()
{
  v0 = type metadata accessor for HUTenPointContext.AppLaunch._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppbundle, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppcategory, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppManualCategory);
  qword_1EC0BE6D8 = result;
  return result;
}

void sub_1C48DF9B0()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for HUTenPointContext.AppLaunch(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for HUTenPointContext.AppLaunch._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48DFA6C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DFB48()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DFC24()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DFD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppbundle;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DFEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppcategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E00D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppManualCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E03AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6D8, type metadata accessor for HUTenPointContext.AppLaunch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48E044C()
{
  sub_1C49231A4(&qword_1EC0BF378, type metadata accessor for HUTenPointContext.AppLaunch);

  return sub_1C4F00428();
}

uint64_t sub_1C48E0514()
{
  sub_1C49231A4(&qword_1EC0BF378, type metadata accessor for HUTenPointContext.AppLaunch);

  return sub_1C4F00438();
}

uint64_t sub_1C48E0620(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4F004E8();
  sub_1C44F9918(v7, a2);
  v8 = sub_1C43FD024();
  sub_1C442B738(v8, v9);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v10 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v16 = sub_1C4F004C8();
  sub_1C43FBCE0(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1C4F004D8();
}

uint64_t sub_1C48E0780(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C4F00378();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C48E07F8()
{
  v0 = *(type metadata accessor for HUTenPointContext.AmbientLight(0) + 20);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C48E08AC()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = v2(v1);
  if (!v0)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C48E08F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HUTenPointContext.AmbientLight(0);
  sub_1C4460108(a1 + *(v13 + 20), v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

void sub_1C48E0AC8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for FeatureValue(0);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v32 = (v12 - v11);
  v13 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = (sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0) - 8);
  v20 = *(*v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1C4402FE0();
  v23 = *(v2(v22) + 20);
  v24 = v19[14];
  sub_1C4460108(v6 + v23, v0, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v4 + v23, v0 + v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v0, 1, v7);
  if (v25)
  {
    sub_1C440175C(v0 + v24, 1, v7);
    if (v25)
    {
      sub_1C4420C3C(v0, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_12:
      sub_1C4F00328();
      sub_1C44070A8();
      sub_1C49231A4(v29, v30);
      v26 = sub_1C4475AE4();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1C4460108(v0, v18, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v0 + v24, 1, v7);
  if (v25)
  {
    sub_1C4924B3C();
LABEL_9:
    sub_1C4420C3C(v0, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_10;
  }

  v27 = v32;
  sub_1C4924B90(v0 + v24, v32);
  v28 = sub_1C47E3504(v18, v27);
  sub_1C440A9B8();
  sub_1C4924B3C();
  sub_1C4924B3C();
  sub_1C4420C3C(v0, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_10:
  v26 = 0;
LABEL_13:
  sub_1C444ACF8(v26);
  sub_1C43FE9F0();
}

uint64_t sub_1C48E0E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6E0, type metadata accessor for HUTenPointContext.AmbientLight);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48E0EBC()
{
  sub_1C49231A4(&qword_1EC0BF358, type metadata accessor for HUTenPointContext.AmbientLight);

  return sub_1C4F00428();
}

uint64_t sub_1C48E0F84()
{
  sub_1C49231A4(&qword_1EC0BF358, type metadata accessor for HUTenPointContext.AmbientLight);

  return sub_1C4F00438();
}

uint64_t sub_1C48E1060()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152458);
  sub_1C442B738(v0, qword_1EC152458);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C4F37E00;
  v4 = v71 + v3;
  v5 = v71 + v3 + v1[14];
  *(v71 + v3) = 1;
  *v5 = "num_calendar_events_today";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C4F004C8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "num_calendar_events_remaining_today";
  *(v9 + 8) = 35;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "is_currently_in_calendar_event";
  *(v11 + 1) = 30;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "current_calendar_event_contains_title_work";
  *(v13 + 1) = 42;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "current_calendar_event_supports_location_directory_searches";
  *(v15 + 1) = 59;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "current_calendar_event_is_affecting_availability";
  *(v17 + 1) = 48;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "num_attendees_in_current_calendar_event";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "in_between_first_and_last_calendar_events";
  *(v21 + 1) = 41;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "in_between_first_and_last_calendar_events_that_contain_title_work";
  *(v23 + 1) = 65;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "in_between_first_and_last_calendar_events_that_support_location_directory_searches";
  *(v25 + 1) = 82;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "in_between_first_and_last_calendar_events_that_affect_availability";
  *(v27 + 1) = 66;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "in_between_first_and_last_calendar_events_with_attendees";
  *(v29 + 1) = 56;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "time_until_first_calendar_event_in_mins";
  *(v31 + 1) = 39;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "time_until_first_calendar_event_that_contains_title_work_in_mins";
  *(v33 + 1) = 64;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "time_until_first_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v35 + 1) = 81;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "time_until_first_calendar_event_that_affects_availability_in_mins";
  *(v37 + 1) = 65;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "time_until_first_calendar_event_with_attendees_in_mins";
  *(v39 + 1) = 54;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "time_since_last_calendar_event_in_mins";
  *(v41 + 1) = 38;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "time_since_last_calendar_event_that_contains_title_work_in_mins";
  *(v43 + 1) = 63;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "time_since_last_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v45 + 1) = 80;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "time_since_last_calendar_event_that_affects_availability_in_mins";
  *(v47 + 1) = 64;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "time_since_last_calendar_event_with_attendees_in_mins";
  *(v49 + 1) = 53;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "time_since_previous_calendar_event_in_mins";
  *(v51 + 1) = 42;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "time_until_next_calendar_event_in_mins";
  *(v53 + 1) = 38;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "time_until_next_calendar_event_that_contains_title_work_in_mins";
  *(v55 + 1) = 63;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "time_until_next_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v57 + 1) = 80;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "time_until_next_calendar_event_that_affects_availability_in_mins";
  *(v59 + 1) = 64;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "time_until_next_calendar_event_with_attendees_in_mins";
  *(v61 + 1) = 53;
  v61[16] = 2;
  v8();
  v62 = (v4 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "time_since_previous_calendar_event_that_contains_title_work_in_mins";
  *(v63 + 1) = 67;
  v63[16] = 2;
  v8();
  v64 = (v4 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "time_since_previous_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v65 + 1) = 84;
  v65[16] = 2;
  v8();
  v66 = (v4 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "time_since_previous_calendar_event_that_affects_availability_in_mins";
  *(v67 + 1) = 68;
  v67[16] = 2;
  v8();
  v68 = (v4 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 32;
  *v69 = "time_since_previous_calendar_event_with_attendees_in_mins";
  *(v69 + 1) = 57;
  v69[16] = 2;
  v8();
  return sub_1C4F004D8();
}

uint64_t sub_1C48E1988()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48E1D3C(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v73 - v5;
  v7 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday, 1, 1, v8);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent, 1, 1, v8);
  v74 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork, 1, 1, v8);
  v75 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches, 1, 1, v8);
  v76 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability, 1, 1, v8);
  v77 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent, 1, 1, v8);
  v78 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents, 1, 1, v8);
  v79 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork, 1, 1, v8);
  v80 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches, 1, 1, v8);
  v81 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability, 1, 1, v8);
  v82 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees, 1, 1, v8);
  v83 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins, 1, 1, v8);
  v84 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins, 1, 1, v8);
  v85 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v8);
  v86 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins, 1, 1, v8);
  v87 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins, 1, 1, v8);
  v88 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins, 1, 1, v8);
  v89 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins, 1, 1, v8);
  v90 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v8);
  v91 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins, 1, 1, v8);
  v92 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins, 1, 1, v8);
  v93 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins, 1, 1, v8);
  v94 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins, 1, 1, v8);
  v95 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins, 1, 1, v8);
  v96 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v8);
  v97 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins, 1, 1, v8);
  v98 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins, 1, 1, v8);
  v99 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins, 1, 1, v8);
  v100 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v8);
  v101 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins, 1, 1, v8);
  v102 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins, 1, 1, v8);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = v74;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = v75;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v18, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = v76;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v19, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v20, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v21 = v77;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v21, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  swift_beginAccess();
  sub_1C4460108(a1 + v22, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v23 = v78;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v24, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v25 = v79;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v26, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v27 = v80;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v27, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v28, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v29 = v81;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  sub_1C4460108(a1 + v30, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v31 = v82;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v32, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v33 = v83;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v33, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v34, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v35 = v84;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v36, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v37 = v85;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v38, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v39 = v86;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v39, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v40, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v41 = v87;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v41, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v42, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v43 = v88;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v44, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v45 = v89;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v45, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v46, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v47 = v90;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v47, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v48, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v49 = v91;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v50, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = v92;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v52, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v53 = v93;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v53, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v54, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v55 = v94;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v56, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v57 = v95;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v57, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v58, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v59 = v96;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v59, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v60, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v61 = v97;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v62, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v63 = v98;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v63, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v64, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v65 = v99;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v66, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v67 = v100;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v67, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v68, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v69 = v101;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v70 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v70, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v71 = v102;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48E2E5C()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48E31D4()
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48E32B8()
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48E36A8();
        break;
      case 2:
        sub_1C48E3784();
        break;
      case 3:
        sub_1C48E3860();
        break;
      case 4:
        sub_1C48E393C();
        break;
      case 5:
        sub_1C48E3A18();
        break;
      case 6:
        sub_1C48E3AF4();
        break;
      case 7:
        sub_1C48E3BD0();
        break;
      case 8:
        sub_1C48E3CAC();
        break;
      case 9:
        sub_1C48E3D88();
        break;
      case 10:
        sub_1C48E3E64();
        break;
      case 11:
        sub_1C48E3F40();
        break;
      case 12:
        sub_1C48E401C();
        break;
      case 13:
        sub_1C48E40F8();
        break;
      case 14:
        sub_1C48E41D4();
        break;
      case 15:
        sub_1C48E42B0();
        break;
      case 16:
        sub_1C48E438C();
        break;
      case 17:
        sub_1C48E4468();
        break;
      case 18:
        sub_1C48E4544();
        break;
      case 19:
        sub_1C48E4620();
        break;
      case 20:
        sub_1C48E46FC();
        break;
      case 21:
        sub_1C48E47D8();
        break;
      case 22:
        sub_1C48E48B4();
        break;
      case 23:
        sub_1C48E4990();
        break;
      case 24:
        sub_1C48E4A6C();
        break;
      case 25:
        sub_1C48E4B48();
        break;
      case 26:
        sub_1C48E4C24();
        break;
      case 27:
        sub_1C48E4D00();
        break;
      case 28:
        sub_1C48E4DDC();
        break;
      case 29:
        sub_1C48E4EB8();
        break;
      case 30:
        sub_1C48E4F94();
        break;
      case 31:
        sub_1C48E5070();
        break;
      case 32:
        sub_1C48E514C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48E36A8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3784()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3860()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E393C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3A18()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3AF4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3BD0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3CAC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3D88()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3E64()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3F40()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E401C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E40F8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E41D4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E42B0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E438C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4468()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4544()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4620()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E46FC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E47D8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E48B4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4990()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4A6C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4B48()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4C24()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4D00()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4DDC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4EB8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4F94()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E5070()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E514C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48E5548(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48E5730(a1, a2, a3, a4);
    sub_1C48E5918(a1, a2, a3, a4);
    sub_1C48E5B00(a1, a2, a3, a4);
    sub_1C48E5CE8(a1, a2, a3, a4);
    sub_1C48E5ED0(a1, a2, a3, a4);
    sub_1C48E60B8(a1, a2, a3, a4);
    sub_1C48E62A0(a1, a2, a3, a4);
    sub_1C48E6488(a1, a2, a3, a4);
    sub_1C48E6670(a1, a2, a3, a4);
    sub_1C48E6858(a1, a2, a3, a4);
    sub_1C48E6A40(a1, a2, a3, a4);
    sub_1C48E6C28(a1, a2, a3, a4);
    sub_1C48E6E10(a1, a2, a3, a4);
    sub_1C48E6FF8(a1, a2, a3, a4);
    sub_1C48E71E0(a1, a2, a3, a4);
    sub_1C48E73C8(a1, a2, a3, a4);
    sub_1C48E75B0(a1, a2, a3, a4);
    sub_1C48E7798(a1, a2, a3, a4);
    sub_1C48E7980(a1, a2, a3, a4);
    sub_1C48E7B68(a1, a2, a3, a4);
    sub_1C48E7D50(a1, a2, a3, a4);
    sub_1C48E7F38(a1, a2, a3, a4);
    sub_1C48E8120(a1, a2, a3, a4);
    sub_1C48E8308(a1, a2, a3, a4);
    sub_1C48E84F0(a1, a2, a3, a4);
    sub_1C48E86D8(a1, a2, a3, a4);
    sub_1C48E88C0(a1, a2, a3, a4);
    sub_1C48E8AA8(a1, a2, a3, a4);
    sub_1C48E8C90(a1, a2, a3, a4);
    sub_1C48E8E78(a1, a2, a3, a4);
    return sub_1C48E9060(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48E5548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E60B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E62A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E71E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E73C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E9060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

BOOL sub_1C48E9248(uint64_t a1, uint64_t a2)
{
  v652 = type metadata accessor for FeatureValue(0);
  v4 = *(*(v652 - 8) + 64);
  MEMORY[0x1EEE9AC00](v652);
  v649 = (&v556 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v651 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v6 = *(*(v651 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v651);
  v601 = &v556 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v600 = &v556 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v597 = &v556 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v594 = &v556 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v591 = &v556 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v589 = &v556 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v586 = &v556 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v583 = &v556 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v581 = &v556 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v578 = &v556 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v575 = &v556 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v572 = &v556 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v569 = &v556 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v566 = &v556 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v563 = &v556 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v605 = &v556 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v608 = &v556 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v611 = &v556 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v614 = &v556 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v617 = &v556 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v620 = &v556 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v623 = &v556 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v625 = &v556 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v627 = &v556 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v630 = &v556 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v633 = &v556 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v636 = &v556 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v639 = &v556 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v642 = &v556 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v646 = &v556 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v648 = &v556 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v556 - v69;
  v71 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v71 - 8);
  v599 = &v556 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v598 = &v556 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v596 = &v556 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v595 = &v556 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v593 = &v556 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v592 = &v556 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v590 = &v556 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v588 = &v556 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v587 = &v556 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v585 = &v556 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v584 = &v556 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v582 = &v556 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v580 = &v556 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v579 = &v556 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v577 = &v556 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v576 = &v556 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v574 = &v556 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v573 = &v556 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v571 = &v556 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v570 = &v556 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v568 = &v556 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v567 = &v556 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v565 = &v556 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v564 = &v556 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v562 = &v556 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v561 = &v556 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v560 = &v556 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v559 = &v556 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v558 = &v556 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v557 = &v556 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v602 = &v556 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v603 = &v556 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v604 = &v556 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v606 = &v556 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v607 = &v556 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v609 = &v556 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v610 = &v556 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v612 = &v556 - v148;
  v149 = MEMORY[0x1EEE9AC00](v147);
  v613 = &v556 - v150;
  v151 = MEMORY[0x1EEE9AC00](v149);
  v615 = &v556 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v616 = &v556 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  v618 = &v556 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  v619 = &v556 - v158;
  v159 = MEMORY[0x1EEE9AC00](v157);
  v622 = &v556 - v160;
  v161 = MEMORY[0x1EEE9AC00](v159);
  v621 = &v556 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v626 = &v556 - v164;
  v165 = MEMORY[0x1EEE9AC00](v163);
  v624 = &v556 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v629 = &v556 - v168;
  v169 = MEMORY[0x1EEE9AC00](v167);
  v628 = &v556 - v170;
  v171 = MEMORY[0x1EEE9AC00](v169);
  v632 = &v556 - v172;
  v173 = MEMORY[0x1EEE9AC00](v171);
  v631 = &v556 - v174;
  v175 = MEMORY[0x1EEE9AC00](v173);
  v635 = &v556 - v176;
  v177 = MEMORY[0x1EEE9AC00](v175);
  v634 = &v556 - v178;
  v179 = MEMORY[0x1EEE9AC00](v177);
  v638 = &v556 - v180;
  v181 = MEMORY[0x1EEE9AC00](v179);
  v637 = &v556 - v182;
  v183 = MEMORY[0x1EEE9AC00](v181);
  v641 = &v556 - v184;
  v185 = MEMORY[0x1EEE9AC00](v183);
  v640 = &v556 - v186;
  v187 = MEMORY[0x1EEE9AC00](v185);
  v644 = &v556 - v188;
  v189 = MEMORY[0x1EEE9AC00](v187);
  v643 = &v556 - v190;
  v191 = MEMORY[0x1EEE9AC00](v189);
  v645 = &v556 - v192;
  v193 = MEMORY[0x1EEE9AC00](v191);
  v647 = &v556 - v194;
  v195 = MEMORY[0x1EEE9AC00](v193);
  v650 = &v556 - v196;
  v197 = MEMORY[0x1EEE9AC00](v195);
  v199 = &v556 - v198;
  MEMORY[0x1EEE9AC00](v197);
  v201 = &v556 - v200;
  v202 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  v203 = a1;
  sub_1C4460108(a1 + v202, v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v204 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  v205 = *(v651 + 48);
  sub_1C4460108(v201, v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v206 = a2 + v204;
  v207 = a2;
  v208 = v652;
  sub_1C4460108(v206, &v70[v205], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v70, 1, v208) == 1)
  {

    sub_1C4420C3C(v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v209 = sub_1C44157D4(&v70[v205], 1, v208);
    v210 = v203;
    if (v209 == 1)
    {
      sub_1C4420C3C(v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_8;
    }

LABEL_6:
    v211 = v70;
LABEL_14:
    sub_1C4420C3C(v211, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_15;
  }

  sub_1C4460108(v70, v199, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v70[v205], 1, v208) == 1)
  {

    sub_1C4420C3C(v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v212 = v649;
  sub_1C4924B90(&v70[v205], v649);

  v213 = sub_1C47E3504(v199, v212);
  sub_1C4924B3C();
  sub_1C4420C3C(v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  v210 = v203;
  sub_1C4420C3C(v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v213 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v214 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  v215 = v650;
  sub_1C4460108(v210 + v214, v650, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v216 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  v217 = v651;
  v218 = *(v651 + 48);
  v219 = v648;
  sub_1C4460108(v215, v648, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v220 = v219;
  sub_1C4460108(v207 + v216, v219 + v218, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v221 = v652;
  if (sub_1C44157D4(v219, 1, v652) == 1)
  {
    sub_1C4420C3C(v215, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v219 + v218, 1, v221) == 1)
    {
      v222 = v217;
      sub_1C4420C3C(v220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v223 = v647;
  sub_1C4460108(v219, v647, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v219 + v218, 1, v221) == 1)
  {
    sub_1C4420C3C(v650, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_13:
    v211 = v219;
    goto LABEL_14;
  }

  v222 = v217;
  v225 = v220 + v218;
  v226 = v649;
  sub_1C4924B90(v225, v649);
  v227 = sub_1C47E3504(v223, v226);
  sub_1C4924B3C();
  sub_1C4420C3C(v650, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v227 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v228 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  v229 = v645;
  sub_1C4460108(v210 + v228, v645, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v230 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  v231 = v222;
  v232 = v229;
  v233 = *(v231 + 48);
  v234 = v229;
  v235 = v646;
  sub_1C4460108(v234, v646, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v230, v235 + v233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v236 = v652;
  v237 = sub_1C44157D4(v235, 1, v652);
  v556 = v210;
  if (v237 == 1)
  {
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v233, 1, v236) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v238 = v643;
    sub_1C4460108(v235, v643, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v233, 1, v236) == 1)
    {
      sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_60:
      sub_1C4924B3C();
      goto LABEL_61;
    }

    v239 = v235 + v233;
    v240 = v649;
    sub_1C4924B90(v239, v649);
    v241 = sub_1C47E3504(v238, v240);
    sub_1C4924B3C();
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v241 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v242 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  v243 = v556;
  swift_beginAccess();
  v244 = v644;
  sub_1C4460108(v243 + v242, v644, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v245 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  swift_beginAccess();
  v246 = v651;
  v247 = *(v651 + 48);
  v235 = v642;
  sub_1C4460108(v244, v642, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v245, v235 + v247, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v248 = v652;
  if (sub_1C44157D4(v235, 1, v652) == 1)
  {
    sub_1C4420C3C(v244, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v247, 1, v248) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v249 = v640;
    sub_1C4460108(v235, v640, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v247, 1, v248) == 1)
    {
      v250 = v644;
      goto LABEL_59;
    }

    v251 = v235 + v247;
    v252 = v649;
    sub_1C4924B90(v251, v649);
    v253 = sub_1C47E3504(v249, v252);
    sub_1C4924B3C();
    sub_1C4420C3C(v644, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v253 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v254 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  v255 = v556;
  swift_beginAccess();
  v256 = v255 + v254;
  v257 = v246;
  v258 = v641;
  sub_1C4460108(v256, v641, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v259 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  swift_beginAccess();
  v260 = *(v257 + 48);
  v235 = v639;
  sub_1C4460108(v258, v639, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v259, v235 + v260, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235, 1, v248) == 1)
  {
    sub_1C4420C3C(v258, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v260, 1, v248) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v261 = v637;
    sub_1C4460108(v235, v637, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v260, 1, v248) == 1)
    {
      v250 = v641;
      goto LABEL_59;
    }

    v262 = v235 + v260;
    v263 = v649;
    sub_1C4924B90(v262, v649);
    v264 = sub_1C47E3504(v261, v263);
    sub_1C4924B3C();
    sub_1C4420C3C(v641, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v264 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v265 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  v266 = v556;
  swift_beginAccess();
  v267 = v266 + v265;
  v268 = v638;
  sub_1C4460108(v267, v638, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v269 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  swift_beginAccess();
  v270 = v651;
  v271 = *(v651 + 48);
  v235 = v636;
  sub_1C4460108(v268, v636, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v269, v235 + v271, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235, 1, v248) == 1)
  {
    sub_1C4420C3C(v268, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v271, 1, v248) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v272 = v634;
    sub_1C4460108(v235, v634, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v271, 1, v248) == 1)
    {
      v250 = v638;
      goto LABEL_59;
    }

    v273 = v649;
    sub_1C4924B90(v235 + v271, v649);
    v274 = sub_1C47E3504(v272, v273);
    sub_1C4924B3C();
    sub_1C4420C3C(v638, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v274 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v275 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  v276 = v556;
  swift_beginAccess();
  v277 = v276 + v275;
  v278 = v635;
  sub_1C4460108(v277, v635, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v279 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  swift_beginAccess();
  v280 = *(v270 + 48);
  v235 = v633;
  sub_1C4460108(v278, v633, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v279, v235 + v280, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235, 1, v248) == 1)
  {
    sub_1C4420C3C(v278, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v280, 1, v248) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v281 = v631;
    sub_1C4460108(v235, v631, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v280, 1, v248) == 1)
    {
      v250 = v635;
      goto LABEL_59;
    }

    v282 = v649;
    sub_1C4924B90(v235 + v280, v649);
    v283 = sub_1C47E3504(v281, v282);
    sub_1C4924B3C();
    sub_1C4420C3C(v635, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v283 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v284 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  v285 = v556;
  swift_beginAccess();
  v286 = v285 + v284;
  v287 = v632;
  sub_1C4460108(v286, v632, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v288 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  swift_beginAccess();
  v289 = *(v270 + 48);
  v235 = v630;
  sub_1C4460108(v287, v630, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v288, v235 + v289, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235, 1, v248) != 1)
  {
    v290 = v628;
    sub_1C4460108(v235, v628, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v289, 1, v248) != 1)
    {
      v291 = v649;
      sub_1C4924B90(v235 + v289, v649);
      v292 = sub_1C47E3504(v290, v291);
      sub_1C4924B3C();
      sub_1C4420C3C(v632, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if ((v292 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_54;
    }

    v250 = v632;
LABEL_59:
    sub_1C4420C3C(v250, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_60;
  }

  sub_1C4420C3C(v287, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235 + v289, 1, v248) != 1)
  {
    goto LABEL_61;
  }

  sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_54:
  v293 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  v294 = v556;
  swift_beginAccess();
  v295 = v294 + v293;
  v296 = v629;
  sub_1C4460108(v295, v629, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v297 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  swift_beginAccess();
  v298 = *(v270 + 48);
  v235 = v627;
  sub_1C4460108(v296, v627, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v297, v235 + v298, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235, 1, v248) == 1)
  {
    sub_1C4420C3C(v296, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v235 + v298, 1, v248) == 1)
    {
      sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v299 = v625;
      goto LABEL_64;
    }

LABEL_61:
    sub_1C4420C3C(v235, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_15;
  }

  v300 = v624;
  sub_1C4460108(v235, v624, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v235 + v298, 1, v248) == 1)
  {
    v250 = v629;
    goto LABEL_59;
  }

  v301 = v649;
  sub_1C4924B90(v235 + v298, v649);
  v302 = sub_1C47E3504(v300, v301);
  sub_1C4924B3C();
  sub_1C4420C3C(v629, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v299 = v625;
  if ((v302 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_64:
  v303 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  v304 = v556;
  swift_beginAccess();
  v305 = v304 + v303;
  v306 = v626;
  sub_1C4460108(v305, v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v307 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  swift_beginAccess();
  v308 = *(v270 + 48);
  sub_1C4460108(v306, v299, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v207 + v307, v299 + v308, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v299, 1, v248) == 1)
  {
    v309 = v556;
    sub_1C4420C3C(v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v299 + v308, 1, v248) == 1)
    {
      sub_1C4420C3C(v299, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v309 = v556;
  v310 = v621;
  sub_1C4460108(v299, v621, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v299 + v308, 1, v248) == 1)
  {
    sub_1C4420C3C(v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_69:
    v211 = v299;
    goto LABEL_14;
  }

  v311 = v649;
  sub_1C4924B90(v299 + v308, v649);
  v312 = sub_1C47E3504(v310, v311);
  sub_1C4924B3C();
  sub_1C4420C3C(v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v299, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v312 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_71:
  v313 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  v314 = v622;
  sub_1C4460108(v309 + v313, v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v315 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  v316 = *(v651 + 48);
  v317 = v623;
  sub_1C4460108(v314, v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v318 = v207;
  sub_1C4460108(v207 + v315, v317 + v316, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v317, 1, v652) == 1)
  {
    sub_1C4420C3C(v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v623 + v316, 1, v652) == 1)
    {
      sub_1C4420C3C(v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_78;
    }

LABEL_76:
    v320 = v623;
LABEL_217:
    sub_1C4420C3C(v320, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_15;
  }

  v319 = v623;
  sub_1C4460108(v623, v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v319 + v316, 1, v652) == 1)
  {
    sub_1C4420C3C(v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_76;
  }

  v321 = v623;
  v322 = v623 + v316;
  v323 = v649;
  sub_1C4924B90(v322, v649);
  v324 = sub_1C47E3504(v619, v323);
  sub_1C4924B3C();
  sub_1C4420C3C(v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v321, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v324 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_78:
  v325 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  v326 = v618;
  sub_1C4460108(v309 + v325, v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v327 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  v328 = *(v651 + 48);
  v329 = v326;
  v330 = v620;
  sub_1C4460108(v329, v620, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v327, v330 + v328, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v330, 1, v652) == 1)
  {
    sub_1C4420C3C(v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v620 + v328, 1, v652) == 1)
    {
      sub_1C4420C3C(v620, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v331 = v620;
  sub_1C4460108(v620, v616, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v331 + v328, 1, v652) == 1)
  {
    sub_1C4420C3C(v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_83:
    v320 = v620;
    goto LABEL_217;
  }

  v332 = v620;
  v333 = v620 + v328;
  v334 = v649;
  sub_1C4924B90(v333, v649);
  v335 = sub_1C47E3504(v616, v334);
  sub_1C4924B3C();
  sub_1C4420C3C(v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v332, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v335 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_85:
  v336 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  v337 = v615;
  sub_1C4460108(v309 + v336, v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v338 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  v339 = *(v651 + 48);
  v340 = v337;
  v341 = v617;
  sub_1C4460108(v340, v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v338, v341 + v339, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v341, 1, v652) == 1)
  {
    sub_1C4420C3C(v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v617 + v339, 1, v652) == 1)
    {
      sub_1C4420C3C(v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v342 = v617;
  sub_1C4460108(v617, v613, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v342 + v339, 1, v652) == 1)
  {
    sub_1C4420C3C(v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_90:
    v320 = v617;
    goto LABEL_217;
  }

  v343 = v617;
  v344 = v617 + v339;
  v345 = v649;
  sub_1C4924B90(v344, v649);
  v346 = sub_1C47E3504(v613, v345);
  sub_1C4924B3C();
  sub_1C4420C3C(v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v343, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v346 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_92:
  v347 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v348 = v612;
  sub_1C4460108(v309 + v347, v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v349 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v350 = *(v651 + 48);
  v351 = v348;
  v352 = v614;
  sub_1C4460108(v351, v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v349, v352 + v350, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v352, 1, v652) == 1)
  {
    sub_1C4420C3C(v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v614 + v350, 1, v652) == 1)
    {
      sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v353 = v614;
  sub_1C4460108(v614, v610, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v353 + v350, 1, v652) == 1)
  {
    sub_1C4420C3C(v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_97:
    v320 = v614;
    goto LABEL_217;
  }

  v354 = v614;
  v355 = v614 + v350;
  v356 = v649;
  sub_1C4924B90(v355, v649);
  v357 = sub_1C47E3504(v610, v356);
  sub_1C4924B3C();
  sub_1C4420C3C(v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v354, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v357 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_99:
  v358 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v359 = v609;
  sub_1C4460108(v309 + v358, v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v360 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v361 = *(v651 + 48);
  v362 = v359;
  v363 = v611;
  sub_1C4460108(v362, v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v360, v363 + v361, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v363, 1, v652) == 1)
  {
    sub_1C4420C3C(v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v611 + v361, 1, v652) == 1)
    {
      sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v364 = v611;
  sub_1C4460108(v611, v607, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v364 + v361, 1, v652) == 1)
  {
    sub_1C4420C3C(v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_104:
    v320 = v611;
    goto LABEL_217;
  }

  v365 = v611;
  v366 = v611 + v361;
  v367 = v649;
  sub_1C4924B90(v366, v649);
  v368 = sub_1C47E3504(v607, v367);
  sub_1C4924B3C();
  sub_1C4420C3C(v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v365, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v368 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_106:
  v369 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v370 = v606;
  sub_1C4460108(v309 + v369, v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v371 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v372 = *(v651 + 48);
  v373 = v370;
  v374 = v608;
  sub_1C4460108(v373, v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v371, v374 + v372, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v374, 1, v652) == 1)
  {
    sub_1C4420C3C(v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v608 + v372, 1, v652) == 1)
    {
      sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  v375 = v608;
  sub_1C4460108(v608, v604, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v375 + v372, 1, v652) == 1)
  {
    sub_1C4420C3C(v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_111:
    v320 = v608;
    goto LABEL_217;
  }

  v376 = v608;
  v377 = v608 + v372;
  v378 = v649;
  sub_1C4924B90(v377, v649);
  v379 = sub_1C47E3504(v604, v378);
  sub_1C4924B3C();
  sub_1C4420C3C(v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v376, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v379 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_113:
  v380 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v381 = v603;
  sub_1C4460108(v309 + v380, v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v382 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v383 = *(v651 + 48);
  v384 = v381;
  v385 = v605;
  sub_1C4460108(v384, v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v382, v385 + v383, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v385, 1, v652) == 1)
  {
    sub_1C4420C3C(v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v605 + v383, 1, v652) == 1)
    {
      sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_120;
    }

    goto LABEL_118;
  }

  v386 = v605;
  sub_1C4460108(v605, v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v386 + v383, 1, v652) == 1)
  {
    sub_1C4420C3C(v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_118:
    v320 = v605;
    goto LABEL_217;
  }

  v387 = v605;
  v388 = v605 + v383;
  v389 = v649;
  sub_1C4924B90(v388, v649);
  v390 = sub_1C47E3504(v602, v389);
  sub_1C4924B3C();
  sub_1C4420C3C(v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v387, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v390 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_120:
  v391 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  v392 = v557;
  sub_1C4460108(v309 + v391, v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v393 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  v394 = *(v651 + 48);
  v395 = v392;
  v396 = v563;
  sub_1C4460108(v395, v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v393, v396 + v394, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v396, 1, v652) == 1)
  {
    sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v563 + v394, 1, v652) == 1)
    {
      sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  v397 = v563;
  sub_1C4460108(v563, v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v397 + v394, 1, v652) == 1)
  {
    sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_125:
    v320 = v563;
    goto LABEL_217;
  }

  v398 = v563;
  v399 = v563 + v394;
  v400 = v649;
  sub_1C4924B90(v399, v649);
  v401 = sub_1C47E3504(v558, v400);
  sub_1C4924B3C();
  sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v398, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v401 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_127:
  v402 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v403 = v559;
  sub_1C4460108(v309 + v402, v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v404 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v405 = *(v651 + 48);
  v406 = v403;
  v407 = v566;
  sub_1C4460108(v406, v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v404, v407 + v405, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v407, 1, v652) == 1)
  {
    sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v566 + v405, 1, v652) == 1)
    {
      sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  v408 = v566;
  sub_1C4460108(v566, v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v408 + v405, 1, v652) == 1)
  {
    sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_132:
    v320 = v566;
    goto LABEL_217;
  }

  v409 = v566;
  v410 = v566 + v405;
  v411 = v649;
  sub_1C4924B90(v410, v649);
  v412 = sub_1C47E3504(v560, v411);
  sub_1C4924B3C();
  sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v409, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v412 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_134:
  v413 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v414 = v561;
  sub_1C4460108(v309 + v413, v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v415 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v416 = *(v651 + 48);
  v417 = v414;
  v418 = v569;
  sub_1C4460108(v417, v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v415, v418 + v416, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v418, 1, v652) == 1)
  {
    sub_1C4420C3C(v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v569 + v416, 1, v652) == 1)
    {
      sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_141;
    }

    goto LABEL_139;
  }

  v419 = v569;
  sub_1C4460108(v569, v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v419 + v416, 1, v652) == 1)
  {
    sub_1C4420C3C(v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_139:
    v320 = v569;
    goto LABEL_217;
  }

  v420 = v569;
  v421 = v569 + v416;
  v422 = v649;
  sub_1C4924B90(v421, v649);
  v423 = sub_1C47E3504(v562, v422);
  sub_1C4924B3C();
  sub_1C4420C3C(v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v420, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v423 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_141:
  v424 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v425 = v564;
  sub_1C4460108(v309 + v424, v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v426 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v427 = *(v651 + 48);
  v428 = v425;
  v429 = v572;
  sub_1C4460108(v428, v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v426, v429 + v427, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v429, 1, v652) == 1)
  {
    sub_1C4420C3C(v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v572 + v427, 1, v652) == 1)
    {
      sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_148;
    }

    goto LABEL_146;
  }

  v430 = v572;
  sub_1C4460108(v572, v565, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v430 + v427, 1, v652) == 1)
  {
    sub_1C4420C3C(v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_146:
    v320 = v572;
    goto LABEL_217;
  }

  v431 = v572;
  v432 = v572 + v427;
  v433 = v649;
  sub_1C4924B90(v432, v649);
  v434 = sub_1C47E3504(v565, v433);
  sub_1C4924B3C();
  sub_1C4420C3C(v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v431, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v434 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_148:
  v435 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v436 = v567;
  sub_1C4460108(v309 + v435, v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v437 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v438 = *(v651 + 48);
  v439 = v436;
  v440 = v575;
  sub_1C4460108(v439, v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v437, v440 + v438, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v440, 1, v652) == 1)
  {
    sub_1C4420C3C(v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v575 + v438, 1, v652) == 1)
    {
      sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v441 = v575;
  sub_1C4460108(v575, v568, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v441 + v438, 1, v652) == 1)
  {
    sub_1C4420C3C(v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_153:
    v320 = v575;
    goto LABEL_217;
  }

  v442 = v575;
  v443 = v575 + v438;
  v444 = v649;
  sub_1C4924B90(v443, v649);
  v445 = sub_1C47E3504(v568, v444);
  sub_1C4924B3C();
  sub_1C4420C3C(v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v442, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v445 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_155:
  v446 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  v447 = v570;
  sub_1C4460108(v309 + v446, v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v448 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  v449 = *(v651 + 48);
  v450 = v447;
  v451 = v578;
  sub_1C4460108(v450, v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v448, v451 + v449, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v451, 1, v652) == 1)
  {
    sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v578 + v449, 1, v652) == 1)
    {
      sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_162;
    }

    goto LABEL_160;
  }

  v452 = v578;
  sub_1C4460108(v578, v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v452 + v449, 1, v652) == 1)
  {
    sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_160:
    v320 = v578;
    goto LABEL_217;
  }

  v453 = v578;
  v454 = v578 + v449;
  v455 = v649;
  sub_1C4924B90(v454, v649);
  v456 = sub_1C47E3504(v571, v455);
  sub_1C4924B3C();
  sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v453, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v456 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_162:
  v457 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  v458 = v573;
  sub_1C4460108(v309 + v457, v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v459 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  v460 = *(v651 + 48);
  v461 = v458;
  v462 = v581;
  sub_1C4460108(v461, v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v459, v462 + v460, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v462, 1, v652) == 1)
  {
    sub_1C4420C3C(v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v581 + v460, 1, v652) == 1)
    {
      sub_1C4420C3C(v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_169;
    }

    goto LABEL_167;
  }

  v463 = v581;
  sub_1C4460108(v581, v574, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v463 + v460, 1, v652) == 1)
  {
    sub_1C4420C3C(v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_167:
    v320 = v581;
    goto LABEL_217;
  }

  v464 = v581;
  v465 = v581 + v460;
  v466 = v649;
  sub_1C4924B90(v465, v649);
  v467 = sub_1C47E3504(v574, v466);
  sub_1C4924B3C();
  sub_1C4420C3C(v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v464, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v467 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_169:
  v468 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v469 = v576;
  sub_1C4460108(v309 + v468, v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v470 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v471 = *(v651 + 48);
  v472 = v469;
  v473 = v583;
  sub_1C4460108(v472, v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v470, v473 + v471, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v473, 1, v652) == 1)
  {
    sub_1C4420C3C(v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v583 + v471, 1, v652) == 1)
    {
      sub_1C4420C3C(v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  v474 = v583;
  sub_1C4460108(v583, v577, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v474 + v471, 1, v652) == 1)
  {
    sub_1C4420C3C(v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_174:
    v320 = v583;
    goto LABEL_217;
  }

  v475 = v583;
  v476 = v583 + v471;
  v477 = v649;
  sub_1C4924B90(v476, v649);
  v478 = sub_1C47E3504(v577, v477);
  sub_1C4924B3C();
  sub_1C4420C3C(v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v475, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v478 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_176:
  v479 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v480 = v579;
  sub_1C4460108(v309 + v479, v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v481 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v482 = *(v651 + 48);
  v483 = v480;
  v484 = v586;
  sub_1C4460108(v483, v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v481, v484 + v482, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v484, 1, v652) == 1)
  {
    sub_1C4420C3C(v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v586 + v482, 1, v652) == 1)
    {
      sub_1C4420C3C(v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_183;
    }

    goto LABEL_181;
  }

  v485 = v586;
  sub_1C4460108(v586, v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v485 + v482, 1, v652) == 1)
  {
    sub_1C4420C3C(v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_181:
    v320 = v586;
    goto LABEL_217;
  }

  v486 = v586;
  v487 = v586 + v482;
  v488 = v649;
  sub_1C4924B90(v487, v649);
  v489 = sub_1C47E3504(v580, v488);
  sub_1C4924B3C();
  sub_1C4420C3C(v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v486, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v489 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_183:
  v490 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v491 = v582;
  sub_1C4460108(v309 + v490, v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v492 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v493 = *(v651 + 48);
  v494 = v491;
  v495 = v589;
  sub_1C4460108(v494, v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v492, v495 + v493, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v495, 1, v652) == 1)
  {
    sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v589 + v493, 1, v652) == 1)
    {
      sub_1C4420C3C(v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  v496 = v589;
  sub_1C4460108(v589, v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v496 + v493, 1, v652) == 1)
  {
    sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_188:
    v320 = v589;
    goto LABEL_217;
  }

  v497 = v589;
  v498 = v589 + v493;
  v499 = v649;
  sub_1C4924B90(v498, v649);
  v500 = sub_1C47E3504(v584, v499);
  sub_1C4924B3C();
  sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v497, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v500 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_190:
  v501 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v502 = v585;
  sub_1C4460108(v309 + v501, v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v503 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v504 = *(v651 + 48);
  v505 = v502;
  v506 = v591;
  sub_1C4460108(v505, v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v503, v506 + v504, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v506, 1, v652) == 1)
  {
    sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v591 + v504, 1, v652) == 1)
    {
      sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_197;
    }

    goto LABEL_195;
  }

  v507 = v591;
  sub_1C4460108(v591, v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v507 + v504, 1, v652) == 1)
  {
    sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_195:
    v320 = v591;
    goto LABEL_217;
  }

  v508 = v591;
  v509 = v591 + v504;
  v510 = v649;
  sub_1C4924B90(v509, v649);
  v511 = sub_1C47E3504(v587, v510);
  sub_1C4924B3C();
  sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v508, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v511 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_197:
  v512 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v513 = v588;
  sub_1C4460108(v309 + v512, v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v514 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v515 = *(v651 + 48);
  v516 = v513;
  v517 = v594;
  sub_1C4460108(v516, v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v514, v517 + v515, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v517, 1, v652) == 1)
  {
    sub_1C4420C3C(v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v594 + v515, 1, v652) == 1)
    {
      sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_204;
    }

    goto LABEL_202;
  }

  v518 = v594;
  sub_1C4460108(v594, v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v518 + v515, 1, v652) == 1)
  {
    sub_1C4420C3C(v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_202:
    v320 = v594;
    goto LABEL_217;
  }

  v519 = v594;
  v520 = v594 + v515;
  v521 = v649;
  sub_1C4924B90(v520, v649);
  v522 = sub_1C47E3504(v590, v521);
  sub_1C4924B3C();
  sub_1C4420C3C(v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v519, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v522 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_204:
  v523 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v524 = v592;
  sub_1C4460108(v309 + v523, v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v525 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v526 = *(v651 + 48);
  v527 = v524;
  v528 = v597;
  sub_1C4460108(v527, v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v525, v528 + v526, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v528, 1, v652) == 1)
  {
    sub_1C4420C3C(v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v597 + v526, 1, v652) == 1)
    {
      sub_1C4420C3C(v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  v529 = v597;
  sub_1C4460108(v597, v593, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v529 + v526, 1, v652) == 1)
  {
    sub_1C4420C3C(v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_209:
    v320 = v597;
    goto LABEL_217;
  }

  v530 = v597;
  v531 = v597 + v526;
  v532 = v649;
  sub_1C4924B90(v531, v649);
  v533 = sub_1C47E3504(v593, v532);
  sub_1C4924B3C();
  sub_1C4420C3C(v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v530, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v533 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_211:
  v534 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v535 = v595;
  sub_1C4460108(v309 + v534, v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v536 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v537 = *(v651 + 48);
  v538 = v535;
  v539 = v600;
  sub_1C4460108(v538, v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v536, v539 + v537, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v539, 1, v652) == 1)
  {
    sub_1C4420C3C(v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v600 + v537, 1, v652) == 1)
    {
      sub_1C4420C3C(v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_220;
    }

    goto LABEL_216;
  }

  v540 = v600;
  sub_1C4460108(v600, v596, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v540 + v537, 1, v652) == 1)
  {
    sub_1C4420C3C(v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_216:
    v320 = v600;
    goto LABEL_217;
  }

  v541 = v600;
  v542 = v600 + v537;
  v543 = v649;
  sub_1C4924B90(v542, v649);
  v544 = sub_1C47E3504(v596, v543);
  sub_1C4924B3C();
  sub_1C4420C3C(v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v541, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v544 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_220:
  v545 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v546 = v598;
  sub_1C4460108(v309 + v545, v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v547 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v548 = *(v651 + 48);
  v549 = v546;
  v550 = v601;
  sub_1C4460108(v549, v601, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v318 + v547, v550 + v548, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v550, 1, v652) != 1)
  {
    v551 = v601;
    sub_1C4460108(v601, v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v551 + v548, 1, v652) == 1)
    {

      sub_1C4420C3C(v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_225;
    }

    v552 = v601;
    v553 = v601 + v548;
    v554 = v649;
    sub_1C4924B90(v553, v649);
    v555 = sub_1C47E3504(v599, v554);

    sub_1C4924B3C();
    sub_1C4420C3C(v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v552, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v555 & 1) != 0;
  }

  sub_1C4420C3C(v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v601 + v548, 1, v652) != 1)
  {
LABEL_225:
    sub_1C4420C3C(v601, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v601, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}

uint64_t sub_1C48EE238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6E8, type metadata accessor for HUTenPointContext.CalendarEvents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48EE2D8()
{
  sub_1C49231A4(&qword_1EC0BF338, type metadata accessor for HUTenPointContext.CalendarEvents);

  return sub_1C4F00428();
}

uint64_t sub_1C48EE3A0()
{
  sub_1C49231A4(&qword_1EC0BF338, type metadata accessor for HUTenPointContext.CalendarEvents);

  return sub_1C4F00438();
}

uint64_t sub_1C48EE460()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FA9AD0);
  qword_1EC152470 = v1[0];
  *algn_1EC152478 = v1[1];
  return result;
}

uint64_t sub_1C48EE4D4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152480);
  sub_1C442B738(v0, qword_1EC152480);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activity_interval_duration_in_mins";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "activity_interval_type";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48EE69C()
{
  v0 = *(type metadata accessor for HUTenPointContext.ActivityInterval(0) + 20);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C48EE750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  sub_1C4460108(a1 + *(v13 + 20), v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

void sub_1C48EE924()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FeatureValue(0);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v45 = (v11 - v10);
  v12 = sub_1C43FBC98();
  v14 = sub_1C456902C(v12, v13);
  v15 = sub_1C43FBD18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v44 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v23 = sub_1C43FBCE0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  v47 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  v46 = v1(0);
  v30 = *(v46 + 20);
  v31 = *(v22 + 48);
  v48 = v5;
  sub_1C442573C(v5 + v30, v29);
  v49 = v3;
  sub_1C442573C(v3 + v30, &v29[v31]);
  sub_1C440175C(v29, 1, v6);
  if (v32)
  {
    sub_1C440175C(&v29[v31], 1, v6);
    if (!v32)
    {
      goto LABEL_16;
    }

    sub_1C4420C3C(v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v29, v21, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v29[v31], 1, v6);
    if (v32)
    {
LABEL_15:
      sub_1C4924B3C();
LABEL_16:
      sub_1C4420C3C(v29, &qword_1EC0BB6C0, &unk_1C4F20AE0);
      goto LABEL_17;
    }

    v33 = v45;
    sub_1C4924B90(&v29[v31], v45);
    v34 = sub_1C47E3504(v21, v33);
    sub_1C4404C28();
    sub_1C4924B3C();
    sub_1C440D314();
    sub_1C4924B3C();
    sub_1C4420C3C(v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v34 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v29 = v47;
  v35 = *(v46 + 24);
  v36 = *(v22 + 48);
  sub_1C442573C(v48 + v35, v47);
  sub_1C442573C(v49 + v35, &v29[v36]);
  sub_1C440175C(v29, 1, v6);
  if (v32)
  {
    sub_1C440175C(&v29[v36], 1, v6);
    if (v32)
    {
      sub_1C4420C3C(v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_20:
      sub_1C4F00328();
      sub_1C44070A8();
      sub_1C49231A4(v42, v43);
      sub_1C43FD2BC();
      v39 = sub_1C4F010B8();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v37 = v44;
  sub_1C4460108(v29, v44, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v29[v36], 1, v6);
  if (v38)
  {
    goto LABEL_15;
  }

  v40 = v45;
  sub_1C4924B90(&v29[v36], v45);
  v41 = sub_1C47E3504(v37, v40);
  sub_1C4404C28();
  sub_1C4924B3C();
  sub_1C440D314();
  sub_1C4924B3C();
  sub_1C4420C3C(v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (v41)
  {
    goto LABEL_20;
  }

LABEL_17:
  v39 = 0;
LABEL_18:
  sub_1C444ACF8(v39);
  sub_1C43FE9F0();
}

uint64_t sub_1C48EEDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6F0, type metadata accessor for HUTenPointContext.ActivityInterval);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48EEE8C()
{
  sub_1C49231A4(&qword_1EC0BF318, type metadata accessor for HUTenPointContext.ActivityInterval);

  return sub_1C4F00428();
}

uint64_t sub_1C48EEF54()
{
  sub_1C49231A4(&qword_1EC0BF318, type metadata accessor for HUTenPointContext.ActivityInterval);

  return sub_1C4F00438();
}

uint64_t sub_1C48EF000()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FA9AF0);
  qword_1EC152498 = v1[0];
  unk_1EC1524A0 = v1[1];
  return result;
}

uint64_t sub_1C48EF074()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1524A8);
  sub_1C442B738(v0, qword_1EC1524A8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F17D00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "local_device_app_category_distribution_in_activity_interval";
  *(v6 + 8) = 59;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "local_device_app_category_distribution_in_prev_30_minutes";
  *(v10 + 8) = 57;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "local_device_app_category_distribution_in_prev_5_minutes";
  *(v12 + 1) = 56;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "local_device_app_manual_category_distribution_in_activity_interval";
  *(v14 + 1) = 66;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "local_device_app_manual_category_distribution_in_prev_30_minutes";
  *(v16 + 1) = 64;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "local_device_app_manual_category_distribution_in_prev_5_minutes";
  *(v18 + 1) = 63;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "remote_device_app_category_distribution_in_activity_interval";
  *(v20 + 1) = 60;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "remote_device_app_category_distribution_in_prev_30_minutes";
  *(v22 + 1) = 58;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "remote_device_app_category_distribution_in_prev_5_minutes";
  *(v24 + 1) = 57;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "remote_device_app_manual_category_distribution_in_activity_interval";
  *(v26 + 1) = 67;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "remote_device_app_manual_category_distribution_in_prev_30_minutes";
  *(v28 + 1) = 65;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "remote_device_app_manual_category_distribution_in_prev_5_minutes";
  *(v30 + 1) = 64;
  v30[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48EF4E0()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48EF664(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - v5;
  v7 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v8);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v8);
  v34 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v8);
  v35 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v8);
  v36 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v8);
  v37 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval, 1, 1, v8);
  v38 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v8);
  v39 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v8);
  v40 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v8);
  v41 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v8);
  v42 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v8);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = v34;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = v35;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v18, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = v36;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v19, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v20, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v21 = v37;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v21, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v22, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v23 = v38;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v24, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v25 = v39;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v26, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v27 = v40;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v27, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v28, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v29 = v41;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v30, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v31 = v42;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48EFD34()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48EFECC()
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48EFF8C()
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48F014C();
        break;
      case 2:
        sub_1C48F0228();
        break;
      case 3:
        sub_1C48F0304();
        break;
      case 4:
        sub_1C48F03E0();
        break;
      case 5:
        sub_1C48F04BC();
        break;
      case 6:
        sub_1C48F0598();
        break;
      case 7:
        sub_1C48F0674();
        break;
      case 8:
        sub_1C48F0750();
        break;
      case 9:
        sub_1C48F082C();
        break;
      case 10:
        sub_1C48F0908();
        break;
      case 11:
        sub_1C48F09E4();
        break;
      case 12:
        sub_1C48F0AC0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48F014C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0228()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0304()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F03E0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F04BC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0598()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0674()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0750()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F082C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0908()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F09E4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0AC0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48F0CDC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48F0EC4(a1, a2, a3, a4);
    sub_1C48F10AC(a1, a2, a3, a4);
    sub_1C48F1294(a1, a2, a3, a4);
    sub_1C48F147C(a1, a2, a3, a4);
    sub_1C48F1664(a1, a2, a3, a4);
    sub_1C48F184C(a1, a2, a3, a4);
    sub_1C48F1A34(a1, a2, a3, a4);
    sub_1C48F1C1C(a1, a2, a3, a4);
    sub_1C48F1E04(a1, a2, a3, a4);
    sub_1C48F1FEC(a1, a2, a3, a4);
    return sub_1C48F21D4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48F0CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F21D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

BOOL sub_1C48F23BC(uint64_t a1, uint64_t a2)
{
  v239 = a2;
  v240 = type metadata accessor for FeatureValue(0);
  v3 = *(*(v240 - 8) + 64);
  MEMORY[0x1EEE9AC00](v240);
  v238 = (&v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v241 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v5 = *(*(v241 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v241);
  v208 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v211 = &v205 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v213 = &v205 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v215 = &v205 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v218 = &v205 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v221 = &v205 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v224 = &v205 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v227 = &v205 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v230 = &v205 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v233 = &v205 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v237 = &v205 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v205 - v28;
  v30 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v205 = &v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v206 = &v205 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v207 = &v205 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v210 = &v205 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v209 = &v205 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v214 = &v205 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v212 = &v205 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v217 = &v205 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v216 = &v205 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v220 = &v205 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v219 = &v205 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v223 = &v205 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v222 = &v205 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v226 = &v205 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v225 = &v205 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v229 = &v205 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v228 = &v205 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v232 = &v205 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v231 = &v205 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v235 = &v205 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v234 = &v205 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v236 = &v205 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v78 = &v205 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v80 = &v205 - v79;
  v81 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v82 = a1;
  sub_1C4460108(a1 + v81, v80, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v83 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  v84 = v239;
  swift_beginAccess();
  v85 = *(v241 + 48);
  sub_1C4460108(v80, v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v86 = v240;
  sub_1C4460108(v84 + v83, &v29[v85], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v29, 1, v86) == 1)
  {

    sub_1C4420C3C(v80, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v87 = v82;
    if (sub_1C44157D4(&v29[v85], 1, v86) == 1)
    {
      sub_1C4420C3C(v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C4420C3C(v29, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_57;
  }

  sub_1C4460108(v29, v78, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v29[v85], 1, v86) == 1)
  {

    sub_1C4420C3C(v80, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v88 = &v29[v85];
  v89 = v238;
  sub_1C4924B90(v88, v238);

  v90 = sub_1C47E3504(v78, v89);
  sub_1C4924B3C();
  sub_1C4420C3C(v80, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v87 = v82;
  sub_1C4924B3C();
  sub_1C4420C3C(v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_9:
  v91 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v92 = v236;
  sub_1C4460108(v87 + v91, v236, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v93 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v94 = *(v241 + 48);
  v95 = v237;
  sub_1C4460108(v92, v237, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v84 + v93, v95 + v94, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v96 = v240;
  v97 = v84;
  if (sub_1C44157D4(v95, 1, v240) == 1)
  {
    sub_1C4420C3C(v92, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v95 + v94, 1, v96) == 1)
    {
      sub_1C4420C3C(v95, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_16;
    }

LABEL_14:
    v99 = v95;
LABEL_56:
    sub_1C4420C3C(v99, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_57;
  }

  v98 = v234;
  sub_1C4460108(v95, v234, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v95 + v94, 1, v96) == 1)
  {
    sub_1C4420C3C(v92, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_14;
  }

  v100 = v238;
  sub_1C4924B90(v95 + v94, v238);
  v101 = sub_1C47E3504(v98, v100);
  sub_1C4924B3C();
  sub_1C4420C3C(v92, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v95, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_16:
  v102 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v237 = v87;
  v103 = v87 + v102;
  v104 = v235;
  sub_1C4460108(v103, v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v105 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v106 = v241;
  v107 = *(v241 + 48);
  v108 = v233;
  sub_1C4460108(v104, v233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v97 + v105, v108 + v107, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108, 1, v96) == 1)
  {
    sub_1C4420C3C(v104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v109 = sub_1C44157D4(v108 + v107, 1, v96);
    v110 = v237;
    if (v109 != 1)
    {
      goto LABEL_55;
    }

    v111 = v97;
    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v112 = v231;
    sub_1C4460108(v108, v231, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v108 + v107, 1, v96) == 1)
    {
      sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_55;
    }

    v111 = v97;
    v113 = v108 + v107;
    v114 = v238;
    sub_1C4924B90(v113, v238);
    v115 = sub_1C47E3504(v112, v114);
    sub_1C4924B3C();
    sub_1C4420C3C(v235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v110 = v237;
    if ((v115 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v116 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v117 = v106;
  v118 = v232;
  sub_1C4460108(v110 + v116, v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v119 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  v120 = v111;
  swift_beginAccess();
  v121 = *(v117 + 48);
  v108 = v230;
  sub_1C4460108(v118, v230, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v111 + v119, v108 + v121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v122 = v240;
  if (sub_1C44157D4(v108, 1, v240) == 1)
  {
    sub_1C4420C3C(v118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v108 + v121, 1, v122) == 1)
    {
      sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_31;
    }

LABEL_55:
    v99 = v108;
    goto LABEL_56;
  }

  v123 = v228;
  sub_1C4460108(v108, v228, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108 + v121, 1, v122) == 1)
  {
    v124 = v232;
    goto LABEL_27;
  }

  v125 = v108 + v121;
  v126 = v238;
  sub_1C4924B90(v125, v238);
  v127 = sub_1C47E3504(v123, v126);
  sub_1C4924B3C();
  sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v127 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_31:
  v128 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v129 = v229;
  sub_1C4460108(v110 + v128, v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v130 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v131 = *(v241 + 48);
  v108 = v227;
  sub_1C4460108(v129, v227, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v120 + v130, v108 + v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108, 1, v122) == 1)
  {
    sub_1C4420C3C(v129, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v132 = sub_1C44157D4(v108 + v131, 1, v122);
    v133 = v239;
    if (v132 != 1)
    {
      goto LABEL_55;
    }

    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v134 = v225;
    sub_1C4460108(v108, v225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v108 + v131, 1, v122) == 1)
    {
      v135 = v229;
      goto LABEL_54;
    }

    v136 = v238;
    sub_1C4924B90(v108 + v131, v238);
    v137 = sub_1C47E3504(v134, v136);
    sub_1C4924B3C();
    sub_1C4420C3C(v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v133 = v239;
    if ((v137 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v138 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v139 = v226;
  sub_1C4460108(v110 + v138, v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v140 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v141 = *(v241 + 48);
  v108 = v224;
  sub_1C4460108(v139, v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v133 + v140, v108 + v141, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108, 1, v122) == 1)
  {
    sub_1C4420C3C(v139, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v142 = sub_1C44157D4(v108 + v141, 1, v122);
    v143 = v239;
    if (v142 != 1)
    {
      goto LABEL_55;
    }

    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v144 = v222;
    sub_1C4460108(v108, v222, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v108 + v141, 1, v122) == 1)
    {
      v135 = v226;
      goto LABEL_54;
    }

    v145 = v238;
    sub_1C4924B90(v108 + v141, v238);
    v146 = sub_1C47E3504(v144, v145);
    sub_1C4924B3C();
    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v143 = v239;
    if ((v146 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v147 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v148 = v223;
  sub_1C4460108(v110 + v147, v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v149 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v150 = *(v241 + 48);
  v108 = v221;
  sub_1C4460108(v148, v221, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v143 + v149, v108 + v150, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108, 1, v122) == 1)
  {
    sub_1C4420C3C(v148, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v151 = sub_1C44157D4(v108 + v150, 1, v122);
    v152 = v239;
    if (v151 != 1)
    {
      goto LABEL_55;
    }

    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_49;
  }

  v153 = v219;
  sub_1C4460108(v108, v219, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108 + v150, 1, v122) == 1)
  {
    v135 = v223;
    goto LABEL_54;
  }

  v154 = v238;
  sub_1C4924B90(v108 + v150, v238);
  v155 = sub_1C47E3504(v153, v154);
  sub_1C4924B3C();
  sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v152 = v239;
  if ((v155 & 1) == 0)
  {
LABEL_57:

    return 0;
  }

LABEL_49:
  v156 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v157 = v220;
  sub_1C4460108(v110 + v156, v220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v158 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v159 = *(v241 + 48);
  v108 = v218;
  sub_1C4460108(v157, v218, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v152 + v158, v108 + v159, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108, 1, v122) != 1)
  {
    v162 = v216;
    sub_1C4460108(v108, v216, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v108 + v159, 1, v122) != 1)
    {
      v164 = v238;
      sub_1C4924B90(v108 + v159, v238);
      v165 = sub_1C47E3504(v162, v164);
      sub_1C4924B3C();
      sub_1C4420C3C(v220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v161 = v239;
      if ((v165 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    }

    v135 = v220;
LABEL_54:
    sub_1C4420C3C(v135, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_55;
  }

  sub_1C4420C3C(v157, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v160 = sub_1C44157D4(v108 + v159, 1, v122);
  v161 = v239;
  if (v160 != 1)
  {
    goto LABEL_55;
  }

  sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_60:
  v166 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v167 = v217;
  sub_1C4460108(v110 + v166, v217, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v168 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v169 = *(v241 + 48);
  v108 = v215;
  sub_1C4460108(v167, v215, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v161 + v168, v108 + v169, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v170 = v240;
  if (sub_1C44157D4(v108, 1, v240) != 1)
  {
    v172 = v212;
    sub_1C4460108(v108, v212, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v171 = v170;
    if (sub_1C44157D4(v108 + v169, 1, v170) != 1)
    {
      v173 = v238;
      sub_1C4924B90(v108 + v169, v238);
      v174 = sub_1C47E3504(v172, v173);
      sub_1C4924B3C();
      sub_1C4420C3C(v217, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v108 = v213;
      if ((v174 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_66;
    }

    v124 = v217;
LABEL_27:
    sub_1C4420C3C(v124, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_28:
    sub_1C4924B3C();
    goto LABEL_55;
  }

  sub_1C4420C3C(v167, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v171 = v170;
  if (sub_1C44157D4(v108 + v169, 1, v170) != 1)
  {
    goto LABEL_55;
  }

  sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v108 = v213;
LABEL_66:
  v175 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v176 = v214;
  sub_1C4460108(v110 + v175, v214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v177 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v178 = *(v241 + 48);
  sub_1C4460108(v176, v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v161 + v177, v108 + v178, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v179 = v171;
  if (sub_1C44157D4(v108, 1, v171) == 1)
  {
    sub_1C4420C3C(v214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v108 + v178, 1, v171) == 1)
    {
      sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_72;
    }

    goto LABEL_55;
  }

  v180 = v209;
  sub_1C4460108(v108, v209, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v108 + v178, 1, v179) == 1)
  {
    sub_1C4420C3C(v214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_28;
  }

  v181 = v238;
  sub_1C4924B90(v108 + v178, v238);
  v182 = sub_1C47E3504(v180, v181);
  sub_1C4924B3C();
  sub_1C4420C3C(v214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v182 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_72:
  v183 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v184 = v210;
  sub_1C4460108(v110 + v183, v210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v185 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v186 = *(v241 + 48);
  v187 = v211;
  sub_1C4460108(v184, v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v188 = v161;
  sub_1C4460108(v161 + v185, v187 + v186, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v187, 1, v240) == 1)
  {
    sub_1C4420C3C(v210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v211 + v186, 1, v240) == 1)
    {
      sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_80;
    }

    goto LABEL_77;
  }

  v189 = v211;
  sub_1C4460108(v211, v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v189 + v186, 1, v240) == 1)
  {
    sub_1C4420C3C(v210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_77:
    sub_1C4420C3C(v211, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_57;
  }

  v190 = v211;
  v191 = v211 + v186;
  v192 = v238;
  sub_1C4924B90(v191, v238);
  v193 = sub_1C47E3504(v207, v192);
  sub_1C4924B3C();
  sub_1C4420C3C(v210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v190, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v193 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_80:
  v194 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v195 = v206;
  sub_1C4460108(v110 + v194, v206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v196 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v197 = *(v241 + 48);
  v198 = v195;
  v199 = v208;
  sub_1C4460108(v198, v208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v196, v199 + v197, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v199, 1, v240) != 1)
  {
    v200 = v208;
    sub_1C4460108(v208, v205, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v200 + v197, 1, v240) == 1)
    {

      sub_1C4420C3C(v206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_85;
    }

    v201 = v208;
    v202 = v208 + v197;
    v203 = v238;
    sub_1C4924B90(v202, v238);
    v204 = sub_1C47E3504(v205, v203);

    sub_1C4924B3C();
    sub_1C4420C3C(v206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v204 & 1) != 0;
  }

  sub_1C4420C3C(v206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v208 + v197, 1, v240) != 1)
  {
LABEL_85:
    sub_1C4420C3C(v208, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}

uint64_t sub_1C48F42F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48F4398()
{
  sub_1C49231A4(&qword_1EC0BF2F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution);

  return sub_1C4F00428();
}

uint64_t sub_1C48F4460()
{
  sub_1C49231A4(&qword_1EC0BF2F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution);

  return sub_1C4F00438();
}

uint64_t sub_1C48F4520()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FA9B10);
  qword_1EC1524C0 = v1[0];
  *algn_1EC1524C8 = v1[1];
  return result;
}

uint64_t sub_1C48F4594()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1524D0);
  sub_1C442B738(v0, qword_1EC1524D0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "motion_state_distribution_in_activity_interval";
  *(v6 + 8) = 46;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "motion_state_distribution_in_prev_30_minutes";
  *(v10 + 1) = 44;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "motion_state_distribution_in_prev_5_minutes";
  *(v12 + 1) = 43;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48F479C()
{
  v0 = type metadata accessor for HUTenPointContext.MotionStateDistribution._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInActivityInterval, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInPrev30Minutes, &OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInPrev5Minutes);
  qword_1EC0BE6F0 = result;
  return result;
}

void sub_1C48F483C()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for HUTenPointContext.MotionStateDistribution(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for HUTenPointContext.MotionStateDistribution._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48F48F8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F49D4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F4AB0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F4B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F4D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F4F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F5238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF700, type metadata accessor for HUTenPointContext.MotionStateDistribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48F52D8()
{
  sub_1C49231A4(&qword_1EC0BF2D8, type metadata accessor for HUTenPointContext.MotionStateDistribution);

  return sub_1C4F00428();
}

uint64_t sub_1C48F53A0()
{
  sub_1C49231A4(&qword_1EC0BF2D8, type metadata accessor for HUTenPointContext.MotionStateDistribution);

  return sub_1C4F00438();
}

uint64_t sub_1C48F5464()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA9B30);
  qword_1EC1524E8 = v1[0];
  unk_1EC1524F0 = v1[1];
  return result;
}

uint64_t sub_1C48F54D8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1524F8);
  sub_1C442B738(v0, qword_1EC1524F8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_1C4F17D10;
  v4 = v210 + v3 + v1[14];
  *(v210 + v3) = 1;
  *v4 = "incoming_email_count_in_prev_5_mins";
  *(v4 + 8) = 35;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v210 + v3 + v2 + v1[14];
  *(v210 + v3 + v2) = 2;
  *v8 = "incoming_phone_count_in_prev_5_mins";
  *(v8 + 8) = 35;
  *(v8 + 16) = 2;
  v7();
  v9 = (v210 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "incoming_instant_message_count_in_prev_5_mins";
  *(v10 + 1) = 45;
  v10[16] = 2;
  v7();
  v11 = (v210 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "incoming_audio_call_count_in_prev_5_mins";
  *(v12 + 1) = 40;
  v12[16] = 2;
  v7();
  v13 = (v210 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "incoming_meeting_count_in_prev_5_mins";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v210 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "incoming_sms_count_in_prev_5_mins";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v7();
  v17 = (v210 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "incoming_mms_count_in_prev_5_mins";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v7();
  v19 = (v210 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "incoming_voip_count_in_prev_5_mins";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v7();
  v21 = (v210 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "incoming_facetime_count_in_prev_5_mins";
  *(v22 + 1) = 38;
  v22[16] = 2;
  v7();
  v23 = (v210 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "incoming_facetime_audio_count_in_prev_5_mins";
  *(v24 + 1) = 44;
  v24[16] = 2;
  v7();
  v25 = (v210 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "incoming_facetime_video_count_in_prev_5_mins";
  *(v26 + 1) = 44;
  v26[16] = 2;
  v7();
  v27 = (v210 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "incoming_video_call_count_in_prev_5_mins";
  *(v28 + 1) = 40;
  v28[16] = 2;
  v7();
  v29 = (v210 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "incoming_shareplay_count_in_prev_5_mins";
  *(v30 + 1) = 39;
  v30[16] = 2;
  v7();
  v31 = (v210 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "outgoing_email_count_in_prev_5_mins";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v7();
  v33 = (v210 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "outgoing_phone_count_in_prev_5_mins";
  *(v34 + 1) = 35;
  v34[16] = 2;
  v7();
  v35 = (v210 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "outgoing_instant_message_count_in_prev_5_mins";
  *(v36 + 1) = 45;
  v36[16] = 2;
  v7();
  v37 = (v210 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "outgoing_audio_call_count_in_prev_5_mins";
  *(v38 + 1) = 40;
  v38[16] = 2;
  v7();
  v39 = (v210 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "outgoing_meeting_count_in_prev_5_mins";
  *(v40 + 1) = 37;
  v40[16] = 2;
  v7();
  v41 = (v210 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "outgoing_sms_count_in_prev_5_mins";
  *(v42 + 1) = 33;
  v42[16] = 2;
  v7();
  v43 = (v210 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "outgoing_mms_count_in_prev_5_mins";
  *(v44 + 1) = 33;
  v44[16] = 2;
  v7();
  v45 = (v210 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "outgoing_voip_count_in_prev_5_mins";
  *(v46 + 1) = 34;
  v46[16] = 2;
  v7();
  v47 = (v210 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "outgoing_facetime_count_in_prev_5_mins";
  *(v48 + 1) = 38;
  v48[16] = 2;
  v7();
  v49 = (v210 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "outgoing_facetime_audio_count_in_prev_5_mins";
  *(v50 + 1) = 44;
  v50[16] = 2;
  v7();
  v51 = (v210 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "outgoing_facetime_video_count_in_prev_5_mins";
  *(v52 + 1) = 44;
  v52[16] = 2;
  v7();
  v53 = (v210 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "outgoing_video_call_count_in_prev_5_mins";
  *(v54 + 1) = 40;
  v54[16] = 2;
  v7();
  v55 = (v210 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "outgoing_shareplay_count_in_prev_5_mins";
  *(v56 + 1) = 39;
  v56[16] = 2;
  v7();
  v57 = (v210 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "phone_duration_in_prev_5_mins";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v7();
  v59 = (v210 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "audio_call_duration_in_prev_5_mins";
  *(v60 + 1) = 34;
  v60[16] = 2;
  v7();
  v61 = (v210 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "meeting_duration_in_prev_5_mins";
  *(v62 + 1) = 31;
  v62[16] = 2;
  v7();
  v63 = (v210 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "voip_duration_in_prev_5_mins";
  *(v64 + 1) = 28;
  v64[16] = 2;
  v7();
  v65 = (v210 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "facetime_duration_in_prev_5_mins";
  *(v66 + 1) = 32;
  v66[16] = 2;
  v7();
  v67 = (v210 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "facetime_audio_duration_in_prev_5_mins";
  *(v68 + 1) = 38;
  v68[16] = 2;
  v7();
  v69 = (v210 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "facetime_video_duration_in_prev_5_mins";
  *(v70 + 1) = 38;
  v70[16] = 2;
  v7();
  v71 = (v210 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "video_call_duration_in_prev_5_mins";
  *(v72 + 1) = 34;
  v72[16] = 2;
  v7();
  v73 = (v210 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "incoming_email_count_in_prev_30_mins";
  *(v74 + 1) = 36;
  v74[16] = 2;
  v7();
  v75 = (v210 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "incoming_phone_count_in_prev_30_mins";
  *(v76 + 1) = 36;
  v76[16] = 2;
  v7();
  v77 = (v210 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "incoming_instant_message_count_in_prev_30_mins";
  *(v78 + 1) = 46;
  v78[16] = 2;
  v7();
  v79 = (v210 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "incoming_audio_call_count_in_prev_30_mins";
  *(v80 + 1) = 41;
  v80[16] = 2;
  v7();
  v81 = (v210 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "incoming_meeting_count_in_prev_30_mins";
  *(v82 + 1) = 38;
  v82[16] = 2;
  v7();
  v83 = (v210 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "incoming_sms_count_in_prev_30_mins";
  *(v84 + 1) = 34;
  v84[16] = 2;
  v7();
  v85 = (v210 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "incoming_mms_count_in_prev_30_mins";
  *(v86 + 1) = 34;
  v86[16] = 2;
  v7();
  v87 = (v210 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "incoming_voip_count_in_prev_30_mins";
  *(v88 + 1) = 35;
  v88[16] = 2;
  v7();
  v89 = (v210 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "incoming_facetime_count_in_prev_30_mins";
  *(v90 + 1) = 39;
  v90[16] = 2;
  v7();
  v91 = (v210 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "incoming_facetime_audio_count_in_prev_30_mins";
  *(v92 + 1) = 45;
  v92[16] = 2;
  v7();
  v93 = (v210 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "incoming_facetime_video_count_in_prev_30_mins";
  *(v94 + 1) = 45;
  v94[16] = 2;
  v7();
  v95 = (v210 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "incoming_video_call_count_in_prev_30_mins";
  *(v96 + 1) = 41;
  v96[16] = 2;
  v7();
  v97 = (v210 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "incoming_shareplay_count_in_prev_30_mins";
  *(v98 + 1) = 40;
  v98[16] = 2;
  v7();
  v99 = (v210 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "outgoing_email_count_in_prev_30_mins";
  *(v100 + 1) = 36;
  v100[16] = 2;
  v7();
  v101 = (v210 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "outgoing_phone_count_in_prev_30_mins";
  *(v102 + 1) = 36;
  v102[16] = 2;
  v7();
  v103 = (v210 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "outgoing_instant_message_count_in_prev_30_mins";
  *(v104 + 1) = 46;
  v104[16] = 2;
  v7();
  v105 = (v210 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "outgoing_audio_call_count_in_prev_30_mins";
  *(v106 + 1) = 41;
  v106[16] = 2;
  v7();
  v107 = (v210 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "outgoing_meeting_count_in_prev_30_mins";
  *(v108 + 1) = 38;
  v108[16] = 2;
  v7();
  v109 = (v210 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "outgoing_sms_count_in_prev_30_mins";
  *(v110 + 1) = 34;
  v110[16] = 2;
  v7();
  v111 = (v210 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "outgoing_mms_count_in_prev_30_mins";
  *(v112 + 1) = 34;
  v112[16] = 2;
  v7();
  v113 = (v210 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "outgoing_voip_count_in_prev_30_mins";
  *(v114 + 1) = 35;
  v114[16] = 2;
  v7();
  v115 = (v210 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "outgoing_facetime_count_in_prev_30_mins";
  *(v116 + 1) = 39;
  v116[16] = 2;
  v7();
  v117 = (v210 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "outgoing_facetime_audio_count_in_prev_30_mins";
  *(v118 + 1) = 45;
  v118[16] = 2;
  v7();
  v119 = (v210 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "outgoing_facetime_video_count_in_prev_30_mins";
  *(v120 + 1) = 45;
  v120[16] = 2;
  v7();
  v121 = (v210 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "outgoing_video_call_count_in_prev_30_mins";
  *(v122 + 1) = 41;
  v122[16] = 2;
  v7();
  v123 = (v210 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "outgoing_shareplay_count_in_prev_30_mins";
  *(v124 + 1) = 40;
  v124[16] = 2;
  v7();
  v125 = (v210 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "phone_duration_in_prev_30_mins";
  *(v126 + 1) = 30;
  v126[16] = 2;
  v7();
  v127 = (v210 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "audio_call_duration_in_prev_30_mins";
  *(v128 + 1) = 35;
  v128[16] = 2;
  v7();
  v129 = (v210 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "meeting_duration_in_prev_30_mins";
  *(v130 + 1) = 32;
  v130[16] = 2;
  v7();
  v131 = (v210 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "voip_duration_in_prev_30_mins";
  *(v132 + 1) = 29;
  v132[16] = 2;
  v7();
  v133 = (v210 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "facetime_duration_in_prev_30_mins";
  *(v134 + 1) = 33;
  v134[16] = 2;
  v7();
  v135 = (v210 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "facetime_audio_duration_in_prev_30_mins";
  *(v136 + 1) = 39;
  v136[16] = 2;
  v7();
  v137 = (v210 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 67;
  *v138 = "facetime_video_duration_in_prev_30_mins";
  *(v138 + 1) = 39;
  v138[16] = 2;
  v7();
  v139 = (v210 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 68;
  *v140 = "video_call_duration_in_prev_30_mins";
  *(v140 + 1) = 35;
  v140[16] = 2;
  v7();
  v141 = (v210 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 69;
  *v142 = "incoming_email_count_in_activity_interval";
  *(v142 + 1) = 41;
  v142[16] = 2;
  v7();
  v143 = (v210 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 70;
  *v144 = "incoming_phone_count_in_activity_interval";
  *(v144 + 1) = 41;
  v144[16] = 2;
  v7();
  v145 = (v210 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 71;
  *v146 = "incoming_instant_message_count_in_activity_interval";
  *(v146 + 1) = 51;
  v146[16] = 2;
  v7();
  v147 = (v210 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 73;
  *v148 = "incoming_audio_call_count_in_activity_interval";
  *(v148 + 1) = 46;
  v148[16] = 2;
  v7();
  v149 = (v210 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 74;
  *v150 = "incoming_meeting_count_in_activity_interval";
  *(v150 + 1) = 43;
  v150[16] = 2;
  v7();
  v151 = (v210 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 75;
  *v152 = "incoming_sms_count_in_activity_interval";
  *(v152 + 1) = 39;
  v152[16] = 2;
  v7();
  v153 = (v210 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 76;
  *v154 = "incoming_mms_count_in_activity_interval";
  *(v154 + 1) = 39;
  v154[16] = 2;
  v7();
  v155 = (v210 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 77;
  *v156 = "incoming_voip_count_in_activity_interval";
  *(v156 + 1) = 40;
  v156[16] = 2;
  v7();
  v157 = (v210 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 78;
  *v158 = "incoming_facetime_count_in_activity_interval";
  *(v158 + 1) = 44;
  v158[16] = 2;
  v7();
  v159 = (v210 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 79;
  *v160 = "incoming_facetime_audio_count_in_activity_interval";
  *(v160 + 1) = 50;
  v160[16] = 2;
  v7();
  v161 = (v210 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 80;
  *v162 = "incoming_facetime_video_count_in_activity_interval";
  *(v162 + 1) = 50;
  v162[16] = 2;
  v7();
  v163 = (v210 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 81;
  *v164 = "incoming_video_call_count_in_activity_interval";
  *(v164 + 1) = 46;
  v164[16] = 2;
  v7();
  v165 = (v210 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 82;
  *v166 = "incoming_shareplay_count_in_activity_interval";
  *(v166 + 1) = 45;
  v166[16] = 2;
  v7();
  v167 = (v210 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 83;
  *v168 = "outgoing_email_count_in_activity_interval";
  *(v168 + 1) = 41;
  v168[16] = 2;
  v7();
  v169 = (v210 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 84;
  *v170 = "outgoing_phone_count_in_activity_interval";
  *(v170 + 1) = 41;
  v170[16] = 2;
  v7();
  v171 = (v210 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 85;
  *v172 = "outgoing_instant_message_count_in_activity_interval";
  *(v172 + 1) = 51;
  v172[16] = 2;
  v7();
  v173 = (v210 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 86;
  *v174 = "outgoing_audio_call_count_in_activity_interval";
  *(v174 + 1) = 46;
  v174[16] = 2;
  v7();
  v175 = (v210 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 87;
  *v176 = "outgoing_meeting_count_in_activity_interval";
  *(v176 + 1) = 43;
  v176[16] = 2;
  v7();
  v177 = (v210 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 88;
  *v178 = "outgoing_sms_count_in_activity_interval";
  *(v178 + 1) = 39;
  v178[16] = 2;
  v7();
  v179 = (v210 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 89;
  *v180 = "outgoing_mms_count_in_activity_interval";
  *(v180 + 1) = 39;
  v180[16] = 2;
  v7();
  v181 = (v210 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 90;
  *v182 = "outgoing_voip_count_in_activity_interval";
  *(v182 + 1) = 40;
  v182[16] = 2;
  v7();
  v183 = (v210 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 91;
  *v184 = "outgoing_facetime_count_in_activity_interval";
  *(v184 + 1) = 44;
  v184[16] = 2;
  v7();
  v185 = (v210 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 92;
  *v186 = "outgoing_facetime_audio_count_in_activity_interval";
  *(v186 + 1) = 50;
  v186[16] = 2;
  v7();
  v187 = (v210 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 93;
  *v188 = "outgoing_facetime_video_count_in_activity_interval";
  *(v188 + 1) = 50;
  v188[16] = 2;
  v7();
  v189 = (v210 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 94;
  *v190 = "outgoing_video_call_count_in_activity_interval";
  *(v190 + 1) = 46;
  v190[16] = 2;
  v7();
  v191 = (v210 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 95;
  *v192 = "outgoing_shareplay_count_in_activity_interval";
  *(v192 + 1) = 45;
  v192[16] = 2;
  v7();
  v193 = (v210 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 96;
  *v194 = "phone_duration_in_activity_interval";
  *(v194 + 1) = 35;
  v194[16] = 2;
  v7();
  v195 = (v210 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 97;
  *v196 = "audio_call_duration_in_activity_interval";
  *(v196 + 1) = 40;
  v196[16] = 2;
  v7();
  v197 = (v210 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 98;
  *v198 = "meeting_duration_in_activity_interval";
  *(v198 + 1) = 37;
  v198[16] = 2;
  v7();
  v199 = (v210 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 99;
  *v200 = "voip_duration_in_activity_interval";
  *(v200 + 1) = 34;
  v200[16] = 2;
  v7();
  v201 = (v210 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 100;
  *v202 = "facetime_duration_in_activity_interval";
  *(v202 + 1) = 38;
  v202[16] = 2;
  v7();
  v203 = (v210 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 101;
  *v204 = "facetime_audio_duration_in_activity_interval";
  *(v204 + 1) = 44;
  v204[16] = 2;
  v7();
  v205 = (v210 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 102;
  *v206 = "facetime_video_duration_in_activity_interval";
  *(v206 + 1) = 44;
  v206[16] = 2;
  v7();
  v207 = (v210 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 103;
  *v208 = "video_call_duration_in_activity_interval";
  *(v208 + 1) = 40;
  v208[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C48F6E70()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48F79CC(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v213 - v5;
  v7 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins, 1, 1, v8);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins, 1, 1, v8);
  v214 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins, 1, 1, v8);
  v215 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins, 1, 1, v8);
  v216 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins, 1, 1, v8);
  v217 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins, 1, 1, v8);
  v218 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins, 1, 1, v8);
  v219 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins, 1, 1, v8);
  v220 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins, 1, 1, v8);
  v221 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins, 1, 1, v8);
  v222 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins, 1, 1, v8);
  v223 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins, 1, 1, v8);
  v224 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins, 1, 1, v8);
  v225 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins, 1, 1, v8);
  v226 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins, 1, 1, v8);
  v227 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins, 1, 1, v8);
  v228 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins, 1, 1, v8);
  v229 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins, 1, 1, v8);
  v230 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins, 1, 1, v8);
  v231 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins, 1, 1, v8);
  v232 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins, 1, 1, v8);
  v233 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins, 1, 1, v8);
  v234 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins, 1, 1, v8);
  v235 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins, 1, 1, v8);
  v236 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins, 1, 1, v8);
  v237 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins, 1, 1, v8);
  v238 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins, 1, 1, v8);
  v239 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins, 1, 1, v8);
  v240 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins, 1, 1, v8);
  v241 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins, 1, 1, v8);
  v242 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins, 1, 1, v8);
  v243 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins, 1, 1, v8);
  v244 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins, 1, 1, v8);
  v245 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins, 1, 1, v8);
  v246 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins, 1, 1, v8);
  v247 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins, 1, 1, v8);
  v248 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins, 1, 1, v8);
  v249 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins, 1, 1, v8);
  v250 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins, 1, 1, v8);
  v251 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins, 1, 1, v8);
  v252 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins, 1, 1, v8);
  v253 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins, 1, 1, v8);
  v254 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins, 1, 1, v8);
  v255 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins, 1, 1, v8);
  v256 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins, 1, 1, v8);
  v257 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins, 1, 1, v8);
  v258 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins, 1, 1, v8);
  v259 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins, 1, 1, v8);
  v260 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins, 1, 1, v8);
  v261 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins, 1, 1, v8);
  v262 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins, 1, 1, v8);
  v263 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins, 1, 1, v8);
  v264 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins, 1, 1, v8);
  v265 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins, 1, 1, v8);
  v266 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins, 1, 1, v8);
  v267 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins, 1, 1, v8);
  v268 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins, 1, 1, v8);
  v269 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins, 1, 1, v8);
  v270 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins, 1, 1, v8);
  v271 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins, 1, 1, v8);
  v272 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins, 1, 1, v8);
  v273 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins, 1, 1, v8);
  v274 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins, 1, 1, v8);
  v275 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins, 1, 1, v8);
  v276 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins, 1, 1, v8);
  v277 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins, 1, 1, v8);
  v278 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins, 1, 1, v8);
  v279 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval, 1, 1, v8);
  v280 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval, 1, 1, v8);
  v281 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval, 1, 1, v8);
  v282 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval, 1, 1, v8);
  v283 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval, 1, 1, v8);
  v284 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval, 1, 1, v8);
  v285 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval, 1, 1, v8);
  v286 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval, 1, 1, v8);
  v287 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval, 1, 1, v8);
  v288 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval, 1, 1, v8);
  v289 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval, 1, 1, v8);
  v290 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval, 1, 1, v8);
  v291 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval, 1, 1, v8);
  v292 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval, 1, 1, v8);
  v293 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval, 1, 1, v8);
  v294 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval, 1, 1, v8);
  v295 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval, 1, 1, v8);
  v296 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval, 1, 1, v8);
  v297 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval, 1, 1, v8);
  v298 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval, 1, 1, v8);
  v299 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval, 1, 1, v8);
  v300 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval, 1, 1, v8);
  v301 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval, 1, 1, v8);
  v302 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval, 1, 1, v8);
  v303 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval, 1, 1, v8);
  v304 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval, 1, 1, v8);
  v305 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval, 1, 1, v8);
  v306 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval, 1, 1, v8);
  v307 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval, 1, 1, v8);
  v308 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval, 1, 1, v8);
  v309 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval, 1, 1, v8);
  v310 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval, 1, 1, v8);
  v311 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval, 1, 1, v8);
  v312 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval, 1, 1, v8);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = v214;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = v215;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v18, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = v216;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v19, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v20, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v21 = v217;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v21, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v22, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v23 = v218;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v24, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v25 = v219;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v26, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v27 = v220;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v27, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v28, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v29 = v221;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v30, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v31 = v222;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v32, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v33 = v223;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v33, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v34, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v35 = v224;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v36, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v37 = v225;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v38, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v39 = v226;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v39, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v40, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v41 = v227;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v41, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v42, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v43 = v228;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v44, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v45 = v229;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v45, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v46, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v47 = v230;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v47, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v48, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v49 = v231;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v50, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = v232;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v52, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v53 = v233;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v53, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v54, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v55 = v234;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v56, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v57 = v235;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v57, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v58, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v59 = v236;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v59, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v60, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v61 = v237;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v62, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v63 = v238;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v63, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v64, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v65 = v239;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v66, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v67 = v240;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v67, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v68, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v69 = v241;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v70 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v70, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v71 = v242;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v72 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v72, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v73 = v243;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v73, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v74 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v74, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v75 = v244;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v75, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v76 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v76, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v77 = v245;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v78 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v78, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v79 = v246;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v79, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v80 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v80, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v81 = v247;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v81, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v82 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v82, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v83 = v248;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v84 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v84, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v85 = v249;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v85, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v86 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v86, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v87 = v250;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v87, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v88 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v88, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v89 = v251;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v90 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v90, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v91 = v252;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v91, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v92 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v92, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v93 = v253;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v93, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v94 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v94, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v95 = v254;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v95, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v96 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v96, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v97 = v255;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v97, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v98 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v98, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v99 = v256;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v99, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v100 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v100, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v101 = v257;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v102 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v102, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v103 = v258;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v104 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v104, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v105 = v259;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v106 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v106, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v107 = v260;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v107, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v108 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v108, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v109 = v261;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v110 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v110, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v111 = v262;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v111, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v112 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v112, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v113 = v263;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v113, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v114 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v114, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v115 = v264;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v116 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v116, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v117 = v265;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v117, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v118 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v118, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v119 = v266;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v119, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v120 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v120, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v121 = v267;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v122 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v122, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v123 = v268;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v123, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v124 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v124, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v125 = v269;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v125, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v126 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v126, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v127 = v270;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v127, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v128 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v128, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v129 = v271;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v129, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v130 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v130, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v131 = v272;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v132 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v132, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v133 = v273;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v133, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v134 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v134, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v135 = v274;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v135, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v136 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v136, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v137 = v275;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v137, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v138 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v138, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v139 = v276;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v139, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v140 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v140, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v141 = v277;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v141, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v142 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v142, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v143 = v278;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v143, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v144 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v144, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v145 = v279;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v145, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v146 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v146, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v147 = v280;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v147, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v148 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v148, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v149 = v281;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v149, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v150 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v150, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v151 = v282;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v151, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v152 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v152, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v153 = v283;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v153, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v154 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v154, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v155 = v284;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v155, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v156 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v156, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v157 = v285;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v157, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v158 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v158, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v159 = v286;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v159, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v160 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v160, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v161 = v287;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v161, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v162 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v162, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v163 = v288;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v163, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v164 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v164, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v165 = v289;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v165, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v166 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v166, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v167 = v290;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v167, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v168 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v168, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v169 = v291;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v169, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v170 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v170, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v171 = v292;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v171, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v172 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v172, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v173 = v293;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v173, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v174 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v174, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v175 = v294;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v175, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v176 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v176, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v177 = v295;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v177, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v178 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v178, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v179 = v296;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v180 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v180, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v181 = v297;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v181, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v182 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v182, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v183 = v298;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v183, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v184 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v184, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v185 = v299;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v185, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v186 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v186, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v187 = v300;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v187, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v188 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v188, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v189 = v301;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v189, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v190 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v190, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v191 = v302;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v191, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v192 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v192, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v193 = v303;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v193, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v194 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v194, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v195 = v304;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v195, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v196 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v196, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v197 = v305;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v197, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v198 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v198, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v199 = v306;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v199, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v200 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v200, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v201 = v307;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v202 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v202, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v203 = v308;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v204 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v204, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v205 = v309;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v205, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v206 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v206, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v207 = v310;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v208 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v208, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v209 = v311;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v209, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v210 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v210, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v211 = v312;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48FAF04()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

uint64_t sub_1C48FB8E4(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1C48FB964()
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48FBB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    sub_1C43FD23C(v18);
    swift_allocObject();
    v19 = sub_1C43FD6F4();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_1C48FBBE4()
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48FC7A8();
        break;
      case 2:
        sub_1C48FC884();
        break;
      case 3:
        sub_1C48FC960();
        break;
      case 4:
        sub_1C48FCA3C();
        break;
      case 5:
        sub_1C48FCB18();
        break;
      case 6:
        sub_1C48FCBF4();
        break;
      case 7:
        sub_1C48FCCD0();
        break;
      case 8:
        sub_1C48FCDAC();
        break;
      case 9:
        sub_1C48FCE88();
        break;
      case 10:
        sub_1C48FCF64();
        break;
      case 11:
        sub_1C48FD040();
        break;
      case 12:
        sub_1C48FD11C();
        break;
      case 13:
        sub_1C48FD1F8();
        break;
      case 14:
        sub_1C48FD2D4();
        break;
      case 15:
        sub_1C48FD3B0();
        break;
      case 16:
        sub_1C48FD48C();
        break;
      case 17:
        sub_1C48FD568();
        break;
      case 18:
        sub_1C48FD644();
        break;
      case 19:
        sub_1C48FD720();
        break;
      case 20:
        sub_1C48FD7FC();
        break;
      case 21:
        sub_1C48FD8D8();
        break;
      case 22:
        sub_1C48FD9B4();
        break;
      case 23:
        sub_1C48FDA90();
        break;
      case 24:
        sub_1C48FDB6C();
        break;
      case 25:
        sub_1C48FDC48();
        break;
      case 26:
        sub_1C48FDD24();
        break;
      case 27:
        sub_1C48FDE00();
        break;
      case 28:
        sub_1C48FDEDC();
        break;
      case 29:
        sub_1C48FDFB8();
        break;
      case 30:
        sub_1C48FE094();
        break;
      case 31:
        sub_1C48FE170();
        break;
      case 32:
        sub_1C48FE24C();
        break;
      case 33:
        sub_1C48FE328();
        break;
      case 34:
        sub_1C48FE404();
        break;
      case 35:
        sub_1C48FE4E0();
        break;
      case 36:
        sub_1C48FE5BC();
        break;
      case 37:
        sub_1C48FE698();
        break;
      case 38:
        sub_1C48FE774();
        break;
      case 39:
        sub_1C48FE850();
        break;
      case 40:
        sub_1C48FE92C();
        break;
      case 41:
        sub_1C48FEA08();
        break;
      case 42:
        sub_1C48FEAE4();
        break;
      case 43:
        sub_1C48FEBC0();
        break;
      case 44:
        sub_1C48FEC9C();
        break;
      case 45:
        sub_1C48FED78();
        break;
      case 46:
        sub_1C48FEE54();
        break;
      case 47:
        sub_1C48FEF30();
        break;
      case 48:
        sub_1C48FF00C();
        break;
      case 49:
        sub_1C48FF0E8();
        break;
      case 50:
        sub_1C48FF1C4();
        break;
      case 51:
        sub_1C48FF2A0();
        break;
      case 52:
        sub_1C48FF37C();
        break;
      case 53:
        sub_1C48FF458();
        break;
      case 54:
        sub_1C48FF534();
        break;
      case 55:
        sub_1C48FF610();
        break;
      case 56:
        sub_1C48FF6EC();
        break;
      case 57:
        sub_1C48FF7C8();
        break;
      case 58:
        sub_1C48FF8A4();
        break;
      case 59:
        sub_1C48FF980();
        break;
      case 60:
        sub_1C48FFA5C();
        break;
      case 61:
        sub_1C48FFB38();
        break;
      case 62:
        sub_1C48FFC14();
        break;
      case 63:
        sub_1C48FFCF0();
        break;
      case 64:
        sub_1C48FFDCC();
        break;
      default:
        switch(result)
        {
          case 'A':
            sub_1C48FFEA8();
            break;
          case 'B':
            sub_1C48FFF84();
            break;
          case 'C':
            sub_1C4900060();
            break;
          case 'D':
            sub_1C490013C();
            break;
          case 'E':
            sub_1C4900218();
            break;
          case 'F':
            sub_1C49002F4();
            break;
          case 'G':
            sub_1C49003D0();
            break;
          case 'I':
            sub_1C49004AC();
            break;
          case 'J':
            sub_1C4900588();
            break;
          case 'K':
            sub_1C4900664();
            break;
          case 'L':
            sub_1C4900740();
            break;
          case 'M':
            sub_1C490081C();
            break;
          case 'N':
            sub_1C49008F8();
            break;
          case 'O':
            sub_1C49009D4();
            break;
          case 'P':
            sub_1C4900AB0();
            break;
          case 'Q':
            sub_1C4900B8C();
            break;
          case 'R':
            sub_1C4900C68();
            break;
          case 'S':
            sub_1C4900D44();
            break;
          case 'T':
            sub_1C4900E20();
            break;
          case 'U':
            sub_1C4900EFC();
            break;
          case 'V':
            sub_1C4900FD8();
            break;
          case 'W':
            sub_1C49010B4();
            break;
          case 'X':
            sub_1C4901190();
            break;
          case 'Y':
            sub_1C490126C();
            break;
          case 'Z':
            sub_1C4901348();
            break;
          case '[':
            sub_1C4901424();
            break;
          case '\\':
            sub_1C4901500();
            break;
          case ']':
            sub_1C49015DC();
            break;
          case '^':
            sub_1C49016B8();
            break;
          case '_':
            sub_1C4901794();
            break;
            sub_1C4901870();
            break;
          case 'a':
            sub_1C490194C();
            break;
          case 'b':
            sub_1C4901A28();
            break;
          case 'c':
            sub_1C4901B04();
            break;
          case 'd':
            sub_1C4901BE0();
            break;
          case 'e':
            sub_1C4901CBC();
            break;
          case 'f':
            sub_1C4901D98();
            break;
          case 'g':
            sub_1C4901E74();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1C48FC7A8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FC884()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FC960()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCA3C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCB18()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCBF4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCCD0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCDAC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCE88()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCF64()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD040()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD11C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD1F8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD2D4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD3B0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD48C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD568()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD644()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD720()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD7FC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD8D8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD9B4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDA90()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDB6C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDC48()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDD24()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDE00()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDEDC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDFB8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE094()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE170()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE24C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE328()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE404()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE4E0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE5BC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE698()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE774()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE850()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE92C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEA08()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEAE4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEBC0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}
uint64_t sub_1C4A07974(uint64_t a1)
{
  result = type metadata accessor for LongitudinalEvent(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C4A079EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for LongitudinalEvent(0);
  sub_1C4460108(a1 + *(v11 + 28), v8, &qword_1EC0BD660, &unk_1C4F45450);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BD660, &unk_1C4F45450);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A07BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for LongitudinalEventData(0);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  v39 = sub_1C456902C(&qword_1EC0BD668, &qword_1C4F2F370);
  sub_1C43FBCE0(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &a9 - v43;
  v45 = type metadata accessor for LongitudinalEvent(0);
  sub_1C44C12A8(*(v45 + 20));
  if (v48)
  {
    if (!v47)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v49)
    {
      goto LABEL_19;
    }
  }

  sub_1C44C12A8(*(v46 + 24));
  if (v52)
  {
    if (!v51)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v53)
    {
      goto LABEL_19;
    }
  }

  v54 = *(v50 + 28);
  v55 = *(v39 + 48);
  sub_1C4460108(v25 + v54, v44, &qword_1EC0BD660, &unk_1C4F45450);
  sub_1C4460108(v23 + v54, &v44[v55], &qword_1EC0BD660, &unk_1C4F45450);
  sub_1C4406BE8(v44);
  if (v56)
  {
    sub_1C4406BE8(&v44[v55]);
    if (v56)
    {
      sub_1C4420C3C(v44, &qword_1EC0BD660, &unk_1C4F45450);
LABEL_23:
      sub_1C4F00328();
      sub_1C442CF50();
      sub_1C4A24734(v66, v67);
      sub_1C4404C28();
      sub_1C4F010B8();
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_1C4460108(v44, v38, &qword_1EC0BD660, &unk_1C4F45450);
  sub_1C4406BE8(&v44[v55]);
  if (v56)
  {
    sub_1C4A25FEC();
LABEL_17:
    v57 = &qword_1EC0BD668;
    v58 = &qword_1C4F2F370;
LABEL_18:
    sub_1C4420C3C(v44, v57, v58);
    goto LABEL_19;
  }

  sub_1C4A26040();
  v59 = *(v26 + 20);
  if (*&v38[v59] != *(v32 + v59))
  {
    v60 = *&v38[v59];

    sub_1C4A11920();
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      sub_1C4A25FEC();
      sub_1C4A25FEC();
      v57 = &qword_1EC0BD660;
      v58 = &unk_1C4F45450;
      goto LABEL_18;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v63, v64);
  v65 = sub_1C442A74C();
  sub_1C4A25FEC();
  sub_1C4A25FEC();
  sub_1C4420C3C(v44, &qword_1EC0BD660, &unk_1C4F45450);
  if (v65)
  {
    goto LABEL_23;
  }

LABEL_19:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A07FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1888, type metadata accessor for LongitudinalEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A08078()
{
  sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent);

  return sub_1C4F00428();
}

uint64_t sub_1C4A08140()
{
  sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent);

  return sub_1C4F00438();
}

uint64_t sub_1C4A081C0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152680);
  sub_1C442B738(v0, qword_1EC152680);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C4F37E00;
  v4 = v71 + v3;
  v5 = v71 + v3 + v1[14];
  *(v71 + v3) = 1;
  *v5 = "motionState";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C4F004C8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "inferredMode";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "localAppLaunch";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "localAppIntent";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "remoteAppCategory";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "wifi";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "deviceUnlocked";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "deviceBacklightOn";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "virtualInteractions";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "phoneCharging";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "ambientLight";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "locationVisit";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "userComputedFocusMode";
  *(v31 + 1) = 21;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "nowPlayingState";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "wallet";
  *(v35 + 1) = 6;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "cdInBedDetected";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "carplay";
  *(v39 + 1) = 7;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "alarmType";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "airplaneModeEnabled";
  *(v43 + 1) = 19;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "eventFoundInAppsCategory";
  *(v45 + 1) = 24;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "semanticLocation";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "bluetooth";
  *(v49 + 1) = 9;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "lowPowerMode";
  *(v51 + 1) = 12;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "microlocation";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "calendar";
  *(v55 + 1) = 8;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "systemSpaceInteraction";
  *(v57 + 1) = 22;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "airplay";
  *(v59 + 1) = 7;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "homekitAccessoryId";
  *(v61 + 1) = 18;
  v61[16] = 2;
  v8();
  v62 = (v4 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "geoHash";
  *(v63 + 1) = 7;
  v63[16] = 2;
  v8();
  v64 = (v4 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "unigrams";
  *(v65 + 1) = 8;
  v65[16] = 2;
  v8();
  v66 = (v4 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "linkActions";
  *(v67 + 1) = 11;
  v67[16] = 2;
  v8();
  v68 = (v4 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 32;
  *v69 = "widget";
  *(v69 + 1) = 6;
  v69[16] = 2;
  v8();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A08AAC()
{
  sub_1C442E3C8();
  result = sub_1C4A08ADC();
  qword_1EC0C1038 = result;
  return result;
}

uint64_t sub_1C4A08ADC()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  v2 = type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  v4 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C440BAA8(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  v6 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C440BAA8(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  v8 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C440BAA8(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  v10 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  v12 = type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C440BAA8(v0 + v11, 1, 1, v12);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, 1, 1, v10);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  v14 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440BAA8(v0 + v13, 1, 1, v14);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, 1, 1, v10);
  v15 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  v16 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440BAA8(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  v18 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440BAA8(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  v20 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C440BAA8(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  v22 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C440BAA8(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  v24 = type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C440BAA8(v0 + v23, 1, 1, v24);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, 1, 1, v10);
  v25 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  v26 = type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C440BAA8(v0 + v25, 1, 1, v26);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, 1, 1, v10);
  v27 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  v28 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440BAA8(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  v30 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440BAA8(v0 + v29, 1, 1, v30);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, 1, 1, v10);
  v31 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  v32 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C440BAA8(v0 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  v34 = type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440BAA8(v0 + v33, 1, 1, v34);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, 1, 1, v10);
  v35 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  v36 = type metadata accessor for LongitudinalEventData.Airplay(0);
  sub_1C440BAA8(v0 + v35, 1, 1, v36);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, 1, 1, v10);
  v37 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  v38 = type metadata accessor for LongitudinalEventData.LinkActions(0);
  sub_1C440BAA8(v0 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  v40 = type metadata accessor for LongitudinalEventData.Widget(0);
  sub_1C440BAA8(v0 + v39, 1, 1, v40);
  return v0;
}

uint64_t sub_1C4A08F28(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C1760, &qword_1C4F44758);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v236 = &v187 - v5;
  v6 = sub_1C456902C(&qword_1EC0C1770, &qword_1C4F44768);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v235 = &v187 - v8;
  v9 = sub_1C456902C(&qword_1EC0C1780, &qword_1C4F44778);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v234 = &v187 - v11;
  v12 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v233 = &v187 - v14;
  v15 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v232 = &v187 - v17;
  v18 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v231 = &v187 - v20;
  v21 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v230 = &v187 - v23;
  v24 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v229 = &v187 - v26;
  v27 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v227 = &v187 - v29;
  v30 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v224 = &v187 - v32;
  v33 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v221 = &v187 - v35;
  v36 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v218 = &v187 - v38;
  v39 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v214 = &v187 - v41;
  v42 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v209 = &v187 - v44;
  v45 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v203 = &v187 - v47;
  v48 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = &v187 - v50;
  v52 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v197 = &v187 - v54;
  v55 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v194 = &v187 - v57;
  v58 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v190 = &v187 - v60;
  v61 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = &v187 - v63;
  v65 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  v66 = type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C440BAA8(v1 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  v188 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  v68 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C440BAA8(v1 + v67, 1, 1, v68);
  v69 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  v189 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  v70 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C440BAA8(v1 + v69, 1, 1, v70);
  v71 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  v191 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  v72 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C440BAA8(v1 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  v192 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  v74 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  v193 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  v76 = type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C440BAA8(v1 + v75, 1, 1, v76);
  v195 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, 1, 1, v74);
  v196 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, 1, 1, v74);
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  v198 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  v78 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440BAA8(v1 + v77, 1, 1, v78);
  v199 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, 1, 1, v74);
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  v200 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  v80 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440BAA8(v1 + v79, 1, 1, v80);
  v81 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  v201 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  v82 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440BAA8(v1 + v81, 1, 1, v82);
  v83 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  v202 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  v84 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C440BAA8(v1 + v83, 1, 1, v84);
  v85 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  v204 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  v86 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C440BAA8(v1 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  v205 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  v88 = type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C440BAA8(v1 + v87, 1, 1, v88);
  v206 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, 1, 1, v74);
  v89 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  v207 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  v90 = type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C440BAA8(v1 + v89, 1, 1, v90);
  v208 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, 1, 1, v74);
  v210 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, 1, 1, v74);
  v211 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, 1, 1, v74);
  v91 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  v212 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  v92 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440BAA8(v1 + v91, 1, 1, v92);
  v93 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  v213 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  v94 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440BAA8(v1 + v93, 1, 1, v94);
  v215 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, 1, 1, v74);
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  v216 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  v96 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C440BAA8(v1 + v95, 1, 1, v96);
  v97 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  v217 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  v98 = type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440BAA8(v1 + v97, 1, 1, v98);
  v219 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, 1, 1, v74);
  v99 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  v220 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  v100 = type metadata accessor for LongitudinalEventData.Airplay(0);
  sub_1C440BAA8(v1 + v99, 1, 1, v100);
  v222 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, 1, 1, v74);
  v223 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, 1, 1, v74);
  v225 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, 1, 1, v74);
  v101 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  v226 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  v102 = type metadata accessor for LongitudinalEventData.LinkActions(0);
  sub_1C440BAA8(v1 + v101, 1, 1, v102);
  v103 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  v228 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  v104 = type metadata accessor for LongitudinalEventData.Widget(0);
  sub_1C440BAA8(v1 + v103, 1, 1, v104);
  v105 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v105, v64, &qword_1EC0C1880, &unk_1C4F44880);
  swift_beginAccess();
  sub_1C44408D4(v64, v1 + v65, &qword_1EC0C1880, &unk_1C4F44880);
  swift_endAccess();
  v106 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  swift_beginAccess();
  v107 = v190;
  sub_1C4460108(a1 + v106, v190, &qword_1EC0C1870, &qword_1C4F44870);
  v108 = v188;
  swift_beginAccess();
  sub_1C44408D4(v107, v1 + v108, &qword_1EC0C1870, &qword_1C4F44870);
  swift_endAccess();
  v109 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  swift_beginAccess();
  v110 = v194;
  sub_1C4460108(a1 + v109, v194, &qword_1EC0C1860, &qword_1C4F44860);
  v111 = v189;
  swift_beginAccess();
  sub_1C44408D4(v110, v1 + v111, &qword_1EC0C1860, &qword_1C4F44860);
  swift_endAccess();
  v112 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  swift_beginAccess();
  v113 = v197;
  sub_1C4460108(a1 + v112, v197, &qword_1EC0C1850, &qword_1C4F44850);
  v114 = v191;
  swift_beginAccess();
  sub_1C44408D4(v113, v1 + v114, &qword_1EC0C1850, &qword_1C4F44850);
  swift_endAccess();
  v115 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v115, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v116 = v192;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v116, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v117 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  swift_beginAccess();
  v118 = v203;
  sub_1C4460108(a1 + v117, v203, &qword_1EC0C1840, &unk_1C4F44838);
  v119 = v193;
  swift_beginAccess();
  sub_1C44408D4(v118, v1 + v119, &qword_1EC0C1840, &unk_1C4F44838);
  swift_endAccess();
  v120 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked;
  swift_beginAccess();
  sub_1C4460108(a1 + v120, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v121 = v195;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v122 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  sub_1C4460108(a1 + v122, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v123 = v196;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v123, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v124 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  swift_beginAccess();
  v125 = v209;
  sub_1C4460108(a1 + v124, v209, &qword_1EC0C1830, &qword_1C4F44828);
  v126 = v198;
  swift_beginAccess();
  sub_1C44408D4(v125, v1 + v126, &qword_1EC0C1830, &qword_1C4F44828);
  swift_endAccess();
  v127 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging;
  swift_beginAccess();
  sub_1C4460108(a1 + v127, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v128 = v199;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v128, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v129 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  swift_beginAccess();
  v130 = v214;
  sub_1C4460108(a1 + v129, v214, &qword_1EC0C1820, &qword_1C4F44818);
  v131 = v200;
  swift_beginAccess();
  sub_1C44408D4(v130, v1 + v131, &qword_1EC0C1820, &qword_1C4F44818);
  swift_endAccess();
  v132 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  swift_beginAccess();
  v133 = v218;
  sub_1C4460108(a1 + v132, v218, &qword_1EC0C1810, &qword_1C4F44808);
  v134 = v201;
  swift_beginAccess();
  sub_1C44408D4(v133, v1 + v134, &qword_1EC0C1810, &qword_1C4F44808);
  swift_endAccess();
  v135 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  swift_beginAccess();
  v136 = v221;
  sub_1C4460108(a1 + v135, v221, &qword_1EC0C1800, &qword_1C4F447F8);
  v137 = v202;
  swift_beginAccess();
  sub_1C44408D4(v136, v1 + v137, &qword_1EC0C1800, &qword_1C4F447F8);
  swift_endAccess();
  v138 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  swift_beginAccess();
  v139 = v224;
  sub_1C4460108(a1 + v138, v224, &qword_1EC0C17F0, &qword_1C4F447E8);
  v140 = v204;
  swift_beginAccess();
  sub_1C44408D4(v139, v1 + v140, &qword_1EC0C17F0, &qword_1C4F447E8);
  swift_endAccess();
  v141 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  swift_beginAccess();
  v142 = v227;
  sub_1C4460108(a1 + v141, v227, &qword_1EC0C17E0, &qword_1C4F447D8);
  v143 = v205;
  swift_beginAccess();
  sub_1C44408D4(v142, v1 + v143, &qword_1EC0C17E0, &qword_1C4F447D8);
  swift_endAccess();
  v144 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected;
  swift_beginAccess();
  sub_1C4460108(a1 + v144, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v145 = v206;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v145, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v146 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  swift_beginAccess();
  v147 = v229;
  sub_1C4460108(a1 + v146, v229, &qword_1EC0C17D0, &qword_1C4F447C8);
  v148 = v207;
  swift_beginAccess();
  sub_1C44408D4(v147, v1 + v148, &qword_1EC0C17D0, &qword_1C4F447C8);
  swift_endAccess();
  v149 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType;
  swift_beginAccess();
  sub_1C4460108(a1 + v149, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v150 = v208;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v150, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v151 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  sub_1C4460108(a1 + v151, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v152 = v210;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v152, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v153 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v153, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v154 = v211;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v154, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v155 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  swift_beginAccess();
  v156 = v230;
  sub_1C4460108(a1 + v155, v230, &qword_1EC0C17C0, &qword_1C4F447B8);
  v157 = v212;
  swift_beginAccess();
  sub_1C44408D4(v156, v1 + v157, &qword_1EC0C17C0, &qword_1C4F447B8);
  swift_endAccess();
  v158 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  swift_beginAccess();
  v159 = v231;
  sub_1C4460108(a1 + v158, v231, &qword_1EC0C17B0, &qword_1C4F447A8);
  v160 = v213;
  swift_beginAccess();
  sub_1C44408D4(v159, v1 + v160, &qword_1EC0C17B0, &qword_1C4F447A8);
  swift_endAccess();
  v161 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v161, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v162 = v215;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v162, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v163 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  swift_beginAccess();
  v164 = v232;
  sub_1C4460108(a1 + v163, v232, &qword_1EC0C17A0, &qword_1C4F44798);
  v165 = v216;
  swift_beginAccess();
  sub_1C44408D4(v164, v1 + v165, &qword_1EC0C17A0, &qword_1C4F44798);
  swift_endAccess();
  v166 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  swift_beginAccess();
  v167 = v233;
  sub_1C4460108(a1 + v166, v233, &qword_1EC0C1790, &qword_1C4F44788);
  v168 = v217;
  swift_beginAccess();
  sub_1C44408D4(v167, v1 + v168, &qword_1EC0C1790, &qword_1C4F44788);
  swift_endAccess();
  v169 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction;
  swift_beginAccess();
  sub_1C4460108(a1 + v169, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v170 = v219;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v170, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v171 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  swift_beginAccess();
  v172 = v234;
  sub_1C4460108(a1 + v171, v234, &qword_1EC0C1780, &qword_1C4F44778);
  v173 = v220;
  swift_beginAccess();
  sub_1C44408D4(v172, v1 + v173, &qword_1EC0C1780, &qword_1C4F44778);
  swift_endAccess();
  v174 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID;
  swift_beginAccess();
  sub_1C4460108(a1 + v174, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v175 = v222;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v175, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v176 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash;
  swift_beginAccess();
  sub_1C4460108(a1 + v176, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v177 = v223;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v177, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v178 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams;
  swift_beginAccess();
  sub_1C4460108(a1 + v178, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v179 = v225;
  swift_beginAccess();
  sub_1C44408D4(v51, v1 + v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v180 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  swift_beginAccess();
  v181 = v235;
  sub_1C4460108(a1 + v180, v235, &qword_1EC0C1770, &qword_1C4F44768);
  v182 = v226;
  swift_beginAccess();
  sub_1C44408D4(v181, v1 + v182, &qword_1EC0C1770, &qword_1C4F44768);
  swift_endAccess();
  v183 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  swift_beginAccess();
  v184 = v236;
  sub_1C4460108(a1 + v183, v236, &qword_1EC0C1760, &qword_1C4F44758);

  v185 = v228;
  swift_beginAccess();
  sub_1C44408D4(v184, v1 + v185, &qword_1EC0C1760, &qword_1C4F44758);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C4A0A854()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState, &qword_1EC0C1880, &unk_1C4F44880);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode, &qword_1EC0C1870, &qword_1C4F44870);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch, &qword_1EC0C1860, &qword_1C4F44860);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi, &qword_1EC0C1840, &unk_1C4F44838);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions, &qword_1EC0C1830, &qword_1C4F44828);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight, &qword_1EC0C1820, &qword_1C4F44818);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit, &qword_1EC0C1810, &qword_1C4F44808);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode, &qword_1EC0C1800, &qword_1C4F447F8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState, &qword_1EC0C17F0, &qword_1C4F447E8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet, &qword_1EC0C17E0, &qword_1C4F447D8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay, &qword_1EC0C17D0, &qword_1C4F447C8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation, &qword_1EC0C17C0, &qword_1C4F447B8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth, &qword_1EC0C17B0, &qword_1C4F447A8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation, &qword_1EC0C17A0, &qword_1C4F44798);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar, &qword_1EC0C1790, &qword_1C4F44788);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay, &qword_1EC0C1780, &qword_1C4F44778);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions, &qword_1EC0C1770, &qword_1C4F44768);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget, &qword_1EC0C1760, &qword_1C4F44758);
  return v0;
}

uint64_t sub_1C4A0AC24()
{
  v0 = *sub_1C4A0A854();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C4A0ACA0()
{
  sub_1C4A0B594(319, &qword_1EC0C1188, type metadata accessor for LongitudinalEventData.MotionState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v41 = *(v0 - 8) + 64;
    sub_1C4A0B594(319, &qword_1EC0C1190, type metadata accessor for LongitudinalEventData.InferredMode, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v42 = *(v2 - 8) + 64;
      sub_1C4A0B594(319, &qword_1EC0C1198, type metadata accessor for LongitudinalEventData.LocalAppLaunch, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v43 = *(v4 - 8) + 64;
        sub_1C4A0B594(319, &qword_1EC0C11A0, type metadata accessor for LongitudinalEventData.LocalAppIntent, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v44 = *(v6 - 8) + 64;
          sub_1C4A0B594(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v10 = *(v8 - 8) + 64;
            sub_1C4A0B594(319, &qword_1EC0C11A8, type metadata accessor for LongitudinalEventData.Wifi, MEMORY[0x1E69E6720]);
            if (v12 <= 0x3F)
            {
              v45 = *(v11 - 8) + 64;
              sub_1C4A0B594(319, &qword_1EC0C11B0, type metadata accessor for LongitudinalEventData.VirtualInteractions, MEMORY[0x1E69E6720]);
              if (v14 <= 0x3F)
              {
                v46 = *(v13 - 8) + 64;
                sub_1C4A0B594(319, &qword_1EC0C11B8, type metadata accessor for LongitudinalEventData.AmbientLight, MEMORY[0x1E69E6720]);
                if (v16 <= 0x3F)
                {
                  v47 = *(v15 - 8) + 64;
                  sub_1C4A0B594(319, &qword_1EC0C11C0, type metadata accessor for LongitudinalEventData.LocationVisit, MEMORY[0x1E69E6720]);
                  if (v18 <= 0x3F)
                  {
                    v48 = *(v17 - 8) + 64;
                    sub_1C4A0B594(319, &qword_1EC0C11C8, type metadata accessor for LongitudinalEventData.UserComputedFocusMode, MEMORY[0x1E69E6720]);
                    if (v20 <= 0x3F)
                    {
                      v49 = *(v19 - 8) + 64;
                      sub_1C4A0B594(319, &qword_1EC0C11D0, type metadata accessor for LongitudinalEventData.NowPlayingState, MEMORY[0x1E69E6720]);
                      if (v22 <= 0x3F)
                      {
                        v50 = *(v21 - 8) + 64;
                        sub_1C4A0B594(319, &qword_1EC0C11D8, type metadata accessor for LongitudinalEventData.Wallet, MEMORY[0x1E69E6720]);
                        if (v24 <= 0x3F)
                        {
                          v51 = *(v23 - 8) + 64;
                          sub_1C4A0B594(319, &qword_1EC0C11E0, type metadata accessor for LongitudinalEventData.Carplay, MEMORY[0x1E69E6720]);
                          if (v26 <= 0x3F)
                          {
                            v52 = *(v25 - 8) + 64;
                            sub_1C4A0B594(319, &qword_1EC0C11E8, type metadata accessor for LongitudinalEventData.SemanticLocation, MEMORY[0x1E69E6720]);
                            if (v28 <= 0x3F)
                            {
                              v53 = *(v27 - 8) + 64;
                              sub_1C4A0B594(319, &qword_1EC0C11F0, type metadata accessor for LongitudinalEventData.Bluetooth, MEMORY[0x1E69E6720]);
                              if (v30 <= 0x3F)
                              {
                                v54 = *(v29 - 8) + 64;
                                sub_1C4A0B594(319, &qword_1EC0C11F8, type metadata accessor for LongitudinalEventData.Microlocation, MEMORY[0x1E69E6720]);
                                if (v32 <= 0x3F)
                                {
                                  v55 = *(v31 - 8) + 64;
                                  sub_1C4A0B594(319, &qword_1EC0C1200, type metadata accessor for LongitudinalEventData.Calendar, MEMORY[0x1E69E6720]);
                                  if (v34 <= 0x3F)
                                  {
                                    v56 = *(v33 - 8) + 64;
                                    sub_1C4A0B594(319, &qword_1EC0C1208, type metadata accessor for LongitudinalEventData.Airplay, MEMORY[0x1E69E6720]);
                                    if (v36 <= 0x3F)
                                    {
                                      v57 = *(v35 - 8) + 64;
                                      sub_1C4A0B594(319, &qword_1EC0C1210, type metadata accessor for LongitudinalEventData.LinkActions, MEMORY[0x1E69E6720]);
                                      if (v38 <= 0x3F)
                                      {
                                        v58 = *(v37 - 8) + 64;
                                        sub_1C4A0B594(319, &qword_1EC0C1218, type metadata accessor for LongitudinalEventData.Widget, MEMORY[0x1E69E6720]);
                                        if (v40 <= 0x3F)
                                        {
                                          v59 = *(v39 - 8) + 64;
                                          swift_updateClassMetadata2();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4A0B594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C4A0B838()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    v7 = sub_1C43FD6F4();
    v8 = sub_1C4A08F28(v7);
    sub_1C4416740(v8);
  }

  sub_1C440F77C();
  sub_1C4A0B89C();
  sub_1C44512DC();
}

uint64_t sub_1C4A0B89C()
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
        sub_1C4A0BC8C();
        break;
      case 2:
        sub_1C4A0BD68();
        break;
      case 3:
        sub_1C4A0BE44();
        break;
      case 4:
        sub_1C4A0BF20();
        break;
      case 5:
        sub_1C4A0BFFC();
        break;
      case 6:
        sub_1C4A0C0D8();
        break;
      case 7:
        sub_1C4A0C1B4();
        break;
      case 8:
        sub_1C4A0C290();
        break;
      case 9:
        sub_1C4A0C36C();
        break;
      case 10:
        sub_1C4A0C448();
        break;
      case 11:
        sub_1C4A0C524();
        break;
      case 12:
        sub_1C4A0C600();
        break;
      case 13:
        sub_1C4A0C6DC();
        break;
      case 14:
        sub_1C4A0C7B8();
        break;
      case 15:
        sub_1C4A0C894();
        break;
      case 16:
        sub_1C4A0C970();
        break;
      case 17:
        sub_1C4A0CA4C();
        break;
      case 18:
        sub_1C4A0CB28();
        break;
      case 19:
        sub_1C4A0CC04();
        break;
      case 20:
        sub_1C4A0CCE0();
        break;
      case 21:
        sub_1C4A0CDBC();
        break;
      case 22:
        sub_1C4A0CE98();
        break;
      case 23:
        sub_1C4A0CF74();
        break;
      case 24:
        sub_1C4A0D050();
        break;
      case 25:
        sub_1C4A0D12C();
        break;
      case 26:
        sub_1C4A0D208();
        break;
      case 27:
        sub_1C4A0D2E4();
        break;
      case 28:
        sub_1C4A0D3C0();
        break;
      case 29:
        sub_1C4A0D49C();
        break;
      case 30:
        sub_1C4A0D578();
        break;
      case 31:
        sub_1C4A0D654();
        break;
      case 32:
        sub_1C4A0D730();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C4A0BC8C()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BD68()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BE44()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BF20()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BFFC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C0D8()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C1B4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C290()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C36C()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C448()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C524()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C600()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C6DC()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C7B8()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C894()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C970()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CA4C()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CB28()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CC04()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CCE0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CDBC()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CE98()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CF74()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D050()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D12C()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D208()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D2E4()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Airplay(0);
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D3C0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D49C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D578()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D654()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LinkActions(0);
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D730()
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Widget(0);
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D80C()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  result = sub_1C4A0D858(v3, v4, v5, v6);
  if (!v0)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A0D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C4A0DB78(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C4A0DD60(a1, a2, a3, a4);
    sub_1C4A0DF48(a1, a2, a3, a4);
    sub_1C4A0E130(a1, a2, a3, a4);
    sub_1C4A0E318(a1, a2, a3, a4);
    sub_1C4A0E500(a1, a2, a3, a4);
    sub_1C4A0E6E8(a1, a2, a3, a4);
    sub_1C4A0E8D0(a1, a2, a3, a4);
    sub_1C4A0EAB8(a1, a2, a3, a4);
    sub_1C4A0ECA0(a1, a2, a3, a4);
    sub_1C4A0EE88(a1, a2, a3, a4);
    sub_1C4A0F070(a1, a2, a3, a4);
    sub_1C4A0F258(a1, a2, a3, a4);
    sub_1C4A0F440(a1, a2, a3, a4);
    sub_1C4A0F628(a1, a2, a3, a4);
    sub_1C4A0F810(a1, a2, a3, a4);
    sub_1C4A0F9F8(a1, a2, a3, a4);
    sub_1C4A0FBE0(a1, a2, a3, a4);
    sub_1C4A0FDC8(a1, a2, a3, a4);
    sub_1C4A0FFB0(a1, a2, a3, a4);
    sub_1C4A10198(a1, a2, a3, a4);
    sub_1C4A10380(a1, a2, a3, a4);
    sub_1C4A10568(a1, a2, a3, a4);
    sub_1C4A10750(a1, a2, a3, a4);
    sub_1C4A10938(a1, a2, a3, a4);
    sub_1C4A10B20(a1, a2, a3, a4);
    sub_1C4A10D08(a1, a2, a3, a4);
    sub_1C4A10EF0(a1, a2, a3, a4);
    sub_1C4A110D8(a1, a2, a3, a4);
    sub_1C4A112C0(a1, a2, a3, a4);
    sub_1C4A114A8(a1, a2, a3, a4);
    return sub_1C4A11690(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C4A0DB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.MotionState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1880, &unk_1C4F44880);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1880, &unk_1C4F44880);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1870, &qword_1C4F44870);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1870, &qword_1C4F44870);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1860, &qword_1C4F44860);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1860, &qword_1C4F44860);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1850, &qword_1C4F44850);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1850, &qword_1C4F44850);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Wifi(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1840, &unk_1C4F44838);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1840, &unk_1C4F44838);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0EAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1830, &qword_1C4F44828);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1830, &qword_1C4F44828);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0ECA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0EE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1820, &qword_1C4F44818);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1820, &qword_1C4F44818);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1810, &qword_1C4F44808);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1810, &qword_1C4F44808);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1800, &qword_1C4F447F8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1800, &qword_1C4F447F8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C17F0, &qword_1C4F447E8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C17F0, &qword_1C4F447E8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Wallet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C17E0, &qword_1C4F447D8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C17E0, &qword_1C4F447D8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Carplay(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C17D0, &qword_1C4F447C8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C17D0, &qword_1C4F447C8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C17C0, &qword_1C4F447B8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C17C0, &qword_1C4F447B8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C17B0, &qword_1C4F447A8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C17B0, &qword_1C4F447A8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C17A0, &qword_1C4F44798);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C17A0, &qword_1C4F44798);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Calendar(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1790, &qword_1C4F44788);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1790, &qword_1C4F44788);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1780, &qword_1C4F44778);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Airplay(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1780, &qword_1C4F44778);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1780, &qword_1C4F44778);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A110D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A112C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A114A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1770, &qword_1C4F44768);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.LinkActions(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1770, &qword_1C4F44768);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1770, &qword_1C4F44768);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A11690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1760, &qword_1C4F44758);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for LongitudinalEventData.Widget(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0C1760, &qword_1C4F44758);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0C1760, &qword_1C4F44758);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A11878()
{
  v1 = sub_1C43FECE0();
  v2 = type metadata accessor for LongitudinalEventData(v1);
  sub_1C44183FC(v2);
  if (!v3)
  {

    sub_1C4404084();
    sub_1C4A11920();
    sub_1C44BBCB8();

    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v4, v5);
  return sub_1C4404EC0() & 1;
}

void sub_1C4A11920()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v1036 = type metadata accessor for LongitudinalEventData.Widget(0);
  v4 = sub_1C43FBCE0(v1036);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v1037 = v7;
  v1033 = sub_1C456902C(&qword_1EC0C1758, &qword_1C4F44750);
  sub_1C43FBCE0(v1033);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v1038 = v11;
  v12 = sub_1C456902C(&qword_1EC0C1760, &qword_1C4F44758);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v1035 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v1034 = v18;
  v19 = sub_1C43FBE44();
  v1028 = type metadata accessor for LongitudinalEventData.LinkActions(v19);
  v20 = sub_1C43FBCE0(v1028);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v1031 = v23;
  v1027 = sub_1C456902C(&qword_1EC0C1768, &qword_1C4F44760);
  sub_1C43FBCE0(v1027);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v1032 = v27;
  v28 = sub_1C456902C(&qword_1EC0C1770, &qword_1C4F44768);
  v29 = sub_1C43FBD18(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v1030 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v1029 = v34;
  v35 = sub_1C43FBE44();
  v1024 = type metadata accessor for LongitudinalEventData.Airplay(v35);
  v36 = sub_1C43FBCE0(v1024);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v1025 = v39;
  v1021 = sub_1C456902C(&qword_1EC0C1778, &qword_1C4F44770);
  sub_1C43FBCE0(v1021);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v1026 = v43;
  v44 = sub_1C456902C(&qword_1EC0C1780, &qword_1C4F44778);
  v45 = sub_1C43FBD18(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  v1023 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v1022 = v50;
  v51 = sub_1C43FBE44();
  v1015 = type metadata accessor for LongitudinalEventData.Calendar(v51);
  v52 = sub_1C43FBCE0(v1015);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD2D8();
  v1019 = v55;
  v1014 = sub_1C456902C(&qword_1EC0C1788, &qword_1C4F44780);
  sub_1C43FBCE0(v1014);
  v57 = *(v56 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBC74();
  v1020 = v59;
  v60 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  v61 = sub_1C43FBD18(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  v1018 = v64;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FD230();
  v1017 = v66;
  v67 = sub_1C43FBE44();
  v1008 = type metadata accessor for LongitudinalEventData.Microlocation(v67);
  v68 = sub_1C43FBCE0(v1008);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD2D8();
  v1009 = v71;
  v1002 = sub_1C456902C(&qword_1EC0C1798, &qword_1C4F44790);
  sub_1C43FBCE0(v1002);
  v73 = *(v72 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBC74();
  v1010 = v75;
  v76 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  v77 = sub_1C43FBD18(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FBFDC();
  v1007 = v80;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FD230();
  v1006 = v82;
  v83 = sub_1C43FBE44();
  v994 = type metadata accessor for LongitudinalEventData.Bluetooth(v83);
  v84 = sub_1C43FBCE0(v994);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FD2D8();
  v997 = v87;
  v993 = sub_1C456902C(&qword_1EC0C17A8, &qword_1C4F447A0);
  sub_1C43FBCE0(v993);
  v89 = *(v88 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C43FBC74();
  v999 = v91;
  v92 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  v93 = sub_1C43FBD18(v92);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBFDC();
  v996 = v96;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v97);
  sub_1C43FD230();
  v995 = v98;
  v99 = sub_1C43FBE44();
  v986 = type metadata accessor for LongitudinalEventData.SemanticLocation(v99);
  v100 = sub_1C43FBCE0(v986);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  sub_1C43FD2D8();
  v989 = v103;
  v985 = sub_1C456902C(&qword_1EC0C17B8, &qword_1C4F447B0);
  sub_1C43FBCE0(v985);
  v105 = *(v104 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v106);
  sub_1C43FBC74();
  v990 = v107;
  v108 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  v109 = sub_1C43FBD18(v108);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  sub_1C43FBFDC();
  v988 = v112;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v113);
  sub_1C43FD230();
  v987 = v114;
  v115 = sub_1C43FBE44();
  v1041 = type metadata accessor for LongitudinalEventData.Carplay(v115);
  v116 = sub_1C43FBCE0(v1041);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  sub_1C43FD2D8();
  v981 = v119;
  v1039 = sub_1C456902C(&qword_1EC0C17C8, &qword_1C4F447C0);
  sub_1C43FBCE0(v1039);
  v121 = *(v120 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v122);
  sub_1C43FBC74();
  v1042 = v123;
  v124 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  v125 = sub_1C43FBD18(v124);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  sub_1C43FBFDC();
  v980 = v128;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v129);
  sub_1C43FD230();
  v1040 = v130;
  v131 = sub_1C43FBE44();
  v1051 = type metadata accessor for LongitudinalEventData.Wallet(v131);
  v132 = sub_1C43FBCE0(v1051);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  sub_1C43FD2D8();
  v1043 = v135;
  v1048 = sub_1C456902C(&qword_1EC0C17D8, &qword_1C4F447D0);
  sub_1C43FBCE0(v1048);
  v137 = *(v136 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v138);
  sub_1C43FBC74();
  v1055 = v139;
  v140 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  v141 = sub_1C43FBD18(v140);
  v143 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v141);
  sub_1C43FBFDC();
  v1049 = v144;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v145);
  sub_1C43FD230();
  v1052 = v146;
  v147 = sub_1C43FBE44();
  v1057 = type metadata accessor for LongitudinalEventData.NowPlayingState(v147);
  v148 = sub_1C43FBCE0(v1057);
  v150 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v148);
  sub_1C43FD2D8();
  v1045 = v151;
  v1053 = sub_1C456902C(&qword_1EC0C17E8, &qword_1C4F447E0);
  sub_1C43FBCE0(v1053);
  v153 = *(v152 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v154);
  sub_1C43FBC74();
  v1060 = v155;
  v156 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  v157 = sub_1C43FBD18(v156);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  sub_1C43FBFDC();
  v1054 = v160;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v161);
  sub_1C43FD230();
  v1056 = v162;
  v163 = sub_1C43FBE44();
  v1062 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(v163);
  v164 = sub_1C43FBCE0(v1062);
  v166 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v164);
  sub_1C43FD2D8();
  v1050 = v167;
  v1058 = sub_1C456902C(&qword_1EC0C17F8, &qword_1C4F447F0);
  sub_1C43FBCE0(v1058);
  v169 = *(v168 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v170);
  sub_1C43FBC74();
  v1065 = v171;
  v172 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  v173 = sub_1C43FBD18(v172);
  v175 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v173);
  sub_1C43FBFDC();
  v1059 = v176;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v177);
  sub_1C43FD230();
  v1063 = v178;
  v179 = sub_1C43FBE44();
  v1069 = type metadata accessor for LongitudinalEventData.LocationVisit(v179);
  v180 = sub_1C43FBCE0(v1069);
  v182 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v180);
  sub_1C43FD2D8();
  v1061 = v183;
  v1064 = sub_1C456902C(&qword_1EC0C1808, &qword_1C4F44800);
  sub_1C43FBCE0(v1064);
  v185 = *(v184 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v186);
  sub_1C43FBC74();
  v1071 = v187;
  v188 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  v189 = sub_1C43FBD18(v188);
  v191 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v189);
  sub_1C43FBFDC();
  v1066 = v192;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v193);
  sub_1C43FD230();
  v1068 = v194;
  v195 = sub_1C43FBE44();
  v1076 = type metadata accessor for LongitudinalEventData.AmbientLight(v195);
  v196 = sub_1C43FBCE0(v1076);
  v198 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v196);
  sub_1C43FD2D8();
  v1067 = v199;
  v1070 = sub_1C456902C(&qword_1EC0C1818, &qword_1C4F44810);
  sub_1C43FBCE0(v1070);
  v201 = *(v200 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v202);
  sub_1C43FBC74();
  v1078 = v203;
  v204 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  v205 = sub_1C43FBD18(v204);
  v207 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v205);
  sub_1C43FBFDC();
  v1072 = v208;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v209);
  sub_1C43FD230();
  v1075 = v210;
  v211 = sub_1C43FBE44();
  v1082 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v211);
  v212 = sub_1C43FBCE0(v1082);
  v214 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v212);
  sub_1C43FD2D8();
  v1074 = v215;
  v1081 = sub_1C456902C(&qword_1EC0C1828, &qword_1C4F44820);
  sub_1C43FBCE0(v1081);
  v217 = *(v216 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v218);
  sub_1C43FBC74();
  v1083 = v219;
  v220 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  v221 = sub_1C43FBD18(v220);
  v223 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v221);
  sub_1C43FBFDC();
  v1080 = v224;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v225);
  sub_1C43FD230();
  v1087 = v226;
  v227 = sub_1C43FBE44();
  v1095 = type metadata accessor for LongitudinalEventData.Wifi(v227);
  v228 = sub_1C43FBCE0(v1095);
  v230 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v228);
  sub_1C43FD2D8();
  v1089 = v231;
  v1094 = sub_1C456902C(&qword_1EC0C1838, &qword_1C4F44830);
  sub_1C43FBCE0(v1094);
  v233 = *(v232 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v234);
  sub_1C43FBC74();
  v1096 = v235;
  v236 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  v237 = sub_1C43FBD18(v236);
  v239 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v237);
  sub_1C43FBFDC();
  v1091 = v240;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v241);
  sub_1C43FD230();
  v1100 = v242;
  v243 = sub_1C43FBE44();
  v1102 = type metadata accessor for FeatureValue(v243);
  v244 = sub_1C43FBCE0(v1102);
  v246 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v244);
  sub_1C43FD2D8();
  v1093 = v247;
  v1101 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v248 = sub_1C43FBCE0(v1101);
  v250 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v248);
  sub_1C43FBFDC();
  v1016 = v251;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v252);
  sub_1C43FBF38();
  v1012 = v253;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v254);
  sub_1C43FBF38();
  v1004 = v255;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v256);
  sub_1C43FBF38();
  v998 = v257;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v258);
  sub_1C43FBF38();
  v984 = v259;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v260);
  sub_1C43FBF38();
  v979 = v261;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v262);
  sub_1C43FBF38();
  v978 = v263;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v264);
  sub_1C43FBF38();
  v975 = v265;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v266);
  sub_1C43FBF38();
  v1047 = v267;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v268);
  sub_1C43FBF38();
  v1077 = v269;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v270);
  sub_1C43FBF38();
  v1086 = v271;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v272);
  sub_1C43FBF38();
  v1090 = v273;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v274);
  sub_1C43FD230();
  v1099 = v275;
  v276 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v277 = sub_1C43FBD18(v276);
  v279 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v277);
  sub_1C43FBFDC();
  v1013 = v280;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v281);
  sub_1C43FBF38();
  v1011 = v282;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v283);
  sub_1C43FBF38();
  v1005 = v284;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v285);
  sub_1C43FBF38();
  v1003 = v286;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v287);
  sub_1C43FBF38();
  v1001 = v288;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v289);
  sub_1C43FBF38();
  v1000 = v290;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v291);
  sub_1C43FBF38();
  v992 = v292;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v293);
  sub_1C43FBF38();
  v991 = v294;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v295);
  sub_1C43FBF38();
  v983 = v296;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v297);
  sub_1C43FBF38();
  v982 = v298;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v299);
  sub_1C43FBF38();
  v977 = v300;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v301);
  sub_1C43FBF38();
  v976 = v302;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v303);
  sub_1C43FBF38();
  v974 = v304;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v305);
  sub_1C43FBF38();
  v973 = v306;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v307);
  sub_1C43FBF38();
  v972 = v308;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v309);
  sub_1C43FBF38();
  v971 = v310;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v311);
  sub_1C43FBF38();
  v1044 = v312;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v313);
  sub_1C43FBF38();
  v1046 = v314;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v315);
  sub_1C43FBF38();
  v1073 = v316;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v317);
  sub_1C43FBF38();
  v1079 = v318;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v319);
  sub_1C43FBF38();
  v1084 = v320;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v321);
  sub_1C43FBF38();
  v1085 = v322;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v323);
  sub_1C43FBF38();
  v1088 = v324;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v325);
  sub_1C43FBF38();
  v1092 = v326;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v327);
  sub_1C43FBF38();
  v1097 = v328;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v329);
  sub_1C43FD230();
  v1104 = v330;
  v331 = sub_1C43FBE44();
  v1107 = type metadata accessor for LongitudinalEventData.LocalAppIntent(v331);
  v332 = sub_1C43FBCE0(v1107);
  v334 = *(v333 + 64);
  MEMORY[0x1EEE9AC00](v332);
  sub_1C43FD2D8();
  v1098 = v335;
  v1106 = sub_1C456902C(&qword_1EC0C1848, &qword_1C4F44848);
  sub_1C43FBCE0(v1106);
  v337 = *(v336 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v338);
  sub_1C43FBC74();
  v1108 = v339;
  v340 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  v341 = sub_1C43FBD18(v340);
  v343 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v341);
  sub_1C43FBFDC();
  v1103 = v344;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v345);
  sub_1C43FD230();
  v1110 = v346;
  v347 = sub_1C43FBE44();
  v1113 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(v347);
  v348 = sub_1C43FBCE0(v1113);
  v350 = *(v349 + 64);
  MEMORY[0x1EEE9AC00](v348);
  sub_1C43FD2D8();
  v1105 = v351;
  v1112 = sub_1C456902C(&qword_1EC0C1858, &qword_1C4F44858);
  sub_1C43FBCE0(v1112);
  v353 = *(v352 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v354);
  sub_1C43FBC74();
  v1114 = v355;
  v356 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  v357 = sub_1C43FBD18(v356);
  v359 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v357);
  sub_1C43FBFDC();
  v1109 = v360;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v361);
  sub_1C43FD230();
  v1121 = v362;
  v363 = sub_1C43FBE44();
  v1119 = type metadata accessor for LongitudinalEventData.InferredMode(v363);
  v364 = sub_1C43FBCE0(v1119);
  v366 = *(v365 + 64);
  MEMORY[0x1EEE9AC00](v364);
  sub_1C43FD2D8();
  v1111 = v367;
  v1117 = sub_1C456902C(&qword_1EC0C1868, &qword_1C4F44868);
  sub_1C43FBCE0(v1117);
  v369 = *(v368 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v370);
  sub_1C43FBC74();
  v1120 = v371;
  v372 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  v373 = sub_1C43FBD18(v372);
  v375 = *(v374 + 64);
  MEMORY[0x1EEE9AC00](v373);
  sub_1C43FBFDC();
  v1115 = v376;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v377);
  sub_1C43FD230();
  v1118 = v378;
  v379 = sub_1C43FBE44();
  v1123 = type metadata accessor for LongitudinalEventData.MotionState(v379);
  v380 = sub_1C43FBCE0(v1123);
  v382 = *(v381 + 64);
  MEMORY[0x1EEE9AC00](v380);
  sub_1C43FD2D8();
  v1116 = v383;
  v384 = (sub_1C456902C(&qword_1EC0C1878, &qword_1C4F44878) - 8);
  v385 = *(*v384 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v386);
  v388 = &v971 - v387;
  v389 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  v390 = sub_1C43FBD18(v389);
  v392 = *(v391 + 64);
  MEMORY[0x1EEE9AC00](v390);
  sub_1C43FBFDC();
  v1122 = v393;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v394);
  v396 = &v971 - v395;
  v397 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  sub_1C440D164();
  sub_1C4460108(v3 + v397, v396, &qword_1EC0C1880, &unk_1C4F44880);
  v398 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  sub_1C440D164();
  v399 = v384[14];
  v400 = sub_1C43FC1C0();
  sub_1C4460108(v400, v401, &qword_1EC0C1880, &unk_1C4F44880);
  v402 = v1123;
  sub_1C4460108(v1 + v398, &v388[v399], &qword_1EC0C1880, &unk_1C4F44880);
  v403 = sub_1C4401860();
  sub_1C440175C(v403, v404, v402);
  if (v406)
  {

    sub_1C4420C3C(v396, &qword_1EC0C1880, &unk_1C4F44880);
    sub_1C440175C(&v388[v399], 1, v402);
    v405 = v1;
    if (v406)
    {
      sub_1C4420C3C(v388, &qword_1EC0C1880, &unk_1C4F44880);
      goto LABEL_12;
    }

LABEL_9:
    v407 = &qword_1EC0C1878;
    v408 = &qword_1C4F44878;
LABEL_10:
    v409 = v388;
LABEL_22:
    sub_1C4420C3C(v409, v407, v408);
    goto LABEL_23;
  }

  v405 = v1;
  sub_1C4460108(v388, v1122, &qword_1EC0C1880, &unk_1C4F44880);
  sub_1C440175C(&v388[v399], 1, v402);
  if (v406)
  {

    sub_1C4420C3C(v396, &qword_1EC0C1880, &unk_1C4F44880);
    sub_1C4A25FEC();
    goto LABEL_9;
  }

  sub_1C4A26040();

  sub_1C43FD018();
  sub_1C4A21F9C();
  v411 = v410;
  sub_1C44158DC();
  sub_1C4A25FEC();
  v412 = sub_1C4410428();
  sub_1C4420C3C(v412, v413, &unk_1C4F44880);
  sub_1C4A25FEC();
  sub_1C4420C3C(v388, &qword_1EC0C1880, &unk_1C4F44880);
  if ((v411 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  sub_1C440D164();
  v414 = v1118;
  sub_1C440BBC0();
  sub_1C4460108(v415, v416, v417, v418);
  sub_1C440D164();
  v419 = *(v1117 + 48);
  v420 = v1120;
  sub_1C440BBC0();
  sub_1C4460108(v421, v422, v423, v424);
  v425 = sub_1C443FE5C();
  v426 = v420;
  sub_1C4460108(v425, v427, v428, v429);
  v430 = sub_1C4401860();
  sub_1C442FF8C(v430, v431);
  if (v406)
  {
    sub_1C4420C3C(v414, &qword_1EC0C1870, &qword_1C4F44870);
    sub_1C4406BE8(v420 + v419);
    v432 = v1121;
    if (v406)
    {
      sub_1C4420C3C(v420, &qword_1EC0C1870, &qword_1C4F44870);
      goto LABEL_26;
    }

LABEL_20:
    v407 = &qword_1EC0C1868;
    v408 = &qword_1C4F44868;
LABEL_21:
    v409 = v426;
    goto LABEL_22;
  }

  sub_1C4460108(v420, v1115, &qword_1EC0C1870, &qword_1C4F44870);
  sub_1C4406BE8(v420 + v419);
  v432 = v1121;
  if (v433)
  {
    sub_1C4420C3C(v414, &qword_1EC0C1870, &qword_1C4F44870);
    sub_1C4A25FEC();
    goto LABEL_20;
  }

  sub_1C4A26040();
  sub_1C43FE99C();
  sub_1C4A21F9C();
  LODWORD(v1123) = v434;
  sub_1C4A25FEC();
  sub_1C4420C3C(v414, &qword_1EC0C1870, &qword_1C4F44870);
  sub_1C44333A0();
  sub_1C4A25FEC();
  v435 = sub_1C4404084();
  sub_1C4420C3C(v435, v436, &qword_1C4F44870);
  if ((v1123 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v437, v438, v439, v440);
  sub_1C440D164();
  sub_1C4441784(v1112);
  v388 = v1114;
  sub_1C440BBC0();
  sub_1C4460108(v441, v442, v443, v444);
  v445 = sub_1C443FE5C();
  sub_1C4460108(v445, v446, v447, v448);
  v449 = sub_1C4401860();
  sub_1C442FF8C(v449, v450);
  if (v406)
  {
    sub_1C4420C3C(v432, &qword_1EC0C1860, &qword_1C4F44860);
    sub_1C4406BE8(&qword_1EC0C1000 + v388);
    if (v406)
    {
      sub_1C4420C3C(v388, &qword_1EC0C1860, &qword_1C4F44860);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  sub_1C4460108(v388, v1109, &qword_1EC0C1860, &qword_1C4F44860);
  sub_1C4406BE8(&qword_1EC0C1000 + v388);
  if (v451)
  {
    sub_1C4420C3C(v432, &qword_1EC0C1860, &qword_1C4F44860);
    sub_1C4A25FEC();
LABEL_34:
    v407 = &qword_1EC0C1858;
    v408 = &qword_1C4F44858;
    goto LABEL_10;
  }

  sub_1C4A26040();
  sub_1C43FE99C();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v432);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v388);
  if ((&qword_1C4F44860 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_36:
  v452 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  sub_1C440D164();
  v453 = v1110;
  sub_1C4460108(v3 + v452, v1110, &qword_1EC0C1850, &qword_1C4F44850);
  v454 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  sub_1C440D164();
  v455 = sub_1C4441784(v1106);
  v426 = v1108;
  sub_1C4460108(v455, v1108, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C4460108(v405 + v454, &qword_1EC0C1000 + v426, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C442FF8C(v426, 1);
  if (v406)
  {
    sub_1C4420C3C(v453, &qword_1EC0C1850, &qword_1C4F44850);
    sub_1C4406BE8(&qword_1EC0C1000 + v426);
    if (v406)
    {
      sub_1C4420C3C(v426, &qword_1EC0C1850, &qword_1C4F44850);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  sub_1C4460108(v426, v1103, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C4406BE8(&qword_1EC0C1000 + v426);
  if (v456)
  {
    sub_1C4420C3C(v1110, &qword_1EC0C1850, &qword_1C4F44850);
    sub_1C4A25FEC();
LABEL_44:
    v407 = &qword_1EC0C1848;
    v408 = &qword_1C4F44848;
    goto LABEL_21;
  }

  sub_1C4A26040();
  sub_1C43FE99C();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C4420C3C(v1110, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C44333A0();
  sub_1C4A25FEC();
  v457 = sub_1C440BB4C();
  sub_1C4420C3C(v457, v458, &qword_1C4F44850);
  if ((v426 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_46:
  v459 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  sub_1C440D164();
  v460 = v1104;
  sub_1C4460108(v3 + v459, v1104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v461 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  sub_1C440D164();
  v462 = sub_1C4480800();
  v426 = v1099;
  sub_1C4460108(v462, v1099, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v405 + v461, &qword_1EC0C1000 + v426, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C442FF8C(v426, 1);
  if (v406)
  {
    sub_1C4420C3C(v460, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&qword_1EC0C1000 + v426);
    v463 = v1100;
    if (v406)
    {
      sub_1C4420C3C(v426, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  sub_1C4460108(v426, v1097, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4406BE8(&qword_1EC0C1000 + v426);
  v463 = v1100;
  if (v464)
  {
    sub_1C4420C3C(v1104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_54:
    v407 = &qword_1EC0BB6C0;
    v408 = &unk_1C4F20AE0;
    goto LABEL_21;
  }

  sub_1C43FF434();
  sub_1C4A26040();
  v465 = sub_1C43FE99C();
  sub_1C47E3504(v465, v466);
  sub_1C442EC58();
  sub_1C4420C3C(v1104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44333A0();
  sub_1C4A25FEC();
  sub_1C4420C3C(v426, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v426 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_56:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v467, v468, v469, v470);
  sub_1C440D164();
  v471 = *(v1094 + 48);
  v472 = v463;
  v388 = v1096;
  sub_1C440BBC0();
  sub_1C4460108(v473, v474, v475, v476);
  v477 = sub_1C443FE5C();
  sub_1C4460108(v477, v478, v479, v480);
  v481 = sub_1C4401860();
  sub_1C442FF8C(v481, v482);
  if (v406)
  {
    sub_1C4420C3C(v472, &qword_1EC0C1840, &unk_1C4F44838);
    sub_1C4406BE8(&v388[v471]);
    if (v406)
    {
      sub_1C4420C3C(v388, &qword_1EC0C1840, &unk_1C4F44838);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  sub_1C4460108(v388, v1091, &qword_1EC0C1840, &unk_1C4F44838);
  sub_1C4406BE8(&v388[v471]);
  if (v483)
  {
    sub_1C4420C3C(v1100, &qword_1EC0C1840, &unk_1C4F44838);
    sub_1C4A25FEC();
LABEL_64:
    v407 = &qword_1EC0C1838;
    v408 = &qword_1C4F44830;
    goto LABEL_10;
  }

  sub_1C4A26040();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v1100);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v388);
  if ((&unk_1C4F44838 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_66:
  sub_1C440D164();
  v484 = v1092;
  sub_1C440BBC0();
  sub_1C4460108(v485, v486, v487, v488);
  sub_1C440D164();
  v489 = *(v1101 + 48);
  v388 = v1090;
  sub_1C440BBC0();
  sub_1C4460108(v490, v491, v492, v493);
  sub_1C440BBC0();
  sub_1C4460108(v494, v495, v496, v497);
  v498 = sub_1C4401860();
  sub_1C442FF8C(v498, v499);
  if (v406)
  {
    sub_1C4420C3C(v484, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&v388[v489]);
    if (!v406)
    {
      goto LABEL_85;
    }

    sub_1C4420C3C(v388, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v388, v1088, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&v388[v489]);
    if (v500)
    {
      v501 = v1092;
      goto LABEL_83;
    }

    sub_1C43FF434();
    sub_1C4A26040();
    v502 = sub_1C43FE99C();
    sub_1C47E3504(v502, v503);
    sub_1C442EC58();
    sub_1C4420C3C(v1092, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44333A0();
    sub_1C4A25FEC();
    v504 = sub_1C440BB4C();
    sub_1C4420C3C(v504, v505, &unk_1C4F2E1B0);
    if ((&unk_1C4F2E1B0 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  sub_1C440D164();
  v506 = v1085;
  sub_1C440BBC0();
  sub_1C4460108(v507, v508, v509, v510);
  sub_1C440D164();
  sub_1C4480800();
  v388 = v1086;
  sub_1C440BBC0();
  sub_1C4460108(v511, v512, v513, v514);
  v515 = sub_1C443FE5C();
  sub_1C4460108(v515, v516, v517, v518);
  v519 = sub_1C4401860();
  sub_1C442FF8C(v519, v520);
  if (!v406)
  {
    sub_1C4460108(v388, v1084, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&qword_1EC0C1000 + v388);
    v521 = v1087;
    if (!v522)
    {
      sub_1C43FF434();
      sub_1C4A26040();
      v523 = sub_1C43FE99C();
      sub_1C47E3504(v523, v524);
      sub_1C442EC58();
      sub_1C44BBE8C(v506);
      sub_1C4A25FEC();
      sub_1C44BBE8C(v388);
      if ((&unk_1C4F2E1B0 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_87;
    }

    v501 = v506;
LABEL_83:
    sub_1C4420C3C(v501, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
LABEL_84:
    sub_1C4A25FEC();
LABEL_85:
    v407 = &qword_1EC0BB6C0;
    v408 = &unk_1C4F20AE0;
    goto LABEL_10;
  }

  sub_1C4420C3C(v506, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4406BE8(&qword_1EC0C1000 + v388);
  v521 = v1087;
  if (!v406)
  {
    goto LABEL_85;
  }

  sub_1C4420C3C(v388, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_87:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v525, v526, v527, v528);
  v529 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  sub_1C440D164();
  sub_1C4441784(v1081);
  v530 = v1083;
  sub_1C440BBC0();
  sub_1C4460108(v531, v532, v533, v534);
  v535 = v530;
  sub_1C4460108(v405 + v529, &qword_1EC0C1000 + v530, &qword_1EC0C1830, &qword_1C4F44828);
  v536 = sub_1C4401860();
  v537 = v1082;
  sub_1C440175C(v536, v538, v1082);
  if (v406)
  {
    sub_1C4420C3C(v521, &qword_1EC0C1830, &qword_1C4F44828);
    sub_1C440A6F0(&qword_1EC0C1000 + v530);
    if (v406)
    {
      sub_1C4420C3C(v530, &qword_1EC0C1830, &qword_1C4F44828);
      v539 = v1079;
      goto LABEL_99;
    }

LABEL_95:
    v407 = &qword_1EC0C1828;
    v408 = &qword_1C4F44820;
    v409 = v535;
    goto LABEL_22;
  }

  v540 = v530;
  v541 = v1080;
  sub_1C4460108(v540, v1080, &qword_1EC0C1830, &qword_1C4F44828);
  sub_1C440A6F0(&qword_1EC0C1000 + v535);
  if (v542)
  {
    sub_1C4420C3C(v521, &qword_1EC0C1830, &qword_1C4F44828);
    sub_1C4A25FEC();
    goto LABEL_95;
  }

  sub_1C441EE00();
  v543 = v1074;
  sub_1C4A26040();
  v544 = *(v537 + 20);
  if (*(v541 + v544) != *(v543 + v544))
  {
    v545 = *(v541 + v544);

    v546 = sub_1C4410428();
    sub_1C4A1F9A0(v546, v547, v548, v549, v550, v551, v552, v553, v971, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981, v982);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      sub_1C4A25FEC();
      sub_1C4426A5C();
      sub_1C4420C3C(v590, v591, v592);
      sub_1C4A25FEC();
      sub_1C4426A5C();
      goto LABEL_22;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v554, v555);
  v556 = sub_1C442A74C();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v521);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v1083);
  v539 = v1079;
  if ((v556 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_99:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v557, v558, v559, v560);
  sub_1C440D164();
  sub_1C4480800();
  v388 = v1077;
  sub_1C440BBC0();
  sub_1C4460108(v561, v562, v563, v564);
  v565 = sub_1C443FE5C();
  sub_1C4460108(v565, v566, v567, v568);
  v569 = sub_1C4401860();
  sub_1C442FF8C(v569, v570);
  if (v406)
  {
    sub_1C4420C3C(v539, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&qword_1EC0C1000 + v388);
    if (v406)
    {
      sub_1C4420C3C(v388, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_108;
    }

    goto LABEL_85;
  }

  v571 = v1073;
  sub_1C4460108(v388, v1073, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4406BE8(&qword_1EC0C1000 + v388);
  if (v572)
  {
    sub_1C4420C3C(v539, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    goto LABEL_84;
  }

  sub_1C43FF434();
  v573 = v1093;
  sub_1C4A26040();
  sub_1C47E3504(v571, v573);
  sub_1C442EC58();
  sub_1C44BBE8C(v539);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v388);
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_108:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v574, v575, v576, v577);
  sub_1C440D164();
  v578 = *(v1070 + 48);
  v579 = v1078;
  sub_1C440BBC0();
  sub_1C4460108(v580, v581, v582, v583);
  sub_1C440BBC0();
  sub_1C4460108(v584, v585, v586, v587);
  sub_1C440175C(v579, 1, v1076);
  if (v406)
  {
    sub_1C4420C3C(v1075, &qword_1EC0C1820, &qword_1C4F44818);
    v588 = sub_1C441AFC8(v1078);
    sub_1C440175C(v588, v589, v1076);
    if (v406)
    {
      sub_1C4420C3C(v1078, &qword_1EC0C1820, &qword_1C4F44818);
      goto LABEL_121;
    }

LABEL_117:
    v596 = &qword_1EC0C1818;
    v597 = &qword_1C4F44810;
    v598 = v1078;
LABEL_150:
    sub_1C4420C3C(v598, v596, v597);
    goto LABEL_23;
  }

  sub_1C4460108(v1078, v1072, &qword_1EC0C1820, &qword_1C4F44818);
  v593 = sub_1C44691E8();
  sub_1C440175C(v593, v594, v1076);
  if (v595)
  {
    sub_1C4420C3C(v1075, &qword_1EC0C1820, &qword_1C4F44818);
    sub_1C4A25FEC();
    goto LABEL_117;
  }

  sub_1C4404588();
  sub_1C4A26040();
  sub_1C4460314(*(v1076 + 20));
  if (!v599)
  {

    v600 = sub_1C4410428();
    sub_1C4A1F9A0(v600, v601, v602, v603, v604, v605, v606, v607, v971, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981, v982);
    sub_1C4429098();

    if ((v578 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v608, v609);
  v610 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v1075);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v1078);
  if ((v610 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_121:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v611, v612, v613, v614);
  sub_1C440D164();
  sub_1C441DDCC(v1064);
  sub_1C440BBC0();
  sub_1C4460108(v615, v616, v617, v618);
  sub_1C442BD28();
  v619 = sub_1C442FFA8();
  sub_1C440175C(v619, v620, v1069);
  if (v406)
  {
    sub_1C4420C3C(v1068, &qword_1EC0C1810, &qword_1C4F44808);
    v621 = sub_1C441AFC8(v1071);
    sub_1C440175C(v621, v622, v1069);
    if (v406)
    {
      sub_1C4420C3C(v1071, &qword_1EC0C1810, &qword_1C4F44808);
      goto LABEL_133;
    }

    goto LABEL_129;
  }

  sub_1C4460108(v1071, v1066, &qword_1EC0C1810, &qword_1C4F44808);
  v623 = sub_1C44691E8();
  sub_1C440175C(v623, v624, v1069);
  if (v625)
  {
    sub_1C4420C3C(v1068, &qword_1EC0C1810, &qword_1C4F44808);
    sub_1C4A25FEC();
LABEL_129:
    v596 = &qword_1EC0C1808;
    v597 = &qword_1C4F44800;
    v598 = v1071;
    goto LABEL_150;
  }

  sub_1C4A26040();
  sub_1C4460314(*(v1069 + 20));
  if (!v626)
  {

    v627 = sub_1C4410428();
    sub_1C4A23B30(v627, v628, v629, v630, v631, v632, v633, v634, v971, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981, v982);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v635, v636);
  v637 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v1068);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v1071);
  if ((v637 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_133:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v638, v639, v640, v641);
  sub_1C440D164();
  sub_1C441DDCC(v1058);
  sub_1C440BBC0();
  sub_1C4460108(v642, v643, v644, v645);
  sub_1C442BD28();
  v646 = sub_1C442FFA8();
  sub_1C440175C(v646, v647, v1062);
  if (v406)
  {
    sub_1C4420C3C(v1063, &qword_1EC0C1800, &qword_1C4F447F8);
    v648 = sub_1C441AFC8(v1065);
    sub_1C440175C(v648, v649, v1062);
    if (v406)
    {
      sub_1C4420C3C(v1065, &qword_1EC0C1800, &qword_1C4F447F8);
      goto LABEL_144;
    }

    goto LABEL_142;
  }

  sub_1C4460108(v1065, v1059, &qword_1EC0C1800, &qword_1C4F447F8);
  v650 = sub_1C44691E8();
  sub_1C440175C(v650, v651, v1062);
  if (v652)
  {
    sub_1C4420C3C(v1063, &qword_1EC0C1800, &qword_1C4F447F8);
    sub_1C4A25FEC();
LABEL_142:
    v596 = &qword_1EC0C17F8;
    v597 = &qword_1C4F447F0;
    v598 = v1065;
    goto LABEL_150;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v1063);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447F8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_144:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v653, v654, v655, v656);
  sub_1C440D164();
  sub_1C441DDCC(v1053);
  sub_1C440BBC0();
  sub_1C4460108(v657, v658, v659, v660);
  sub_1C442BD28();
  v661 = sub_1C442FFA8();
  sub_1C440175C(v661, v662, v1057);
  if (v406)
  {
    sub_1C4420C3C(v1056, &qword_1EC0C17F0, &qword_1C4F447E8);
    v663 = sub_1C441AFC8(v1060);
    sub_1C440175C(v663, v664, v1057);
    if (v406)
    {
      sub_1C4420C3C(v1060, &qword_1EC0C17F0, &qword_1C4F447E8);
      goto LABEL_157;
    }

LABEL_155:
    v596 = &qword_1EC0C17E8;
    v597 = &qword_1C4F447E0;
    v598 = v1060;
    goto LABEL_150;
  }

  sub_1C4460108(v1060, v1054, &qword_1EC0C17F0, &qword_1C4F447E8);
  v668 = sub_1C44691E8();
  sub_1C440175C(v668, v669, v1057);
  if (v670)
  {
    sub_1C4420C3C(v1056, &qword_1EC0C17F0, &qword_1C4F447E8);
    sub_1C4A25FEC();
    goto LABEL_155;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v1056);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447E8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_157:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v671, v672, v673, v674);
  sub_1C440D164();
  sub_1C441DDCC(v1048);
  sub_1C440BBC0();
  sub_1C4460108(v675, v676, v677, v678);
  sub_1C442BD28();
  v679 = sub_1C442FFA8();
  sub_1C440175C(v679, v680, v1051);
  if (v406)
  {
    sub_1C4420C3C(v1052, &qword_1EC0C17E0, &qword_1C4F447D8);
    v681 = sub_1C441AFC8(v1055);
    sub_1C440175C(v681, v682, v1051);
    if (v406)
    {
      sub_1C4420C3C(v1055, &qword_1EC0C17E0, &qword_1C4F447D8);
      goto LABEL_167;
    }

LABEL_165:
    v596 = &qword_1EC0C17D8;
    v597 = &qword_1C4F447D0;
    v598 = v1055;
    goto LABEL_150;
  }

  sub_1C4460108(v1055, v1049, &qword_1EC0C17E0, &qword_1C4F447D8);
  v683 = sub_1C44691E8();
  sub_1C440175C(v683, v684, v1051);
  if (v685)
  {
    sub_1C4420C3C(v1052, &qword_1EC0C17E0, &qword_1C4F447D8);
    sub_1C4A25FEC();
    goto LABEL_165;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v1052);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447D8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_167:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v686, v687, v688, v689);
  sub_1C440D164();
  sub_1C44252E0();
  v690 = v1047;
  sub_1C440BBC0();
  sub_1C4460108(v691, v692, v693, v694);
  sub_1C442BD28();
  sub_1C44034BC(v690);
  if (v406)
  {
    sub_1C4420C3C(v1046, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v1047);
    if (v406)
    {
      sub_1C4420C3C(v1047, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_177;
    }

LABEL_175:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v1047;
    goto LABEL_150;
  }

  v695 = v1047;
  sub_1C4460108(v1047, v1044, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v695);
  if (v696)
  {
    sub_1C4420C3C(v1046, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_175;
  }

  sub_1C4A26040();
  v697 = sub_1C4401D48();
  sub_1C47E3504(v697, v698);
  sub_1C442EC58();
  sub_1C44BBE8C(v1046);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_177:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v699, v700, v701, v702);
  sub_1C440D164();
  sub_1C441DDCC(v1039);
  sub_1C440BBC0();
  sub_1C4460108(v703, v704, v705, v706);
  sub_1C442BD28();
  v707 = sub_1C442FFA8();
  sub_1C440175C(v707, v708, v1041);
  if (v406)
  {
    sub_1C4420C3C(v1040, &qword_1EC0C17D0, &qword_1C4F447C8);
    v709 = sub_1C441AFC8(v1042);
    sub_1C440175C(v709, v710, v1041);
    if (v406)
    {
      sub_1C4420C3C(v1042, &qword_1EC0C17D0, &qword_1C4F447C8);
      goto LABEL_187;
    }

LABEL_185:
    v596 = &qword_1EC0C17C8;
    v597 = &qword_1C4F447C0;
    v598 = v1042;
    goto LABEL_150;
  }

  sub_1C4460108(v1042, v980, &qword_1EC0C17D0, &qword_1C4F447C8);
  v711 = sub_1C44691E8();
  sub_1C440175C(v711, v712, v1041);
  if (v713)
  {
    sub_1C4420C3C(v1040, &qword_1EC0C17D0, &qword_1C4F447C8);
    sub_1C4A25FEC();
    goto LABEL_185;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v1040);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447C8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_187:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v714, v715, v716, v717);
  sub_1C440D164();
  sub_1C44252E0();
  v718 = v975;
  sub_1C440BBC0();
  sub_1C4460108(v719, v720, v721, v722);
  sub_1C442BD28();
  sub_1C44034BC(v718);
  if (v406)
  {
    sub_1C4420C3C(v971, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v975);
    if (v406)
    {
      sub_1C4420C3C(v975, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_197;
    }

LABEL_195:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v975;
    goto LABEL_150;
  }

  v723 = v975;
  sub_1C4460108(v975, v972, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v723);
  if (v724)
  {
    sub_1C4420C3C(v971, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_195;
  }

  sub_1C4A26040();
  v725 = sub_1C4401D48();
  sub_1C47E3504(v725, v726);
  sub_1C442EC58();
  sub_1C44BBE8C(v971);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_197:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v727, v728, v729, v730);
  sub_1C440D164();
  sub_1C44252E0();
  v731 = v978;
  sub_1C440BBC0();
  sub_1C4460108(v732, v733, v734, v735);
  sub_1C442BD28();
  sub_1C44034BC(v731);
  if (v406)
  {
    sub_1C4420C3C(v973, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v978);
    if (v406)
    {
      sub_1C4420C3C(v978, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_207;
    }

LABEL_205:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v978;
    goto LABEL_150;
  }

  v736 = v978;
  sub_1C4460108(v978, v974, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v736);
  if (v737)
  {
    sub_1C4420C3C(v973, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_205;
  }

  sub_1C4A26040();
  v738 = sub_1C4401D48();
  sub_1C47E3504(v738, v739);
  sub_1C442EC58();
  sub_1C44BBE8C(v973);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_207:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v740, v741, v742, v743);
  sub_1C440D164();
  sub_1C44252E0();
  v744 = v979;
  sub_1C440BBC0();
  sub_1C4460108(v745, v746, v747, v748);
  sub_1C442BD28();
  sub_1C44034BC(v744);
  if (v406)
  {
    sub_1C4420C3C(v976, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v979);
    if (v406)
    {
      sub_1C4420C3C(v979, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_217;
    }

LABEL_215:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v979;
    goto LABEL_150;
  }

  v749 = v979;
  sub_1C4460108(v979, v977, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v749);
  if (v750)
  {
    sub_1C4420C3C(v976, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_215;
  }

  sub_1C4A26040();
  v751 = sub_1C4401D48();
  sub_1C47E3504(v751, v752);
  sub_1C442EC58();
  sub_1C44BBE8C(v976);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_217:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v753, v754, v755, v756);
  sub_1C440D164();
  sub_1C441DDCC(v985);
  sub_1C440BBC0();
  sub_1C4460108(v757, v758, v759, v760);
  sub_1C442BD28();
  v761 = sub_1C442FFA8();
  sub_1C440175C(v761, v762, v986);
  if (v406)
  {
    sub_1C4420C3C(v987, &qword_1EC0C17C0, &qword_1C4F447B8);
    v763 = sub_1C441AFC8(v990);
    sub_1C440175C(v763, v764, v986);
    if (v406)
    {
      sub_1C4420C3C(v990, &qword_1EC0C17C0, &qword_1C4F447B8);
      goto LABEL_229;
    }

LABEL_225:
    v596 = &qword_1EC0C17B8;
    v597 = &qword_1C4F447B0;
    v598 = v990;
    goto LABEL_150;
  }

  sub_1C4460108(v990, v988, &qword_1EC0C17C0, &qword_1C4F447B8);
  v765 = sub_1C44691E8();
  sub_1C440175C(v765, v766, v986);
  if (v767)
  {
    sub_1C4420C3C(v987, &qword_1EC0C17C0, &qword_1C4F447B8);
    sub_1C4A25FEC();
    goto LABEL_225;
  }

  sub_1C4A26040();
  sub_1C4460314(*(v986 + 20));
  if (!v768)
  {

    v769 = sub_1C4410428();
    sub_1C4A23B30(v769, v770, v771, v772, v773, v774, v775, v776, v971, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981, v982);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v777, v778);
  sub_1C44158DC();
  v779 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v987);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v990);
  if ((v779 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_229:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v780, v781, v782, v783);
  sub_1C440D164();
  sub_1C441DDCC(v993);
  sub_1C440BBC0();
  sub_1C4460108(v784, v785, v786, v787);
  sub_1C442BD28();
  v788 = sub_1C442FFA8();
  sub_1C440175C(v788, v789, v994);
  if (v406)
  {
    sub_1C4420C3C(v995, &qword_1EC0C17B0, &qword_1C4F447A8);
    v790 = sub_1C441AFC8(v999);
    sub_1C440175C(v790, v791, v994);
    if (v406)
    {
      sub_1C4420C3C(v999, &qword_1EC0C17B0, &qword_1C4F447A8);
      goto LABEL_241;
    }

LABEL_237:
    v596 = &qword_1EC0C17A8;
    v597 = &qword_1C4F447A0;
    v598 = v999;
    goto LABEL_150;
  }

  sub_1C4460108(v999, v996, &qword_1EC0C17B0, &qword_1C4F447A8);
  v792 = sub_1C44691E8();
  sub_1C440175C(v792, v793, v994);
  if (v794)
  {
    sub_1C4420C3C(v995, &qword_1EC0C17B0, &qword_1C4F447A8);
    sub_1C4A25FEC();
    goto LABEL_237;
  }

  sub_1C4A26040();
  sub_1C4460314(*(v994 + 20));
  if (!v795)
  {

    v796 = sub_1C4410428();
    sub_1C4A23B30(v796, v797, v798, v799, v800, v801, v802, v803, v971, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981, v982);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v804, v805);
  sub_1C44158DC();
  v806 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v995);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v999);
  if ((v806 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_241:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v807, v808, v809, v810);
  sub_1C440D164();
  sub_1C44252E0();
  v811 = v984;
  sub_1C440BBC0();
  sub_1C4460108(v812, v813, v814, v815);
  sub_1C442BD28();
  sub_1C44034BC(v811);
  if (v406)
  {
    sub_1C4420C3C(v982, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v984);
    if (v406)
    {
      sub_1C4420C3C(v984, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_252;
    }

LABEL_250:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v984;
    goto LABEL_150;
  }

  v816 = v984;
  sub_1C4460108(v984, v983, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v816);
  if (v817)
  {
    sub_1C4420C3C(v982, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_250;
  }

  sub_1C4A26040();
  v818 = sub_1C4401D48();
  sub_1C47E3504(v818, v819);
  sub_1C442EC58();
  sub_1C44BBE8C(v982);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_252:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v820, v821, v822, v823);
  sub_1C440D164();
  sub_1C441DDCC(v1002);
  sub_1C440BBC0();
  sub_1C4460108(v824, v825, v826, v827);
  sub_1C442BD28();
  v828 = sub_1C442FFA8();
  sub_1C440175C(v828, v829, v1008);
  if (v406)
  {
    sub_1C4420C3C(v1006, &qword_1EC0C17A0, &qword_1C4F44798);
    v830 = sub_1C441AFC8(v1010);
    sub_1C440175C(v830, v831, v1008);
    if (v406)
    {
      sub_1C4420C3C(v1010, &qword_1EC0C17A0, &qword_1C4F44798);
      goto LABEL_263;
    }

LABEL_261:
    v596 = &qword_1EC0C1798;
    v597 = &qword_1C4F44790;
    v598 = v1010;
    goto LABEL_150;
  }

  sub_1C4460108(v1010, v1007, &qword_1EC0C17A0, &qword_1C4F44798);
  v832 = sub_1C44691E8();
  sub_1C440175C(v832, v833, v1008);
  if (v834)
  {
    sub_1C4420C3C(v1006, &qword_1EC0C17A0, &qword_1C4F44798);
    sub_1C4A25FEC();
    goto LABEL_261;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v1006);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F44798 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_263:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v835, v836, v837, v838);
  sub_1C440D164();
  sub_1C441DDCC(v1014);
  sub_1C440BBC0();
  sub_1C4460108(v839, v840, v841, v842);
  sub_1C442BD28();
  v843 = sub_1C442FFA8();
  sub_1C440175C(v843, v844, v1015);
  if (v406)
  {
    sub_1C4420C3C(v1017, &qword_1EC0C1790, &qword_1C4F44788);
    v845 = sub_1C441AFC8(v1020);
    sub_1C440175C(v845, v846, v1015);
    if (v406)
    {
      sub_1C4420C3C(v1020, &qword_1EC0C1790, &qword_1C4F44788);
      goto LABEL_275;
    }

LABEL_271:
    v596 = &qword_1EC0C1788;
    v597 = &qword_1C4F44780;
    v598 = v1020;
    goto LABEL_150;
  }

  sub_1C4460108(v1020, v1018, &qword_1EC0C1790, &qword_1C4F44788);
  v847 = sub_1C44691E8();
  sub_1C440175C(v847, v848, v1015);
  if (v849)
  {
    sub_1C4420C3C(v1017, &qword_1EC0C1790, &qword_1C4F44788);
    sub_1C4A25FEC();
    goto LABEL_271;
  }

  sub_1C4A26040();
  sub_1C4460314(*(v1015 + 20));
  if (!v850)
  {

    v851 = sub_1C4410428();
    sub_1C4A1F9A0(v851, v852, v853, v854, v855, v856, v857, v858, v971, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981, v982);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
LABEL_149:
      sub_1C4A25FEC();
      sub_1C4426A5C();
      sub_1C4420C3C(v665, v666, v667);
      sub_1C4A25FEC();
      sub_1C4426A5C();
      goto LABEL_150;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v859, v860);
  sub_1C44158DC();
  v861 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v1017);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v1020);
  if ((v861 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_275:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v862, v863, v864, v865);
  sub_1C440D164();
  sub_1C44252E0();
  v866 = v998;
  sub_1C440BBC0();
  sub_1C4460108(v867, v868, v869, v870);
  sub_1C442BD28();
  sub_1C44034BC(v866);
  if (v406)
  {
    sub_1C4420C3C(v991, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v998);
    if (v406)
    {
      sub_1C4420C3C(v998, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_285;
    }

LABEL_283:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v998;
    goto LABEL_150;
  }

  v871 = v998;
  sub_1C4460108(v998, v992, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v871);
  if (v872)
  {
    sub_1C4420C3C(v991, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_283;
  }

  sub_1C4A26040();
  v873 = sub_1C4401D48();
  sub_1C47E3504(v873, v874);
  sub_1C442EC58();
  sub_1C44BBE8C(v991);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_285:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v875, v876, v877, v878);
  sub_1C440D164();
  sub_1C441DDCC(v1021);
  sub_1C440BBC0();
  sub_1C4460108(v879, v880, v881, v882);
  sub_1C442BD28();
  v883 = sub_1C442FFA8();
  sub_1C440175C(v883, v884, v1024);
  if (v406)
  {
    sub_1C4420C3C(v1022, &qword_1EC0C1780, &qword_1C4F44778);
    v885 = sub_1C441AFC8(v1026);
    sub_1C440175C(v885, v886, v1024);
    if (v406)
    {
      sub_1C4420C3C(v1026, &qword_1EC0C1780, &qword_1C4F44778);
      goto LABEL_296;
    }

LABEL_294:
    v596 = &qword_1EC0C1778;
    v597 = &qword_1C4F44770;
    v598 = v1026;
    goto LABEL_150;
  }

  sub_1C4460108(v1026, v1023, &qword_1EC0C1780, &qword_1C4F44778);
  v887 = sub_1C44691E8();
  sub_1C440175C(v887, v888, v1024);
  if (v889)
  {
    sub_1C4420C3C(v1022, &qword_1EC0C1780, &qword_1C4F44778);
    sub_1C4A25FEC();
    goto LABEL_294;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v1022);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F44778 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_296:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v890, v891, v892, v893);
  sub_1C440D164();
  sub_1C44252E0();
  v894 = v1004;
  sub_1C440BBC0();
  sub_1C4460108(v895, v896, v897, v898);
  sub_1C442BD28();
  sub_1C44034BC(v894);
  if (v406)
  {
    sub_1C4420C3C(v1000, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v1004);
    if (v406)
    {
      sub_1C4420C3C(v1004, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_306;
    }

LABEL_304:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v1004;
    goto LABEL_150;
  }

  v899 = v1004;
  sub_1C4460108(v1004, v1001, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v899);
  if (v900)
  {
    sub_1C4420C3C(v1000, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_304;
  }

  sub_1C4A26040();
  v901 = sub_1C4401D48();
  sub_1C47E3504(v901, v902);
  sub_1C442EC58();
  sub_1C44BBE8C(v1000);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_306:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v903, v904, v905, v906);
  sub_1C440D164();
  sub_1C44252E0();
  v907 = v1012;
  sub_1C440BBC0();
  sub_1C4460108(v908, v909, v910, v911);
  sub_1C442BD28();
  sub_1C44034BC(v907);
  if (v406)
  {
    sub_1C4420C3C(v1003, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v1012);
    if (v406)
    {
      sub_1C4420C3C(v1012, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_316;
    }

LABEL_314:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v1012;
    goto LABEL_150;
  }

  v912 = v1012;
  sub_1C4460108(v1012, v1005, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v912);
  if (v913)
  {
    sub_1C4420C3C(v1003, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_314;
  }

  sub_1C4A26040();
  v914 = sub_1C4401D48();
  sub_1C47E3504(v914, v915);
  sub_1C442EC58();
  sub_1C44BBE8C(v1003);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_316:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v916, v917, v918, v919);
  sub_1C440D164();
  sub_1C44252E0();
  v920 = v1016;
  sub_1C440BBC0();
  sub_1C4460108(v921, v922, v923, v924);
  sub_1C442BD28();
  sub_1C44034BC(v920);
  if (v406)
  {
    sub_1C4420C3C(v1011, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v1016);
    if (v406)
    {
      sub_1C4420C3C(v1016, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_326;
    }

LABEL_324:
    v596 = &qword_1EC0BB6C0;
    v597 = &unk_1C4F20AE0;
    v598 = v1016;
    goto LABEL_150;
  }

  v925 = v1016;
  sub_1C4460108(v1016, v1013, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v925);
  if (v926)
  {
    sub_1C4420C3C(v1011, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_324;
  }

  sub_1C4A26040();
  v927 = sub_1C4401D48();
  sub_1C47E3504(v927, v928);
  sub_1C442EC58();
  sub_1C44BBE8C(v1011);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_326:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v929, v930, v931, v932);
  sub_1C440D164();
  sub_1C441DDCC(v1027);
  sub_1C440BBC0();
  sub_1C4460108(v933, v934, v935, v936);
  sub_1C442BD28();
  v937 = sub_1C442FFA8();
  sub_1C440175C(v937, v938, v1028);
  if (!v406)
  {
    sub_1C4460108(v1032, v1030, &qword_1EC0C1770, &qword_1C4F44768);
    v941 = sub_1C44691E8();
    sub_1C440175C(v941, v942, v1028);
    if (!v943)
    {
      sub_1C4A26040();
      sub_1C4460314(*(v1028 + 20));
      if (v944 || (, , v945 = sub_1C4410428(), sub_1C4A23B30(v945, v946, v947, v948, v949, v950, v951, v952, v971, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981, v982), sub_1C4429098(), , (&qword_1EC0C1000 & 1) != 0))
      {
        sub_1C4F00328();
        sub_1C442CF50();
        sub_1C4A24734(v953, v954);
        sub_1C44158DC();
        v955 = sub_1C4F010B8();
        sub_1C4A25FEC();
        sub_1C44BBE8C(v1029);
        sub_1C441D6D8();
        sub_1C4A25FEC();
        sub_1C44BBE8C(v1032);
        if (v955)
        {
          goto LABEL_338;
        }

LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_149;
    }

    sub_1C4420C3C(v1029, &qword_1EC0C1770, &qword_1C4F44768);
    sub_1C4A25FEC();
LABEL_334:
    v596 = &qword_1EC0C1768;
    v597 = &qword_1C4F44760;
    v598 = v1032;
    goto LABEL_150;
  }

  sub_1C4420C3C(v1029, &qword_1EC0C1770, &qword_1C4F44768);
  v939 = sub_1C441AFC8(v1032);
  sub_1C440175C(v939, v940, v1028);
  if (!v406)
  {
    goto LABEL_334;
  }

  sub_1C4420C3C(v1032, &qword_1EC0C1770, &qword_1C4F44768);
LABEL_338:
  sub_1C440D164();
  sub_1C440BBC0();
  sub_1C4460108(v956, v957, v958, v959);
  sub_1C440D164();
  sub_1C441DDCC(v1033);
  sub_1C440BBC0();
  sub_1C4460108(v960, v961, v962, v963);
  sub_1C442BD28();
  v964 = sub_1C442FFA8();
  sub_1C440175C(v964, v965, v1036);
  if (!v406)
  {
    sub_1C4460108(v1038, v1035, &qword_1EC0C1760, &qword_1C4F44758);
    v968 = sub_1C44691E8();
    sub_1C440175C(v968, v969, v1036);
    if (!v970)
    {
      sub_1C4A26040();
      sub_1C4401D48();
      sub_1C4A21F9C();

      sub_1C4A25FEC();
      sub_1C44BBE8C(v1034);
      sub_1C449DB10();
      sub_1C4435C2C();
      goto LABEL_24;
    }

    sub_1C4420C3C(v1034, &qword_1EC0C1760, &qword_1C4F44758);
    sub_1C4A25FEC();
LABEL_346:
    sub_1C4420C3C(v1038, &qword_1EC0C1758, &qword_1C4F44750);
    goto LABEL_24;
  }

  sub_1C4420C3C(v1034, &qword_1EC0C1760, &qword_1C4F44758);
  v966 = sub_1C441AFC8(v1038);
  sub_1C440175C(v966, v967, v1036);
  if (!v406)
  {
    goto LABEL_346;
  }

  sub_1C4420C3C(v1038, &qword_1EC0C1760, &qword_1C4F44758);
LABEL_24:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A169E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1890, type metadata accessor for LongitudinalEventData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A16A84()
{
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData);

  return sub_1C4F00428();
}

uint64_t sub_1C4A16B4C()
{
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData);

  return sub_1C4F00438();
}

uint64_t sub_1C4A16BF8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1526A8);
  sub_1C442B738(v0, qword_1EC1526A8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "motionType";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A16E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1898, type metadata accessor for LongitudinalEventData.MotionState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A16F10()
{
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState);

  return sub_1C4F00428();
}

uint64_t sub_1C4A16FD8()
{
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState);

  return sub_1C4F00438();
}

uint64_t sub_1C4A170A8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1526D0);
  sub_1C442B738(v0, qword_1EC1526D0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "airplayConnected";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "airplayRoute";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A17270()
{
  while (1)
  {
    v1 = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_1C4428E60();
      sub_1C4A21BC8();
    }

    else if (v1 == 1)
    {
      sub_1C4428E60();
      sub_1C4A21B58();
    }
  }
}

uint64_t sub_1C4A172F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1C4405A6C();
  sub_1C43FEE74();
  result = sub_1C4A21C38(v8, v9, v10, v11, a4);
  if (!v5)
  {
    sub_1C43FEE74();
    sub_1C4A21DEC(v13, v14, v15, v16, a4, a5);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A17410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18A0, type metadata accessor for LongitudinalEventData.Airplay);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A174B0()
{
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay);

  return sub_1C4F00428();
}

uint64_t sub_1C4A17578()
{
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay);

  return sub_1C4F00438();
}

uint64_t sub_1C4A17648()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1526F8);
  sub_1C442B738(v0, qword_1EC1526F8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "carplayConnected";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "carplayReason";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A178C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18A8, type metadata accessor for LongitudinalEventData.Carplay);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A17960()
{
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay);

  return sub_1C4F00428();
}

uint64_t sub_1C4A17A28()
{
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay);

  return sub_1C4F00438();
}

uint64_t sub_1C4A17AF4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152720);
  sub_1C442B738(v0, qword_1EC152720);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wifiConnected";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wifiSsid";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A17D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18B0, type metadata accessor for LongitudinalEventData.Wifi);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A17E0C()
{
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi);

  return sub_1C4F00428();
}

uint64_t sub_1C4A17ED4()
{
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi);

  return sub_1C4F00438();
}

uint64_t sub_1C4A17FB0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152748);
  sub_1C442B738(v0, qword_1EC152748);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inferredModeType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A18228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18B8, type metadata accessor for LongitudinalEventData.InferredMode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A182C8()
{
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode);

  return sub_1C4F00428();
}

uint64_t sub_1C4A18390()
{
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1843C()
{
  result = MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FACDF0);
  qword_1EC152760 = 0xD000000000000016;
  *algn_1EC152768 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A184AC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152770);
  sub_1C442B738(v0, qword_1EC152770);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userComputedFocusModeType";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userComputedFocusModeIdentifier";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A18724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18C0, type metadata accessor for LongitudinalEventData.UserComputedFocusMode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A187C4()
{
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1888C()
{
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode);

  return sub_1C4F00438();
}

uint64_t sub_1C4A18968()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152798);
  sub_1C442B738(v0, qword_1EC152798);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localAppCategory";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localAppBundleId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A18BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18C8, type metadata accessor for LongitudinalEventData.LocalAppLaunch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A18C80()
{
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch);

  return sub_1C4F00428();
}

uint64_t sub_1C4A18D48()
{
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch);

  return sub_1C4F00438();
}

uint64_t sub_1C4A18E24()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1527C0);
  sub_1C442B738(v0, qword_1EC1527C0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localAppBundleId";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localAppIntentClass";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1909C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18D0, type metadata accessor for LongitudinalEventData.LocalAppIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1913C()
{
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent);

  return sub_1C4F00428();
}

uint64_t sub_1C4A19204()
{
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent);

  return sub_1C4F00438();
}

uint64_t sub_1C4A192D4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1527E8);
  sub_1C442B738(v0, qword_1EC1527E8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "paymentOccurred";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "passStyle";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A194A0()
{
  sub_1C448E07C();
  while (1)
  {
    sub_1C43FE99C();
    v1 = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      sub_1C44306D0();
      sub_1C4A21BC8();
    }

    else if (v1 == 1)
    {
      sub_1C44306D0();
      sub_1C4A21B58();
    }
  }
}

uint64_t sub_1C4A195A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18D8, type metadata accessor for LongitudinalEventData.Wallet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A19648()
{
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet);

  return sub_1C4F00428();
}

uint64_t sub_1C4A19710()
{
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet);

  return sub_1C4F00438();
}

uint64_t sub_1C4A197EC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152810);
  sub_1C442B738(v0, qword_1EC152810);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "userSpecificPlaceType";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "PlaceType";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A199F4()
{
  v0 = type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userSpecificPlaceType, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__placeType, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__confidence);
  qword_1EC0C1040 = result;
  return result;
}

void sub_1C4A19A94()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData.LocationVisit(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4A19B14();
  sub_1C44512DC();
}

uint64_t sub_1C4A19B14()
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1C4A19D7C();
        break;
      case 3:
        sub_1C4A19CA0();
        break;
      case 2:
        sub_1C4A19BC4();
        break;
    }
  }

  return result;
}

uint64_t sub_1C4A19BC4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A19CA0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A19D7C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A19E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userSpecificPlaceType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1A040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__placeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__confidence;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1A5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18E0, type metadata accessor for LongitudinalEventData.LocationVisit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1A684()
{
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1A74C()
{
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1A810()
{
  result = MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F9B020);
  qword_1EC152828 = 0xD000000000000016;
  unk_1EC152830 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A1A884()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152838);
  sub_1C442B738(v0, qword_1EC152838);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placeType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userSpecificPlaceType";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "loiIdentifier";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1AA8C()
{
  v0 = type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__placeType, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userSpecificPlaceType, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__loiIdentifier);
  qword_1EC0C1048 = result;
  return result;
}

void sub_1C4A1AAE8()
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
  sub_1C4403138();
  sub_1C442A428();
  sub_1C44408D4(v28, v29, v30, v31);
  swift_endAccess();
  v32 = *v3;
  sub_1C440D164();
  sub_1C44885C4();
  sub_1C442A428();
  sub_1C4460108(v33, v34, v35, v36);
  sub_1C4403138();
  sub_1C442A428();
  sub_1C44408D4(v37, v38, v39, v40);
  swift_endAccess();
  v41 = *v1;
  sub_1C440D164();
  sub_1C44885C4();
  sub_1C442A428();
  sub_1C4460108(v42, v43, v44, v45);

  sub_1C4403138();
  sub_1C442A428();
  sub_1C44408D4(v46, v47, v48, v49);
  swift_endAccess();
  sub_1C43FE9F0();
}

uint64_t sub_1C4A1AC9C(void *a1, void *a2, void *a3)
{
  sub_1C44BBE8C(v3 + *a1);
  sub_1C44BBE8C(v3 + *a2);
  sub_1C44BBE8C(v3 + *a3);
  return v3;
}

void sub_1C4A1AD4C()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData.SemanticLocation(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4A231B8();
  sub_1C44512DC();
}

uint64_t sub_1C4A1AE08()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1AEE4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1AFC0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1B09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  sub_1C448E07C();
  result = v10();
  if (!v7)
  {
    v12 = sub_1C44159B4();
    a6(v12);
    v13 = sub_1C44159B4();
    return a7(v13);
  }

  return result;
}

uint64_t sub_1C4A1B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__placeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1B2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userSpecificPlaceType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__loiIdentifier;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1B7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18E8, type metadata accessor for LongitudinalEventData.SemanticLocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1B850()
{
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1B918()
{
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1B9DC()
{
  result = MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4F9B050);
  qword_1EC152850 = 0xD000000000000016;
  *algn_1EC152858 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A1BA50()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152860);
  sub_1C442B738(v0, qword_1EC152860);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "virtualInteractionType";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numParticipants";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entityIdentifiers";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entityRelationshipTypes";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1BC94()
{
  v0 = type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0C1050 = result;
  return result;
}

void sub_1C4A1BD44()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C4416740(v7);
  }

  v8 = sub_1C440F77C();
  sub_1C4A1EBD4(v8, v9, v10, v11, v12, v13, v14, v15);
  sub_1C44512DC();
}

uint64_t sub_1C4A1BE1C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1BEF8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1BFD4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1C0B0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C4A1C18C()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C4A1F0BC();
  if (!v0)
  {
    sub_1C43FE99C();
    sub_1C4F00308();
  }
}

uint64_t sub_1C4A1C228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractionType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__numParticipants;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__entityIdentifiers;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__entityRelationshipTypes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1CB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18F0, type metadata accessor for LongitudinalEventData.VirtualInteractions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1CBD4()
{
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1CC9C()
{
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1CD1C()
{
  result = MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4F9B0A0);
  qword_1EC152878 = 0xD000000000000016;
  unk_1EC152880 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A1CD90()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152888);
  sub_1C442B738(v0, qword_1EC152888);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mediaTypes";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playbackStates";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1D008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18F8, type metadata accessor for LongitudinalEventData.NowPlayingState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1D0A8()
{
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1D170()
{
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1D24C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1528B0);
  sub_1C442B738(v0, qword_1EC1528B0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "colorComponentX";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "colorComponentY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "colorComponentZ";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ambientLightType";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1D48C()
{
  v0 = type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0C1058 = result;
  return result;
}

void sub_1C4A1D4F0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v66 = v2;
  v67 = v0;
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = *v7;
  v17 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v18, v19, v20, v17);
  v21 = *v5;
  sub_1C43FCF64();
  sub_1C440BAA8(v22, v23, v24, v17);
  v25 = *v4;
  sub_1C43FCF64();
  sub_1C440BAA8(v26, v27, v28, v17);
  v29 = *v1;
  sub_1C43FCF64();
  sub_1C440BAA8(v30, v31, v32, v17);
  v33 = *v7;
  sub_1C440D164();
  sub_1C4460108(v9 + v33, v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4403138();
  sub_1C440EF9C();
  sub_1C44408D4(v34, v35, v36, v37);
  swift_endAccess();
  v38 = *v66;
  sub_1C440D164();
  sub_1C440EF9C();
  sub_1C4460108(v39, v40, v41, v42);
  sub_1C4403138();
  sub_1C440EF9C();
  sub_1C44408D4(v43, v44, v45, v46);
  swift_endAccess();
  v47 = *v4;
  sub_1C440D164();
  sub_1C44885C4();
  sub_1C440EF9C();
  sub_1C4460108(v48, v49, v50, v51);
  sub_1C4403138();
  sub_1C440EF9C();
  sub_1C44408D4(v52, v53, v54, v55);
  swift_endAccess();
  v56 = *v67;
  sub_1C440D164();
  sub_1C44885C4();
  sub_1C440EF9C();
  sub_1C4460108(v57, v58, v59, v60);

  sub_1C4403138();
  sub_1C440EF9C();
  sub_1C44408D4(v61, v62, v63, v64);
  swift_endAccess();
  sub_1C43FE9F0();
}

void sub_1C4A1D758()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData.AmbientLight(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C4416740(v7);
  }

  v8 = sub_1C440F77C();
  sub_1C4A1EBD4(v8, v9, v10, v11, v12, v13, v14, v15);
  sub_1C44512DC();
}

uint64_t sub_1C4A1D830()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1D90C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1D9E8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1DAC4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C4A1DBA0()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData.AmbientLight(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C4A1F0BC();
  if (!v0)
  {
    sub_1C43FE99C();
    sub_1C4F00308();
  }
}

uint64_t sub_1C4A1DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__colorComponentX;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__colorComponentY;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__colorComponentZ;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLightType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1E548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1900, type metadata accessor for LongitudinalEventData.AmbientLight);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1E5E8()
{
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1E6B0()
{
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1E758()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1528D8);
  sub_1C442B738(v0, qword_1EC1528D8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "calendarContainsTitleWork";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isAffectingAvailability";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportsLocationDirectorySearches";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "numAttendees";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1E99C()
{
  v0 = type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0C1060 = result;
  return result;
}

void sub_1C4A1EA4C()
{
  sub_1C44051C4();
  sub_1C4A0B594(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v3 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    sub_1C4462824();
    swift_updateClassMetadata2();
  }
}

void sub_1C4A1EAFC()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData.Calendar(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C4416740(v7);
  }

  v8 = sub_1C440F77C();
  sub_1C4A1EBD4(v8, v9, v10, v11, v12, v13, v14, v15);
  sub_1C44512DC();
}

uint64_t sub_1C4A1EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  while (1)
  {
    sub_1C43FD018();
    result = sub_1C4F00378();
    if (v8 || (v14 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v15 = sub_1C440BCE4();
        a5(v15);
        break;
      case 2:
        v18 = sub_1C440BCE4();
        a6(v18);
        break;
      case 3:
        v16 = sub_1C440BCE4();
        a7(v16);
        break;
      case 4:
        v17 = sub_1C440BCE4();
        a8(v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C4A1ECB0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1ED8C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1EE68()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1EF44()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C4A1F020()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData.Calendar(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C4A1F0BC();
  if (!v0)
  {
    sub_1C43FE99C();
    sub_1C4F00308();
  }
}

void sub_1C4A1F0BC()
{
  sub_1C441800C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C448E07C();
  v7();
  if (!v0)
  {
    v8 = sub_1C44159B4();
    v6(v8);
    v9 = sub_1C44159B4();
    v4(v9);
    v10 = sub_1C44159B4();
    v2(v10);
  }

  sub_1C44512DC();
}

uint64_t sub_1C4A1F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendarContainsTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__isAffectingAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__supportsLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__numAttendees;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A1F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v106[1] = v22;
  v106[4] = v23;
  v110 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v115 = type metadata accessor for FeatureValue(0);
  v31 = sub_1C43FBCE0(v115);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v113 = v34;
  v35 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v36 = sub_1C43FBCE0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v106 - v42;
  v44 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v45 = sub_1C43FBD18(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = v106 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v58 = v106 - v57;
  v59 = *v26;
  sub_1C440D164();
  sub_1C4449408(v30 + v59, v58);
  v60 = *v26;
  sub_1C440D164();
  v112 = v35;
  v61 = *(v35 + 48);
  sub_1C4449408(v58, v43);
  v62 = v28 + v60;
  v63 = v28;
  v64 = v115;
  sub_1C4460108(v62, &v43[v61], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v43, 1, v64);
  if (v66)
  {

    sub_1C4420C3C(v58, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v43[v61], 1, v64);
    v65 = v30;
    if (v66)
    {
      sub_1C4420C3C(v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_11;
    }

LABEL_9:
    v67 = v43;
LABEL_30:
    sub_1C4420C3C(v67, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_31;
  }

  sub_1C4460108(v43, v56, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v43[v61], 1, v64);
  if (v66)
  {

    sub_1C4420C3C(v58, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_9;
  }

  v68 = v113;
  sub_1C4A26040();

  v69 = sub_1C47E3504(v56, v68);
  sub_1C4A25FEC();
  sub_1C4420C3C(v58, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4404C28();
  sub_1C4A25FEC();
  v65 = v30;
  sub_1C4420C3C(v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v70 = v110;
  v71 = *v110;
  sub_1C440D164();
  v72 = v114;
  sub_1C4401DB4(v71 + v65, v114);
  v73 = *v70;
  sub_1C440D164();
  v74 = v112;
  v75 = *(v112 + 48);
  sub_1C44A1EE8(v72, &a10);
  sub_1C4401DB4(v73 + v63, v75 + v70);
  v76 = sub_1C4401860();
  sub_1C440175C(v76, v77, v64);
  if (v66)
  {
    sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v75 + v70);
    v78 = v111;
    if (v66)
    {
      sub_1C4420C3C(v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C4460108(v70, v109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v75 + v70);
  v78 = v111;
  if (v79)
  {
    sub_1C4420C3C(v114, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_19:
    v67 = v70;
    goto LABEL_30;
  }

  v64 = v70;
  sub_1C4455410();
  sub_1C4A26040();
  v80 = sub_1C4404084();
  v82 = sub_1C47E3504(v80, v81);
  sub_1C43FD024();
  sub_1C4A25FEC();
  v75 = &qword_1EC0BB6C8;
  sub_1C4420C3C(v114, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4404C28();
  sub_1C4A25FEC();
  v83 = sub_1C43FE99C();
  sub_1C4420C3C(v83, v84, &unk_1C4F2E1B0);
  if ((v82 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  sub_1C4458784(&v118);
  sub_1C440D164();
  sub_1C4401DB4(v75 + v65, v78);
  v85 = *v64;
  sub_1C440D164();
  v86 = *(v74 + 48);
  v87 = v107;
  sub_1C4401DB4(v78, v107);
  sub_1C4401DB4(v85 + v63, v86 + v87);
  sub_1C440175C(v87, 1, v115);
  if (!v66)
  {
    sub_1C4460108(v87, v106[3], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v86 + v87);
    v88 = v108;
    if (!v89)
    {
      v90 = v87;
      sub_1C4455410();
      sub_1C4A26040();
      v91 = sub_1C4404084();
      v93 = sub_1C47E3504(v91, v92);
      sub_1C43FD024();
      sub_1C4A25FEC();
      v86 = &qword_1EC0BB6C8;
      v94 = sub_1C43FE99C();
      v85 = v95;
      sub_1C4420C3C(v94, v96, v95);
      sub_1C4404C28();
      sub_1C4A25FEC();
      sub_1C44BBE8C(v90);
      if (v93)
      {
        goto LABEL_34;
      }

LABEL_31:

      goto LABEL_32;
    }

    sub_1C4420C3C(v78, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v78, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v86 + v87);
  v88 = v108;
  if (!v66)
  {
LABEL_29:
    v67 = v87;
    goto LABEL_30;
  }

  sub_1C4420C3C(v87, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_34:
  sub_1C4458784(&v116);
  sub_1C440D164();
  sub_1C4401DB4(v86 + v65, v88);
  v97 = *v85;
  sub_1C440D164();
  v98 = *(v74 + 48);
  sub_1C44A1EE8(v88, &v117);
  sub_1C4401DB4(v63 + v97, v88 + v98);
  v99 = sub_1C4401860();
  sub_1C440175C(v99, v100, v115);
  if (!v66)
  {
    sub_1C4460108(v88, v106[0], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v88 + v98);
    if (!v101)
    {
      sub_1C4A26040();
      v102 = sub_1C440BB4C();
      sub_1C47E3504(v102, v103);

      sub_1C43FD024();
      sub_1C4A25FEC();
      sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4A25FEC();
      v104 = sub_1C44333A0();
      sub_1C4420C3C(v104, v105, &unk_1C4F2E1B0);
      goto LABEL_32;
    }

    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_42:
    sub_1C4420C3C(v88, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_32;
  }

  sub_1C4420C3C(v88, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v88 + v98);
  if (!v66)
  {
    goto LABEL_42;
  }

  sub_1C4420C3C(v88, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_32:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A203D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1908, type metadata accessor for LongitudinalEventData.Calendar);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A20470()
{
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar);

  return sub_1C4F00428();
}

uint64_t sub_1C4A20538()
{
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar);

  return sub_1C4F00438();
}

uint64_t sub_1C4A205E8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152900);
  sub_1C442B738(v0, qword_1EC152900);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "microlocationIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "microlocationConfidence";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A20860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1910, type metadata accessor for LongitudinalEventData.Microlocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A20900()
{
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation);

  return sub_1C4F00428();
}

uint64_t sub_1C4A209C8()
{
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation);

  return sub_1C4F00438();
}

uint64_t sub_1C4A20A9C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152928);
  sub_1C442B738(v0, qword_1EC152928);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bluetoothConnected";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userWearing";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bluetoothAddress";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A20CA4()
{
  v0 = type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetoothConnected, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userWearing, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetoothAddress);
  qword_1EC0C1068 = result;
  return result;
}

void sub_1C4A20D44()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData.Bluetooth(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4A231B8();
  sub_1C44512DC();
}

uint64_t sub_1C4A20E00()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A20EDC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A20FB8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A21094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetoothConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A2127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userWearing;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A21464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetoothAddress;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A21740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1918, type metadata accessor for LongitudinalEventData.Bluetooth);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A217E0()
{
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth);

  return sub_1C4F00428();
}

uint64_t sub_1C4A218A8()
{
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth);

  return sub_1C4F00438();
}

uint64_t sub_1C4A21990()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152950);
  sub_1C442B738(v0, qword_1EC152950);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "widgetAction";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "widgetIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A21B58()
{
  sub_1C441800C();
  v0 = sub_1C4414568();
  v2 = *(v1(v0) + 20);
  type metadata accessor for FeatureValue(0);
  sub_1C4408DD4();
  sub_1C4A24734(v3, v4);
  sub_1C448DFF4();
  sub_1C44512DC();
}

void sub_1C4A21BC8()
{
  sub_1C441800C();
  v0 = sub_1C4414568();
  v2 = *(v1(v0) + 24);
  type metadata accessor for FeatureValue(0);
  sub_1C4408DD4();
  sub_1C4A24734(v3, v4);
  sub_1C448DFF4();
  sub_1C44512DC();
}

uint64_t sub_1C4A21C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v21[3] = a4;
  v21[1] = a3;
  v7 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = type metadata accessor for FeatureValue(0);
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = a5(0);
  sub_1C4460108(a1 + *(v17 + 20), v12, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    return sub_1C4420C3C(v12, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4408DD4();
  sub_1C4A24734(v19, v20);
  sub_1C4F004B8();
  sub_1C44158DC();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A21DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v26[0] = a6;
  v26[1] = a3;
  v26[3] = a4;
  v8 = sub_1C44333A0();
  v10 = sub_1C456902C(v8, v9);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v16 = type metadata accessor for FeatureValue(0);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = a5(0);
  sub_1C4460108(a1 + *(v20 + 24), v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v21 = sub_1C442FFA8();
  if (sub_1C44157D4(v21, v22, v16) == 1)
  {
    return sub_1C4420C3C(v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4408DD4();
  sub_1C4A24734(v24, v25);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A21F9C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FeatureValue(0);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v43 = v10;
  v11 = sub_1C43FBC98();
  v13 = sub_1C456902C(v11, v12);
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v42 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v22 = sub_1C43FBCE0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v45 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  v44 = v1(0);
  v29 = *(v44 + 20);
  v30 = *(v21 + 48);
  v46 = v5;
  sub_1C442573C(v5 + v29, v28);
  v47 = v3;
  sub_1C442573C(v3 + v29, &v28[v30]);
  sub_1C440175C(v28, 1, v6);
  if (v31)
  {
    sub_1C440175C(&v28[v30], 1, v6);
    if (!v31)
    {
      goto LABEL_16;
    }

    sub_1C4420C3C(v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v28, v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v28[v30], 1, v6);
    if (v31)
    {
LABEL_15:
      sub_1C4A25FEC();
LABEL_16:
      sub_1C4420C3C(v28, &qword_1EC0BB6C0, &unk_1C4F20AE0);
      goto LABEL_17;
    }

    v32 = v43;
    sub_1C4A26040();
    v33 = sub_1C47E3504(v20, v32);
    sub_1C4404C28();
    sub_1C4A25FEC();
    sub_1C4A25FEC();
    sub_1C4420C3C(v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v28 = v45;
  v34 = *(v44 + 24);
  v35 = *(v21 + 48);
  sub_1C442573C(v46 + v34, v45);
  sub_1C442573C(v47 + v34, &v28[v35]);
  sub_1C440175C(v28, 1, v6);
  if (v31)
  {
    sub_1C440175C(&v28[v35], 1, v6);
    if (v31)
    {
      sub_1C4420C3C(v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_19:
      sub_1C4F00328();
      sub_1C442CF50();
      sub_1C4A24734(v40, v41);
      sub_1C4F010B8();
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v36 = v42;
  sub_1C4460108(v28, v42, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v28[v35], 1, v6);
  if (v37)
  {
    goto LABEL_15;
  }

  v38 = v43;
  sub_1C4A26040();
  v39 = sub_1C47E3504(v36, v38);
  sub_1C4404C28();
  sub_1C4A25FEC();
  sub_1C4A25FEC();
  sub_1C4420C3C(v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (v39)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A22444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1920, type metadata accessor for LongitudinalEventData.Widget);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A224E4()
{
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget);

  return sub_1C4F00428();
}

uint64_t sub_1C4A225AC()
{
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget);

  return sub_1C4F00438();
}

uint64_t sub_1C4A22684(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1C6940010](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A226F0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152978);
  sub_1C442B738(v0, qword_1EC152978);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actionId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemProtocols";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A228F8()
{
  v0 = type metadata accessor for LongitudinalEventData.LinkActions._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C4920FCC(&OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bundleID, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__actionID, &OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemProtocols);
  qword_1EC0C1070 = result;
  return result;
}

uint64_t sub_1C4A22970(void *a1, void *a2, void *a3)
{
  v3 = *sub_1C4A1AC9C(a1, a2, a3);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);

  return swift_deallocClassInstance();
}

void sub_1C4A229EC()
{
  sub_1C44051C4();
  sub_1C4A0B594(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v3 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    sub_1C4462824();
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C4A22B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C4F00328();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      sub_1C4462824();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4A22F10(uint64_t a1, uint64_t a2)
{
  sub_1C43FBE94();
  v4 = sub_1C4F00328();
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = v2;
  }

  else
  {
    sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v8 = sub_1C442F908();
  }

  return sub_1C44157D4(v8, a2, v7);
}

uint64_t sub_1C4A22FC0(uint64_t a1, uint64_t a2, int a3)
{
  sub_1C43FBE94();
  v4 = sub_1C4F00328();
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == a3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C442F908();
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v6, v7, v8, v9);
}

void sub_1C4A2305C()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C44051C4();
    sub_1C4A0B594(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1C4462824();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4A230FC()
{
  sub_1C441800C();
  v2 = sub_1C43FD704();
  v3 = type metadata accessor for LongitudinalEventData.LinkActions(v2);
  v4 = sub_1C442A918(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for LongitudinalEventData.LinkActions._StorageClass(0);
    sub_1C43FD23C(v6);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v7);
  }

  sub_1C440F77C();
  sub_1C4A231B8();
  sub_1C44512DC();
}

void sub_1C4A231B8()
{
  sub_1C441800C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  while (1)
  {
    v7 = sub_1C4F00378();
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 3:
        v11 = sub_1C4418038();
        v2(v11);
        break;
      case 2:
        v10 = sub_1C4418038();
        v4(v10);
        break;
      case 1:
        v9 = sub_1C4418038();
        v6(v9);
        break;
    }
  }

  sub_1C44512DC();
}

uint64_t sub_1C4A23264()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A23340()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A2341C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A234F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  sub_1C4405A6C();
  v12 = v11(0);
  sub_1C442F668(v12);
  sub_1C43FEE74();
  result = sub_1C4A1B09C(v13, v14, v15, v16, a5, a6, a7);
  if (!v7)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A23578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bundleID;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A23760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__actionID;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A23948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemProtocols;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A23B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v88[1] = v22;
  v91 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v96 = type metadata accessor for FeatureValue(0);
  v30 = sub_1C43FBCE0(v96);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  v93 = v33;
  v34 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v35 = sub_1C43FBCE0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v94 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v88 - v41;
  v43 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v44 = sub_1C43FBD18(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = v88 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = v88 - v54;
  v56 = *v25;
  sub_1C440D164();
  sub_1C4460108(v29 + v56, v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v57 = *v25;
  sub_1C440D164();
  v95 = v34;
  v58 = *(v34 + 48);
  v59 = sub_1C43FD018();
  sub_1C4460108(v59, v60, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v61 = v96;
  sub_1C4460108(v27 + v57, &v42[v58], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v42, 1, v61);
  if (v63)
  {

    sub_1C4420C3C(v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v42[v58], 1, v61);
    v62 = v27;
    if (v63)
    {
      sub_1C4420C3C(v42, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_12;
    }

LABEL_9:
    sub_1C4420C3C(v42, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_21;
  }

  sub_1C4460108(v42, v53, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v42[v58], 1, v61);
  if (v63)
  {

    sub_1C4420C3C(v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_9;
  }

  sub_1C4A26040();

  v64 = sub_1C440BB4C();
  v66 = sub_1C47E3504(v64, v65);
  sub_1C43FD024();
  sub_1C4A25FEC();
  sub_1C4420C3C(v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4A25FEC();
  v62 = v27;
  sub_1C4420C3C(v42, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v67 = v91;
  v68 = *v91;
  sub_1C440D164();
  v69 = &unk_1C4F2E1B0;
  v70 = v29;
  v71 = v90;
  sub_1C4449408(v68 + v29, v90);
  v72 = *v67;
  sub_1C440D164();
  v73 = v94;
  v74 = *(v95 + 48);
  v75 = sub_1C441D6D8();
  sub_1C4449408(v75, v76);
  sub_1C4449408(v72 + v62, v74 + v73);
  sub_1C440175C(v73, 1, v61);
  if (!v63)
  {
    v69 = v89;
    sub_1C4460108(v73, v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v74 + v73);
    v77 = v92;
    if (!v78)
    {
      v79 = v93;
      sub_1C4A26040();
      v80 = sub_1C47E3504(v69, v79);
      sub_1C4404C28();
      sub_1C4A25FEC();
      v74 = &qword_1EC0BB6C8;
      v72 = &unk_1C4F2E1B0;
      sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C43FD024();
      sub_1C4A25FEC();
      sub_1C4420C3C(v94, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if (v80)
      {
        goto LABEL_24;
      }

LABEL_21:

      goto LABEL_22;
    }

    sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_20:
    sub_1C4420C3C(v73, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_21;
  }

  sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v74 + v73);
  v77 = v92;
  if (!v63)
  {
    goto LABEL_20;
  }

  sub_1C4420C3C(v73, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_24:
  sub_1C4458784(&a12);
  sub_1C440D164();
  sub_1C4401DB4(v69 + v70, v77);
  v81 = *v74;
  sub_1C440D164();
  v82 = sub_1C4441784(v95);
  sub_1C44A1EE8(v82, &a13);
  sub_1C4401DB4(v62 + v81, v69 + v72);
  v83 = sub_1C4401860();
  sub_1C440175C(v83, v84, v96);
  if (!v63)
  {
    sub_1C4460108(v72, v88[0], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v69 + v72);
    if (!v85)
    {
      sub_1C4A26040();
      v86 = sub_1C43FE99C();
      sub_1C47E3504(v86, v87);

      sub_1C43FD024();
      sub_1C4A25FEC();
      sub_1C4420C3C(v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4A25FEC();
      sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_22;
    }

    sub_1C4420C3C(v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_32:
    sub_1C4420C3C(v72, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_22;
  }

  sub_1C4420C3C(v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v69 + v72);
  if (!v63)
  {
    goto LABEL_32;
  }

  sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_22:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A242AC()
{
  sub_1C4459B58();
  v3 = v2;
  sub_1C4F02AF8();
  v3(0);
  sub_1C4A24734(v1, v0);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A243A0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;
  v8 = *a5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v7;
}

uint64_t sub_1C4A24478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1928, type metadata accessor for LongitudinalEventData.LinkActions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A24518()
{
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions);

  return sub_1C4F00428();
}

uint64_t sub_1C4A245E0()
{
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions);

  return sub_1C4F00438();
}

uint64_t sub_1C4A24734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4A25FEC()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C4A26040()
{
  v1 = sub_1C43FECE0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 32);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

void sub_1C4A260BC()
{
  sub_1C4A0B594(319, &qword_1EC0C1940, type metadata accessor for LongitudinalEvent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C4F00328();
    if (v1 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEAB0);
      if (v2 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFCDC0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4A261E8()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFCDC0);
    if (v1 <= 0x3F)
    {
      sub_1C4A0B594(319, &qword_1EC0C1958, type metadata accessor for LongitudinalEventData, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4A262D0()
{
  sub_1C456902C(&qword_1EC0C1960, &qword_1C4F448E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F448D0;
  sub_1C43FBDF0();
  *(v1 + 32) = 0xD000000000000013;
  *(v1 + 40) = v2;
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = 0x7079546D72616C61;
  *(v0 + 64) = 0xE900000000000065;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 72) = v3;
  *(v0 + 80) = 0xD00000000000001BLL;
  *(v0 + 88) = v4;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD00000000000001BLL;
  *(v0 + 112) = v6;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 120) = v7;
  *(v0 + 128) = 0xD00000000000001BLL;
  *(v0 + 136) = v8;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 144) = v9;
  *(v0 + 152) = 0xD000000000000010;
  *(v0 + 160) = v10;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 168) = v11;
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = v12;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 192) = v13;
  *(v0 + 200) = 0xD000000000000014;
  *(v0 + 208) = v14;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 216) = v15;
  *(v0 + 224) = 0xD000000000000010;
  *(v0 + 232) = v16;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 240) = v17;
  *(v0 + 248) = 0xD000000000000019;
  *(v0 + 256) = v18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 264) = v19;
  *(v0 + 272) = 0xD00000000000001FLL;
  *(v0 + 280) = v20;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 288) = v21;
  *(v0 + 296) = 0xD000000000000014;
  *(v0 + 304) = v22;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 312) = v23;
  *(v0 + 320) = 0xD000000000000027;
  *(v0 + 328) = v24;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 336) = v25;
  *(v0 + 344) = 0xD000000000000010;
  *(v0 + 352) = v26;
  *(v0 + 360) = swift_getKeyPath();
  strcpy((v0 + 368), "carPlayReason");
  *(v0 + 382) = -4864;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 384) = v27;
  *(v0 + 392) = 0xD000000000000011;
  *(v0 + 400) = v28;
  *(v0 + 408) = swift_getKeyPath();
  *(v0 + 416) = 0x6C50656369766564;
  *(v0 + 424) = 0xEF6E496465676775;
  *(v0 + 432) = swift_getKeyPath();
  strcpy((v0 + 440), "deviceUnlocked");
  *(v0 + 455) = -18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 456) = v29;
  *(v0 + 464) = 0xD000000000000018;
  *(v0 + 472) = v30;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 480) = v31;
  *(v0 + 488) = 0xD000000000000012;
  *(v0 + 496) = v32;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 504) = v33;
  *(v0 + 512) = 0xD000000000000010;
  *(v0 + 520) = v34;
  *(v0 + 528) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 536) = 0xD000000000000016;
  *(v0 + 544) = v35;
  *(v0 + 552) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 560) = 0xD000000000000010;
  *(v0 + 568) = v36;
  *(v0 + 576) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 584) = 0xD000000000000010;
  *(v0 + 592) = v37;
  *(v0 + 600) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 608) = 0xD000000000000013;
  *(v0 + 616) = v38;
  *(v0 + 624) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 632) = 0xD000000000000016;
  *(v0 + 640) = v39;
  *(v0 + 648) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 656) = 0xD000000000000017;
  *(v0 + 664) = v40;
  *(v0 + 672) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 680) = 0xD000000000000022;
  *(v0 + 688) = v41;
  *(v0 + 696) = swift_getKeyPath();
  strcpy((v0 + 704), "lowPowerMode");
  *(v0 + 717) = 0;
  *(v0 + 718) = -5120;
  *(v0 + 720) = swift_getKeyPath();
  *(v0 + 728) = 0x636F6C6F7263696DLL;
  *(v0 + 736) = 0xEF64496E6F697461;
  *(v0 + 744) = swift_getKeyPath();
  *(v0 + 752) = 0x74536E6F69746F6DLL;
  *(v0 + 760) = 0xEF65707954657461;
  *(v0 + 768) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 776) = 0xD000000000000015;
  *(v0 + 784) = v42;
  *(v0 + 792) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 800) = 0xD000000000000014;
  *(v0 + 808) = v43;
  *(v0 + 816) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 824) = 0xD00000000000001ELL;
  *(v0 + 832) = v44;
  *(v0 + 840) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 848) = 0xD000000000000011;
  *(v0 + 856) = v45;
  *(v0 + 864) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 872) = 0xD000000000000019;
  *(v0 + 880) = v46;
  *(v0 + 888) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 896) = 0xD000000000000025;
  *(v0 + 904) = v47;
  *(v0 + 912) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 920) = 0xD00000000000001DLL;
  *(v0 + 928) = v48;
  *(v0 + 936) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 944) = 0xD000000000000019;
  *(v0 + 952) = v49;
  *(v0 + 960) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 968) = 0xD000000000000017;
  *(v0 + 976) = v50;
  *(v0 + 984) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 992) = 0xD000000000000016;
  *(v0 + 1000) = v51;
  *(v0 + 1008) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 1016) = 0xD000000000000022;
  *(v0 + 1024) = v52;
  *(v0 + 1032) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 1040) = 0xD00000000000001BLL;
  *(v0 + 1048) = v53;
  *(v0 + 1056) = swift_getKeyPath();
  *(v0 + 1064) = 0x615074656C6C6177;
  *(v0 + 1072) = 0xEF656C7974537373;
  *(v0 + 1080) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 1088) = 0xD000000000000015;
  *(v0 + 1096) = v54;
  *(v0 + 1104) = swift_getKeyPath();
  strcpy((v0 + 1112), "wifiConnected");
  *(v0 + 1126) = -4864;
  *(v0 + 1128) = swift_getKeyPath();
  *(v0 + 1136) = 0x6469735369666977;
  *(v0 + 1144) = 0xE800000000000000;
  *(v0 + 1152) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0C1968, &unk_1C4F453D0);
  result = sub_1C4F00F28();
  qword_1EC152990 = result;
  return result;
}

uint64_t sub_1C4A26AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  sub_1C4A27144(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t sub_1C4A27144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1C4A271AC(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F453E0;
  *(v7 + 56) = &type metadata for DeviceAirplaneModeDataProvider;
  *(v7 + 64) = sub_1C47C093C();
  *(v7 + 32) = 0;
  *(v7 + 96) = &type metadata for DeviceBluetoothDataProvider;
  *(v7 + 104) = sub_1C47C0990();
  *(v7 + 72) = 0;
  type metadata accessor for CarPlaySignal();
  sub_1C44195E8();
  v8 = sub_1C4406D90();
  v9 = sub_1C4677E18(v8);
  *(v7 + 136) = v1;
  *(v7 + 144) = sub_1C4A277E4(&qword_1EDDEACE0, type metadata accessor for CarPlaySignal);
  *(v7 + 112) = v9;
  *(v7 + 176) = &type metadata for DevicePluggedInDataProvider;
  *(v7 + 184) = sub_1C47C09E4();
  *(v7 + 152) = 0;
  *(v7 + 216) = &type metadata for DeviceScreenLockDataProvider;
  *(v7 + 224) = sub_1C47C0A38();
  *(v7 + 192) = 0;
  result = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (result)
  {
    v11 = result;
    type metadata accessor for EventsFoundInAppsSignal();
    v12 = sub_1C44195E8();
    *(v12 + 16) = 0;
    *(v12 + 24) = v11;
    *(v7 + 256) = v1;
    *(v7 + 264) = sub_1C4A277E4(qword_1EDDE22C0, type metadata accessor for EventsFoundInAppsSignal);
    *(v7 + 232) = v12;
    *(v7 + 296) = &unk_1F43E10F8;
    *(v7 + 304) = sub_1C47C0A8C();
    v13 = type metadata accessor for SemanticLocationSignal();
    swift_allocObject();
    v14 = sub_1C4406D90();
    v15 = sub_1C4AFAB8C(v14);
    *(v7 + 336) = v13;
    *(v7 + 344) = sub_1C4A277E4(qword_1EDDE2878, type metadata accessor for SemanticLocationSignal);
    *(v7 + 312) = v15;
    type metadata accessor for UserFocusComputedModeSignal();
    sub_1C44195E8();
    v16 = sub_1C4406D90();
    v17 = sub_1C4B9269C(v16);
    *(v7 + 376) = v13;
    *(v7 + 384) = sub_1C4A277E4(qword_1EDDE0220, type metadata accessor for UserFocusComputedModeSignal);
    *(v7 + 352) = v17;
    *(v7 + 416) = &type metadata for DeviceWiFiConnectedDataProvider;
    *(v7 + 424) = sub_1C47C0AE0();
    *(v7 + 392) = 0;
    v18 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
    v19 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
    v20 = v18;
    v21 = [v19 init];
    v22 = type metadata accessor for PassKitSignal();
    v23 = swift_allocObject();
    v24 = sub_1C497AAA4(v20, v21, 0, v23);

    *(v7 + 456) = v22;
    *(v7 + 464) = sub_1C4A277E4(qword_1EDDEAAC0, type metadata accessor for PassKitSignal);
    *(v7 + 432) = v24;
    *(v7 + 496) = &type metadata for LOISessionDataProvider;
    *(v7 + 504) = sub_1C47C0B34();
    sub_1C44098F0(a1, v6);
    v25 = type metadata accessor for VirtualInteractionsSignal();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_1C4D31AA8(v6, 0);
    *(v7 + 536) = v25;
    *(v7 + 544) = sub_1C4A277E4(&qword_1EDDE1210, type metadata accessor for VirtualInteractionsSignal);
    *(v7 + 512) = v28;
    *(v7 + 576) = &type metadata for EnergyModeDataProvider;
    *(v7 + 584) = sub_1C47C0B88();
    *(v7 + 616) = &type metadata for AlarmDataProvider;
    *(v7 + 624) = sub_1C47C0BDC();
    *(v7 + 656) = &type metadata for DeviceBacklightDataProvider;
    *(v7 + 664) = sub_1C47C0C30();
    v29 = type metadata accessor for AmbientLightSignal();
    swift_allocObject();
    v30 = sub_1C4585984();
    *(v7 + 696) = v29;
    *(v7 + 704) = sub_1C4A277E4(qword_1EDDE5E68, type metadata accessor for AmbientLightSignal);
    *(v7 + 672) = v30;
    v31 = type metadata accessor for NowPlayingSignal();
    swift_allocObject();
    v32 = sub_1C4A4B19C();
    *(v7 + 736) = v31;
    *(v7 + 744) = sub_1C4A277E4(qword_1EDDE6C00, type metadata accessor for NowPlayingSignal);
    *(v7 + 712) = v32;
    v33 = type metadata accessor for InferredModeSignal();
    swift_allocObject();
    v34 = sub_1C4406D90();
    v35 = sub_1C493B648(v34, 0);
    *(v7 + 776) = v33;
    *(v7 + 784) = sub_1C4A277E4(&qword_1EDDE5BC0, type metadata accessor for InferredModeSignal);
    *(v7 + 752) = v35;
    v36 = type metadata accessor for MotionStateSignal();
    swift_allocObject();
    v37 = sub_1C4A450C4(0, 600.0);
    *(v7 + 816) = v36;
    *(v7 + 824) = sub_1C4A277E4(qword_1EDDE63A0, type metadata accessor for MotionStateSignal);
    *(v7 + 792) = v37;
    *(v7 + 856) = &unk_1F43FA130;
    *(v7 + 864) = sub_1C47C0CCC();
    *(v7 + 896) = &type metadata for AppIntentDataProvider;
    *(v7 + 904) = sub_1C4A2782C();
    *(v7 + 936) = &type metadata for MicrolocationDataProvider;
    *(v7 + 944) = sub_1C4A27880();
    *(v7 + 976) = &type metadata for HomeKitDataProvider;
    *(v7 + 984) = sub_1C4A278D4();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4A277E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4A2782C()
{
  result = qword_1EC0C1970;
  if (!qword_1EC0C1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1970);
  }

  return result;
}

unint64_t sub_1C4A27880()
{
  result = qword_1EC0C1978;
  if (!qword_1EC0C1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1978);
  }

  return result;
}

unint64_t sub_1C4A278D4()
{
  result = qword_1EC0C1980;
  if (!qword_1EC0C1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1980);
  }

  return result;
}

uint64_t sub_1C4A27928(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  if (a4)
  {
    v13 = sub_1C4402120();
    if (sub_1C45FBA6C(v13, v14, v15, a4, a5, a6))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v16 = sub_1C4EF9CD8();
      sub_1C440BAA8(v12, 1, 1, v16);
      v17 = sub_1C4402120();
      sub_1C4886564(v17, v18, v12);
      sub_1C44686E4(v12);
    }
  }

  return sub_1C4402120();
}

uint64_t sub_1C4A27A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  if (a6)
  {
    v19 = sub_1C45FBA6C(a3, a4, a5 & 1, a6, a7, a8);
    v20 = sub_1C4402120();
    v22 = sub_1C4499AD0(v20, v21, a9);
    if (v19 || v22)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v23 = sub_1C4EF9CD8();
      sub_1C440BAA8(v18, 1, 1, v23);
      v24 = sub_1C4402120();
      sub_1C4886564(v24, v25, v18);
      sub_1C44686E4(v18);
    }
  }

  return sub_1C4402120();
}

uint64_t sub_1C4A27B88(uint64_t a1)
{
  if ((sub_1C46D791C() & 1) == 0)
  {
    EnrollmentPreferences.enroll()();
    type metadata accessor for HashGenerator();
    swift_initStackObject();
    sub_1C4886F04();
    sub_1C4886B98();
  }

  v2 = *(a1 + 56);
  return sub_1C46B7098();
}

uint64_t sub_1C4A27BF8()
{
  v1[2] = v0;
  v2 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v1[3] = sub_1C43FBE7C();
  v5 = sub_1C4EF9CD8();
  v1[4] = v5;
  sub_1C43FCF7C(v5);
  v1[5] = v6;
  v8 = *(v7 + 64);
  v1[6] = sub_1C43FE604();
  v1[7] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4A27CDC()
{
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for Configuration() + 20));
  if (qword_1EDDDBEF8 != -1)
  {
    v29 = v2;
    swift_once();
    v2 = v29;
  }

  v3 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDDBF00, v2), xmmword_1EDDDBF00));
  if ((v3.i32[0] & v3.i32[1] & 1) != 0 && [objc_opt_self() isInternalDevice])
  {
    if (qword_1EC0B6908 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    sub_1C4EF9CC8();
    v7 = sub_1C43FBC98();
    v8 = sub_1C4A27B88(v7);
    v10 = v9;
    v0[8] = v9;
    v11 = *(v6 + 8);
    v11(v4, v5);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v12 = sub_1C4F00978();
    v0[9] = sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Beginning LongitudinalDataCollection", v15, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v16 = v0[6];
    v17 = v0[3];
    v18 = v0[4];
    v19 = v0[2];

    sub_1C4EF9CC8();
    sub_1C4A2832C(v17);
    v11(v16, v18);
    v25 = sub_1C4A271AC(v0[2]);
    v0[10] = v25;
    v26 = swift_task_alloc();
    v0[11] = v26;
    *v26 = v0;
    v26[1] = sub_1C4A28020;
    v28 = v0[2];
    v27 = v0[3];

    return sub_1C4A289E0(v25, v27, v8, v10, 10);
  }

  else
  {
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[3];

    sub_1C43FBDA0();

    return v23();
  }
}

uint64_t sub_1C4A28020()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[8];
  v9 = *v1;
  sub_1C43FBE64();
  *v10 = v9;
  v13[12] = v11;
  v13[13] = v12;
  v13[14] = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C4A28170()
{
  v1 = v0[9];
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_1C43F8000, v2, v3, "LongitudinalDataCollection: Collected %ld events in %ld PET messages", v6, 0x16u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v7 = v0[3];

  sub_1C4420C3C(v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[3];

  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4A28298()
{
  sub_1C4420C3C(v0[3], &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4A2832C@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v82 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v2 = sub_1C43FBCE0(v82);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v83 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v81 - v7;
  v99 = sub_1C4EF9EB8();
  sub_1C43FCE64();
  v96 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C4405ED8(v12);
  v94 = sub_1C4EF9ED8();
  sub_1C43FCE64();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C4EF9E88();
  v89 = v21;
  sub_1C43FCE64();
  v23 = v22;
  v91 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v97 = sub_1C4EF9F88();
  sub_1C43FCE64();
  v95 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v90 = v35 - v34;
  v36 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v37 = sub_1C43FBD18(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v92 = &v81 - v40;
  v93 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v101 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  v86 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  v85 = &v81 - v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  v100 = &v81 - v49;
  sub_1C4EF9BE8();
  sub_1C4EF9F58();
  v50 = type metadata accessor for LongitudinalDataCollectionTask();
  v51 = *(v1 + v50[8]);
  v87 = *(v1 + v50[9]);
  v88 = v51;
  v52 = *(v1 + v50[10]);
  (*(v23 + 104))(v29, *MEMORY[0x1E69698D0], v21);
  v53 = v94;
  (*(v14 + 104))(v20, *MEMORY[0x1E69699C8], v94);
  v54 = v96;
  v55 = v98;
  v56 = v99;
  (*(v96 + 104))(v98, *MEMORY[0x1E6969998], v99);
  v57 = v92;
  v58 = v90;
  sub_1C4EF9EF8();
  v59 = v55;
  v60 = v93;
  (*(v54 + 8))(v59, v56);
  (*(v14 + 8))(v20, v53);
  (*(v91 + 8))(v29, v89);
  (*(v95 + 8))(v58, v97);
  if (sub_1C44157D4(v57, 1, v60) == 1)
  {
    sub_1C4420C3C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4A2AFE0();
    swift_allocError();
    swift_willThrow();
    return (*(v101 + 8))(v100, v60);
  }

  else
  {
    v62 = v101;
    v63 = *(v101 + 32);
    v64 = v85;
    v65 = sub_1C43FFE3C();
    v63(v65);
    v66 = v86;
    sub_1C4EF9BE8();
    sub_1C44074F8();
    sub_1C4A2B034(v67, v68);
    v69 = sub_1C4F01088();
    v72 = *(v62 + 8);
    v71 = v62 + 8;
    v70 = v72;
    result = (v72)(v100, v60);
    if (v69)
    {
      v73 = v81;
      (v63)(v81, v66, v60);
      v74 = v63;
      v101 = v71;
      v75 = v82;
      (v63)(v73 + *(v82 + 48), v64, v60);
      v99 = v63;
      v76 = v83;
      sub_1C446C964(v73, v83, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v77 = *(v75 + 48);
      v78 = v84;
      (v74)(v84, v76, v60);
      v70(v76 + v77, v60);
      sub_1C4575F28(v73, v76);
      v79 = *(v75 + 48);
      v80 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      v99(v78 + *(v80 + 36), v76 + v79, v60);
      return (v70)(v76, v60);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C4A289E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[69] = v5;
  v6[68] = a5;
  v6[67] = a4;
  v6[66] = a3;
  v6[65] = a2;
  v6[64] = a1;
  v7 = sub_1C456902C(&qword_1EC0C1988, &qword_1C4F45438);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  v6[70] = sub_1C43FBE7C();
  v10 = type metadata accessor for LongitudinalEvent(0);
  sub_1C43FCF7C(v10);
  v6[71] = v11;
  v13 = *(v12 + 64);
  v6[72] = sub_1C43FE604();
  v6[73] = swift_task_alloc();
  v14 = sub_1C4EF9CD8();
  v6[74] = v14;
  sub_1C43FCF7C(v14);
  v6[75] = v15;
  v17 = *(v16 + 64);
  v6[76] = sub_1C43FE604();
  v6[77] = swift_task_alloc();
  v18 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v6[78] = v18;
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  v6[79] = sub_1C43FE604();
  v6[80] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1C4A28B68()
{
  v69 = v0;
  v2 = *(v0 + 512);
  v3 = *(v2 + 16);
  *(v0 + 648) = v3;
  if (!v3)
  {
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      v27 = *(v0 + 560);
      v28 = *(v0 + 552);
      sub_1C4A2AA4C(MEMORY[0x1E69E7CC0], *(v0 + 528), *(v0 + 536), v27);

      type metadata accessor for LongitudinalDataCollection(0);
      sub_1C43FBD94();
      sub_1C440BAA8(v29, v30, v31, v32);
      sub_1C4A2AB10(v27);
      sub_1C4420C3C(v27, &qword_1EC0C1988, &qword_1C4F45438);
    }

    else
    {
    }

    v55 = *(v0 + 640);
    v56 = *(v0 + 632);
    v57 = *(v0 + 616);
    v58 = *(v0 + 608);
    v59 = *(v0 + 584);
    v60 = *(v0 + 576);
    v61 = *(v0 + 560);

    v62 = *(v0 + 8);
    sub_1C440405C();

    __asm { BRAA            X3, X16 }
  }

  *(v0 + 656) = 0;
  sub_1C442E860(v2 + 32, v0 + 16);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 520);
  v7 = sub_1C4F00978();
  *(v0 + 664) = sub_1C442B738(v7, qword_1EDDFECB8);
  sub_1C442E860(v0 + 16, v0 + 56);
  sub_1C446C964(v6, v4, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C446C964(v6, v5, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  if (v10)
  {
    v66 = *(v0 + 624);
    v13 = *(v0 + 592);
    sub_1C43FEC60();
    v14 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68[0] = v67;
    *v14 = 136315650;
    sub_1C4409678((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    v15 = sub_1C4F02C58();
    v17 = v16;
    sub_1C440962C((v0 + 56));
    v18 = sub_1C441D828(v15, v17, v68);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_1C44074F8();
    sub_1C4A2B034(v19, v20);
    v21 = sub_1C4F02858();
    v23 = v22;
    sub_1C4420C3C(v11, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D828(v21, v23, v68);
    sub_1C4404C88();

    *(v14 + 14) = v11;
    *(v14 + 22) = 2080;
    v24 = v12 + *(v66 + 36);
    v25 = sub_1C4F02858();
    v1 = v26;
    sub_1C4420C3C(v12, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D828(v25, v1, v68);
    sub_1C4404C88();

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1C43F8000, v8, v9, "LongitudinalDataCollection: Fetching data from Data Provider - %s in between %s and %s)", v14, 0x20u);
    v11 = v67;
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v8 = &qword_1EC0B84B8;
    sub_1C4420C3C(v12, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v33 = sub_1C4402120();
    sub_1C4420C3C(v33, v34, &unk_1C4F0D4F0);
    sub_1C440962C((v0 + 56));
  }

  sub_1C4405B64();
  sub_1C43FD720();
  *(v0 + 160) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v0 + 168) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 136));
  v1(v11, v8, v9);
  v35 = *(v0 + 160);
  v36 = *(v0 + 168);
  v37 = sub_1C4409678((v0 + 136), v35);
  sub_1C43FCE64();
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = sub_1C43FBE7C();
  (*(v39 + 16))(v42, v37, v35);
  v43 = *(v36 + 8);
  sub_1C43FD720();
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 96));
  sub_1C4F019A8();

  sub_1C440962C((v0 + 136));
  *(v0 + 712) = MEMORY[0x1E69E7CC0];
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0;
  sub_1C44335C4();
  *(v0 + 736) = sub_1C43FD730();
  v44 = sub_1C4F01F48();
  *(v0 + 744) = v44;
  sub_1C43FCF7C(v44);
  *(v0 + 752) = v45;
  v47 = *(v46 + 64);
  *(v0 + 760) = sub_1C43FBE7C();
  v48 = sub_1C43FD730();
  *(v0 + 768) = v48;
  sub_1C43FCF7C(v48);
  *(v0 + 776) = v49;
  *(v0 + 784) = *(v50 + 64);
  *(v0 + 792) = sub_1C43FBE7C();
  v51 = *(MEMORY[0x1E69E85B0] + 4);
  v52 = swift_task_alloc();
  *(v0 + 800) = v52;
  *v52 = v0;
  sub_1C4412124(v52);
  sub_1C440405C();

  return MEMORY[0x1EEE6D8D0](v53);
}

uint64_t sub_1C4A292B0()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 800);
  v6 = *v1;
  sub_1C43FBE64();
  *v7 = v6;
  v2[101] = v0;

  if (v0)
  {
    v8 = v2[89];
  }

  else
  {
    v9 = v2[99];
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4A293C8()
{
  v167 = v0;
  v3 = *(v0 + 760);
  v4 = *(v0 + 736);
  if (sub_1C44157D4(v3, 1, v4) != 1)
  {
    goto LABEL_9;
  }

  (*(*(v0 + 752) + 8))(v3, *(v0 + 744));

  while (1)
  {
    v5 = *(v0 + 648);
    v6 = *(v0 + 656) + 1;
    sub_1C440962C((v0 + 96));
    sub_1C440962C((v0 + 16));
    if (v6 != v5)
    {
      break;
    }

    if (!*(*(v0 + 712) + 16))
    {
      v87 = *(v0 + 672);
      v88 = *(v0 + 680);
      v89 = *(v0 + 712);

LABEL_26:
      v90 = *(v0 + 640);
      v91 = *(v0 + 632);
      sub_1C442CF68();

      v92 = *(v0 + 8);
      sub_1C4402120();
      sub_1C4409A94();

      __asm { BRAA            X3, X16 }
    }

    v1 = *(v0 + 688);
    v7 = *(v0 + 696);
    v8 = *(v0 + 704);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    sub_1C4A2AA4C(*(v0 + 712), *(v0 + 528), *(v0 + 536), v9);

    type metadata accessor for LongitudinalDataCollection(0);
    sub_1C43FBD94();
    sub_1C440BAA8(v11, v12, v13, v14);
    sub_1C4A2AB10(v9);
    sub_1C4420C3C(v9, &qword_1EC0C1988, &qword_1C4F45438);
    v3 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      __break(1u);
      goto LABEL_49;
    }

    v4 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_9:
    *(v0 + 440) = v4;
    v15 = sub_1C4422F90((v0 + 416));
    (*(*(v4 - 8) + 32))(v15, v3, v4);

    sub_1C44482AC((v0 + 416), (v0 + 448));
    sub_1C456902C(&qword_1EC0BD0A8, &qword_1C4F2C300);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 616);
      v17 = *(v0 + 608);
      sub_1C441D670((v0 + 216), v0 + 176);
      sub_1C4425E08();
      v18 = v1[2];
      v19 = sub_1C43FBEF8();
      v20(v19);
      sub_1C4425E08();
      v21 = v1[3];
      v22 = sub_1C43FBEF8();
      v23(v22);
      sub_1C4425E08();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      sub_1C43FBCE0(AssociatedTypeWitness);
      v26 = *(v25 + 64);
      sub_1C43FBE7C();
      v27 = v1[4];
      v28 = sub_1C43FBEF8();
      v29(v28);
      sub_1C456902C(&qword_1EC0C1990, &qword_1C4F45440);
      if (!swift_dynamicCast())
      {
        v107 = *(v0 + 664);
        *(v0 + 336) = 0u;
        *(v0 + 352) = 0u;
        *(v0 + 368) = 0;
        sub_1C4420C3C(v0 + 336, &qword_1EC0C1998, &qword_1C4F45448);

        sub_1C442E860(v0 + 176, v0 + 376);
        v108 = sub_1C4F00968();
        v109 = sub_1C4F01CD8();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          sub_1C43FEC60();
          v111 = swift_slowAlloc();
          v166[0] = v111;
          *v110 = 136315138;
          v112 = *(v0 + 400);
          v113 = *(v0 + 408);
          sub_1C4409678((v0 + 376), v112);
          v114 = *(v113 + 32);
          *(v0 + 504) = swift_getAssociatedTypeWitness();
          sub_1C4422F90((v0 + 480));
          v114(v112, v113);
          sub_1C4409678((v0 + 480), *(v0 + 504));
          swift_getDynamicType();
          sub_1C440962C((v0 + 480));
          v115 = sub_1C4F02C58();
          v117 = v116;
          sub_1C440962C((v0 + 376));
          v118 = sub_1C441D828(v115, v117, v166);

          *(v110 + 4) = v118;
          _os_log_impl(&dword_1C43F8000, v108, v109, "LongitudinalDataCollection: Could not convert %s to SupportsLongitudinalDataCollection", v110, 0xCu);
          sub_1C440962C(v111);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {

          sub_1C440962C((v0 + 376));
        }

        v2 = *(v0 + 712);
        v104 = *(v0 + 704);
        goto LABEL_39;
      }

      v30 = *(v0 + 808);
      v31 = *(v0 + 616);
      v32 = *(v0 + 608);
      v33 = *(v0 + 584);
      v34 = *(v0 + 552);
      sub_1C441D670((v0 + 336), v0 + 296);

      sub_1C4A2A49C((v0 + 296), v32, v33);
      v35 = *(v0 + 712);
      if (v30)
      {
        v36 = *(v0 + 616);
        v37 = *(v0 + 608);
        v38 = *(v0 + 600);
        v39 = *(v0 + 592);
        sub_1C440962C((v0 + 296));
        v40 = *(v38 + 8);
        v40(v37, v39);
        v40(v36, v39);

        sub_1C440962C((v0 + 176));
        sub_1C440962C((v0 + 96));
        goto LABEL_22;
      }

      sub_1C4A2AF30(*(v0 + 584), *(v0 + 576));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v0 + 712);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_51;
      }

      while (1)
      {
        v121 = *(v2 + 16);
        v120 = *(v2 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_1C458E91C(v120 > 1, v121 + 1, 1, v2);
          v2 = v154;
        }

        v122 = *(v0 + 704);
        v123 = *(v0 + 576);
        v124 = *(v0 + 568);
        sub_1C4A2AF88(*(v0 + 584), type metadata accessor for LongitudinalEvent);
        sub_1C440962C((v0 + 296));
        *(v2 + 16) = v121 + 1;
        v125 = sub_1C4A2AED8(v123, v2 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v121);
        v126 = __OFADD__(v122, 1);
        v104 = v122 + 1;
        if (v126)
        {
          break;
        }

LABEL_39:
        v105 = *(v0 + 696);
        if (v104 != *(v0 + 544))
        {
          v165 = *(v0 + 688);
          v106 = *(v0 + 680);
          v82 = *(v0 + 672);
          goto LABEL_44;
        }

        v127 = *(v0 + 560);
        v128 = *(v0 + 552);
        v129 = *(v0 + 536);
        v162 = v104;
        v130 = *(v0 + 528);
        *v127 = MEMORY[0x1E69E7CC0];
        v131 = type metadata accessor for LongitudinalDataCollection(0);
        v132 = v127 + v131[5];
        sub_1C4F00318();
        v133 = v105;
        v134 = (v127 + v131[6]);
        *v134 = 0;
        v134[1] = 0;
        v135 = v127 + v131[7];
        *v135 = 0;
        v135[8] = 1;
        *v135 = *(v128 + *(type metadata accessor for LongitudinalDataCollectionTask() + 28));
        v135[8] = 0;
        *v134 = v130;
        v134[1] = v129;
        *v127 = v2;
        sub_1C43FBD94();
        sub_1C440BAA8(v136, v137, v138, v131);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4A2AB10(v127);
        sub_1C4420C3C(v127, &qword_1EC0C1988, &qword_1C4F45438);
        v106 = v133 + v162;
        if (__OFADD__(v133, v162))
        {
LABEL_49:
          __break(1u);
        }

        else
        {
          v139 = *(v0 + 688);
          v82 = v139 + 1;
          if (!__OFADD__(v139, 1))
          {
            v104 = 0;
            v2 = MEMORY[0x1E69E7CC0];
            v165 = v139 + 1;
            v105 = v106;
LABEL_44:
            v140 = *(v0 + 616);
            v141 = *(*(v0 + 600) + 8);
            (v141)(*(v0 + 608), *(v0 + 592));
            v142 = sub_1C4402120();
            v141(v142);
            sub_1C440962C((v0 + 176));
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_51:
        sub_1C458E91C(0, *(v2 + 16) + 1, 1, v2);
        v2 = v153;
      }

      __break(1u);
      return MEMORY[0x1EEE6D8D0](v125);
    }

    v71 = *(v0 + 664);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    sub_1C4420C3C(v0 + 216, &qword_1EC0BD0B0, &qword_1C4F2C308);
    sub_1C442E860(v0 + 16, v0 + 256);
    v72 = sub_1C4F00968();
    v73 = sub_1C4F01CD8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      sub_1C43FEC60();
      v75 = swift_slowAlloc();
      v166[0] = v75;
      *v74 = 136315138;
      sub_1C4409678((v0 + 256), *(v0 + 280));
      swift_getDynamicType();
      v76 = sub_1C4F02C58();
      v78 = v77;
      sub_1C440962C((v0 + 256));
      v79 = sub_1C441D828(v76, v78, v166);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_1C43F8000, v72, v73, "LongitudinalDataCollection: Could not convert %s data to SessionData", v74, 0xCu);
      sub_1C440962C(v75);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C440962C((v0 + 256));
    }
  }

  v2 = *(v0 + 712);
  v161 = *(v0 + 704);
  v163 = *(v0 + 808);
  v159 = *(v0 + 680);
  v160 = *(v0 + 696);
  v164 = *(v0 + 672);
  v165 = *(v0 + 688);
  v41 = *(v0 + 656);
  *(v0 + 656) = v41 + 1;
  sub_1C442E860(*(v0 + 512) + 40 * v41 + 72, v0 + 16);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v42 = *(v0 + 640);
  v43 = *(v0 + 632);
  v44 = *(v0 + 520);
  v45 = sub_1C4F00978();
  *(v0 + 664) = sub_1C442B738(v45, qword_1EDDFECB8);
  sub_1C442E860(v0 + 16, v0 + 56);
  v46 = &qword_1EC0B84B8;
  sub_1C446C964(v44, v42, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C446C964(v44, v43, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v47 = sub_1C4F00968();
  v48 = sub_1C4F01CF8();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 640);
  v51 = *(v0 + 632);
  if (v49)
  {
    v156 = *(v0 + 624);
    v46 = *(v0 + 592);
    sub_1C43FEC60();
    v52 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v166[0] = v157;
    *v52 = 136315650;
    sub_1C4409678((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    v53 = sub_1C4F02C58();
    v158 = v2;
    v55 = v54;
    sub_1C440962C((v0 + 56));
    v56 = sub_1C441D828(v53, v55, v166);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    sub_1C44074F8();
    sub_1C4A2B034(v57, v58);
    v59 = sub_1C4F02858();
    v61 = v60;
    sub_1C4420C3C(v50, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v62 = v59;
    v2 = v158;
    v63 = sub_1C441D828(v62, v61, v166);

    *(v52 + 14) = v63;
    *(v52 + 22) = 2080;
    v64 = v51 + *(v156 + 36);
    sub_1C4F02858();
    v66 = v65;
    sub_1C4420C3C(v51, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v67 = sub_1C4402120();
    v70 = sub_1C441D828(v67, v68, v69);

    *(v52 + 24) = v70;
    _os_log_impl(&dword_1C43F8000, v47, v48, "LongitudinalDataCollection: Fetching data from Data Provider - %s in between %s and %s)", v52, 0x20u);
    v50 = v157;
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v66 = &qword_1EC0B84B8;
    sub_1C4420C3C(v51, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v80 = sub_1C4402120();
    sub_1C4420C3C(v80, v81, &unk_1C4F0D4F0);
    sub_1C440962C((v0 + 56));
  }

  sub_1C4405B64();
  sub_1C43FD720();
  *(v0 + 160) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v0 + 168) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 136));
  (v46)(v50, v66, v47);
  v82 = v164;
  if (v163)
  {

    sub_1C47C41F8((v0 + 136));
LABEL_22:
    v83 = *(v0 + 640);
    v84 = *(v0 + 632);
    sub_1C442CF68();
    sub_1C440962C((v0 + 16));

    sub_1C43FBDA0();
    sub_1C4409A94();

    __asm { BRAA            X1, X16 }
  }

  v95 = *(v0 + 160);
  v96 = *(v0 + 168);
  v97 = sub_1C4409678((v0 + 136), v95);
  sub_1C43FCE64();
  v99 = v98;
  v101 = *(v100 + 64);
  v102 = sub_1C43FBE7C();
  (*(v99 + 16))(v102, v97, v95);
  v103 = *(v96 + 8);
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 96));
  sub_1C43FBEF8();
  sub_1C4F019A8();

  sub_1C440962C((v0 + 136));
  v105 = v160;
  v104 = v161;
  v106 = v159;
LABEL_45:
  *(v0 + 712) = v2;
  *(v0 + 704) = v104;
  *(v0 + 696) = v105;
  *(v0 + 688) = v165;
  *(v0 + 680) = v106;
  *(v0 + 672) = v82;
  sub_1C44335C4();
  *(v0 + 736) = sub_1C43FD730();
  v143 = sub_1C4F01F48();
  *(v0 + 744) = v143;
  sub_1C43FCF7C(v143);
  *(v0 + 752) = v144;
  v146 = *(v145 + 64);
  *(v0 + 760) = sub_1C43FBE7C();
  v147 = sub_1C43FD730();
  *(v0 + 768) = v147;
  sub_1C43FCF7C(v147);
  *(v0 + 776) = v148;
  *(v0 + 784) = *(v149 + 64);
  *(v0 + 792) = sub_1C43FBE7C();
  v150 = *(MEMORY[0x1E69E85B0] + 4);
  v151 = swift_task_alloc();
  *(v0 + 800) = v151;
  *v151 = v0;
  sub_1C4412124();
  sub_1C4409A94();

  return MEMORY[0x1EEE6D8D0](v125);
}

uint64_t sub_1C4A2A2F4()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[91];
  v6 = v0[90];
  v7 = sub_1C43FBE7C();
  v8 = *(v3 + 32);
  v8(v7, v1, v4);
  swift_getAssociatedConformanceWitness();
  if (sub_1C4F028C8())
  {
    (*(v0[97] + 8))(v7, v0[96]);
  }

  else
  {
    v9 = v0[96];
    swift_allocError();
    v8(v10, v7, v9);
  }

  v11 = v0[99];
  v12 = v0[95];

  sub_1C440962C(v0 + 12);
  v13 = v0[80];
  v14 = v0[79];
  sub_1C442CF68();
  sub_1C440962C(v0 + 2);

  sub_1C43FBDA0();

  return v15();
}

void sub_1C4A2A49C(void *a1@<X0>, NSObject *a2@<X2>, uint64_t a3@<X8>)
{
  v74 = a2;
  v5 = type metadata accessor for FeatureValue(0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v10 = sub_1C4405ED8(v9);
  v11 = type metadata accessor for LongitudinalEventData(v10);
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v65 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v20 = *(v19 + 8);
  v21 = sub_1C4404C88();
  v71 = v22(v21, v19);
  sub_1C4F00318();
  v23 = type metadata accessor for LongitudinalEvent(0);
  v24 = a3 + v23[5];
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = a3 + v23[6];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v23[7];
  v67 = a3;
  sub_1C440BAA8(a3 + v26, 1, 1, v11);
  sub_1C4F00318();
  v66 = v11;
  v27 = *(v11 + 20);
  if (qword_1EC0B6E08 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    *&v18[v27] = qword_1EC0C1038;

    sub_1C4EF9AD8();
    sub_1C4406DB4();
    if (!(v30 ^ v31 | v29))
    {
      break;
    }

    if (v28 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    if (v28 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

    *v24 = v28;
    *(v24 + 8) = 0;
    v27 = v74;
    sub_1C4EF9AD8();
    sub_1C4406DB4();
    if (!(v30 ^ v31 | v29))
    {
      goto LABEL_39;
    }

    if (*&v32 <= -9.22337204e18)
    {
      goto LABEL_40;
    }

    if (*&v32 >= 9.22337204e18)
    {
      goto LABEL_41;
    }

    v64 = v26;
    v69 = v18;
    v33 = 0;
    *v25 = *&v32;
    *(v25 + 8) = 0;
    v18 = v71;
    v34 = v72;
    v26 = v71 + 64;
    v35 = *(v71 + 64);
    v36 = 1 << *(v71 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v35;
    v39 = (v36 + 63) >> 6;
    *&v32 = 136315138;
    v68 = v32;
    v73 = v39;
    if ((v37 & v35) != 0)
    {
      do
      {
        v24 = v33;
LABEL_17:
        v40 = __clz(__rbit64(v38)) | (v24 << 6);
        v41 = (*(v18 + 6) + 16 * v40);
        v42 = *v41;
        v43 = v41[1];
        v44 = *(*(v18 + 7) + 8 * v40);
        v45 = qword_1EC0B6F78;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v74 = v44;
        if (v45 != -1)
        {
          swift_once();
        }

        v38 &= v38 - 1;
        v46 = qword_1EC152990;
        if (*(qword_1EC152990 + 16) && (v47 = sub_1C445FAA8(v42, v43), (v48 & 1) != 0))
        {
          v25 = v47;

          v49 = *(*(v46 + 56) + 8 * v25);

          v27 = v74;
          if (([v74 isUndefined]& 1) == 0)
          {
            v50 = type metadata accessor for LongitudinalDataCollectionTask();
            v51 = v70;
            sub_1C46D43EC(*(v63 + *(v50 + 20)), *(v63 + *(v50 + 20) + 8), v34);
            v70 = v51;
            if (v51)
            {
              sub_1C4A2AF88(v69, type metadata accessor for LongitudinalEventData);

              sub_1C4A2AF88(v67, type metadata accessor for LongitudinalEvent);
              return;
            }

            swift_setAtWritableKeyPath();
          }
        }

        else
        {
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v52 = sub_1C4F00978();
          sub_1C442B738(v52, qword_1EDDFECB8);
          sub_1C4404C88();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v27 = sub_1C4F00968();
          v25 = sub_1C4F01CD8();

          if (os_log_type_enabled(v27, v25))
          {
            v53 = swift_slowAlloc();
            sub_1C43FEC60();
            v54 = swift_slowAlloc();
            v75 = v54;
            *v53 = v68;
            v55 = sub_1C441D828(v42, v43, &v75);

            *(v53 + 4) = v55;
            _os_log_impl(&dword_1C43F8000, v27, v25, "LongitudinalDataCollection: Longitudinal Data Collection Feature does not have keypath defined %s", v53, 0xCu);
            sub_1C440962C(v54);
            v34 = v72;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v18 = v71;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }
        }

        v33 = v24;
        v39 = v73;
      }

      while (v38);
    }

    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v39)
      {

        v56 = v65;
        sub_1C4A2AED8(v69, v65);
        v57 = v67;
        v58 = v64;
        sub_1C4420C3C(v67 + v64, &qword_1EC0BD660, &unk_1C4F45450);
        sub_1C4A2AED8(v56, v57 + v58);
        sub_1C43FBD94();
        sub_1C440BAA8(v59, v60, v61, v66);
        return;
      }

      v38 = *(v26 + 8 * v24);
      ++v33;
      if (v38)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}
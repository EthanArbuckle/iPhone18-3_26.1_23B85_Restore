uint64_t sub_1C48B12B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&unk_1EC0BF680, type metadata accessor for HUTenPointBehaviors);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48B1354()
{
  sub_1C49231A4(&qword_1EC0BF4D8, type metadata accessor for HUTenPointBehaviors);

  return sub_1C4F00428();
}

uint64_t sub_1C48B141C()
{
  sub_1C49231A4(&qword_1EC0BF4D8, type metadata accessor for HUTenPointBehaviors);

  return sub_1C4F00438();
}

uint64_t sub_1C48B14DC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152278);
  sub_1C442B738(v0, qword_1EC152278);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C4F37DE0;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "timeAndDate";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "motionState";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "semanticLocation";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "poiCategory";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "userFocusComputedMode";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "inferredMode";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "deviceWireless";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "microLocation";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "appLaunch";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "ambientLight";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "calendarEvents";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "activityInterval";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "appCategoryDistribution";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "motionStateDistribution";
  *(v32 + 1) = 23;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "virtualInteraction";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "deviceDisplay";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "devicePower";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "locationMedata";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "ambientLightDistribution";
  *(v42 + 1) = 24;
  v42[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C48B1ADC()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeAndDate;
  v2 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionState;
  v4 = type metadata accessor for HUTenPointContext.MotionState(0);
  sub_1C440BAA8(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticLocation;
  v6 = type metadata accessor for HUTenPointContext.SemanticLocation(0);
  sub_1C440BAA8(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory;
  v8 = type metadata accessor for HUTenPointContext.POICategory(0);
  sub_1C440BAA8(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode;
  v10 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(0);
  sub_1C440BAA8(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode;
  v12 = type metadata accessor for HUTenPointContext.InferredMode(0);
  sub_1C440BAA8(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless;
  v14 = type metadata accessor for HUTenPointContext.DeviceWireless(0);
  sub_1C440BAA8(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation;
  v16 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  sub_1C440BAA8(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch;
  v18 = type metadata accessor for HUTenPointContext.AppLaunch(0);
  sub_1C440BAA8(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight;
  v20 = type metadata accessor for HUTenPointContext.AmbientLight(0);
  sub_1C440BAA8(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents;
  v22 = type metadata accessor for HUTenPointContext.CalendarEvents(0);
  sub_1C440BAA8(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval;
  v24 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  sub_1C440BAA8(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution;
  v26 = type metadata accessor for HUTenPointContext.AppCategoryDistribution(0);
  sub_1C440BAA8(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution;
  v28 = type metadata accessor for HUTenPointContext.MotionStateDistribution(0);
  sub_1C440BAA8(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction;
  v30 = type metadata accessor for HUTenPointContext.VirtualInteraction(0);
  sub_1C440BAA8(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay;
  v32 = type metadata accessor for HUTenPointContext.DeviceDisplay(0);
  sub_1C440BAA8(v0 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower;
  v34 = type metadata accessor for HUTenPointContext.DevicePower(0);
  sub_1C440BAA8(v0 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata;
  v36 = type metadata accessor for HUTenPointContext.LocationMetadata(0);
  sub_1C440BAA8(v0 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution;
  v38 = type metadata accessor for HUTenPointContext.AmbientLightDistribution(0);
  sub_1C440BAA8(v0 + v37, 1, 1, v38);
  return v0;
}

uint64_t sub_1C48B1DA8(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BF550, &qword_1C4F3A3B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v185 = &v153 - v5;
  v6 = sub_1C456902C(&unk_1EC0BF560, &qword_1C4F3A3C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v184 = &v153 - v8;
  v9 = sub_1C456902C(&unk_1EC0BF570, &qword_1C4F3A3D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v183 = &v153 - v11;
  v12 = sub_1C456902C(&unk_1EC0BF580, &qword_1C4F3A3E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v182 = &v153 - v14;
  v15 = sub_1C456902C(&unk_1EC0BF590, &qword_1C4F3A3F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v181 = &v153 - v17;
  v18 = sub_1C456902C(&unk_1EC0BF5A0, &qword_1C4F3A408);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v180 = &v153 - v20;
  v21 = sub_1C456902C(&unk_1EC0BF5B0, &qword_1C4F3A418);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v179 = &v153 - v23;
  v24 = sub_1C456902C(&unk_1EC0BF5C0, &qword_1C4F3A428);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v178 = &v153 - v26;
  v27 = sub_1C456902C(&qword_1EC0BF5D0, &qword_1C4F3A438);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v177 = &v153 - v29;
  v30 = sub_1C456902C(&qword_1EC0BF5E0, &qword_1C4F3A448);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v176 = &v153 - v32;
  v33 = sub_1C456902C(&qword_1EC0BF5F0, &qword_1C4F3A458);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v175 = &v153 - v35;
  v36 = sub_1C456902C(&unk_1EC0BF600, &qword_1C4F3A468);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v174 = &v153 - v38;
  v39 = sub_1C456902C(&qword_1EC0BF610, &qword_1C4F3A478);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v170 = &v153 - v41;
  v42 = sub_1C456902C(&unk_1EC0BF620, &qword_1C4F3A488);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v167 = &v153 - v44;
  v45 = sub_1C456902C(&qword_1EC0BF630, &qword_1C4F3A498);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v163 = &v153 - v47;
  v48 = sub_1C456902C(&unk_1EC0BF640, &qword_1C4F3A4A8);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v159 = &v153 - v50;
  v51 = sub_1C456902C(&unk_1EC0BF650, &qword_1C4F3A4B8);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v156 = &v153 - v53;
  v54 = sub_1C456902C(&qword_1EC0BF660, &qword_1C4F3A4C8);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v153 - v56;
  v58 = sub_1C456902C(&qword_1EC0BF670, qword_1C4F3A4D8);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v61 = &v153 - v60;
  v62 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeAndDate;
  v63 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  sub_1C440BAA8(v1 + v62, 1, 1, v63);
  v64 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionState;
  v65 = type metadata accessor for HUTenPointContext.MotionState(0);
  sub_1C440BAA8(v1 + v64, 1, 1, v65);
  v66 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticLocation;
  v67 = type metadata accessor for HUTenPointContext.SemanticLocation(0);
  sub_1C440BAA8(v1 + v66, 1, 1, v67);
  v68 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory;
  v153 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory;
  v69 = type metadata accessor for HUTenPointContext.POICategory(0);
  sub_1C440BAA8(v1 + v68, 1, 1, v69);
  v70 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode;
  v154 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode;
  v71 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(0);
  sub_1C440BAA8(v1 + v70, 1, 1, v71);
  v72 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode;
  v155 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode;
  v73 = type metadata accessor for HUTenPointContext.InferredMode(0);
  sub_1C440BAA8(v1 + v72, 1, 1, v73);
  v74 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless;
  v157 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless;
  v75 = type metadata accessor for HUTenPointContext.DeviceWireless(0);
  sub_1C440BAA8(v1 + v74, 1, 1, v75);
  v76 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation;
  v158 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation;
  v77 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  sub_1C440BAA8(v1 + v76, 1, 1, v77);
  v78 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch;
  v160 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch;
  v79 = type metadata accessor for HUTenPointContext.AppLaunch(0);
  sub_1C440BAA8(v1 + v78, 1, 1, v79);
  v80 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight;
  v161 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight;
  v81 = type metadata accessor for HUTenPointContext.AmbientLight(0);
  sub_1C440BAA8(v1 + v80, 1, 1, v81);
  v82 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents;
  v162 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents;
  v83 = type metadata accessor for HUTenPointContext.CalendarEvents(0);
  sub_1C440BAA8(v1 + v82, 1, 1, v83);
  v84 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval;
  v164 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval;
  v85 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  sub_1C440BAA8(v1 + v84, 1, 1, v85);
  v86 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution;
  v165 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution;
  v87 = type metadata accessor for HUTenPointContext.AppCategoryDistribution(0);
  sub_1C440BAA8(v1 + v86, 1, 1, v87);
  v88 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution;
  v166 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution;
  v89 = type metadata accessor for HUTenPointContext.MotionStateDistribution(0);
  sub_1C440BAA8(v1 + v88, 1, 1, v89);
  v90 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction;
  v168 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction;
  v91 = type metadata accessor for HUTenPointContext.VirtualInteraction(0);
  sub_1C440BAA8(v1 + v90, 1, 1, v91);
  v92 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay;
  v169 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay;
  v93 = type metadata accessor for HUTenPointContext.DeviceDisplay(0);
  sub_1C440BAA8(v1 + v92, 1, 1, v93);
  v94 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower;
  v171 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower;
  v95 = type metadata accessor for HUTenPointContext.DevicePower(0);
  sub_1C440BAA8(v1 + v94, 1, 1, v95);
  v96 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata;
  v172 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata;
  v97 = type metadata accessor for HUTenPointContext.LocationMetadata(0);
  sub_1C440BAA8(v1 + v96, 1, 1, v97);
  v98 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution;
  v173 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution;
  v99 = type metadata accessor for HUTenPointContext.AmbientLightDistribution(0);
  sub_1C440BAA8(v1 + v98, 1, 1, v99);
  v100 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeAndDate;
  swift_beginAccess();
  sub_1C4460108(a1 + v100, v61, &qword_1EC0BF670, qword_1C4F3A4D8);
  swift_beginAccess();
  sub_1C44408D4(v61, v1 + v62, &qword_1EC0BF670, qword_1C4F3A4D8);
  swift_endAccess();
  v101 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v101, v57, &qword_1EC0BF660, &qword_1C4F3A4C8);
  swift_beginAccess();
  sub_1C44408D4(v57, v1 + v64, &qword_1EC0BF660, &qword_1C4F3A4C8);
  swift_endAccess();
  v102 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticLocation;
  swift_beginAccess();
  v103 = v156;
  sub_1C4460108(a1 + v102, v156, &unk_1EC0BF650, &qword_1C4F3A4B8);
  swift_beginAccess();
  sub_1C44408D4(v103, v1 + v66, &unk_1EC0BF650, &qword_1C4F3A4B8);
  swift_endAccess();
  v104 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory;
  swift_beginAccess();
  v105 = v159;
  sub_1C4460108(a1 + v104, v159, &unk_1EC0BF640, &qword_1C4F3A4A8);
  v106 = v153;
  swift_beginAccess();
  sub_1C44408D4(v105, v1 + v106, &unk_1EC0BF640, &qword_1C4F3A4A8);
  swift_endAccess();
  v107 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode;
  swift_beginAccess();
  v108 = v163;
  sub_1C4460108(a1 + v107, v163, &qword_1EC0BF630, &qword_1C4F3A498);
  v109 = v154;
  swift_beginAccess();
  sub_1C44408D4(v108, v1 + v109, &qword_1EC0BF630, &qword_1C4F3A498);
  swift_endAccess();
  v110 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode;
  swift_beginAccess();
  v111 = v167;
  sub_1C4460108(a1 + v110, v167, &unk_1EC0BF620, &qword_1C4F3A488);
  v112 = v155;
  swift_beginAccess();
  sub_1C44408D4(v111, v1 + v112, &unk_1EC0BF620, &qword_1C4F3A488);
  swift_endAccess();
  v113 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless;
  swift_beginAccess();
  v114 = v170;
  sub_1C4460108(a1 + v113, v170, &qword_1EC0BF610, &qword_1C4F3A478);
  v115 = v157;
  swift_beginAccess();
  sub_1C44408D4(v114, v1 + v115, &qword_1EC0BF610, &qword_1C4F3A478);
  swift_endAccess();
  v116 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation;
  swift_beginAccess();
  v117 = v174;
  sub_1C4460108(a1 + v116, v174, &unk_1EC0BF600, &qword_1C4F3A468);
  v118 = v158;
  swift_beginAccess();
  sub_1C44408D4(v117, v1 + v118, &unk_1EC0BF600, &qword_1C4F3A468);
  swift_endAccess();
  v119 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch;
  swift_beginAccess();
  v120 = v175;
  sub_1C4460108(a1 + v119, v175, &qword_1EC0BF5F0, &qword_1C4F3A458);
  v121 = v160;
  swift_beginAccess();
  sub_1C44408D4(v120, v1 + v121, &qword_1EC0BF5F0, &qword_1C4F3A458);
  swift_endAccess();
  v122 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight;
  swift_beginAccess();
  v123 = v176;
  sub_1C4460108(a1 + v122, v176, &qword_1EC0BF5E0, &qword_1C4F3A448);
  v124 = v161;
  swift_beginAccess();
  sub_1C44408D4(v123, v1 + v124, &qword_1EC0BF5E0, &qword_1C4F3A448);
  swift_endAccess();
  v125 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents;
  swift_beginAccess();
  v126 = v177;
  sub_1C4460108(a1 + v125, v177, &qword_1EC0BF5D0, &qword_1C4F3A438);
  v127 = v162;
  swift_beginAccess();
  sub_1C44408D4(v126, v1 + v127, &qword_1EC0BF5D0, &qword_1C4F3A438);
  swift_endAccess();
  v128 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval;
  swift_beginAccess();
  v129 = v178;
  sub_1C4460108(a1 + v128, v178, &unk_1EC0BF5C0, &qword_1C4F3A428);
  v130 = v164;
  swift_beginAccess();
  sub_1C44408D4(v129, v1 + v130, &unk_1EC0BF5C0, &qword_1C4F3A428);
  swift_endAccess();
  v131 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution;
  swift_beginAccess();
  v132 = v179;
  sub_1C4460108(a1 + v131, v179, &unk_1EC0BF5B0, &qword_1C4F3A418);
  v133 = v165;
  swift_beginAccess();
  sub_1C44408D4(v132, v1 + v133, &unk_1EC0BF5B0, &qword_1C4F3A418);
  swift_endAccess();
  v134 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution;
  swift_beginAccess();
  v135 = v180;
  sub_1C4460108(a1 + v134, v180, &unk_1EC0BF5A0, &qword_1C4F3A408);
  v136 = v166;
  swift_beginAccess();
  sub_1C44408D4(v135, v1 + v136, &unk_1EC0BF5A0, &qword_1C4F3A408);
  swift_endAccess();
  v137 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction;
  swift_beginAccess();
  v138 = v181;
  sub_1C4460108(a1 + v137, v181, &unk_1EC0BF590, &qword_1C4F3A3F8);
  v139 = v168;
  swift_beginAccess();
  sub_1C44408D4(v138, v1 + v139, &unk_1EC0BF590, &qword_1C4F3A3F8);
  swift_endAccess();
  v140 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay;
  swift_beginAccess();
  v141 = v182;
  sub_1C4460108(a1 + v140, v182, &unk_1EC0BF580, &qword_1C4F3A3E8);
  v142 = v169;
  swift_beginAccess();
  sub_1C44408D4(v141, v1 + v142, &unk_1EC0BF580, &qword_1C4F3A3E8);
  swift_endAccess();
  v143 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower;
  swift_beginAccess();
  v144 = v183;
  sub_1C4460108(a1 + v143, v183, &unk_1EC0BF570, &qword_1C4F3A3D8);
  v145 = v171;
  swift_beginAccess();
  sub_1C44408D4(v144, v1 + v145, &unk_1EC0BF570, &qword_1C4F3A3D8);
  swift_endAccess();
  v146 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata;
  swift_beginAccess();
  v147 = v184;
  sub_1C4460108(a1 + v146, v184, &unk_1EC0BF560, &qword_1C4F3A3C8);
  v148 = v172;
  swift_beginAccess();
  sub_1C44408D4(v147, v1 + v148, &unk_1EC0BF560, &qword_1C4F3A3C8);
  swift_endAccess();
  v149 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution;
  swift_beginAccess();
  v150 = v185;
  sub_1C4460108(a1 + v149, v185, &qword_1EC0BF550, &qword_1C4F3A3B8);

  v151 = v173;
  swift_beginAccess();
  sub_1C44408D4(v150, v1 + v151, &qword_1EC0BF550, &qword_1C4F3A3B8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48B2FA8()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeAndDate, &qword_1EC0BF670, qword_1C4F3A4D8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionState, &qword_1EC0BF660, &qword_1C4F3A4C8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticLocation, &unk_1EC0BF650, &qword_1C4F3A4B8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory, &unk_1EC0BF640, &qword_1C4F3A4A8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode, &qword_1EC0BF630, &qword_1C4F3A498);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode, &unk_1EC0BF620, &qword_1C4F3A488);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless, &qword_1EC0BF610, &qword_1C4F3A478);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation, &unk_1EC0BF600, &qword_1C4F3A468);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch, &qword_1EC0BF5F0, &qword_1C4F3A458);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight, &qword_1EC0BF5E0, &qword_1C4F3A448);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents, &qword_1EC0BF5D0, &qword_1C4F3A438);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval, &unk_1EC0BF5C0, &qword_1C4F3A428);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution, &unk_1EC0BF5B0, &qword_1C4F3A418);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution, &unk_1EC0BF5A0, &qword_1C4F3A408);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction, &unk_1EC0BF590, &qword_1C4F3A3F8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay, &unk_1EC0BF580, &qword_1C4F3A3E8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower, &unk_1EC0BF570, &qword_1C4F3A3D8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata, &unk_1EC0BF560, &qword_1C4F3A3C8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution, &qword_1EC0BF550, &qword_1C4F3A3B8);
  return v0;
}

void sub_1C48B3260()
{
  sub_1C48B3958(319, &qword_1EC0BE7C0, type metadata accessor for HUTenPointContext.TimeAndDate);
  if (v1 <= 0x3F)
  {
    v38 = *(v0 - 8) + 64;
    sub_1C48B3958(319, &qword_1EC0BE7C8, type metadata accessor for HUTenPointContext.MotionState);
    if (v3 <= 0x3F)
    {
      v39 = *(v2 - 8) + 64;
      sub_1C48B3958(319, &qword_1EC0BE7D0, type metadata accessor for HUTenPointContext.SemanticLocation);
      if (v5 <= 0x3F)
      {
        v40 = *(v4 - 8) + 64;
        sub_1C48B3958(319, &qword_1EC0BE7D8, type metadata accessor for HUTenPointContext.POICategory);
        if (v7 <= 0x3F)
        {
          v41 = *(v6 - 8) + 64;
          sub_1C48B3958(319, &qword_1EC0BE7E0, type metadata accessor for HUTenPointContext.UserFocusComputedMode);
          if (v9 <= 0x3F)
          {
            v42 = *(v8 - 8) + 64;
            sub_1C48B3958(319, &qword_1EC0BE7E8, type metadata accessor for HUTenPointContext.InferredMode);
            if (v11 <= 0x3F)
            {
              v43 = *(v10 - 8) + 64;
              sub_1C48B3958(319, &qword_1EC0BE7F0, type metadata accessor for HUTenPointContext.DeviceWireless);
              if (v13 <= 0x3F)
              {
                v44 = *(v12 - 8) + 64;
                sub_1C48B3958(319, &qword_1EC0BE7F8, type metadata accessor for HUTenPointContext.MicroLocation);
                if (v15 <= 0x3F)
                {
                  v45 = *(v14 - 8) + 64;
                  sub_1C48B3958(319, &qword_1EC0BE800, type metadata accessor for HUTenPointContext.AppLaunch);
                  if (v17 <= 0x3F)
                  {
                    v46 = *(v16 - 8) + 64;
                    sub_1C48B3958(319, &qword_1EC0BE808, type metadata accessor for HUTenPointContext.AmbientLight);
                    if (v19 <= 0x3F)
                    {
                      v47 = *(v18 - 8) + 64;
                      sub_1C48B3958(319, &qword_1EC0BE810, type metadata accessor for HUTenPointContext.CalendarEvents);
                      if (v21 <= 0x3F)
                      {
                        v48 = *(v20 - 8) + 64;
                        sub_1C48B3958(319, &qword_1EC0BE818, type metadata accessor for HUTenPointContext.ActivityInterval);
                        if (v23 <= 0x3F)
                        {
                          v49 = *(v22 - 8) + 64;
                          sub_1C48B3958(319, &qword_1EC0BE820, type metadata accessor for HUTenPointContext.AppCategoryDistribution);
                          if (v25 <= 0x3F)
                          {
                            v50 = *(v24 - 8) + 64;
                            sub_1C48B3958(319, &qword_1EC0BE828, type metadata accessor for HUTenPointContext.MotionStateDistribution);
                            if (v27 <= 0x3F)
                            {
                              v51 = *(v26 - 8) + 64;
                              sub_1C48B3958(319, &qword_1EC0BE830, type metadata accessor for HUTenPointContext.VirtualInteraction);
                              if (v29 <= 0x3F)
                              {
                                v52 = *(v28 - 8) + 64;
                                sub_1C48B3958(319, &qword_1EC0BE838, type metadata accessor for HUTenPointContext.DeviceDisplay);
                                if (v31 <= 0x3F)
                                {
                                  v53 = *(v30 - 8) + 64;
                                  sub_1C48B3958(319, &qword_1EC0BE840, type metadata accessor for HUTenPointContext.DevicePower);
                                  if (v33 <= 0x3F)
                                  {
                                    v54 = *(v32 - 8) + 64;
                                    sub_1C48B3958(319, &qword_1EC0BE848, type metadata accessor for HUTenPointContext.LocationMetadata);
                                    if (v35 <= 0x3F)
                                    {
                                      v55 = *(v34 - 8) + 64;
                                      sub_1C48B3958(319, &qword_1EC0BE850, type metadata accessor for HUTenPointContext.AmbientLightDistribution);
                                      if (v37 <= 0x3F)
                                      {
                                        v56 = *(v36 - 8) + 64;
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

void sub_1C48B3958(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C48B3BEC()
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
        sub_1C48B3E70();
        break;
      case 2:
        sub_1C48B3F4C();
        break;
      case 3:
        sub_1C48B4028();
        break;
      case 4:
        sub_1C48B4104();
        break;
      case 5:
        sub_1C48B41E0();
        break;
      case 6:
        sub_1C48B42BC();
        break;
      case 7:
        sub_1C48B4398();
        break;
      case 8:
        sub_1C48B4474();
        break;
      case 9:
        sub_1C48B4550();
        break;
      case 10:
        sub_1C48B462C();
        break;
      case 11:
        sub_1C48B4708();
        break;
      case 12:
        sub_1C48B47E4();
        break;
      case 13:
        sub_1C48B48C0();
        break;
      case 14:
        sub_1C48B499C();
        break;
      case 15:
        sub_1C48B4A78();
        break;
      case 16:
        sub_1C48B4B54();
        break;
      case 17:
        sub_1C48B4C30();
        break;
      case 18:
        sub_1C48B4D0C();
        break;
      case 19:
        sub_1C48B4DE8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48B3E70()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.TimeAndDate(0);
  sub_1C49231A4(&qword_1EC0BF498, type metadata accessor for HUTenPointContext.TimeAndDate);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B3F4C()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.MotionState(0);
  sub_1C49231A4(&qword_1EC0BF478, type metadata accessor for HUTenPointContext.MotionState);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4028()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.SemanticLocation(0);
  sub_1C49231A4(&qword_1EC0BF458, type metadata accessor for HUTenPointContext.SemanticLocation);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4104()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.POICategory(0);
  sub_1C49231A4(&qword_1EC0BF438, type metadata accessor for HUTenPointContext.POICategory);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B41E0()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.UserFocusComputedMode(0);
  sub_1C49231A4(&qword_1EC0BF418, type metadata accessor for HUTenPointContext.UserFocusComputedMode);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B42BC()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.InferredMode(0);
  sub_1C49231A4(&qword_1EC0BF3F8, type metadata accessor for HUTenPointContext.InferredMode);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4398()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.DeviceWireless(0);
  sub_1C49231A4(&qword_1EC0BF3D8, type metadata accessor for HUTenPointContext.DeviceWireless);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4474()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.MicroLocation(0);
  sub_1C49231A4(&qword_1EC0BF398, type metadata accessor for HUTenPointContext.MicroLocation);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4550()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.AppLaunch(0);
  sub_1C49231A4(&qword_1EC0BF378, type metadata accessor for HUTenPointContext.AppLaunch);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B462C()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.AmbientLight(0);
  sub_1C49231A4(&qword_1EC0BF358, type metadata accessor for HUTenPointContext.AmbientLight);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4708()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.CalendarEvents(0);
  sub_1C49231A4(&qword_1EC0BF338, type metadata accessor for HUTenPointContext.CalendarEvents);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B47E4()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.ActivityInterval(0);
  sub_1C49231A4(&qword_1EC0BF318, type metadata accessor for HUTenPointContext.ActivityInterval);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B48C0()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.AppCategoryDistribution(0);
  sub_1C49231A4(&qword_1EC0BF2F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B499C()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.MotionStateDistribution(0);
  sub_1C49231A4(&qword_1EC0BF2D8, type metadata accessor for HUTenPointContext.MotionStateDistribution);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4A78()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.VirtualInteraction(0);
  sub_1C49231A4(&qword_1EC0BF2B8, type metadata accessor for HUTenPointContext.VirtualInteraction);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4B54()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.DeviceDisplay(0);
  sub_1C49231A4(&qword_1EC0BF298, type metadata accessor for HUTenPointContext.DeviceDisplay);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4C30()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.DevicePower(0);
  sub_1C49231A4(&qword_1EC0BF3B8, type metadata accessor for HUTenPointContext.DevicePower);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4D0C()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.LocationMetadata(0);
  sub_1C49231A4(&qword_1EC0BF278, type metadata accessor for HUTenPointContext.LocationMetadata);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4DE8()
{
  swift_beginAccess();
  type metadata accessor for HUTenPointContext.AmbientLightDistribution(0);
  sub_1C49231A4(&qword_1EC0BF258, type metadata accessor for HUTenPointContext.AmbientLightDistribution);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48B4EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48B50AC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48B5294(a1, a2, a3, a4);
    sub_1C48B547C(a1, a2, a3, a4);
    sub_1C48B5664(a1, a2, a3, a4);
    sub_1C48B584C(a1, a2, a3, a4);
    sub_1C48B5A34(a1, a2, a3, a4);
    sub_1C48B5C1C(a1, a2, a3, a4);
    sub_1C48B5E04(a1, a2, a3, a4);
    sub_1C48B5FEC(a1, a2, a3, a4);
    sub_1C48B61D4(a1, a2, a3, a4);
    sub_1C48B63BC(a1, a2, a3, a4);
    sub_1C48B65A4(a1, a2, a3, a4);
    sub_1C48B678C(a1, a2, a3, a4);
    sub_1C48B6974(a1, a2, a3, a4);
    sub_1C48B6B5C(a1, a2, a3, a4);
    sub_1C48B6D44(a1, a2, a3, a4);
    sub_1C48B6F2C(a1, a2, a3, a4);
    sub_1C48B7114(a1, a2, a3, a4);
    return sub_1C48B72FC(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48B50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF670, qword_1C4F3A4D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeAndDate;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF670, qword_1C4F3A4D8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF670, qword_1C4F3A4D8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF498, type metadata accessor for HUTenPointContext.TimeAndDate);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B5294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF660, &qword_1C4F3A4C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.MotionState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF660, &qword_1C4F3A4C8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF660, &qword_1C4F3A4C8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF478, type metadata accessor for HUTenPointContext.MotionState);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF650, &qword_1C4F3A4B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.SemanticLocation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticLocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF650, &qword_1C4F3A4B8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF650, &qword_1C4F3A4B8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF458, type metadata accessor for HUTenPointContext.SemanticLocation);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B5664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF640, &qword_1C4F3A4A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.POICategory(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF640, &qword_1C4F3A4A8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF640, &qword_1C4F3A4A8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF438, type metadata accessor for HUTenPointContext.POICategory);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF630, &qword_1C4F3A498);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF630, &qword_1C4F3A498);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF630, &qword_1C4F3A498);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF418, type metadata accessor for HUTenPointContext.UserFocusComputedMode);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B5A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF620, &qword_1C4F3A488);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.InferredMode(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF620, &qword_1C4F3A488);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF620, &qword_1C4F3A488);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF3F8, type metadata accessor for HUTenPointContext.InferredMode);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B5C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF610, &qword_1C4F3A478);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.DeviceWireless(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF610, &qword_1C4F3A478);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF610, &qword_1C4F3A478);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF3D8, type metadata accessor for HUTenPointContext.DeviceWireless);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B5E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF600, &qword_1C4F3A468);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF600, &qword_1C4F3A468);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF600, &qword_1C4F3A468);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF398, type metadata accessor for HUTenPointContext.MicroLocation);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF5F0, &qword_1C4F3A458);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.AppLaunch(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF5F0, &qword_1C4F3A458);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF5F0, &qword_1C4F3A458);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF378, type metadata accessor for HUTenPointContext.AppLaunch);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF5E0, &qword_1C4F3A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.AmbientLight(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF5E0, &qword_1C4F3A448);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF5E0, &qword_1C4F3A448);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF358, type metadata accessor for HUTenPointContext.AmbientLight);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B63BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF5D0, &qword_1C4F3A438);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.CalendarEvents(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF5D0, &qword_1C4F3A438);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF5D0, &qword_1C4F3A438);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF338, type metadata accessor for HUTenPointContext.CalendarEvents);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B65A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF5C0, &qword_1C4F3A428);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF5C0, &qword_1C4F3A428);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF5C0, &qword_1C4F3A428);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF318, type metadata accessor for HUTenPointContext.ActivityInterval);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF5B0, &qword_1C4F3A418);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF5B0, &qword_1C4F3A418);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF5B0, &qword_1C4F3A418);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF2F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B6974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF5A0, &qword_1C4F3A408);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.MotionStateDistribution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF5A0, &qword_1C4F3A408);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF5A0, &qword_1C4F3A408);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF2D8, type metadata accessor for HUTenPointContext.MotionStateDistribution);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B6B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF590, &qword_1C4F3A3F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.VirtualInteraction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF590, &qword_1C4F3A3F8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF590, &qword_1C4F3A3F8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF2B8, type metadata accessor for HUTenPointContext.VirtualInteraction);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF580, &qword_1C4F3A3E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.DeviceDisplay(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF580, &qword_1C4F3A3E8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF580, &qword_1C4F3A3E8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF298, type metadata accessor for HUTenPointContext.DeviceDisplay);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B6F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF570, &qword_1C4F3A3D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.DevicePower(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF570, &qword_1C4F3A3D8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF570, &qword_1C4F3A3D8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF3B8, type metadata accessor for HUTenPointContext.DevicePower);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B7114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&unk_1EC0BF560, &qword_1C4F3A3C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.LocationMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &unk_1EC0BF560, &qword_1C4F3A3C8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0BF560, &qword_1C4F3A3C8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF278, type metadata accessor for HUTenPointContext.LocationMetadata);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B72FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a4;
  v15[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BF550, &qword_1C4F3A3B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for HUTenPointContext.AmbientLightDistribution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v8, &qword_1EC0BF550, &qword_1C4F3A3B8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BF550, &qword_1C4F3A3B8);
  }

  sub_1C4924B90(v8, v12);
  sub_1C49231A4(&qword_1EC0BF258, type metadata accessor for HUTenPointContext.AmbientLightDistribution);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48B74E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = sub_1C43FBE94();
  v9 = *(v8(v7) + 20);
  v10 = *(v4 + v9);
  v11 = *(a2 + v9);
  if (v10 != v11)
  {
    v12 = *(v4 + v9);

    v13 = a4(v10, v11);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C44070A8();
  sub_1C49231A4(v14, v15);
  sub_1C4402120();
  return sub_1C4475AE4() & 1;
}

BOOL sub_1C48B75B8(uint64_t a1, uint64_t a2)
{
  v536 = a2;
  v440 = type metadata accessor for HUTenPointContext.AmbientLightDistribution(0);
  v3 = *(*(v440 - 8) + 64);
  MEMORY[0x1EEE9AC00](v440);
  v442 = &v424 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = sub_1C456902C(&qword_1EC0BF548, &qword_1C4F3A3B0);
  v5 = *(*(v439 - 8) + 64);
  MEMORY[0x1EEE9AC00](v439);
  v444 = &v424 - v6;
  v7 = sub_1C456902C(&qword_1EC0BF550, &qword_1C4F3A3B8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v443 = &v424 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v441 = &v424 - v11;
  v434 = type metadata accessor for HUTenPointContext.LocationMetadata(0);
  v12 = *(*(v434 - 8) + 64);
  MEMORY[0x1EEE9AC00](v434);
  v437 = &v424 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = sub_1C456902C(&qword_1EC0BF558, &qword_1C4F3A3C0);
  v14 = *(*(v433 - 8) + 64);
  MEMORY[0x1EEE9AC00](v433);
  v438 = &v424 - v15;
  v16 = sub_1C456902C(&unk_1EC0BF560, &qword_1C4F3A3C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v436 = &v424 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v435 = &v424 - v20;
  v428 = type metadata accessor for HUTenPointContext.DevicePower(0);
  v21 = *(*(v428 - 8) + 64);
  MEMORY[0x1EEE9AC00](v428);
  v431 = &v424 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = sub_1C456902C(&qword_1EC0BF568, &qword_1C4F3A3D0);
  v23 = *(*(v427 - 8) + 64);
  MEMORY[0x1EEE9AC00](v427);
  v432 = &v424 - v24;
  v25 = sub_1C456902C(&unk_1EC0BF570, &qword_1C4F3A3D8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v430 = &v424 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v429 = &v424 - v29;
  v449 = type metadata accessor for HUTenPointContext.DeviceDisplay(0);
  v30 = *(*(v449 - 8) + 64);
  MEMORY[0x1EEE9AC00](v449);
  v426 = &v424 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = sub_1C456902C(&qword_1EC0BF578, &qword_1C4F3A3E0);
  v32 = *(*(v445 - 8) + 64);
  MEMORY[0x1EEE9AC00](v445);
  v451 = &v424 - v33;
  v34 = sub_1C456902C(&unk_1EC0BF580, &qword_1C4F3A3E8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v446 = &v424 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v448 = &v424 - v38;
  v455 = type metadata accessor for HUTenPointContext.VirtualInteraction(0);
  v39 = *(*(v455 - 8) + 64);
  MEMORY[0x1EEE9AC00](v455);
  v447 = &v424 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = sub_1C456902C(&qword_1EC0BF588, &qword_1C4F3A3F0);
  v41 = *(*(v450 - 8) + 64);
  MEMORY[0x1EEE9AC00](v450);
  v457 = &v424 - v42;
  v43 = sub_1C456902C(&unk_1EC0BF590, &qword_1C4F3A3F8);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v452 = &v424 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v454 = &v424 - v47;
  v462 = type metadata accessor for HUTenPointContext.MotionStateDistribution(0);
  v48 = *(*(v462 - 8) + 64);
  MEMORY[0x1EEE9AC00](v462);
  v453 = &v424 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = sub_1C456902C(&qword_1EC0BF598, &qword_1C4F3A400);
  v50 = *(*(v456 - 8) + 64);
  MEMORY[0x1EEE9AC00](v456);
  v464 = &v424 - v51;
  v52 = sub_1C456902C(&unk_1EC0BF5A0, &qword_1C4F3A408);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v458 = &v424 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v461 = &v424 - v56;
  v467 = type metadata accessor for HUTenPointContext.AppCategoryDistribution(0);
  v57 = *(*(v467 - 8) + 64);
  MEMORY[0x1EEE9AC00](v467);
  v459 = &v424 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = sub_1C456902C(&qword_1EC0BF5A8, &qword_1C4F3A410);
  v59 = *(*(v463 - 8) + 64);
  MEMORY[0x1EEE9AC00](v463);
  v470 = &v424 - v60;
  v61 = sub_1C456902C(&unk_1EC0BF5B0, &qword_1C4F3A418);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8);
  v465 = &v424 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v466 = &v424 - v65;
  v474 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  v66 = *(*(v474 - 8) + 64);
  MEMORY[0x1EEE9AC00](v474);
  v460 = &v424 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = sub_1C456902C(&qword_1EC0BF5B8, &qword_1C4F3A420);
  v68 = *(*(v468 - 8) + 64);
  MEMORY[0x1EEE9AC00](v468);
  v476 = &v424 - v69;
  v70 = sub_1C456902C(&unk_1EC0BF5C0, &qword_1C4F3A428);
  v71 = *(*(v70 - 8) + 64);
  v72 = MEMORY[0x1EEE9AC00](v70 - 8);
  v469 = &v424 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v473 = &v424 - v74;
  v480 = type metadata accessor for HUTenPointContext.CalendarEvents(0);
  v75 = *(*(v480 - 8) + 64);
  MEMORY[0x1EEE9AC00](v480);
  v471 = &v424 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_1C456902C(&qword_1EC0BF5C8, &qword_1C4F3A430);
  v77 = *(*(v475 - 8) + 64);
  MEMORY[0x1EEE9AC00](v475);
  v484 = &v424 - v78;
  v79 = sub_1C456902C(&qword_1EC0BF5D0, &qword_1C4F3A438);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v79 - 8);
  v477 = &v424 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v479 = &v424 - v83;
  v483 = type metadata accessor for HUTenPointContext.AmbientLight(0);
  v84 = *(*(v483 - 8) + 64);
  MEMORY[0x1EEE9AC00](v483);
  v472 = &v424 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = sub_1C456902C(&qword_1EC0BF5D8, &qword_1C4F3A440);
  v86 = *(*(v482 - 8) + 64);
  MEMORY[0x1EEE9AC00](v482);
  v488 = &v424 - v87;
  v88 = sub_1C456902C(&qword_1EC0BF5E0, &qword_1C4F3A448);
  v89 = *(*(v88 - 8) + 64);
  v90 = MEMORY[0x1EEE9AC00](v88 - 8);
  v481 = &v424 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v487 = &v424 - v92;
  v490 = type metadata accessor for HUTenPointContext.AppLaunch(0);
  v93 = *(*(v490 - 8) + 64);
  MEMORY[0x1EEE9AC00](v490);
  v478 = &v424 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = sub_1C456902C(&qword_1EC0BF5E8, &qword_1C4F3A450);
  v95 = *(*(v489 - 8) + 64);
  MEMORY[0x1EEE9AC00](v489);
  v491 = &v424 - v96;
  v97 = sub_1C456902C(&qword_1EC0BF5F0, &qword_1C4F3A458);
  v98 = *(*(v97 - 8) + 64);
  v99 = MEMORY[0x1EEE9AC00](v97 - 8);
  v485 = &v424 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99);
  v493 = &v424 - v101;
  v496 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  v102 = *(*(v496 - 8) + 64);
  MEMORY[0x1EEE9AC00](v496);
  v486 = &v424 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v495 = sub_1C456902C(&qword_1EC0BF5F8, &qword_1C4F3A460);
  v104 = *(*(v495 - 8) + 64);
  MEMORY[0x1EEE9AC00](v495);
  v497 = &v424 - v105;
  v106 = sub_1C456902C(&unk_1EC0BF600, &qword_1C4F3A468);
  v107 = *(*(v106 - 8) + 64);
  v108 = MEMORY[0x1EEE9AC00](v106 - 8);
  v492 = &v424 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v108);
  v506 = &v424 - v110;
  v501 = type metadata accessor for HUTenPointContext.DeviceWireless(0);
  v111 = *(*(v501 - 8) + 64);
  MEMORY[0x1EEE9AC00](v501);
  v494 = &v424 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = sub_1C456902C(&qword_1EC0BF608, &qword_1C4F3A470);
  v113 = *(*(v500 - 8) + 64);
  MEMORY[0x1EEE9AC00](v500);
  v502 = &v424 - v114;
  v115 = sub_1C456902C(&qword_1EC0BF610, &qword_1C4F3A478);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x1EEE9AC00](v115 - 8);
  v499 = &v424 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v117);
  v504 = &v424 - v119;
  v508 = type metadata accessor for HUTenPointContext.InferredMode(0);
  v120 = *(*(v508 - 8) + 64);
  MEMORY[0x1EEE9AC00](v508);
  v498 = &v424 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = sub_1C456902C(&qword_1EC0BF618, &qword_1C4F3A480);
  v122 = *(*(v507 - 8) + 64);
  MEMORY[0x1EEE9AC00](v507);
  v509 = &v424 - v123;
  v124 = sub_1C456902C(&unk_1EC0BF620, &qword_1C4F3A488);
  v125 = *(*(v124 - 8) + 64);
  v126 = MEMORY[0x1EEE9AC00](v124 - 8);
  v503 = &v424 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126);
  v512 = &v424 - v128;
  v514 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(0);
  v129 = *(*(v514 - 8) + 64);
  MEMORY[0x1EEE9AC00](v514);
  v505 = &v424 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = sub_1C456902C(&qword_1EC0BF628, &qword_1C4F3A490);
  v131 = *(*(v513 - 8) + 64);
  MEMORY[0x1EEE9AC00](v513);
  v515 = &v424 - v132;
  v133 = sub_1C456902C(&qword_1EC0BF630, &qword_1C4F3A498);
  v134 = *(*(v133 - 8) + 64);
  v135 = MEMORY[0x1EEE9AC00](v133 - 8);
  v511 = &v424 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v135);
  v516 = &v424 - v137;
  v520 = type metadata accessor for HUTenPointContext.POICategory(0);
  v138 = *(*(v520 - 8) + 64);
  MEMORY[0x1EEE9AC00](v520);
  v510 = &v424 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_1C456902C(&qword_1EC0BF638, &qword_1C4F3A4A0);
  v140 = *(*(v519 - 8) + 64);
  MEMORY[0x1EEE9AC00](v519);
  v521 = &v424 - v141;
  v142 = sub_1C456902C(&unk_1EC0BF640, &qword_1C4F3A4A8);
  v143 = *(*(v142 - 8) + 64);
  v144 = MEMORY[0x1EEE9AC00](v142 - 8);
  v518 = &v424 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v144);
  v523 = &v424 - v146;
  v526 = type metadata accessor for HUTenPointContext.SemanticLocation(0);
  v147 = *(*(v526 - 8) + 64);
  MEMORY[0x1EEE9AC00](v526);
  v517 = &v424 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  v525 = sub_1C456902C(&qword_1EC0BF648, &qword_1C4F3A4B0);
  v149 = *(*(v525 - 8) + 64);
  MEMORY[0x1EEE9AC00](v525);
  v527 = &v424 - v150;
  v151 = sub_1C456902C(&unk_1EC0BF650, &qword_1C4F3A4B8);
  v152 = *(*(v151 - 8) + 64);
  v153 = MEMORY[0x1EEE9AC00](v151 - 8);
  v522 = &v424 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v153);
  v534 = &v424 - v155;
  v532 = type metadata accessor for HUTenPointContext.MotionState(0);
  v156 = *(*(v532 - 8) + 64);
  MEMORY[0x1EEE9AC00](v532);
  v524 = &v424 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  v530 = sub_1C456902C(&qword_1EC0BF658, &qword_1C4F3A4C0);
  v158 = *(*(v530 - 8) + 64);
  MEMORY[0x1EEE9AC00](v530);
  v533 = &v424 - v159;
  v160 = sub_1C456902C(&qword_1EC0BF660, &qword_1C4F3A4C8);
  v161 = *(*(v160 - 8) + 64);
  v162 = MEMORY[0x1EEE9AC00](v160 - 8);
  v528 = &v424 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v162);
  v531 = &v424 - v164;
  v535 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  v165 = *(*(v535 - 8) + 64);
  MEMORY[0x1EEE9AC00](v535);
  v529 = &v424 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1C456902C(&qword_1EC0BF668, &qword_1C4F3A4D0);
  v168 = v167 - 8;
  v169 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v171 = &v424 - v170;
  v172 = sub_1C456902C(&qword_1EC0BF670, qword_1C4F3A4D8);
  v173 = *(*(v172 - 8) + 64);
  v174 = MEMORY[0x1EEE9AC00](v172 - 8);
  v176 = &v424 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v174);
  v178 = &v424 - v177;
  v179 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeAndDate;
  swift_beginAccess();
  v180 = a1 + v179;
  v181 = v536;
  sub_1C4460108(v180, v178, &qword_1EC0BF670, qword_1C4F3A4D8);
  v182 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeAndDate;
  swift_beginAccess();
  v183 = *(v168 + 56);
  sub_1C4460108(v178, v171, &qword_1EC0BF670, qword_1C4F3A4D8);
  v184 = v535;
  sub_1C4460108(v181 + v182, &v171[v183], &qword_1EC0BF670, qword_1C4F3A4D8);
  if (sub_1C44157D4(v171, 1, v184) == 1)
  {

    sub_1C4420C3C(v178, &qword_1EC0BF670, qword_1C4F3A4D8);
    if (sub_1C44157D4(&v171[v183], 1, v184) == 1)
    {
      sub_1C4420C3C(v171, &qword_1EC0BF670, qword_1C4F3A4D8);
      goto LABEL_10;
    }

LABEL_6:
    v185 = &qword_1EC0BF668;
    v186 = &qword_1C4F3A4D0;
LABEL_25:
    v210 = v171;
    goto LABEL_26;
  }

  v425 = v178;
  sub_1C4460108(v171, v176, &qword_1EC0BF670, qword_1C4F3A4D8);
  if (sub_1C44157D4(&v171[v183], 1, v184) == 1)
  {

    sub_1C4420C3C(v425, &qword_1EC0BF670, qword_1C4F3A4D8);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v187 = v529;
  sub_1C4924B90(&v171[v183], v529);
  v188 = *(v184 + 20);
  v189 = *&v176[v188];
  v190 = *(v187 + v188);

  if (v189 != v190)
  {

    v191 = sub_1C48BE3AC(v189, v190);

    if (!v191)
    {
      sub_1C4924B3C();
      v208 = &qword_1EC0BF670;
      v209 = qword_1C4F3A4D8;
      sub_1C4420C3C(v425, &qword_1EC0BF670, qword_1C4F3A4D8);
      sub_1C4924B3C();
      v210 = v171;
LABEL_21:
      v185 = v208;
      v186 = v209;
LABEL_26:
      sub_1C4420C3C(v210, v185, v186);
      goto LABEL_27;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v192 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v425, &qword_1EC0BF670, qword_1C4F3A4D8);
  sub_1C4924B3C();
  sub_1C4420C3C(v171, &qword_1EC0BF670, qword_1C4F3A4D8);
  if ((v192 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  v193 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionState;
  swift_beginAccess();
  v194 = v531;
  sub_1C4460108(a1 + v193, v531, &qword_1EC0BF660, &qword_1C4F3A4C8);
  v195 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionState;
  swift_beginAccess();
  v196 = *(v530 + 48);
  v171 = v533;
  sub_1C4460108(v194, v533, &qword_1EC0BF660, &qword_1C4F3A4C8);
  sub_1C4460108(v181 + v195, &v171[v196], &qword_1EC0BF660, &qword_1C4F3A4C8);
  v197 = v532;
  if (sub_1C44157D4(v171, 1, v532) == 1)
  {
    sub_1C4420C3C(v194, &qword_1EC0BF660, &qword_1C4F3A4C8);
    v198 = sub_1C44157D4(&v171[v196], 1, v197);
    v199 = v534;
    if (v198 == 1)
    {
      sub_1C4420C3C(v171, &qword_1EC0BF660, &qword_1C4F3A4C8);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_1C4460108(v171, v528, &qword_1EC0BF660, &qword_1C4F3A4C8);
  v200 = sub_1C44157D4(&v171[v196], 1, v197);
  v199 = v534;
  if (v200 == 1)
  {
    sub_1C4420C3C(v194, &qword_1EC0BF660, &qword_1C4F3A4C8);
    sub_1C4924B3C();
LABEL_15:
    v185 = &qword_1EC0BF658;
    v186 = &qword_1C4F3A4C0;
    goto LABEL_25;
  }

  sub_1C4924B90(&v171[v196], v524);
  sub_1C48E0AC8();
  v202 = v201;
  sub_1C4924B3C();
  sub_1C4420C3C(v194, &qword_1EC0BF660, &qword_1C4F3A4C8);
  sub_1C4924B3C();
  sub_1C4420C3C(v171, &qword_1EC0BF660, &qword_1C4F3A4C8);
  if ((v202 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  v203 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticLocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v203, v199, &unk_1EC0BF650, &qword_1C4F3A4B8);
  v204 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticLocation;
  v205 = v536;
  swift_beginAccess();
  v206 = *(v525 + 48);
  v171 = v527;
  sub_1C4460108(v199, v527, &unk_1EC0BF650, &qword_1C4F3A4B8);
  sub_1C4460108(v205 + v204, &v171[v206], &unk_1EC0BF650, &qword_1C4F3A4B8);
  v207 = v526;
  if (sub_1C44157D4(v171, 1, v526) == 1)
  {
    sub_1C4420C3C(v199, &unk_1EC0BF650, &qword_1C4F3A4B8);
    if (sub_1C44157D4(&v171[v206], 1, v207) == 1)
    {
      sub_1C4420C3C(v171, &unk_1EC0BF650, &qword_1C4F3A4B8);
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  sub_1C4460108(v171, v522, &unk_1EC0BF650, &qword_1C4F3A4B8);
  if (sub_1C44157D4(&v171[v206], 1, v207) == 1)
  {
    sub_1C4420C3C(v199, &unk_1EC0BF650, &qword_1C4F3A4B8);
    sub_1C4924B3C();
LABEL_24:
    v185 = &qword_1EC0BF648;
    v186 = &qword_1C4F3A4B0;
    goto LABEL_25;
  }

  sub_1C4924B90(&v171[v206], v517);
  sub_1C48EE924();
  v213 = v212;
  sub_1C4924B3C();
  sub_1C4420C3C(v199, &unk_1EC0BF650, &qword_1C4F3A4B8);
  sub_1C4924B3C();
  sub_1C4420C3C(v171, &unk_1EC0BF650, &qword_1C4F3A4B8);
  if ((v213 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_31:
  v214 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory;
  swift_beginAccess();
  v215 = v523;
  sub_1C4460108(a1 + v214, v523, &unk_1EC0BF640, &qword_1C4F3A4A8);
  v216 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__poiCategory;
  swift_beginAccess();
  v217 = *(v519 + 48);
  v218 = v521;
  sub_1C4460108(v215, v521, &unk_1EC0BF640, &qword_1C4F3A4A8);
  sub_1C4460108(v205 + v216, v218 + v217, &unk_1EC0BF640, &qword_1C4F3A4A8);
  v219 = v520;
  if (sub_1C44157D4(v218, 1, v520) == 1)
  {
    sub_1C4420C3C(v215, &unk_1EC0BF640, &qword_1C4F3A4A8);
    if (sub_1C44157D4(v218 + v217, 1, v219) == 1)
    {
      sub_1C4420C3C(v218, &unk_1EC0BF640, &qword_1C4F3A4A8);
      goto LABEL_40;
    }

LABEL_36:
    v185 = &qword_1EC0BF638;
    v186 = &qword_1C4F3A4A0;
LABEL_46:
    v210 = v218;
    goto LABEL_26;
  }

  v220 = v518;
  sub_1C4460108(v218, v518, &unk_1EC0BF640, &qword_1C4F3A4A8);
  if (sub_1C44157D4(v218 + v217, 1, v219) == 1)
  {
    sub_1C4420C3C(v523, &unk_1EC0BF640, &qword_1C4F3A4A8);
    sub_1C4924B3C();
    goto LABEL_36;
  }

  v221 = v510;
  sub_1C4924B90(v218 + v217, v510);
  v222 = *(v219 + 20);
  v223 = *(v220 + v222);
  if (v223 != *(v221 + v222))
  {

    v224 = sub_1C48CFFBC(v223);

    if (!v224)
    {
      sub_1C4924B3C();
      v208 = &unk_1EC0BF640;
      v209 = &qword_1C4F3A4A8;
      sub_1C4420C3C(v523, &unk_1EC0BF640, &qword_1C4F3A4A8);
LABEL_62:
      sub_1C4924B3C();
      v210 = v218;
      goto LABEL_21;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v225 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v523, &unk_1EC0BF640, &qword_1C4F3A4A8);
  sub_1C4924B3C();
  sub_1C4420C3C(v218, &unk_1EC0BF640, &qword_1C4F3A4A8);
  if ((v225 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_40:
  v226 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode;
  swift_beginAccess();
  v227 = v516;
  sub_1C4460108(a1 + v226, v516, &qword_1EC0BF630, &qword_1C4F3A498);
  v228 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__userFocusComputedMode;
  swift_beginAccess();
  v229 = *(v513 + 48);
  v230 = v515;
  sub_1C4460108(v227, v515, &qword_1EC0BF630, &qword_1C4F3A498);
  v231 = v205 + v228;
  v218 = v230;
  sub_1C4460108(v231, v230 + v229, &qword_1EC0BF630, &qword_1C4F3A498);
  v232 = v514;
  if (sub_1C44157D4(v230, 1, v514) == 1)
  {
    sub_1C4420C3C(v227, &qword_1EC0BF630, &qword_1C4F3A498);
    v233 = sub_1C44157D4(v230 + v229, 1, v232);
    v234 = v512;
    if (v233 == 1)
    {
      sub_1C4420C3C(v230, &qword_1EC0BF630, &qword_1C4F3A498);
      goto LABEL_50;
    }

    goto LABEL_45;
  }

  v235 = v511;
  sub_1C4460108(v230, v511, &qword_1EC0BF630, &qword_1C4F3A498);
  if (sub_1C44157D4(v230 + v229, 1, v232) == 1)
  {
    sub_1C4420C3C(v516, &qword_1EC0BF630, &qword_1C4F3A498);
    sub_1C4924B3C();
LABEL_45:
    v185 = &qword_1EC0BF628;
    v186 = &qword_1C4F3A490;
    goto LABEL_46;
  }

  v236 = v230 + v229;
  v237 = v505;
  sub_1C4924B90(v236, v505);
  if (*(v235 + *(v232 + 20)) != *(v237 + *(v232 + 20)))
  {

    sub_1C4922578();
    v239 = v238;

    if ((v239 & 1) == 0)
    {
      sub_1C4924B3C();
      v208 = &qword_1EC0BF630;
      v209 = &qword_1C4F3A498;
      sub_1C4420C3C(v516, &qword_1EC0BF630, &qword_1C4F3A498);
      goto LABEL_62;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v240 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v516, &qword_1EC0BF630, &qword_1C4F3A498);
  sub_1C4924B3C();
  sub_1C4420C3C(v218, &qword_1EC0BF630, &qword_1C4F3A498);
  v234 = v512;
  if ((v240 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_50:
  v241 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v241, v234, &unk_1EC0BF620, &qword_1C4F3A488);
  v242 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inferredMode;
  swift_beginAccess();
  v243 = *(v507 + 48);
  v244 = v234;
  v245 = v234;
  v246 = v509;
  sub_1C4460108(v244, v509, &unk_1EC0BF620, &qword_1C4F3A488);
  sub_1C4460108(v205 + v242, v246 + v243, &unk_1EC0BF620, &qword_1C4F3A488);
  v247 = v508;
  if (sub_1C44157D4(v246, 1, v508) == 1)
  {
    sub_1C4420C3C(v245, &unk_1EC0BF620, &qword_1C4F3A488);
    v248 = sub_1C44157D4(v246 + v243, 1, v247);
    v249 = v506;
    if (v248 == 1)
    {
      sub_1C4420C3C(v246, &unk_1EC0BF620, &qword_1C4F3A488);
      goto LABEL_58;
    }

LABEL_56:
    v185 = &qword_1EC0BF618;
    v186 = &qword_1C4F3A480;
    v210 = v246;
    goto LABEL_26;
  }

  sub_1C4460108(v246, v503, &unk_1EC0BF620, &qword_1C4F3A488);
  v250 = sub_1C44157D4(v246 + v243, 1, v247);
  v249 = v506;
  if (v250 == 1)
  {
    sub_1C4420C3C(v512, &unk_1EC0BF620, &qword_1C4F3A488);
    sub_1C4924B3C();
    goto LABEL_56;
  }

  sub_1C4924B90(v246 + v243, v498);
  sub_1C48E0AC8();
  v251 = v246;
  v253 = v252;
  sub_1C4924B3C();
  sub_1C4420C3C(v512, &unk_1EC0BF620, &qword_1C4F3A488);
  sub_1C4924B3C();
  sub_1C4420C3C(v251, &unk_1EC0BF620, &qword_1C4F3A488);
  if ((v253 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_58:
  v254 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless;
  swift_beginAccess();
  v255 = v504;
  sub_1C4460108(a1 + v254, v504, &qword_1EC0BF610, &qword_1C4F3A478);
  v256 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceWireless;
  swift_beginAccess();
  v257 = *(v500 + 48);
  v258 = v502;
  sub_1C4460108(v255, v502, &qword_1EC0BF610, &qword_1C4F3A478);
  v259 = v205 + v256;
  v218 = v258;
  sub_1C4460108(v259, v258 + v257, &qword_1EC0BF610, &qword_1C4F3A478);
  v260 = v501;
  if (sub_1C44157D4(v258, 1, v501) == 1)
  {
    sub_1C4420C3C(v255, &qword_1EC0BF610, &qword_1C4F3A478);
    if (sub_1C44157D4(v258 + v257, 1, v260) == 1)
    {
      sub_1C4420C3C(v258, &qword_1EC0BF610, &qword_1C4F3A478);
      goto LABEL_69;
    }

    goto LABEL_65;
  }

  v261 = v499;
  sub_1C4460108(v258, v499, &qword_1EC0BF610, &qword_1C4F3A478);
  if (sub_1C44157D4(v258 + v257, 1, v260) == 1)
  {
    sub_1C4420C3C(v504, &qword_1EC0BF610, &qword_1C4F3A478);
    sub_1C4924B3C();
LABEL_65:
    v185 = &qword_1EC0BF608;
    v186 = &qword_1C4F3A470;
    goto LABEL_46;
  }

  v262 = v258 + v257;
  v263 = v494;
  sub_1C4924B90(v262, v494);
  if (*(v261 + *(v260 + 20)) != *(v263 + *(v260 + 20)))
  {

    sub_1C4922578();
    v265 = v264;

    if ((v265 & 1) == 0)
    {
      sub_1C4924B3C();
      v208 = &qword_1EC0BF610;
      v209 = &qword_1C4F3A478;
      sub_1C4420C3C(v504, &qword_1EC0BF610, &qword_1C4F3A478);
      goto LABEL_62;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v266 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v504, &qword_1EC0BF610, &qword_1C4F3A478);
  sub_1C4924B3C();
  sub_1C4420C3C(v218, &qword_1EC0BF610, &qword_1C4F3A478);
  if ((v266 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_69:
  v267 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v267, v249, &unk_1EC0BF600, &qword_1C4F3A468);
  v268 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__microLocation;
  swift_beginAccess();
  v269 = *(v495 + 48);
  v270 = v497;
  sub_1C4460108(v249, v497, &unk_1EC0BF600, &qword_1C4F3A468);
  sub_1C4460108(v205 + v268, v270 + v269, &unk_1EC0BF600, &qword_1C4F3A468);
  v271 = v496;
  if (sub_1C44157D4(v270, 1, v496) == 1)
  {
    sub_1C4420C3C(v249, &unk_1EC0BF600, &qword_1C4F3A468);
    if (sub_1C44157D4(v270 + v269, 1, v271) == 1)
    {
      sub_1C4420C3C(v270, &unk_1EC0BF600, &qword_1C4F3A468);
      goto LABEL_76;
    }

LABEL_74:
    v185 = &qword_1EC0BF5F8;
    v186 = &qword_1C4F3A460;
    v210 = v270;
    goto LABEL_26;
  }

  sub_1C4460108(v270, v492, &unk_1EC0BF600, &qword_1C4F3A468);
  if (sub_1C44157D4(v270 + v269, 1, v271) == 1)
  {
    sub_1C4420C3C(v249, &unk_1EC0BF600, &qword_1C4F3A468);
    sub_1C4924B3C();
    goto LABEL_74;
  }

  sub_1C4924B90(v270 + v269, v486);
  sub_1C48EE924();
  v273 = v272;
  sub_1C4924B3C();
  sub_1C4420C3C(v249, &unk_1EC0BF600, &qword_1C4F3A468);
  sub_1C4924B3C();
  sub_1C4420C3C(v270, &unk_1EC0BF600, &qword_1C4F3A468);
  if ((v273 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_76:
  v274 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch;
  swift_beginAccess();
  v275 = v493;
  sub_1C4460108(a1 + v274, v493, &qword_1EC0BF5F0, &qword_1C4F3A458);
  v276 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appLaunch;
  swift_beginAccess();
  v277 = *(v489 + 48);
  v278 = v491;
  sub_1C4460108(v275, v491, &qword_1EC0BF5F0, &qword_1C4F3A458);
  v279 = v278;
  sub_1C4460108(v205 + v276, v278 + v277, &qword_1EC0BF5F0, &qword_1C4F3A458);
  v280 = v490;
  if (sub_1C44157D4(v278, 1, v490) == 1)
  {
    sub_1C4420C3C(v275, &qword_1EC0BF5F0, &qword_1C4F3A458);
    if (sub_1C44157D4(v278 + v277, 1, v280) == 1)
    {
      sub_1C4420C3C(v278, &qword_1EC0BF5F0, &qword_1C4F3A458);
      goto LABEL_86;
    }

    goto LABEL_82;
  }

  v281 = v278;
  v282 = v485;
  sub_1C4460108(v281, v485, &qword_1EC0BF5F0, &qword_1C4F3A458);
  if (sub_1C44157D4(v279 + v277, 1, v280) == 1)
  {
    sub_1C4420C3C(v493, &qword_1EC0BF5F0, &qword_1C4F3A458);
    sub_1C4924B3C();
LABEL_82:
    v185 = &qword_1EC0BF5E8;
    v186 = &qword_1C4F3A450;
    v210 = v279;
    goto LABEL_26;
  }

  v283 = v478;
  sub_1C4924B90(v279 + v277, v478);
  v284 = *(v280 + 20);
  if (*(v282 + v284) != *(v283 + v284))
  {
    v285 = *(v282 + v284);

    sub_1C4922578();
    v287 = v286;

    if ((v287 & 1) == 0)
    {
      sub_1C4924B3C();
      v208 = &qword_1EC0BF5F0;
      v209 = &qword_1C4F3A458;
      sub_1C4420C3C(v493, &qword_1EC0BF5F0, &qword_1C4F3A458);
      sub_1C4924B3C();
      v210 = v491;
      goto LABEL_21;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v288 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v493, &qword_1EC0BF5F0, &qword_1C4F3A458);
  sub_1C4924B3C();
  sub_1C4420C3C(v491, &qword_1EC0BF5F0, &qword_1C4F3A458);
  if ((v288 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_86:
  v289 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight;
  swift_beginAccess();
  v290 = a1;
  v291 = v487;
  sub_1C4460108(a1 + v289, v487, &qword_1EC0BF5E0, &qword_1C4F3A448);
  v292 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLight;
  swift_beginAccess();
  v293 = *(v482 + 48);
  v294 = v488;
  sub_1C4460108(v291, v488, &qword_1EC0BF5E0, &qword_1C4F3A448);
  sub_1C4460108(v205 + v292, v294 + v293, &qword_1EC0BF5E0, &qword_1C4F3A448);
  v295 = v483;
  if (sub_1C44157D4(v294, 1, v483) == 1)
  {
    sub_1C4420C3C(v487, &qword_1EC0BF5E0, &qword_1C4F3A448);
    if (sub_1C44157D4(v294 + v293, 1, v295) == 1)
    {
      sub_1C4420C3C(v488, &qword_1EC0BF5E0, &qword_1C4F3A448);
      goto LABEL_93;
    }

LABEL_91:
    v296 = &qword_1EC0BF5D8;
    v297 = &qword_1C4F3A440;
    v298 = v488;
LABEL_167:
    sub_1C4420C3C(v298, v296, v297);
    goto LABEL_27;
  }

  sub_1C4460108(v294, v481, &qword_1EC0BF5E0, &qword_1C4F3A448);
  if (sub_1C44157D4(v294 + v293, 1, v295) == 1)
  {
    sub_1C4420C3C(v487, &qword_1EC0BF5E0, &qword_1C4F3A448);
    sub_1C4924B3C();
    goto LABEL_91;
  }

  v299 = v488;
  sub_1C4924B90(v488 + v293, v472);
  sub_1C48E0AC8();
  v301 = v300;
  sub_1C4924B3C();
  sub_1C4420C3C(v487, &qword_1EC0BF5E0, &qword_1C4F3A448);
  sub_1C4924B3C();
  sub_1C4420C3C(v299, &qword_1EC0BF5E0, &qword_1C4F3A448);
  if ((v301 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_93:
  v302 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents;
  swift_beginAccess();
  v303 = v479;
  sub_1C4460108(v290 + v302, v479, &qword_1EC0BF5D0, &qword_1C4F3A438);
  v304 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__calendarEvents;
  swift_beginAccess();
  v305 = *(v475 + 48);
  v306 = v303;
  v307 = v484;
  sub_1C4460108(v306, v484, &qword_1EC0BF5D0, &qword_1C4F3A438);
  sub_1C4460108(v205 + v304, v307 + v305, &qword_1EC0BF5D0, &qword_1C4F3A438);
  if (sub_1C44157D4(v307, 1, v480) == 1)
  {
    sub_1C4420C3C(v479, &qword_1EC0BF5D0, &qword_1C4F3A438);
    if (sub_1C44157D4(v484 + v305, 1, v480) == 1)
    {
      sub_1C4420C3C(v484, &qword_1EC0BF5D0, &qword_1C4F3A438);
      goto LABEL_103;
    }

    goto LABEL_99;
  }

  v308 = v484;
  sub_1C4460108(v484, v477, &qword_1EC0BF5D0, &qword_1C4F3A438);
  if (sub_1C44157D4(v308 + v305, 1, v480) == 1)
  {
    sub_1C4420C3C(v479, &qword_1EC0BF5D0, &qword_1C4F3A438);
    sub_1C4924B3C();
LABEL_99:
    v296 = &qword_1EC0BF5C8;
    v297 = &qword_1C4F3A430;
    v298 = v484;
    goto LABEL_167;
  }

  v309 = v471;
  sub_1C4924B90(v484 + v305, v471);
  v310 = *(v480 + 20);
  v311 = *(v477 + v310);
  v312 = *(v309 + v310);
  if (v311 != v312)
  {
    v313 = *(v477 + v310);

    v314 = sub_1C48E9248(v311, v312);

    if (!v314)
    {
      sub_1C4924B3C();
      v332 = &qword_1EC0BF5D0;
      v333 = &qword_1C4F3A438;
      sub_1C4420C3C(v479, &qword_1EC0BF5D0, &qword_1C4F3A438);
      sub_1C4924B3C();
      v298 = v484;
LABEL_114:
      v296 = v332;
      v297 = v333;
      goto LABEL_167;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v315 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v479, &qword_1EC0BF5D0, &qword_1C4F3A438);
  sub_1C4924B3C();
  sub_1C4420C3C(v484, &qword_1EC0BF5D0, &qword_1C4F3A438);
  if ((v315 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_103:
  v316 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval;
  swift_beginAccess();
  v317 = v473;
  sub_1C4460108(v290 + v316, v473, &unk_1EC0BF5C0, &qword_1C4F3A428);
  v318 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__activityInterval;
  swift_beginAccess();
  v319 = *(v468 + 48);
  v320 = v317;
  v321 = v476;
  sub_1C4460108(v320, v476, &unk_1EC0BF5C0, &qword_1C4F3A428);
  sub_1C4460108(v205 + v318, v321 + v319, &unk_1EC0BF5C0, &qword_1C4F3A428);
  if (sub_1C44157D4(v321, 1, v474) == 1)
  {
    sub_1C4420C3C(v473, &unk_1EC0BF5C0, &qword_1C4F3A428);
    if (sub_1C44157D4(v476 + v319, 1, v474) == 1)
    {
      sub_1C4420C3C(v476, &unk_1EC0BF5C0, &qword_1C4F3A428);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  v322 = v476;
  sub_1C4460108(v476, v469, &unk_1EC0BF5C0, &qword_1C4F3A428);
  if (sub_1C44157D4(v322 + v319, 1, v474) == 1)
  {
    sub_1C4420C3C(v473, &unk_1EC0BF5C0, &qword_1C4F3A428);
    sub_1C4924B3C();
LABEL_108:
    v296 = &qword_1EC0BF5B8;
    v297 = &qword_1C4F3A420;
    v298 = v476;
    goto LABEL_167;
  }

  v323 = v476;
  sub_1C4924B90(v476 + v319, v460);
  sub_1C48EE924();
  v325 = v324;
  sub_1C4924B3C();
  sub_1C4420C3C(v473, &unk_1EC0BF5C0, &qword_1C4F3A428);
  sub_1C4924B3C();
  sub_1C4420C3C(v323, &unk_1EC0BF5C0, &qword_1C4F3A428);
  if ((v325 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_110:
  v326 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution;
  swift_beginAccess();
  v327 = v466;
  sub_1C4460108(v290 + v326, v466, &unk_1EC0BF5B0, &qword_1C4F3A418);
  v328 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__appCategoryDistribution;
  swift_beginAccess();
  v329 = *(v463 + 48);
  v330 = v327;
  v331 = v470;
  sub_1C4460108(v330, v470, &unk_1EC0BF5B0, &qword_1C4F3A418);
  sub_1C4460108(v205 + v328, v331 + v329, &unk_1EC0BF5B0, &qword_1C4F3A418);
  if (sub_1C44157D4(v331, 1, v467) == 1)
  {
    sub_1C4420C3C(v466, &unk_1EC0BF5B0, &qword_1C4F3A418);
    if (sub_1C44157D4(v470 + v329, 1, v467) == 1)
    {
      sub_1C4420C3C(v470, &unk_1EC0BF5B0, &qword_1C4F3A418);
      goto LABEL_121;
    }

LABEL_117:
    v296 = &qword_1EC0BF5A8;
    v297 = &qword_1C4F3A410;
    v298 = v470;
    goto LABEL_167;
  }

  v334 = v470;
  sub_1C4460108(v470, v465, &unk_1EC0BF5B0, &qword_1C4F3A418);
  if (sub_1C44157D4(v334 + v329, 1, v467) == 1)
  {
    sub_1C4420C3C(v466, &unk_1EC0BF5B0, &qword_1C4F3A418);
    sub_1C4924B3C();
    goto LABEL_117;
  }

  v335 = v459;
  sub_1C4924B90(v470 + v329, v459);
  v336 = *(v467 + 20);
  v337 = *(v465 + v336);
  v338 = *(v335 + v336);
  if (v337 != v338)
  {
    v339 = *(v465 + v336);

    v340 = sub_1C48F23BC(v337, v338);

    if (!v340)
    {
      sub_1C4924B3C();
      v332 = &unk_1EC0BF5B0;
      v333 = &qword_1C4F3A418;
      sub_1C4420C3C(v466, &unk_1EC0BF5B0, &qword_1C4F3A418);
      sub_1C4924B3C();
      v298 = v470;
      goto LABEL_114;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v341 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v466, &unk_1EC0BF5B0, &qword_1C4F3A418);
  sub_1C4924B3C();
  sub_1C4420C3C(v470, &unk_1EC0BF5B0, &qword_1C4F3A418);
  if ((v341 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_121:
  v342 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution;
  swift_beginAccess();
  v343 = v461;
  sub_1C4460108(v290 + v342, v461, &unk_1EC0BF5A0, &qword_1C4F3A408);
  v344 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistribution;
  swift_beginAccess();
  v345 = *(v456 + 48);
  v346 = v343;
  v347 = v464;
  sub_1C4460108(v346, v464, &unk_1EC0BF5A0, &qword_1C4F3A408);
  sub_1C4460108(v205 + v344, v347 + v345, &unk_1EC0BF5A0, &qword_1C4F3A408);
  if (sub_1C44157D4(v347, 1, v462) == 1)
  {
    sub_1C4420C3C(v461, &unk_1EC0BF5A0, &qword_1C4F3A408);
    if (sub_1C44157D4(v464 + v345, 1, v462) == 1)
    {
      sub_1C4420C3C(v464, &unk_1EC0BF5A0, &qword_1C4F3A408);
      goto LABEL_130;
    }

LABEL_126:
    v296 = &qword_1EC0BF598;
    v297 = &qword_1C4F3A400;
    v298 = v464;
    goto LABEL_167;
  }

  v348 = v464;
  sub_1C4460108(v464, v458, &unk_1EC0BF5A0, &qword_1C4F3A408);
  if (sub_1C44157D4(v348 + v345, 1, v462) == 1)
  {
    sub_1C4420C3C(v461, &unk_1EC0BF5A0, &qword_1C4F3A408);
    sub_1C4924B3C();
    goto LABEL_126;
  }

  v349 = v453;
  sub_1C4924B90(v464 + v345, v453);
  v350 = *(v462 + 20);
  if (*(v458 + v350) != *(v349 + v350))
  {
    v351 = *(v458 + v350);

    sub_1C4922578();
    v353 = v352;

    if ((v353 & 1) == 0)
    {
      sub_1C4924B3C();
      v332 = &unk_1EC0BF5A0;
      v333 = &qword_1C4F3A408;
      sub_1C4420C3C(v461, &unk_1EC0BF5A0, &qword_1C4F3A408);
      sub_1C4924B3C();
      v298 = v464;
      goto LABEL_114;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v354 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v461, &unk_1EC0BF5A0, &qword_1C4F3A408);
  sub_1C4924B3C();
  sub_1C4420C3C(v464, &unk_1EC0BF5A0, &qword_1C4F3A408);
  if ((v354 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_130:
  v355 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction;
  swift_beginAccess();
  v356 = v454;
  sub_1C4460108(v290 + v355, v454, &unk_1EC0BF590, &qword_1C4F3A3F8);
  v357 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__virtualInteraction;
  swift_beginAccess();
  v358 = *(v450 + 48);
  v359 = v356;
  v360 = v457;
  sub_1C4460108(v359, v457, &unk_1EC0BF590, &qword_1C4F3A3F8);
  sub_1C4460108(v205 + v357, v360 + v358, &unk_1EC0BF590, &qword_1C4F3A3F8);
  if (sub_1C44157D4(v360, 1, v455) == 1)
  {
    sub_1C4420C3C(v454, &unk_1EC0BF590, &qword_1C4F3A3F8);
    if (sub_1C44157D4(v457 + v358, 1, v455) == 1)
    {
      sub_1C4420C3C(v457, &unk_1EC0BF590, &qword_1C4F3A3F8);
      goto LABEL_140;
    }

LABEL_136:
    v296 = &qword_1EC0BF588;
    v297 = &qword_1C4F3A3F0;
    v298 = v457;
    goto LABEL_167;
  }

  v361 = v457;
  sub_1C4460108(v457, v452, &unk_1EC0BF590, &qword_1C4F3A3F8);
  if (sub_1C44157D4(v361 + v358, 1, v455) == 1)
  {
    sub_1C4420C3C(v454, &unk_1EC0BF590, &qword_1C4F3A3F8);
    sub_1C4924B3C();
    goto LABEL_136;
  }

  v362 = v447;
  sub_1C4924B90(v457 + v358, v447);
  v363 = *(v455 + 20);
  v364 = *(v452 + v363);
  if (v364 != *(v362 + v363))
  {
    v365 = *(v452 + v363);

    v366 = sub_1C490EBE4(v364);

    if (!v366)
    {
      sub_1C4924B3C();
      v332 = &unk_1EC0BF590;
      v333 = &qword_1C4F3A3F8;
      sub_1C4420C3C(v454, &unk_1EC0BF590, &qword_1C4F3A3F8);
      sub_1C4924B3C();
      v298 = v457;
      goto LABEL_114;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v367 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v454, &unk_1EC0BF590, &qword_1C4F3A3F8);
  sub_1C4924B3C();
  sub_1C4420C3C(v457, &unk_1EC0BF590, &qword_1C4F3A3F8);
  if ((v367 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_140:
  v368 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay;
  swift_beginAccess();
  v369 = v448;
  sub_1C4460108(v290 + v368, v448, &unk_1EC0BF580, &qword_1C4F3A3E8);
  v370 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__deviceDisplay;
  swift_beginAccess();
  v371 = *(v445 + 48);
  v372 = v369;
  v373 = v451;
  sub_1C4460108(v372, v451, &unk_1EC0BF580, &qword_1C4F3A3E8);
  sub_1C4460108(v205 + v370, v373 + v371, &unk_1EC0BF580, &qword_1C4F3A3E8);
  if (sub_1C44157D4(v373, 1, v449) == 1)
  {
    sub_1C4420C3C(v448, &unk_1EC0BF580, &qword_1C4F3A3E8);
    if (sub_1C44157D4(v451 + v371, 1, v449) == 1)
    {
      sub_1C4420C3C(v451, &unk_1EC0BF580, &qword_1C4F3A3E8);
      goto LABEL_150;
    }

LABEL_146:
    v296 = &qword_1EC0BF578;
    v297 = &qword_1C4F3A3E0;
    v298 = v451;
    goto LABEL_167;
  }

  v374 = v451;
  sub_1C4460108(v451, v446, &unk_1EC0BF580, &qword_1C4F3A3E8);
  if (sub_1C44157D4(v374 + v371, 1, v449) == 1)
  {
    sub_1C4420C3C(v448, &unk_1EC0BF580, &qword_1C4F3A3E8);
    sub_1C4924B3C();
    goto LABEL_146;
  }

  v375 = v426;
  sub_1C4924B90(v451 + v371, v426);
  v376 = *(v449 + 20);
  if (*(v446 + v376) != *(v375 + v376))
  {
    v377 = *(v446 + v376);

    sub_1C4922578();
    v379 = v378;

    if ((v379 & 1) == 0)
    {
      sub_1C4924B3C();
      v332 = &unk_1EC0BF580;
      v333 = &qword_1C4F3A3E8;
      sub_1C4420C3C(v448, &unk_1EC0BF580, &qword_1C4F3A3E8);
      sub_1C4924B3C();
      v298 = v451;
      goto LABEL_114;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v380 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v448, &unk_1EC0BF580, &qword_1C4F3A3E8);
  sub_1C4924B3C();
  sub_1C4420C3C(v451, &unk_1EC0BF580, &qword_1C4F3A3E8);
  if ((v380 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_150:
  v381 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower;
  swift_beginAccess();
  v382 = v429;
  sub_1C4460108(v290 + v381, v429, &unk_1EC0BF570, &qword_1C4F3A3D8);
  v383 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePower;
  swift_beginAccess();
  v384 = *(v427 + 48);
  v385 = v382;
  v386 = v432;
  sub_1C4460108(v385, v432, &unk_1EC0BF570, &qword_1C4F3A3D8);
  sub_1C4460108(v205 + v383, v386 + v384, &unk_1EC0BF570, &qword_1C4F3A3D8);
  if (sub_1C44157D4(v386, 1, v428) == 1)
  {
    sub_1C4420C3C(v429, &unk_1EC0BF570, &qword_1C4F3A3D8);
    if (sub_1C44157D4(v432 + v384, 1, v428) == 1)
    {
      sub_1C4420C3C(v432, &unk_1EC0BF570, &qword_1C4F3A3D8);
      goto LABEL_160;
    }

LABEL_156:
    v296 = &qword_1EC0BF568;
    v297 = &qword_1C4F3A3D0;
    v298 = v432;
    goto LABEL_167;
  }

  v387 = v432;
  sub_1C4460108(v432, v430, &unk_1EC0BF570, &qword_1C4F3A3D8);
  if (sub_1C44157D4(v387 + v384, 1, v428) == 1)
  {
    sub_1C4420C3C(v429, &unk_1EC0BF570, &qword_1C4F3A3D8);
    sub_1C4924B3C();
    goto LABEL_156;
  }

  v388 = v431;
  sub_1C4924B90(v432 + v384, v431);
  v389 = *(v428 + 20);
  v390 = *(v430 + v389);
  v391 = *(v388 + v389);
  if (v390 != v391)
  {
    v392 = *(v430 + v389);

    v393 = sub_1C48DDB34(v390, v391);

    if (!v393)
    {
      sub_1C4924B3C();
      v332 = &unk_1EC0BF570;
      v333 = &qword_1C4F3A3D8;
      sub_1C4420C3C(v429, &unk_1EC0BF570, &qword_1C4F3A3D8);
      sub_1C4924B3C();
      v298 = v432;
      goto LABEL_114;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v394 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v429, &unk_1EC0BF570, &qword_1C4F3A3D8);
  sub_1C4924B3C();
  sub_1C4420C3C(v432, &unk_1EC0BF570, &qword_1C4F3A3D8);
  if ((v394 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_160:
  v395 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata;
  swift_beginAccess();
  v396 = v435;
  sub_1C4460108(v290 + v395, v435, &unk_1EC0BF560, &qword_1C4F3A3C8);
  v397 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__locationMedata;
  swift_beginAccess();
  v398 = *(v433 + 48);
  v399 = v396;
  v400 = v438;
  sub_1C4460108(v399, v438, &unk_1EC0BF560, &qword_1C4F3A3C8);
  sub_1C4460108(v205 + v397, v400 + v398, &unk_1EC0BF560, &qword_1C4F3A3C8);
  if (sub_1C44157D4(v400, 1, v434) == 1)
  {
    sub_1C4420C3C(v435, &unk_1EC0BF560, &qword_1C4F3A3C8);
    if (sub_1C44157D4(v438 + v398, 1, v434) == 1)
    {
      sub_1C4420C3C(v438, &unk_1EC0BF560, &qword_1C4F3A3C8);
      goto LABEL_172;
    }

    goto LABEL_166;
  }

  v401 = v438;
  sub_1C4460108(v438, v436, &unk_1EC0BF560, &qword_1C4F3A3C8);
  if (sub_1C44157D4(v401 + v398, 1, v434) == 1)
  {
    sub_1C4420C3C(v435, &unk_1EC0BF560, &qword_1C4F3A3C8);
    sub_1C4924B3C();
LABEL_166:
    v296 = &qword_1EC0BF558;
    v297 = &qword_1C4F3A3C0;
    v298 = v438;
    goto LABEL_167;
  }

  v402 = v437;
  sub_1C4924B90(v438 + v398, v437);
  v403 = *(v434 + 20);
  if (*(v436 + v403) != *(v402 + v403))
  {
    v404 = *(v436 + v403);

    sub_1C4922578();
    v406 = v405;

    if ((v406 & 1) == 0)
    {
      sub_1C4924B3C();
      v332 = &unk_1EC0BF560;
      v333 = &qword_1C4F3A3C8;
      sub_1C4420C3C(v435, &unk_1EC0BF560, &qword_1C4F3A3C8);
      sub_1C4924B3C();
      v298 = v438;
      goto LABEL_114;
    }
  }

  sub_1C4F00328();
  sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
  v407 = sub_1C4F010B8();
  sub_1C4924B3C();
  sub_1C4420C3C(v435, &unk_1EC0BF560, &qword_1C4F3A3C8);
  sub_1C4924B3C();
  sub_1C4420C3C(v438, &unk_1EC0BF560, &qword_1C4F3A3C8);
  if ((v407 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_172:
  v408 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution;
  swift_beginAccess();
  v409 = v441;
  sub_1C4460108(v290 + v408, v441, &qword_1EC0BF550, &qword_1C4F3A3B8);
  v410 = OBJC_IVAR____TtCV24IntelligencePlatformCore17HUTenPointContextP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__ambientLightDistribution;
  swift_beginAccess();
  v411 = *(v439 + 48);
  v412 = v409;
  v413 = v444;
  sub_1C4460108(v412, v444, &qword_1EC0BF550, &qword_1C4F3A3B8);
  sub_1C4460108(v205 + v410, v413 + v411, &qword_1EC0BF550, &qword_1C4F3A3B8);
  if (sub_1C44157D4(v413, 1, v440) != 1)
  {
    v414 = v444;
    sub_1C4460108(v444, v443, &qword_1EC0BF550, &qword_1C4F3A3B8);
    if (sub_1C44157D4(v414 + v411, 1, v440) == 1)
    {

      sub_1C4420C3C(v441, &qword_1EC0BF550, &qword_1C4F3A3B8);
      sub_1C4924B3C();
      goto LABEL_178;
    }

    v418 = v442;
    sub_1C4924B90(v444 + v411, v442);
    v419 = *(v440 + 20);
    if (*(v443 + v419) != *(v418 + v419))
    {
      v420 = *(v443 + v419);

      sub_1C4922578();
      v422 = v421;

      if ((v422 & 1) == 0)
      {

        sub_1C4924B3C();
        sub_1C4420C3C(v441, &qword_1EC0BF550, &qword_1C4F3A3B8);
        sub_1C4924B3C();
        v417 = v444;
        v415 = &qword_1EC0BF550;
        v416 = &qword_1C4F3A3B8;
        goto LABEL_179;
      }
    }

    sub_1C4F00328();
    sub_1C49231A4(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08]);
    v423 = sub_1C4F010B8();

    sub_1C4924B3C();
    sub_1C4420C3C(v441, &qword_1EC0BF550, &qword_1C4F3A3B8);
    sub_1C4924B3C();
    sub_1C4420C3C(v444, &qword_1EC0BF550, &qword_1C4F3A3B8);
    return (v423 & 1) != 0;
  }

  sub_1C4420C3C(v441, &qword_1EC0BF550, &qword_1C4F3A3B8);
  if (sub_1C44157D4(v444 + v411, 1, v440) != 1)
  {
LABEL_178:
    v415 = &qword_1EC0BF548;
    v416 = &qword_1C4F3A3B0;
    v417 = v444;
LABEL_179:
    sub_1C4420C3C(v417, v415, v416);
    return 0;
  }

  sub_1C4420C3C(v444, &qword_1EC0BF550, &qword_1C4F3A3B8);
  return 1;
}

uint64_t sub_1C48BC168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF688, type metadata accessor for HUTenPointContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48BC208()
{
  sub_1C49231A4(&qword_1EC0BF4B8, type metadata accessor for HUTenPointContext);

  return sub_1C4F00428();
}

uint64_t sub_1C48BC2D0()
{
  sub_1C49231A4(&qword_1EC0BF4B8, type metadata accessor for HUTenPointContext);

  return sub_1C4F00438();
}

uint64_t sub_1C48BC3BC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1522A0);
  sub_1C442B738(v0, qword_1EC1522A0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C4F0F830;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "month";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "day_of_month";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "day_of_week";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "is_weekend";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "hour_of_day";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "part_of_day";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "five_min_bucket_of_hour";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C48BC6EC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  sub_1C43FD23C(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1C48BC73C()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__month;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48BC834(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  v7 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__month;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth, 1, 1, v8);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek, 1, 1, v8);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend, 1, 1, v8);
  v23 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay, 1, 1, v8);
  v24 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay, 1, 1, v8);
  v25 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour, 1, 1, v8);
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__month;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek;
  swift_beginAccess();
  sub_1C4460108(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend;
  swift_beginAccess();
  sub_1C4460108(a1 + v15, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay;
  swift_beginAccess();
  sub_1C4460108(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = v23;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay;
  swift_beginAccess();
  sub_1C4460108(a1 + v18, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = v24;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v19, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour;
  swift_beginAccess();
  sub_1C4460108(a1 + v20, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v21 = v25;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v21, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48BCC7C()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__month, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48BCD9C()
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48BCE54()
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
        sub_1C48BCF88();
        break;
      case 2:
        sub_1C48BD064();
        break;
      case 3:
        sub_1C48BD140();
        break;
      case 4:
        sub_1C48BD21C();
        break;
      case 5:
        sub_1C48BD2F8();
        break;
      case 6:
        sub_1C48BD3D4();
        break;
      case 7:
        sub_1C48BD4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48BCF88()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48BD064()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48BD140()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48BD21C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48BD2F8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48BD3D4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48BD4B0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48BD58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48BD654(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48BD83C(a1, a2, a3, a4);
    sub_1C48BDA24(a1, a2, a3, a4);
    sub_1C48BDC0C(a1, a2, a3, a4);
    sub_1C48BDDF4(a1, a2, a3, a4);
    sub_1C48BDFDC(a1, a2, a3, a4);
    return sub_1C48BE1C4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48BD654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__month;
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

uint64_t sub_1C48BD83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth;
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

uint64_t sub_1C48BDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek;
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

uint64_t sub_1C48BDC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend;
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

uint64_t sub_1C48BDDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay;
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

uint64_t sub_1C48BDFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay;
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

uint64_t sub_1C48BE1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour;
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

BOOL sub_1C48BE3AC(uint64_t a1, uint64_t a2)
{
  v146 = a2;
  v144 = type metadata accessor for FeatureValue(0);
  v4 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v143 = (&v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v6 = *(*(v145 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v145);
  v126 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v129 = &v124 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v132 = &v124 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v124 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v138 = &v124 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v142 = &v124 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v124 - v19;
  v21 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v125 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v128 = &v124 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v127 = &v124 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v131 = &v124 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v130 = &v124 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v134 = &v124 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v133 = &v124 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v137 = &v124 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v136 = &v124 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v140 = &v124 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v139 = &v124 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v141 = &v124 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v124 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v124 - v50;
  v52 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__month;
  swift_beginAccess();
  sub_1C4460108(a1 + v52, v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v53 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__month;
  swift_beginAccess();
  v54 = *(v145 + 48);
  sub_1C4460108(v51, v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v55 = a2 + v53;
  v56 = v144;
  sub_1C4460108(v55, &v20[v54], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v20, 1, v56) == 1)
  {

    sub_1C4420C3C(v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(&v20[v54], 1, v56) != 1)
    {
      goto LABEL_13;
    }

    sub_1C4420C3C(v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v20, v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(&v20[v54], 1, v56) == 1)
    {

      sub_1C4420C3C(v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_12:
      sub_1C4924B3C();
      goto LABEL_13;
    }

    v57 = &v20[v54];
    v58 = v143;
    sub_1C4924B90(v57, v143);

    v59 = sub_1C47E3504(v49, v58);
    sub_1C4924B3C();
    sub_1C4420C3C(v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v59 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v60 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth;
  swift_beginAccess();
  v61 = v141;
  sub_1C4460108(a1 + v60, v141, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v62 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfMonth;
  v63 = v146;
  swift_beginAccess();
  v64 = *(v145 + 48);
  v20 = v142;
  sub_1C4460108(v61, v142, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v63 + v62, &v20[v64], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v20, 1, v56) == 1)
  {
    sub_1C4420C3C(v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(&v20[v64], 1, v56) == 1)
    {
      v65 = a1;
      sub_1C4420C3C(v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_18;
    }

LABEL_13:
    sub_1C4420C3C(v20, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_14;
  }

  v66 = v139;
  sub_1C4460108(v20, v139, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v20[v64], 1, v56) == 1)
  {
    sub_1C4420C3C(v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_12;
  }

  v68 = v61;
  v65 = a1;
  v69 = v143;
  sub_1C4924B90(&v20[v64], v143);
  v70 = sub_1C47E3504(v66, v69);
  sub_1C4924B3C();
  sub_1C4420C3C(v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v70 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v71 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek;
  swift_beginAccess();
  v72 = v140;
  sub_1C4460108(v65 + v71, v140, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v73 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__dayOfWeek;
  v74 = v146;
  swift_beginAccess();
  v75 = *(v145 + 48);
  v76 = v138;
  sub_1C4460108(v72, v138, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v74 + v73, v76 + v75, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v76, 1, v56) == 1)
  {
    sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v76 + v75, 1, v56) != 1)
    {
      goto LABEL_24;
    }

    sub_1C4420C3C(v76, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v77 = v136;
    sub_1C4460108(v76, v136, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v76 + v75, 1, v56) == 1)
    {
      sub_1C4420C3C(v140, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_23:
      sub_1C4924B3C();
      goto LABEL_24;
    }

    v79 = v76 + v75;
    v80 = v143;
    sub_1C4924B90(v79, v143);
    v81 = sub_1C47E3504(v77, v80);
    sub_1C4924B3C();
    sub_1C4420C3C(v140, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v76, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v81 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v82 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend;
  swift_beginAccess();
  v83 = v137;
  sub_1C4460108(v65 + v82, v137, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v84 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isWeekend;
  v85 = v146;
  swift_beginAccess();
  v86 = *(v145 + 48);
  v87 = v135;
  sub_1C4460108(v83, v135, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v85 + v84, v87 + v86, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v87, 1, v56) == 1)
  {
    sub_1C4420C3C(v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v87 + v86, 1, v56) != 1)
    {
LABEL_32:
      v78 = v87;
      goto LABEL_33;
    }

    sub_1C4420C3C(v87, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v88 = v133;
    sub_1C4460108(v87, v133, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v87 + v86, 1, v56) == 1)
    {
      v89 = v137;
LABEL_31:
      sub_1C4420C3C(v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_32;
    }

    v90 = v87 + v86;
    v91 = v143;
    sub_1C4924B90(v90, v143);
    v92 = v87;
    v93 = sub_1C47E3504(v88, v91);
    sub_1C4924B3C();
    sub_1C4420C3C(v137, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v92, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v93 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v94 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay;
  swift_beginAccess();
  v95 = v134;
  sub_1C4460108(v65 + v94, v134, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v96 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hourOfDay;
  v97 = v146;
  swift_beginAccess();
  v98 = v145;
  v99 = *(v145 + 48);
  v100 = v95;
  v76 = v132;
  sub_1C4460108(v100, v132, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v97 + v96, v76 + v99, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v76, 1, v56) == 1)
  {
    sub_1C4420C3C(v134, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v76 + v99, 1, v56) == 1)
    {
      sub_1C4420C3C(v76, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_42;
    }

LABEL_24:
    v78 = v76;
LABEL_33:
    sub_1C4420C3C(v78, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_14;
  }

  v101 = v130;
  sub_1C4460108(v76, v130, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v76 + v99, 1, v56) == 1)
  {
    sub_1C4420C3C(v134, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_23;
  }

  v102 = v76 + v99;
  v103 = v143;
  sub_1C4924B90(v102, v143);
  v104 = sub_1C47E3504(v101, v103);
  sub_1C4924B3C();
  sub_1C4420C3C(v134, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v76, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v104 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_42:
  v105 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay;
  swift_beginAccess();
  v106 = v131;
  sub_1C4460108(v65 + v105, v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v107 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__partOfDay;
  v108 = v146;
  swift_beginAccess();
  v109 = *(v98 + 48);
  v87 = v129;
  sub_1C4460108(v106, v129, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v108 + v107, v87 + v109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v87, 1, v56) != 1)
  {
    v110 = v127;
    sub_1C4460108(v87, v127, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v87 + v109, 1, v56) == 1)
    {
      v89 = v131;
      goto LABEL_31;
    }

    v111 = v143;
    sub_1C4924B90(v87 + v109, v143);
    v112 = v87;
    v113 = sub_1C47E3504(v110, v111);
    sub_1C4924B3C();
    sub_1C4420C3C(v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v112, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (v113)
    {
      goto LABEL_48;
    }

LABEL_14:

    return 0;
  }

  sub_1C4420C3C(v106, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v87 + v109, 1, v56) != 1)
  {
    goto LABEL_32;
  }

  sub_1C4420C3C(v87, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_48:
  v114 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour;
  swift_beginAccess();
  v115 = v128;
  sub_1C4460108(v65 + v114, v128, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v116 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11TimeAndDateP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__fiveMinBucketOfHour;
  v117 = v146;
  swift_beginAccess();
  v118 = *(v145 + 48);
  v119 = v126;
  sub_1C4460108(v115, v126, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v117 + v116, v119 + v118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v119, 1, v56) == 1)
  {

    sub_1C4420C3C(v115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v119 + v118, 1, v56) == 1)
    {
      sub_1C4420C3C(v119, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      return 1;
    }

    goto LABEL_53;
  }

  v120 = v125;
  sub_1C4460108(v119, v125, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v119 + v118, 1, v56) == 1)
  {

    sub_1C4420C3C(v128, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_53:
    sub_1C4420C3C(v119, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  v121 = v119 + v118;
  v122 = v143;
  sub_1C4924B90(v121, v143);
  v123 = sub_1C47E3504(v120, v122);

  sub_1C4924B3C();
  sub_1C4420C3C(v128, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v119, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return (v123 & 1) != 0;
}

uint64_t sub_1C48BF700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF690, type metadata accessor for HUTenPointContext.TimeAndDate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48BF7A0()
{
  sub_1C49231A4(&qword_1EC0BF498, type metadata accessor for HUTenPointContext.TimeAndDate);

  return sub_1C4F00428();
}

uint64_t sub_1C48BF868()
{
  sub_1C49231A4(&qword_1EC0BF498, type metadata accessor for HUTenPointContext.TimeAndDate);

  return sub_1C4F00438();
}

uint64_t sub_1C48BF96C()
{
  v0 = *(type metadata accessor for HUTenPointContext.MotionState(0) + 20);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C48BFA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = type metadata accessor for HUTenPointContext.MotionState(0);
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

uint64_t sub_1C48BFCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF698, type metadata accessor for HUTenPointContext.MotionState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48BFD40()
{
  sub_1C49231A4(&qword_1EC0BF478, type metadata accessor for HUTenPointContext.MotionState);

  return sub_1C4F00428();
}

uint64_t sub_1C48BFE08()
{
  sub_1C49231A4(&qword_1EC0BF478, type metadata accessor for HUTenPointContext.MotionState);

  return sub_1C4F00438();
}

uint64_t sub_1C48BFEB4()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F9B020);
  qword_1EC1522E0 = v1[0];
  *algn_1EC1522E8 = v1[1];
  return result;
}

uint64_t sub_1C48BFF28()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1522F0);
  sub_1C442B738(v0, qword_1EC1522F0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "place_type";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "user_specific_place_type";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C48C00F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    v6 = sub_1C4F00378();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (v6 == 2)
    {
      sub_1C440A9B8();
      sub_1C48DEFCC();
    }

    else if (v6 == 1)
    {
      v8 = sub_1C440A9B8();
      a4(v8);
    }
  }
}

uint64_t sub_1C48C018C()
{
  v0 = *(type metadata accessor for HUTenPointContext.SemanticLocation(0) + 20);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C48C0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1C4405A6C();
  v7 = sub_1C43FEE60();
  result = v8(v7);
  if (!v5)
  {
    v10 = sub_1C43FEE60();
    sub_1C48DF240(v10, v11, v12, v13, a5);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C48C029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = type metadata accessor for HUTenPointContext.SemanticLocation(0);
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

uint64_t sub_1C48C0544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6A0, type metadata accessor for HUTenPointContext.SemanticLocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48C05E4()
{
  sub_1C49231A4(&qword_1EC0BF458, type metadata accessor for HUTenPointContext.SemanticLocation);

  return sub_1C4F00428();
}

uint64_t sub_1C48C06AC()
{
  sub_1C49231A4(&qword_1EC0BF458, type metadata accessor for HUTenPointContext.SemanticLocation);

  return sub_1C4F00438();
}

uint64_t sub_1C48C0784()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152318);
  sub_1C442B738(v0, qword_1EC152318);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1C4F37DF0;
  v4 = v131 + v3 + v1[14];
  *(v131 + v3) = 1;
  *v4 = "restaurant_reciprocal_rank";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v131 + v3 + v2 + v1[14];
  *(v131 + v3 + v2) = 2;
  *v8 = "grocery_reciprocal_rank";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  v7();
  v9 = (v131 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "coffee_reciprocal_rank";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v131 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "gym_reciprocal_rank";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v131 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "stadium_reciprocal_rank";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v131 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hike_reciprocal_rank";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v131 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "park_reciprocal_rank";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v131 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "library_reciprocal_rank";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v7();
  v21 = (v131 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "religious_reciprocal_rank";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v131 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "movie_reciprocal_rank";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v7();
  v25 = (v131 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "bus_reciprocal_rank";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v7();
  v27 = (v131 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "train_reciprocal_rank";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v7();
  v29 = (v131 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "airport_reciprocal_rank";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v131 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "ev_reciprocal_rank";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v131 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "gas_reciprocal_rank";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v7();
  v35 = (v131 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "laundry_reciprocal_rank";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v7();
  v37 = (v131 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "museum_reciprocal_rank";
  *(v38 + 1) = 22;
  v38[16] = 2;
  v7();
  v39 = (v131 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "unknown";
  *(v40 + 1) = 7;
  v40[16] = 2;
  v41 = *MEMORY[0x1E69AADC8];
  v7();
  v42 = (v131 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "geo_poi_category_airport_reciprocal_rank";
  *(v43 + 1) = 40;
  v43[16] = 2;
  v7();
  v44 = (v131 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "geo_poi_category_amusement_park_reciprocal_rank";
  *(v45 + 1) = 47;
  v45[16] = 2;
  v7();
  v46 = (v131 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "geo_poi_category_aquarium_reciprocal_rank";
  *(v47 + 1) = 41;
  v47[16] = 2;
  v7();
  v48 = (v131 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "geo_poi_category_atm_reciprocal_rank";
  *(v49 + 1) = 36;
  v49[16] = 2;
  v7();
  v50 = (v131 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "geo_poi_category_bakery_reciprocal_rank";
  *(v51 + 1) = 39;
  v51[16] = 2;
  v7();
  v52 = (v131 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "geo_poi_category_bank_reciprocal_rank";
  *(v53 + 1) = 37;
  v53[16] = 2;
  v7();
  v54 = (v131 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "geo_poi_category_beach_reciprocal_rank";
  *(v55 + 1) = 38;
  v55[16] = 2;
  v7();
  v56 = (v131 + v3 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "geo_poi_category_brewery_reciprocal_rank";
  *(v57 + 1) = 40;
  v57[16] = 2;
  v7();
  v58 = (v131 + v3 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "geo_poi_category_cafe_reciprocal_rank";
  *(v59 + 1) = 37;
  v59[16] = 2;
  v7();
  v60 = (v131 + v3 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "geo_poi_category_campground_reciprocal_rank";
  *(v61 + 1) = 43;
  v61[16] = 2;
  v7();
  v62 = (v131 + v3 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "geo_poi_category_car_rental_reciprocal_rank";
  *(v63 + 1) = 43;
  v63[16] = 2;
  v7();
  v64 = (v131 + v3 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "geo_poi_category_ev_charger_reciprocal_rank";
  *(v65 + 1) = 43;
  v65[16] = 2;
  v7();
  v66 = (v131 + v3 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "geo_poi_category_fire_station_reciprocal_rank";
  *(v67 + 1) = 45;
  v67[16] = 2;
  v7();
  v68 = (v131 + v3 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 32;
  *v69 = "geo_poi_category_fitness_center_reciprocal_rank";
  *(v69 + 1) = 47;
  v69[16] = 2;
  v7();
  v70 = (v131 + v3 + 32 * v2);
  v71 = v70 + v1[14];
  *v70 = 33;
  *v71 = "geo_poi_category_food_market_reciprocal_rank";
  *(v71 + 1) = 44;
  v71[16] = 2;
  v7();
  v72 = (v131 + v3 + 33 * v2);
  v73 = v72 + v1[14];
  *v72 = 34;
  *v73 = "geo_poi_category_gas_station_reciprocal_rank";
  *(v73 + 1) = 44;
  v73[16] = 2;
  v7();
  v74 = (v131 + v3 + 34 * v2);
  v75 = v74 + v1[14];
  *v74 = 35;
  *v75 = "geo_poi_category_hospital_reciprocal_rank";
  *(v75 + 1) = 41;
  v75[16] = 2;
  v7();
  v76 = (v131 + v3 + 35 * v2);
  v77 = v76 + v1[14];
  *v76 = 36;
  *v77 = "geo_poi_category_hotel_reciprocal_rank";
  *(v77 + 1) = 38;
  v77[16] = 2;
  v7();
  v78 = (v131 + v3 + 36 * v2);
  v79 = v78 + v1[14];
  *v78 = 37;
  *v79 = "geo_poi_category_laundry_reciprocal_rank";
  *(v79 + 1) = 40;
  v79[16] = 2;
  v7();
  v80 = (v131 + v3 + 37 * v2);
  v81 = v80 + v1[14];
  *v80 = 38;
  *v81 = "geo_poi_category_library_reciprocal_rank";
  *(v81 + 1) = 40;
  v81[16] = 2;
  v7();
  v82 = (v131 + v3 + 38 * v2);
  v83 = v82 + v1[14];
  *v82 = 39;
  *v83 = "geo_poi_category_marina_reciprocal_rank";
  *(v83 + 1) = 39;
  v83[16] = 2;
  v7();
  v84 = (v131 + v3 + 39 * v2);
  v85 = v84 + v1[14];
  *v84 = 40;
  *v85 = "geo_poi_category_movie_theater_reciprocal_rank";
  *(v85 + 1) = 46;
  v85[16] = 2;
  v7();
  v86 = (v131 + v3 + 40 * v2);
  v87 = v86 + v1[14];
  *v86 = 41;
  *v87 = "geo_poi_category_museum_reciprocal_rank";
  *(v87 + 1) = 39;
  v87[16] = 2;
  v7();
  v88 = (v131 + v3 + 41 * v2);
  v89 = v88 + v1[14];
  *v88 = 42;
  *v89 = "geo_poi_category_national_park_reciprocal_rank";
  *(v89 + 1) = 46;
  v89[16] = 2;
  v7();
  v90 = (v131 + v3 + 42 * v2);
  v91 = v90 + v1[14];
  *v90 = 43;
  *v91 = "geo_poi_category_night_life_reciprocal_rank";
  *(v91 + 1) = 43;
  v91[16] = 2;
  v7();
  v92 = (v131 + v3 + 43 * v2);
  v93 = v92 + v1[14];
  *v92 = 44;
  *v93 = "geo_poi_category_park_reciprocal_rank";
  *(v93 + 1) = 37;
  v93[16] = 2;
  v7();
  v94 = (v131 + v3 + 44 * v2);
  v95 = v94 + v1[14];
  *v94 = 45;
  *v95 = "geo_poi_category_parking_reciprocal_rank";
  *(v95 + 1) = 40;
  v95[16] = 2;
  v7();
  v96 = (v131 + v3 + 45 * v2);
  v97 = v96 + v1[14];
  *v96 = 46;
  *v97 = "geo_poi_category_pharmacy_reciprocal_rank";
  *(v97 + 1) = 41;
  v97[16] = 2;
  v7();
  v98 = (v131 + v3 + 46 * v2);
  v99 = v98 + v1[14];
  *v98 = 47;
  *v99 = "geo_poi_category_playground_reciprocal_rank";
  *(v99 + 1) = 43;
  v99[16] = 2;
  v7();
  v100 = (v131 + v3 + 47 * v2);
  v101 = v100 + v1[14];
  *v100 = 48;
  *v101 = "geo_poi_category_police_reciprocal_rank";
  *(v101 + 1) = 39;
  v101[16] = 2;
  v7();
  v102 = (v131 + v3 + 48 * v2);
  v103 = v102 + v1[14];
  *v102 = 49;
  *v103 = "geo_poi_category_post_office_reciprocal_rank";
  *(v103 + 1) = 44;
  v103[16] = 2;
  v7();
  v104 = (v131 + v3 + 49 * v2);
  v105 = v104 + v1[14];
  *v104 = 50;
  *v105 = "geo_poi_category_public_transport_reciprocal_rank";
  *(v105 + 1) = 49;
  v105[16] = 2;
  v7();
  v106 = (v131 + v3 + 50 * v2);
  v107 = v106 + v1[14];
  *v106 = 51;
  *v107 = "geo_poi_category_religious_site_reciprocal_rank";
  *(v107 + 1) = 47;
  v107[16] = 2;
  v7();
  v108 = (v131 + v3 + 51 * v2);
  v109 = v108 + v1[14];
  *v108 = 52;
  *v109 = "geo_poi_category_restaurant_reciprocal_rank";
  *(v109 + 1) = 43;
  v109[16] = 2;
  v7();
  v110 = (v131 + v3 + 52 * v2);
  v111 = v110 + v1[14];
  *v110 = 53;
  *v111 = "geo_poi_category_restroom_reciprocal_rank";
  *(v111 + 1) = 41;
  v111[16] = 2;
  v7();
  v112 = (v131 + v3 + 53 * v2);
  v113 = v112 + v1[14];
  *v112 = 54;
  *v113 = "geo_poi_category_school_reciprocal_rank";
  *(v113 + 1) = 39;
  v113[16] = 2;
  v7();
  v114 = (v131 + v3 + 54 * v2);
  v115 = v114 + v1[14];
  *v114 = 55;
  *v115 = "geo_poi_category_stadium_reciprocal_rank";
  *(v115 + 1) = 40;
  v115[16] = 2;
  v7();
  v116 = (v131 + v3 + 55 * v2);
  v117 = v116 + v1[14];
  *v116 = 56;
  *v117 = "geo_poi_category_store_reciprocal_rank";
  *(v117 + 1) = 38;
  v117[16] = 2;
  v7();
  v118 = (v131 + v3 + 56 * v2);
  v119 = v118 + v1[14];
  *v118 = 57;
  *v119 = "geo_poi_category_theater_reciprocal_rank";
  *(v119 + 1) = 40;
  v119[16] = 2;
  v7();
  v120 = (v131 + v3 + 57 * v2);
  v121 = v120 + v1[14];
  *v120 = 58;
  *v121 = "geo_poi_category_university_reciprocal_rank";
  *(v121 + 1) = 43;
  v121[16] = 2;
  v7();
  v122 = (v131 + v3 + 58 * v2);
  v123 = v122 + v1[14];
  *v122 = 59;
  *v123 = "geo_poi_category_winery_reciprocal_rank";
  *(v123 + 1) = 39;
  v123[16] = 2;
  v7();
  v124 = (v131 + v3 + 59 * v2);
  v125 = v124 + v1[14];
  *v124 = 60;
  *v125 = "geo_poi_category_zoo_reciprocal_rank";
  *(v125 + 1) = 36;
  v125[16] = 2;
  v7();
  v126 = (v131 + v3 + 60 * v2);
  v127 = v126 + v1[14];
  *v126 = 61;
  *v127 = "geo_poi_category_airport_gate_reciprocal_rank";
  *(v127 + 1) = 45;
  v127[16] = 2;
  v7();
  v128 = (v131 + v3 + 61 * v2);
  v129 = v128 + v1[14];
  *v128 = 62;
  *v129 = "geo_poi_category_airport_terminal_reciprocal_rank";
  *(v129 + 1) = 49;
  v129[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C48C181C()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__restaurantReciprocalRank;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48C1F18(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v133 - v5;
  v7 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__restaurantReciprocalRank;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank, 1, 1, v8);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank, 1, 1, v8);
  v134 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank, 1, 1, v8);
  v135 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank, 1, 1, v8);
  v136 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank, 1, 1, v8);
  v137 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank, 1, 1, v8);
  v138 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank, 1, 1, v8);
  v139 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank, 1, 1, v8);
  v140 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank, 1, 1, v8);
  v141 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank, 1, 1, v8);
  v142 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank, 1, 1, v8);
  v143 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank, 1, 1, v8);
  v144 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank, 1, 1, v8);
  v145 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank, 1, 1, v8);
  v146 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank, 1, 1, v8);
  v147 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank, 1, 1, v8);
  v148 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown, 1, 1, v8);
  v149 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank, 1, 1, v8);
  v150 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank, 1, 1, v8);
  v151 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank, 1, 1, v8);
  v152 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank, 1, 1, v8);
  v153 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank, 1, 1, v8);
  v154 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank, 1, 1, v8);
  v155 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank, 1, 1, v8);
  v156 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank, 1, 1, v8);
  v157 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank, 1, 1, v8);
  v158 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank, 1, 1, v8);
  v159 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank, 1, 1, v8);
  v160 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank, 1, 1, v8);
  v161 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank, 1, 1, v8);
  v162 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank, 1, 1, v8);
  v163 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank, 1, 1, v8);
  v164 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank, 1, 1, v8);
  v165 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank, 1, 1, v8);
  v166 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank, 1, 1, v8);
  v167 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank, 1, 1, v8);
  v168 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank, 1, 1, v8);
  v169 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank, 1, 1, v8);
  v170 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank, 1, 1, v8);
  v171 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank, 1, 1, v8);
  v172 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank, 1, 1, v8);
  v173 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank, 1, 1, v8);
  v174 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank, 1, 1, v8);
  v175 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank, 1, 1, v8);
  v176 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank, 1, 1, v8);
  v177 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank, 1, 1, v8);
  v178 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank, 1, 1, v8);
  v179 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank, 1, 1, v8);
  v180 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank, 1, 1, v8);
  v181 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank, 1, 1, v8);
  v182 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank, 1, 1, v8);
  v183 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank, 1, 1, v8);
  v184 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank, 1, 1, v8);
  v185 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank, 1, 1, v8);
  v186 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank, 1, 1, v8);
  v187 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank, 1, 1, v8);
  v188 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank, 1, 1, v8);
  v189 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank, 1, 1, v8);
  v190 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank, 1, 1, v8);
  v191 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank, 1, 1, v8);
  v192 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank, 1, 1, v8);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__restaurantReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = v134;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = v135;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v18, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = v136;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v19, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v20, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v21 = v137;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v21, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v22, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v23 = v138;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v24, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v25 = v139;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v26, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v27 = v140;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v27, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v28, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v29 = v141;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v29, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v30, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v31 = v142;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v32, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v33 = v143;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v33, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v34, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v35 = v144;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v36, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v37 = v145;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v38, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v39 = v146;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v39, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v40, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v41 = v147;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v41, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown;
  swift_beginAccess();
  sub_1C4460108(a1 + v42, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v43 = v148;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v44, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v45 = v149;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v45, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v46, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v47 = v150;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v47, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v48, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v49 = v151;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v50, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = v152;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v51, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v52, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v53 = v153;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v53, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v54, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v55 = v154;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v56, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v57 = v155;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v57, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v58, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v59 = v156;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v59, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v60, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v61 = v157;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v62, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v63 = v158;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v63, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v64, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v65 = v159;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v66, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v67 = v160;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v67, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v68, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v69 = v161;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v70 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v70, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v71 = v162;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v72 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v72, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v73 = v163;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v73, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v74 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v74, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v75 = v164;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v75, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v76 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v76, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v77 = v165;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v78 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v78, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v79 = v166;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v79, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v80 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v80, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v81 = v167;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v81, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v82 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v82, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v83 = v168;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v84 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v84, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v85 = v169;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v85, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v86 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v86, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v87 = v170;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v87, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v88 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v88, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v89 = v171;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v90 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v90, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v91 = v172;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v91, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v92 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v92, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v93 = v173;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v93, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v94 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v94, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v95 = v174;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v95, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v96 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v96, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v97 = v175;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v97, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v98 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v98, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v99 = v176;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v99, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v100 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v100, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v101 = v177;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v102 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v102, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v103 = v178;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v104 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v104, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v105 = v179;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v106 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v106, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v107 = v180;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v107, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v108 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v108, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v109 = v181;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v110 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v110, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v111 = v182;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v111, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v112 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v112, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v113 = v183;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v113, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v114 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v114, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v115 = v184;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v116 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v116, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v117 = v185;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v117, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v118 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v118, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v119 = v186;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v119, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v120 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v120, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v121 = v187;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v122 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v122, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v123 = v188;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v123, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v124 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v124, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v125 = v189;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v125, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v126 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v126, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v127 = v190;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v127, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v128 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v128, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v129 = v191;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v129, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v130 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank;
  swift_beginAccess();
  sub_1C4460108(a1 + v130, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v131 = v192;
  swift_beginAccess();
  sub_1C44408D4(v6, v1 + v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48C3FB0()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__restaurantReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48C45F8()
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48C4718()
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
        sub_1C48C4E50();
        break;
      case 2:
        sub_1C48C4F2C();
        break;
      case 3:
        sub_1C48C5008();
        break;
      case 4:
        sub_1C48C50E4();
        break;
      case 5:
        sub_1C48C51C0();
        break;
      case 6:
        sub_1C48C529C();
        break;
      case 7:
        sub_1C48C5378();
        break;
      case 8:
        sub_1C48C5454();
        break;
      case 9:
        sub_1C48C5530();
        break;
      case 10:
        sub_1C48C560C();
        break;
      case 11:
        sub_1C48C56E8();
        break;
      case 12:
        sub_1C48C57C4();
        break;
      case 13:
        sub_1C48C58A0();
        break;
      case 14:
        sub_1C48C597C();
        break;
      case 15:
        sub_1C48C5A58();
        break;
      case 16:
        sub_1C48C5B34();
        break;
      case 17:
        sub_1C48C5C10();
        break;
      case 18:
        sub_1C48C5CEC();
        break;
      case 19:
        sub_1C48C5DC8();
        break;
      case 20:
        sub_1C48C5EA4();
        break;
      case 21:
        sub_1C48C5F80();
        break;
      case 22:
        sub_1C48C605C();
        break;
      case 23:
        sub_1C48C6138();
        break;
      case 24:
        sub_1C48C6214();
        break;
      case 25:
        sub_1C48C62F0();
        break;
      case 26:
        sub_1C48C63CC();
        break;
      case 27:
        sub_1C48C64A8();
        break;
      case 28:
        sub_1C48C6584();
        break;
      case 29:
        sub_1C48C6660();
        break;
      case 30:
        sub_1C48C673C();
        break;
      case 31:
        sub_1C48C6818();
        break;
      case 32:
        sub_1C48C68F4();
        break;
      case 33:
        sub_1C48C69D0();
        break;
      case 34:
        sub_1C48C6AAC();
        break;
      case 35:
        sub_1C48C6B88();
        break;
      case 36:
        sub_1C48C6C64();
        break;
      case 37:
        sub_1C48C6D40();
        break;
      case 38:
        sub_1C48C6E1C();
        break;
      case 39:
        sub_1C48C6EF8();
        break;
      case 40:
        sub_1C48C6FD4();
        break;
      case 41:
        sub_1C48C70B0();
        break;
      case 42:
        sub_1C48C718C();
        break;
      case 43:
        sub_1C48C7268();
        break;
      case 44:
        sub_1C48C7344();
        break;
      case 45:
        sub_1C48C7420();
        break;
      case 46:
        sub_1C48C74FC();
        break;
      case 47:
        sub_1C48C75D8();
        break;
      case 48:
        sub_1C48C76B4();
        break;
      case 49:
        sub_1C48C7790();
        break;
      case 50:
        sub_1C48C786C();
        break;
      case 51:
        sub_1C48C7948();
        break;
      case 52:
        sub_1C48C7A24();
        break;
      case 53:
        sub_1C48C7B00();
        break;
      case 54:
        sub_1C48C7BDC();
        break;
      case 55:
        sub_1C48C7CB8();
        break;
      case 56:
        sub_1C48C7D94();
        break;
      case 57:
        sub_1C48C7E70();
        break;
      case 58:
        sub_1C48C7F4C();
        break;
      case 59:
        sub_1C48C8028();
        break;
      case 60:
        sub_1C48C8104();
        break;
      case 61:
        sub_1C48C81E0();
        break;
      case 62:
        sub_1C48C82BC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48C4E50()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C4F2C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5008()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C50E4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C51C0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C529C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5378()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5454()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5530()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C560C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C56E8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C57C4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C58A0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C597C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5A58()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5B34()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5C10()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5CEC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5DC8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5EA4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C5F80()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C605C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6138()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6214()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C62F0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C63CC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C64A8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6584()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6660()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C673C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6818()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C68F4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C69D0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6AAC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6B88()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6C64()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6D40()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6E1C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6EF8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C6FD4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C70B0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C718C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7268()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7344()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7420()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C74FC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C75D8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C76B4()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7790()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C786C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7948()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7A24()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7B00()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7BDC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7CB8()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7D94()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7E70()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C7F4C()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C8028()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C8104()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C81E0()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C82BC()
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48C8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48C898C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48C8B74(a1, a2, a3, a4);
    sub_1C48C8D5C(a1, a2, a3, a4);
    sub_1C48C8F44(a1, a2, a3, a4);
    sub_1C48C912C(a1, a2, a3, a4);
    sub_1C48C9314(a1, a2, a3, a4);
    sub_1C48C94FC(a1, a2, a3, a4);
    sub_1C48C96E4(a1, a2, a3, a4);
    sub_1C48C98CC(a1, a2, a3, a4);
    sub_1C48C9AB4(a1, a2, a3, a4);
    sub_1C48C9C9C(a1, a2, a3, a4);
    sub_1C48C9E84(a1, a2, a3, a4);
    sub_1C48CA06C(a1, a2, a3, a4);
    sub_1C48CA254(a1, a2, a3, a4);
    sub_1C48CA43C(a1, a2, a3, a4);
    sub_1C48CA624(a1, a2, a3, a4);
    sub_1C48CA80C(a1, a2, a3, a4);
    sub_1C48CA9F4(a1, a2, a3, a4);
    sub_1C48CABDC(a1, a2, a3, a4);
    sub_1C48CADC4(a1, a2, a3, a4);
    sub_1C48CAFAC(a1, a2, a3, a4);
    sub_1C48CB194(a1, a2, a3, a4);
    sub_1C48CB37C(a1, a2, a3, a4);
    sub_1C48CB564(a1, a2, a3, a4);
    sub_1C48CB74C(a1, a2, a3, a4);
    sub_1C48CB934(a1, a2, a3, a4);
    sub_1C48CBB1C(a1, a2, a3, a4);
    sub_1C48CBD04(a1, a2, a3, a4);
    sub_1C48CBEEC(a1, a2, a3, a4);
    sub_1C48CC0D4(a1, a2, a3, a4);
    sub_1C48CC2BC(a1, a2, a3, a4);
    sub_1C48CC4A4(a1, a2, a3, a4);
    sub_1C48CC68C(a1, a2, a3, a4);
    sub_1C48CC874(a1, a2, a3, a4);
    sub_1C48CCA5C(a1, a2, a3, a4);
    sub_1C48CCC44(a1, a2, a3, a4);
    sub_1C48CCE2C(a1, a2, a3, a4);
    sub_1C48CD014(a1, a2, a3, a4);
    sub_1C48CD1FC(a1, a2, a3, a4);
    sub_1C48CD3E4(a1, a2, a3, a4);
    sub_1C48CD5CC(a1, a2, a3, a4);
    sub_1C48CD7B4(a1, a2, a3, a4);
    sub_1C48CD99C(a1, a2, a3, a4);
    sub_1C48CDB84(a1, a2, a3, a4);
    sub_1C48CDD6C(a1, a2, a3, a4);
    sub_1C48CDF54(a1, a2, a3, a4);
    sub_1C48CE13C(a1, a2, a3, a4);
    sub_1C48CE324(a1, a2, a3, a4);
    sub_1C48CE50C(a1, a2, a3, a4);
    sub_1C48CE6F4(a1, a2, a3, a4);
    sub_1C48CE8DC(a1, a2, a3, a4);
    sub_1C48CEAC4(a1, a2, a3, a4);
    sub_1C48CECAC(a1, a2, a3, a4);
    sub_1C48CEE94(a1, a2, a3, a4);
    sub_1C48CF07C(a1, a2, a3, a4);
    sub_1C48CF264(a1, a2, a3, a4);
    sub_1C48CF44C(a1, a2, a3, a4);
    sub_1C48CF634(a1, a2, a3, a4);
    sub_1C48CF81C(a1, a2, a3, a4);
    sub_1C48CFA04(a1, a2, a3, a4);
    sub_1C48CFBEC(a1, a2, a3, a4);
    return sub_1C48CFDD4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48C898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__restaurantReciprocalRank;
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

uint64_t sub_1C48C8B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank;
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

uint64_t sub_1C48C8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank;
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

uint64_t sub_1C48C8F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank;
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

uint64_t sub_1C48C912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank;
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

uint64_t sub_1C48C9314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank;
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

uint64_t sub_1C48C94FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank;
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

uint64_t sub_1C48C96E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank;
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

uint64_t sub_1C48C98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank;
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

uint64_t sub_1C48C9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank;
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

uint64_t sub_1C48C9C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank;
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

uint64_t sub_1C48C9E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank;
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

uint64_t sub_1C48CA06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank;
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

uint64_t sub_1C48CA254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank;
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

uint64_t sub_1C48CA43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank;
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

uint64_t sub_1C48CA624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank;
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

uint64_t sub_1C48CA80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank;
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

uint64_t sub_1C48CA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown;
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

uint64_t sub_1C48CABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank;
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

uint64_t sub_1C48CADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank;
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

uint64_t sub_1C48CAFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank;
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

uint64_t sub_1C48CB194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank;
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

uint64_t sub_1C48CB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank;
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

uint64_t sub_1C48CB564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank;
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

uint64_t sub_1C48CB74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank;
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

uint64_t sub_1C48CB934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank;
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

uint64_t sub_1C48CBB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank;
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

uint64_t sub_1C48CBD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank;
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

uint64_t sub_1C48CBEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank;
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

uint64_t sub_1C48CC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank;
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

uint64_t sub_1C48CC2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank;
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

uint64_t sub_1C48CC4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank;
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

uint64_t sub_1C48CC68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank;
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

uint64_t sub_1C48CC874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank;
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

uint64_t sub_1C48CCA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank;
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

uint64_t sub_1C48CCC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank;
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

uint64_t sub_1C48CCE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank;
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

uint64_t sub_1C48CD014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank;
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

uint64_t sub_1C48CD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank;
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

uint64_t sub_1C48CD3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank;
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

uint64_t sub_1C48CD5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank;
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

uint64_t sub_1C48CD7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank;
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

uint64_t sub_1C48CD99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank;
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

uint64_t sub_1C48CDB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank;
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

uint64_t sub_1C48CDD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank;
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

uint64_t sub_1C48CDF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank;
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

uint64_t sub_1C48CE13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank;
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

uint64_t sub_1C48CE324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank;
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

uint64_t sub_1C48CE50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank;
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

uint64_t sub_1C48CE6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank;
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

uint64_t sub_1C48CE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank;
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

uint64_t sub_1C48CEAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank;
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

uint64_t sub_1C48CECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank;
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

uint64_t sub_1C48CEE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank;
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

uint64_t sub_1C48CF07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank;
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

uint64_t sub_1C48CF264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank;
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

uint64_t sub_1C48CF44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank;
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

uint64_t sub_1C48CF634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank;
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

uint64_t sub_1C48CF81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank;
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

uint64_t sub_1C48CFA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank;
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

uint64_t sub_1C48CFBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank;
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

uint64_t sub_1C48CFDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank;
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

BOOL sub_1C48CFFBC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v1259 = type metadata accessor for FeatureValue(0);
  v5 = *(*(v1259 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1259);
  v1257 = (&v1072 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1258 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  v7 = *(*(v1258 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v1258);
  v1208 = &v1072 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v1207 = &v1072 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v1206 = &v1072 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v1205 = &v1072 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v1202 = &v1072 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v1199 = &v1072 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v1196 = &v1072 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v1193 = &v1072 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v1190 = &v1072 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v1187 = &v1072 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v1184 = &v1072 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v1181 = &v1072 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v1178 = &v1072 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v1175 = &v1072 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v1172 = &v1072 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v1169 = &v1072 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v1166 = &v1072 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v1163 = &v1072 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v1160 = &v1072 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v1157 = &v1072 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v1154 = &v1072 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v1151 = &v1072 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v1149 = &v1072 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v1146 = &v1072 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v1144 = &v1072 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v1141 = &v1072 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v1138 = &v1072 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v1135 = &v1072 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v1132 = &v1072 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v1129 = &v1072 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v1126 = &v1072 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v1123 = &v1072 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v1120 = &v1072 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v1117 = &v1072 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v1114 = &v1072 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v1111 = &v1072 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v1108 = &v1072 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v1105 = &v1072 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v1102 = &v1072 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v1099 = &v1072 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v1096 = &v1072 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v1093 = &v1072 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v1090 = &v1072 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v1087 = &v1072 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v1084 = &v1072 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v1212 = &v1072 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v1215 = &v1072 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v1218 = &v1072 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v1221 = &v1072 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v1224 = &v1072 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v1227 = &v1072 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v1230 = &v1072 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v1232 = &v1072 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v1234 = &v1072 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v1237 = &v1072 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v1240 = &v1072 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v1243 = &v1072 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v1245 = &v1072 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v1248 = &v1072 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v1251 = &v1072 - v127;
  v128 = MEMORY[0x1EEE9AC00](v126);
  v1256 = &v1072 - v129;
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v1072 - v130;
  v132 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v133 = *(*(v132 - 8) + 64);
  v134 = MEMORY[0x1EEE9AC00](v132 - 8);
  v1204 = &v1072 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x1EEE9AC00](v134);
  v1203 = &v1072 - v137;
  v138 = MEMORY[0x1EEE9AC00](v136);
  v1201 = &v1072 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v1200 = &v1072 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v1198 = &v1072 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v1197 = &v1072 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v1195 = &v1072 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v1194 = &v1072 - v149;
  v150 = MEMORY[0x1EEE9AC00](v148);
  v1192 = &v1072 - v151;
  v152 = MEMORY[0x1EEE9AC00](v150);
  v1191 = &v1072 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v1189 = &v1072 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v1188 = &v1072 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v1186 = &v1072 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v1185 = &v1072 - v161;
  v162 = MEMORY[0x1EEE9AC00](v160);
  v1183 = &v1072 - v163;
  v164 = MEMORY[0x1EEE9AC00](v162);
  v1182 = &v1072 - v165;
  v166 = MEMORY[0x1EEE9AC00](v164);
  v1180 = &v1072 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v1179 = &v1072 - v169;
  v170 = MEMORY[0x1EEE9AC00](v168);
  v1177 = &v1072 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v1176 = &v1072 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v1174 = &v1072 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v1173 = &v1072 - v177;
  v178 = MEMORY[0x1EEE9AC00](v176);
  v1171 = &v1072 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v1170 = &v1072 - v181;
  v182 = MEMORY[0x1EEE9AC00](v180);
  v1168 = &v1072 - v183;
  v184 = MEMORY[0x1EEE9AC00](v182);
  v1167 = &v1072 - v185;
  v186 = MEMORY[0x1EEE9AC00](v184);
  v1165 = &v1072 - v187;
  v188 = MEMORY[0x1EEE9AC00](v186);
  v1164 = &v1072 - v189;
  v190 = MEMORY[0x1EEE9AC00](v188);
  v1162 = &v1072 - v191;
  v192 = MEMORY[0x1EEE9AC00](v190);
  v1161 = &v1072 - v193;
  v194 = MEMORY[0x1EEE9AC00](v192);
  v1159 = &v1072 - v195;
  v196 = MEMORY[0x1EEE9AC00](v194);
  v1158 = &v1072 - v197;
  v198 = MEMORY[0x1EEE9AC00](v196);
  v1156 = &v1072 - v199;
  v200 = MEMORY[0x1EEE9AC00](v198);
  v1155 = &v1072 - v201;
  v202 = MEMORY[0x1EEE9AC00](v200);
  v1153 = &v1072 - v203;
  v204 = MEMORY[0x1EEE9AC00](v202);
  v1152 = &v1072 - v205;
  v206 = MEMORY[0x1EEE9AC00](v204);
  v1150 = &v1072 - v207;
  v208 = MEMORY[0x1EEE9AC00](v206);
  v1148 = &v1072 - v209;
  v210 = MEMORY[0x1EEE9AC00](v208);
  v1147 = &v1072 - v211;
  v212 = MEMORY[0x1EEE9AC00](v210);
  v1145 = &v1072 - v213;
  v214 = MEMORY[0x1EEE9AC00](v212);
  v1143 = &v1072 - v215;
  v216 = MEMORY[0x1EEE9AC00](v214);
  v1142 = &v1072 - v217;
  v218 = MEMORY[0x1EEE9AC00](v216);
  v1140 = &v1072 - v219;
  v220 = MEMORY[0x1EEE9AC00](v218);
  v1139 = &v1072 - v221;
  v222 = MEMORY[0x1EEE9AC00](v220);
  v1137 = &v1072 - v223;
  v224 = MEMORY[0x1EEE9AC00](v222);
  v1136 = &v1072 - v225;
  v226 = MEMORY[0x1EEE9AC00](v224);
  v1134 = &v1072 - v227;
  v228 = MEMORY[0x1EEE9AC00](v226);
  v1133 = &v1072 - v229;
  v230 = MEMORY[0x1EEE9AC00](v228);
  v1131 = &v1072 - v231;
  v232 = MEMORY[0x1EEE9AC00](v230);
  v1130 = &v1072 - v233;
  v234 = MEMORY[0x1EEE9AC00](v232);
  v1128 = &v1072 - v235;
  v236 = MEMORY[0x1EEE9AC00](v234);
  v1127 = &v1072 - v237;
  v238 = MEMORY[0x1EEE9AC00](v236);
  v1125 = &v1072 - v239;
  v240 = MEMORY[0x1EEE9AC00](v238);
  v1124 = &v1072 - v241;
  v242 = MEMORY[0x1EEE9AC00](v240);
  v1122 = &v1072 - v243;
  v244 = MEMORY[0x1EEE9AC00](v242);
  v1121 = &v1072 - v245;
  v246 = MEMORY[0x1EEE9AC00](v244);
  v1119 = &v1072 - v247;
  v248 = MEMORY[0x1EEE9AC00](v246);
  v1118 = &v1072 - v249;
  v250 = MEMORY[0x1EEE9AC00](v248);
  v1116 = &v1072 - v251;
  v252 = MEMORY[0x1EEE9AC00](v250);
  v1115 = &v1072 - v253;
  v254 = MEMORY[0x1EEE9AC00](v252);
  v1113 = &v1072 - v255;
  v256 = MEMORY[0x1EEE9AC00](v254);
  v1112 = &v1072 - v257;
  v258 = MEMORY[0x1EEE9AC00](v256);
  v1110 = &v1072 - v259;
  v260 = MEMORY[0x1EEE9AC00](v258);
  v1109 = &v1072 - v261;
  v262 = MEMORY[0x1EEE9AC00](v260);
  v1107 = &v1072 - v263;
  v264 = MEMORY[0x1EEE9AC00](v262);
  v1106 = &v1072 - v265;
  v266 = MEMORY[0x1EEE9AC00](v264);
  v1104 = &v1072 - v267;
  v268 = MEMORY[0x1EEE9AC00](v266);
  v1103 = &v1072 - v269;
  v270 = MEMORY[0x1EEE9AC00](v268);
  v1101 = &v1072 - v271;
  v272 = MEMORY[0x1EEE9AC00](v270);
  v1100 = &v1072 - v273;
  v274 = MEMORY[0x1EEE9AC00](v272);
  v1098 = &v1072 - v275;
  v276 = MEMORY[0x1EEE9AC00](v274);
  v1097 = &v1072 - v277;
  v278 = MEMORY[0x1EEE9AC00](v276);
  v1095 = &v1072 - v279;
  v280 = MEMORY[0x1EEE9AC00](v278);
  v1094 = &v1072 - v281;
  v282 = MEMORY[0x1EEE9AC00](v280);
  v1092 = &v1072 - v283;
  v284 = MEMORY[0x1EEE9AC00](v282);
  v1091 = &v1072 - v285;
  v286 = MEMORY[0x1EEE9AC00](v284);
  v1089 = &v1072 - v287;
  v288 = MEMORY[0x1EEE9AC00](v286);
  v1088 = &v1072 - v289;
  v290 = MEMORY[0x1EEE9AC00](v288);
  v1086 = &v1072 - v291;
  v292 = MEMORY[0x1EEE9AC00](v290);
  v1085 = &v1072 - v293;
  v294 = MEMORY[0x1EEE9AC00](v292);
  v1083 = &v1072 - v295;
  v296 = MEMORY[0x1EEE9AC00](v294);
  v1082 = &v1072 - v297;
  v298 = MEMORY[0x1EEE9AC00](v296);
  v1081 = &v1072 - v299;
  v300 = MEMORY[0x1EEE9AC00](v298);
  v1080 = &v1072 - v301;
  v302 = MEMORY[0x1EEE9AC00](v300);
  v1079 = &v1072 - v303;
  v304 = MEMORY[0x1EEE9AC00](v302);
  v1078 = &v1072 - v305;
  v306 = MEMORY[0x1EEE9AC00](v304);
  v1077 = &v1072 - v307;
  v308 = MEMORY[0x1EEE9AC00](v306);
  v1076 = &v1072 - v309;
  v310 = MEMORY[0x1EEE9AC00](v308);
  v1075 = &v1072 - v311;
  v312 = MEMORY[0x1EEE9AC00](v310);
  v1074 = &v1072 - v313;
  v314 = MEMORY[0x1EEE9AC00](v312);
  v1209 = &v1072 - v315;
  v316 = MEMORY[0x1EEE9AC00](v314);
  v1210 = &v1072 - v317;
  v318 = MEMORY[0x1EEE9AC00](v316);
  v1211 = &v1072 - v319;
  v320 = MEMORY[0x1EEE9AC00](v318);
  v1213 = &v1072 - v321;
  v322 = MEMORY[0x1EEE9AC00](v320);
  v1214 = &v1072 - v323;
  v324 = MEMORY[0x1EEE9AC00](v322);
  v1216 = &v1072 - v325;
  v326 = MEMORY[0x1EEE9AC00](v324);
  v1217 = &v1072 - v327;
  v328 = MEMORY[0x1EEE9AC00](v326);
  v1219 = &v1072 - v329;
  v330 = MEMORY[0x1EEE9AC00](v328);
  v1220 = &v1072 - v331;
  v332 = MEMORY[0x1EEE9AC00](v330);
  v1222 = &v1072 - v333;
  v334 = MEMORY[0x1EEE9AC00](v332);
  v1223 = &v1072 - v335;
  v336 = MEMORY[0x1EEE9AC00](v334);
  v1225 = &v1072 - v337;
  v338 = MEMORY[0x1EEE9AC00](v336);
  v1226 = &v1072 - v339;
  v340 = MEMORY[0x1EEE9AC00](v338);
  v1229 = &v1072 - v341;
  v342 = MEMORY[0x1EEE9AC00](v340);
  v1228 = &v1072 - v343;
  v344 = MEMORY[0x1EEE9AC00](v342);
  v1233 = &v1072 - v345;
  v346 = MEMORY[0x1EEE9AC00](v344);
  v1231 = &v1072 - v347;
  v348 = MEMORY[0x1EEE9AC00](v346);
  v1236 = &v1072 - v349;
  v350 = MEMORY[0x1EEE9AC00](v348);
  v1235 = &v1072 - v351;
  v352 = MEMORY[0x1EEE9AC00](v350);
  v1239 = &v1072 - v353;
  v354 = MEMORY[0x1EEE9AC00](v352);
  v1238 = &v1072 - v355;
  v356 = MEMORY[0x1EEE9AC00](v354);
  v1242 = &v1072 - v357;
  v358 = MEMORY[0x1EEE9AC00](v356);
  v1241 = &v1072 - v359;
  v360 = MEMORY[0x1EEE9AC00](v358);
  v1246 = &v1072 - v361;
  v362 = MEMORY[0x1EEE9AC00](v360);
  v1244 = &v1072 - v363;
  v364 = MEMORY[0x1EEE9AC00](v362);
  v1249 = &v1072 - v365;
  v366 = MEMORY[0x1EEE9AC00](v364);
  v1247 = &v1072 - v367;
  v368 = MEMORY[0x1EEE9AC00](v366);
  v1252 = &v1072 - v369;
  v370 = MEMORY[0x1EEE9AC00](v368);
  v1250 = &v1072 - v371;
  v372 = MEMORY[0x1EEE9AC00](v370);
  v1254 = &v1072 - v373;
  v374 = MEMORY[0x1EEE9AC00](v372);
  v1253 = &v1072 - v375;
  v376 = MEMORY[0x1EEE9AC00](v374);
  v1255 = &v1072 - v377;
  v378 = MEMORY[0x1EEE9AC00](v376);
  v380 = &v1072 - v379;
  MEMORY[0x1EEE9AC00](v378);
  v382 = &v1072 - v381;
  v383 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__restaurantReciprocalRank;
  swift_beginAccess();
  v384 = v4;
  sub_1C4460108(v4 + v383, v382, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v385 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__restaurantReciprocalRank;
  swift_beginAccess();
  v386 = *(v1258 + 48);
  sub_1C4460108(v382, v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v1260 = v3;
  v387 = v3 + v385;
  v388 = v1259;
  sub_1C4460108(v387, &v131[v386], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v131, 1, v388) == 1)
  {

    sub_1C4420C3C(v382, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(&v131[v386], 1, v388) == 1)
    {
      sub_1C4420C3C(v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C4420C3C(v131, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_37;
  }

  sub_1C4460108(v131, v380, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v131[v386], 1, v388) == 1)
  {

    sub_1C4420C3C(v382, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v389 = &v131[v386];
  v390 = v1257;
  sub_1C4924B90(v389, v1257);

  v391 = sub_1C47E3504(v380, v390);
  sub_1C4924B3C();
  sub_1C4420C3C(v382, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v391 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_9:
  v1073 = v4;
  v392 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank;
  swift_beginAccess();
  v393 = v1255;
  sub_1C4460108(v384 + v392, v1255, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v394 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__groceryReciprocalRank;
  v395 = v1260;
  swift_beginAccess();
  v396 = v1258;
  v397 = *(v1258 + 48);
  v398 = v1256;
  sub_1C4460108(v393, v1256, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v395 + v394, v398 + v397, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v399 = v1259;
  if (sub_1C44157D4(v398, 1, v1259) == 1)
  {
    sub_1C4420C3C(v393, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v398 + v397, 1, v399) == 1)
    {
      sub_1C4420C3C(v398, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_16;
    }

LABEL_14:
    v401 = v398;
LABEL_36:
    sub_1C4420C3C(v401, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_37;
  }

  v400 = v1253;
  sub_1C4460108(v398, v1253, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v398 + v397, 1, v399) == 1)
  {
    sub_1C4420C3C(v393, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_14;
  }

  v402 = v398 + v397;
  v403 = v393;
  v404 = v396;
  v405 = v398;
  v406 = v1257;
  sub_1C4924B90(v402, v1257);
  v407 = sub_1C47E3504(v400, v406);
  sub_1C4924B3C();
  sub_1C4420C3C(v403, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  v408 = v405;
  v396 = v404;
  sub_1C4420C3C(v408, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v407 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  v409 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank;
  v410 = v1073;
  swift_beginAccess();
  v411 = v1254;
  sub_1C4460108(v410 + v409, v1254, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v412 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__coffeeReciprocalRank;
  v413 = v1260;
  swift_beginAccess();
  v414 = *(v396 + 48);
  v415 = v1251;
  sub_1C4460108(v411, v1251, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v413 + v412, v415 + v414, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) == 1)
  {
    sub_1C4420C3C(v411, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v416 = sub_1C44157D4(v415 + v414, 1, v399);
    v417 = v1252;
    if (v416 != 1)
    {
      goto LABEL_35;
    }

    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v418 = v1250;
    sub_1C4460108(v415, v1250, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v419 = sub_1C44157D4(v415 + v414, 1, v399);
    v417 = v1252;
    if (v419 == 1)
    {
      sub_1C4420C3C(v1254, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_34:
      sub_1C4924B3C();
      goto LABEL_35;
    }

    v420 = v415 + v414;
    v421 = v1257;
    sub_1C4924B90(v420, v1257);
    v422 = sub_1C47E3504(v418, v421);
    sub_1C4924B3C();
    sub_1C4420C3C(v1254, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v422 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v423 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank;
  v424 = v1073;
  swift_beginAccess();
  sub_1C4460108(v424 + v423, v417, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v425 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gymReciprocalRank;
  v426 = v417;
  v427 = v1260;
  swift_beginAccess();
  v428 = *(v396 + 48);
  v415 = v1248;
  sub_1C4460108(v426, v1248, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v427 + v425, v415 + v428, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) == 1)
  {
    sub_1C4420C3C(v426, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v429 = sub_1C44157D4(v415 + v428, 1, v399);
    v430 = v1249;
    if (v429 != 1)
    {
      goto LABEL_35;
    }

    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v431 = v1247;
    sub_1C4460108(v415, v1247, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v432 = sub_1C44157D4(v415 + v428, 1, v399);
    v430 = v1249;
    if (v432 == 1)
    {
      v433 = v1252;
      goto LABEL_33;
    }

    v434 = v415 + v428;
    v435 = v1257;
    sub_1C4924B90(v434, v1257);
    v436 = sub_1C47E3504(v431, v435);
    sub_1C4924B3C();
    sub_1C4420C3C(v1252, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v436 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v437 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank;
  v438 = v1073;
  swift_beginAccess();
  sub_1C4460108(v438 + v437, v430, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v439 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__stadiumReciprocalRank;
  v440 = v430;
  v441 = v1260;
  swift_beginAccess();
  v442 = *(v396 + 48);
  v415 = v1245;
  sub_1C4460108(v440, v1245, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v441 + v439, v415 + v442, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) == 1)
  {
    sub_1C4420C3C(v440, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v443 = sub_1C44157D4(v415 + v442, 1, v399);
    v444 = v1246;
    if (v443 == 1)
    {
      sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_40;
    }

LABEL_35:
    v401 = v415;
    goto LABEL_36;
  }

  v445 = v1244;
  sub_1C4460108(v415, v1244, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v446 = sub_1C44157D4(v415 + v442, 1, v399);
  v444 = v1246;
  if (v446 == 1)
  {
    v433 = v1249;
    goto LABEL_33;
  }

  v448 = v1257;
  sub_1C4924B90(v415 + v442, v1257);
  v449 = sub_1C47E3504(v445, v448);
  sub_1C4924B3C();
  sub_1C4420C3C(v1249, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v449 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_40:
  v450 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank;
  v451 = v1073;
  swift_beginAccess();
  sub_1C4460108(v451 + v450, v444, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v452 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__hikeReciprocalRank;
  v453 = v444;
  v454 = v1260;
  swift_beginAccess();
  v455 = *(v396 + 48);
  v415 = v1243;
  sub_1C4460108(v453, v1243, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v454 + v452, v415 + v455, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) == 1)
  {
    sub_1C4420C3C(v453, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v415 + v455, 1, v399) != 1)
    {
      goto LABEL_35;
    }

    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v456 = v1241;
    sub_1C4460108(v415, v1241, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v415 + v455, 1, v399) == 1)
    {
      sub_1C4420C3C(v1246, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_34;
    }

    v457 = v1257;
    sub_1C4924B90(v415 + v455, v1257);
    v458 = sub_1C47E3504(v456, v457);
    sub_1C4924B3C();
    sub_1C4420C3C(v1246, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v458 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v459 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank;
  v460 = v1073;
  swift_beginAccess();
  v461 = v460 + v459;
  v462 = v1242;
  sub_1C4460108(v461, v1242, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v463 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__parkReciprocalRank;
  v464 = v1260;
  swift_beginAccess();
  v465 = *(v396 + 48);
  v415 = v1240;
  sub_1C4460108(v462, v1240, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v464 + v463, v415 + v465, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) == 1)
  {
    sub_1C4420C3C(v462, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v415 + v465, 1, v399) != 1)
    {
      goto LABEL_35;
    }

    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v466 = v1238;
    sub_1C4460108(v415, v1238, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v415 + v465, 1, v399) == 1)
    {
      v433 = v1242;
      goto LABEL_33;
    }

    v467 = v1257;
    sub_1C4924B90(v415 + v465, v1257);
    v468 = sub_1C47E3504(v466, v467);
    sub_1C4924B3C();
    sub_1C4420C3C(v1242, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v468 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v469 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank;
  v470 = v1073;
  swift_beginAccess();
  v471 = v470 + v469;
  v472 = v1239;
  sub_1C4460108(v471, v1239, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v473 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__libraryReciprocalRank;
  v474 = v1260;
  swift_beginAccess();
  v475 = *(v396 + 48);
  v415 = v1237;
  sub_1C4460108(v472, v1237, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v474 + v473, v415 + v475, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) != 1)
  {
    v476 = v1235;
    sub_1C4460108(v415, v1235, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v415 + v475, 1, v399) != 1)
    {
      v477 = v1257;
      sub_1C4924B90(v415 + v475, v1257);
      v478 = sub_1C47E3504(v476, v477);
      sub_1C4924B3C();
      sub_1C4420C3C(v1239, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if ((v478 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_58;
    }

    v433 = v1239;
LABEL_33:
    sub_1C4420C3C(v433, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_34;
  }

  sub_1C4420C3C(v472, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415 + v475, 1, v399) != 1)
  {
    goto LABEL_35;
  }

  sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_58:
  v479 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank;
  v480 = v1073;
  swift_beginAccess();
  v481 = v480 + v479;
  v482 = v1236;
  sub_1C4460108(v481, v1236, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v483 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__religiousReciprocalRank;
  v484 = v1260;
  swift_beginAccess();
  v485 = *(v396 + 48);
  v415 = v1234;
  sub_1C4460108(v482, v1234, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v484 + v483, v415 + v485, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) != 1)
  {
    v486 = v1231;
    sub_1C4460108(v415, v1231, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v415 + v485, 1, v399) != 1)
    {
      v487 = v1257;
      sub_1C4924B90(v415 + v485, v1257);
      v488 = sub_1C47E3504(v486, v487);
      sub_1C4924B3C();
      sub_1C4420C3C(v1236, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v415 = v1232;
      if ((v488 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_64;
    }

    v433 = v1236;
    goto LABEL_33;
  }

  sub_1C4420C3C(v482, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415 + v485, 1, v399) != 1)
  {
    goto LABEL_35;
  }

  sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v415 = v1232;
LABEL_64:
  v489 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank;
  v490 = v1073;
  swift_beginAccess();
  v491 = v490 + v489;
  v492 = v1233;
  sub_1C4460108(v491, v1233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v493 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__movieReciprocalRank;
  v494 = v1260;
  swift_beginAccess();
  v495 = *(v396 + 48);
  sub_1C4460108(v492, v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v494 + v493, v415 + v495, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v399) == 1)
  {
    sub_1C4420C3C(v1233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v415 + v495, 1, v399) == 1)
    {
      v496 = v1073;
      v497 = v1260;
      sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_70;
    }

    goto LABEL_35;
  }

  v496 = v1073;
  v497 = v1260;
  v498 = v1228;
  sub_1C4460108(v415, v1228, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415 + v495, 1, v399) == 1)
  {
    sub_1C4420C3C(v1233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_34;
  }

  v499 = v1257;
  sub_1C4924B90(v415 + v495, v1257);
  v500 = sub_1C47E3504(v498, v499);
  sub_1C4924B3C();
  sub_1C4420C3C(v1233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v415, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v500 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_70:
  v501 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank;
  swift_beginAccess();
  v502 = v1229;
  sub_1C4460108(v496 + v501, v1229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v503 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__busReciprocalRank;
  swift_beginAccess();
  v504 = *(v1258 + 48);
  v505 = v1230;
  sub_1C4460108(v502, v1230, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v506 = v497;
  sub_1C4460108(v497 + v503, v505 + v504, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v505, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1230 + v504, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1230, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_78;
    }

LABEL_75:
    v508 = v1230;
LABEL_427:
    sub_1C4420C3C(v508, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_37;
  }

  v507 = v1230;
  sub_1C4460108(v1230, v1226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v507 + v504, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_75;
  }

  v509 = v1230;
  v510 = v1230 + v504;
  v511 = v1257;
  sub_1C4924B90(v510, v1257);
  v512 = sub_1C47E3504(v1226, v511);
  sub_1C4924B3C();
  sub_1C4420C3C(v1229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v509, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v512 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_78:
  v513 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank;
  swift_beginAccess();
  v514 = v1225;
  sub_1C4460108(v496 + v513, v1225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v515 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__trainReciprocalRank;
  swift_beginAccess();
  v516 = *(v1258 + 48);
  v517 = v514;
  v518 = v1227;
  sub_1C4460108(v517, v1227, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v515, v518 + v516, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v518, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1227 + v516, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1227, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v519 = v1227;
  sub_1C4460108(v1227, v1223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v519 + v516, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_83:
    v508 = v1227;
    goto LABEL_427;
  }

  v520 = v1227;
  v521 = v1227 + v516;
  v522 = v1257;
  sub_1C4924B90(v521, v1257);
  v523 = sub_1C47E3504(v1223, v522);
  sub_1C4924B3C();
  sub_1C4420C3C(v1225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v520, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v523 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_85:
  v524 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank;
  swift_beginAccess();
  v525 = v1222;
  sub_1C4460108(v496 + v524, v1222, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v526 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airportReciprocalRank;
  swift_beginAccess();
  v527 = *(v1258 + 48);
  v528 = v525;
  v529 = v1224;
  sub_1C4460108(v528, v1224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v526, v529 + v527, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v529, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1222, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1224 + v527, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v530 = v1224;
  sub_1C4460108(v1224, v1220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v530 + v527, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1222, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_90:
    v508 = v1224;
    goto LABEL_427;
  }

  v531 = v1224;
  v532 = v1224 + v527;
  v533 = v1257;
  sub_1C4924B90(v532, v1257);
  v534 = sub_1C47E3504(v1220, v533);
  sub_1C4924B3C();
  sub_1C4420C3C(v1222, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v531, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v534 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_92:
  v535 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank;
  swift_beginAccess();
  v536 = v1219;
  sub_1C4460108(v496 + v535, v1219, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v537 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__evReciprocalRank;
  swift_beginAccess();
  v538 = *(v1258 + 48);
  v539 = v536;
  v540 = v1221;
  sub_1C4460108(v539, v1221, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v537, v540 + v538, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v540, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1219, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1221 + v538, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1221, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v541 = v1221;
  sub_1C4460108(v1221, v1217, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v541 + v538, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1219, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_97:
    v508 = v1221;
    goto LABEL_427;
  }

  v542 = v1221;
  v543 = v1221 + v538;
  v544 = v1257;
  sub_1C4924B90(v543, v1257);
  v545 = sub_1C47E3504(v1217, v544);
  sub_1C4924B3C();
  sub_1C4420C3C(v1219, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v542, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v545 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_99:
  v546 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank;
  swift_beginAccess();
  v547 = v1216;
  sub_1C4460108(v496 + v546, v1216, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v548 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__gasReciprocalRank;
  swift_beginAccess();
  v549 = *(v1258 + 48);
  v550 = v547;
  v551 = v1218;
  sub_1C4460108(v550, v1218, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v548, v551 + v549, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v551, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1216, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1218 + v549, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1218, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v552 = v1218;
  sub_1C4460108(v1218, v1214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v552 + v549, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1216, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_104:
    v508 = v1218;
    goto LABEL_427;
  }

  v553 = v1218;
  v554 = v1218 + v549;
  v555 = v1257;
  sub_1C4924B90(v554, v1257);
  v556 = sub_1C47E3504(v1214, v555);
  sub_1C4924B3C();
  sub_1C4420C3C(v1216, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v556 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_106:
  v557 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank;
  swift_beginAccess();
  v558 = v1213;
  sub_1C4460108(v496 + v557, v1213, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v559 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__laundryReciprocalRank;
  swift_beginAccess();
  v560 = *(v1258 + 48);
  v561 = v558;
  v562 = v1215;
  sub_1C4460108(v561, v1215, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v559, v562 + v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v562, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1213, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1215 + v560, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1215, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  v563 = v1215;
  sub_1C4460108(v1215, v1211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v563 + v560, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1213, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_111:
    v508 = v1215;
    goto LABEL_427;
  }

  v564 = v1215;
  v565 = v1215 + v560;
  v566 = v1257;
  sub_1C4924B90(v565, v1257);
  v567 = sub_1C47E3504(v1211, v566);
  sub_1C4924B3C();
  sub_1C4420C3C(v1213, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v567 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_113:
  v568 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank;
  swift_beginAccess();
  v569 = v1210;
  sub_1C4460108(v496 + v568, v1210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v570 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__museumReciprocalRank;
  swift_beginAccess();
  v571 = *(v1258 + 48);
  v572 = v569;
  v573 = v1212;
  sub_1C4460108(v572, v1212, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v570, v573 + v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v573, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1212 + v571, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1212, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_120;
    }

    goto LABEL_118;
  }

  v574 = v1212;
  sub_1C4460108(v1212, v1209, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v574 + v571, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_118:
    v508 = v1212;
    goto LABEL_427;
  }

  v575 = v1212;
  v576 = v1212 + v571;
  v577 = v1257;
  sub_1C4924B90(v576, v1257);
  v578 = sub_1C47E3504(v1209, v577);
  sub_1C4924B3C();
  sub_1C4420C3C(v1210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v578 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_120:
  v579 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown;
  swift_beginAccess();
  v580 = v1074;
  sub_1C4460108(v496 + v579, v1074, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v581 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__unknown;
  swift_beginAccess();
  v582 = *(v1258 + 48);
  v583 = v580;
  v584 = v1084;
  sub_1C4460108(v583, v1084, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v581, v584 + v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v584, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1074, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1084 + v582, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1084, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  v585 = v1084;
  sub_1C4460108(v1084, v1075, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v585 + v582, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1074, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_125:
    v508 = v1084;
    goto LABEL_427;
  }

  v586 = v1084;
  v587 = v1084 + v582;
  v588 = v1257;
  sub_1C4924B90(v587, v1257);
  v589 = sub_1C47E3504(v1075, v588);
  sub_1C4924B3C();
  sub_1C4420C3C(v1074, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v589 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_127:
  v590 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank;
  swift_beginAccess();
  v591 = v1076;
  sub_1C4460108(v496 + v590, v1076, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v592 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportReciprocalRank;
  swift_beginAccess();
  v593 = *(v1258 + 48);
  v594 = v591;
  v595 = v1087;
  sub_1C4460108(v594, v1087, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v592, v595 + v593, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v595, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1076, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1087 + v593, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1087, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  v596 = v1087;
  sub_1C4460108(v1087, v1077, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v596 + v593, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1076, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_132:
    v508 = v1087;
    goto LABEL_427;
  }

  v597 = v1087;
  v598 = v1087 + v593;
  v599 = v1257;
  sub_1C4924B90(v598, v1257);
  v600 = sub_1C47E3504(v1077, v599);
  sub_1C4924B3C();
  sub_1C4420C3C(v1076, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v600 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_134:
  v601 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank;
  swift_beginAccess();
  v602 = v1078;
  sub_1C4460108(v496 + v601, v1078, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v603 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAmusementParkReciprocalRank;
  swift_beginAccess();
  v604 = *(v1258 + 48);
  v605 = v602;
  v606 = v1090;
  sub_1C4460108(v605, v1090, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v603, v606 + v604, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v606, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1078, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1090 + v604, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1090, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_141;
    }

    goto LABEL_139;
  }

  v607 = v1090;
  sub_1C4460108(v1090, v1079, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v607 + v604, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1078, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_139:
    v508 = v1090;
    goto LABEL_427;
  }

  v608 = v1090;
  v609 = v1090 + v604;
  v610 = v1257;
  sub_1C4924B90(v609, v1257);
  v611 = sub_1C47E3504(v1079, v610);
  sub_1C4924B3C();
  sub_1C4420C3C(v1078, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v611 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_141:
  v612 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank;
  swift_beginAccess();
  v613 = v1080;
  sub_1C4460108(v496 + v612, v1080, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v614 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAquariumReciprocalRank;
  swift_beginAccess();
  v615 = *(v1258 + 48);
  v616 = v613;
  v617 = v1093;
  sub_1C4460108(v616, v1093, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v614, v617 + v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v617, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1080, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1093 + v615, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1093, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_148;
    }

    goto LABEL_146;
  }

  v618 = v1093;
  sub_1C4460108(v1093, v1081, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v618 + v615, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1080, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_146:
    v508 = v1093;
    goto LABEL_427;
  }

  v619 = v1093;
  v620 = v1093 + v615;
  v621 = v1257;
  sub_1C4924B90(v620, v1257);
  v622 = sub_1C47E3504(v1081, v621);
  sub_1C4924B3C();
  sub_1C4420C3C(v1080, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v622 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_148:
  v623 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank;
  swift_beginAccess();
  v624 = v1082;
  sub_1C4460108(v496 + v623, v1082, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v625 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAtmReciprocalRank;
  swift_beginAccess();
  v626 = *(v1258 + 48);
  v627 = v624;
  v628 = v1096;
  sub_1C4460108(v627, v1096, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v625, v628 + v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v628, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1082, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1096 + v626, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1096, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v629 = v1096;
  sub_1C4460108(v1096, v1083, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v629 + v626, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1082, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_153:
    v508 = v1096;
    goto LABEL_427;
  }

  v630 = v1096;
  v631 = v1096 + v626;
  v632 = v1257;
  sub_1C4924B90(v631, v1257);
  v633 = sub_1C47E3504(v1083, v632);
  sub_1C4924B3C();
  sub_1C4420C3C(v1082, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v630, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v633 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_155:
  v634 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank;
  swift_beginAccess();
  v635 = v1085;
  sub_1C4460108(v496 + v634, v1085, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v636 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBakeryReciprocalRank;
  swift_beginAccess();
  v637 = *(v1258 + 48);
  v638 = v635;
  v639 = v1099;
  sub_1C4460108(v638, v1099, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v636, v639 + v637, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v639, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1085, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1099 + v637, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1099, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_162;
    }

    goto LABEL_160;
  }

  v640 = v1099;
  sub_1C4460108(v1099, v1086, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v640 + v637, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1085, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_160:
    v508 = v1099;
    goto LABEL_427;
  }

  v641 = v1099;
  v642 = v1099 + v637;
  v643 = v1257;
  sub_1C4924B90(v642, v1257);
  v644 = sub_1C47E3504(v1086, v643);
  sub_1C4924B3C();
  sub_1C4420C3C(v1085, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v641, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v644 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_162:
  v645 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank;
  swift_beginAccess();
  v646 = v1088;
  sub_1C4460108(v496 + v645, v1088, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v647 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBankReciprocalRank;
  swift_beginAccess();
  v648 = *(v1258 + 48);
  v649 = v646;
  v650 = v1102;
  sub_1C4460108(v649, v1102, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v647, v650 + v648, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v650, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1088, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1102 + v648, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1102, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_169;
    }

    goto LABEL_167;
  }

  v651 = v1102;
  sub_1C4460108(v1102, v1089, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v651 + v648, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1088, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_167:
    v508 = v1102;
    goto LABEL_427;
  }

  v652 = v1102;
  v653 = v1102 + v648;
  v654 = v1257;
  sub_1C4924B90(v653, v1257);
  v655 = sub_1C47E3504(v1089, v654);
  sub_1C4924B3C();
  sub_1C4420C3C(v1088, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v652, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v655 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_169:
  v656 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank;
  swift_beginAccess();
  v657 = v1091;
  sub_1C4460108(v496 + v656, v1091, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v658 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBeachReciprocalRank;
  swift_beginAccess();
  v659 = *(v1258 + 48);
  v660 = v657;
  v661 = v1105;
  sub_1C4460108(v660, v1105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v658, v661 + v659, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v661, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1091, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1105 + v659, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  v662 = v1105;
  sub_1C4460108(v1105, v1092, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v662 + v659, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1091, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_174:
    v508 = v1105;
    goto LABEL_427;
  }

  v663 = v1105;
  v664 = v1105 + v659;
  v665 = v1257;
  sub_1C4924B90(v664, v1257);
  v666 = sub_1C47E3504(v1092, v665);
  sub_1C4924B3C();
  sub_1C4420C3C(v1091, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v663, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v666 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_176:
  v667 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank;
  swift_beginAccess();
  v668 = v1094;
  sub_1C4460108(v496 + v667, v1094, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v669 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryBreweryReciprocalRank;
  swift_beginAccess();
  v670 = *(v1258 + 48);
  v671 = v668;
  v672 = v1108;
  sub_1C4460108(v671, v1108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v669, v672 + v670, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v672, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1094, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1108 + v670, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_183;
    }

    goto LABEL_181;
  }

  v673 = v1108;
  sub_1C4460108(v1108, v1095, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v673 + v670, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1094, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_181:
    v508 = v1108;
    goto LABEL_427;
  }

  v674 = v1108;
  v675 = v1108 + v670;
  v676 = v1257;
  sub_1C4924B90(v675, v1257);
  v677 = sub_1C47E3504(v1095, v676);
  sub_1C4924B3C();
  sub_1C4420C3C(v1094, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v674, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v677 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_183:
  v678 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank;
  swift_beginAccess();
  v679 = v1097;
  sub_1C4460108(v496 + v678, v1097, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v680 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCafeReciprocalRank;
  swift_beginAccess();
  v681 = *(v1258 + 48);
  v682 = v679;
  v683 = v1111;
  sub_1C4460108(v682, v1111, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v680, v683 + v681, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v683, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1097, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1111 + v681, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1111, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  v684 = v1111;
  sub_1C4460108(v1111, v1098, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v684 + v681, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1097, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_188:
    v508 = v1111;
    goto LABEL_427;
  }

  v685 = v1111;
  v686 = v1111 + v681;
  v687 = v1257;
  sub_1C4924B90(v686, v1257);
  v688 = sub_1C47E3504(v1098, v687);
  sub_1C4924B3C();
  sub_1C4420C3C(v1097, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v685, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v688 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_190:
  v689 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank;
  swift_beginAccess();
  v690 = v1100;
  sub_1C4460108(v496 + v689, v1100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v691 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCampgroundReciprocalRank;
  swift_beginAccess();
  v692 = *(v1258 + 48);
  v693 = v690;
  v694 = v1114;
  sub_1C4460108(v693, v1114, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v691, v694 + v692, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v694, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1114 + v692, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1114, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_197;
    }

    goto LABEL_195;
  }

  v695 = v1114;
  sub_1C4460108(v1114, v1101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v695 + v692, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_195:
    v508 = v1114;
    goto LABEL_427;
  }

  v696 = v1114;
  v697 = v1114 + v692;
  v698 = v1257;
  sub_1C4924B90(v697, v1257);
  v699 = sub_1C47E3504(v1101, v698);
  sub_1C4924B3C();
  sub_1C4420C3C(v1100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v696, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v699 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_197:
  v700 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank;
  swift_beginAccess();
  v701 = v1103;
  sub_1C4460108(v496 + v700, v1103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v702 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryCarRentalReciprocalRank;
  swift_beginAccess();
  v703 = *(v1258 + 48);
  v704 = v701;
  v705 = v1117;
  sub_1C4460108(v704, v1117, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v702, v705 + v703, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v705, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1117 + v703, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1117, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_204;
    }

    goto LABEL_202;
  }

  v706 = v1117;
  sub_1C4460108(v1117, v1104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v706 + v703, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_202:
    v508 = v1117;
    goto LABEL_427;
  }

  v707 = v1117;
  v708 = v1117 + v703;
  v709 = v1257;
  sub_1C4924B90(v708, v1257);
  v710 = sub_1C47E3504(v1104, v709);
  sub_1C4924B3C();
  sub_1C4420C3C(v1103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v707, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v710 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_204:
  v711 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank;
  swift_beginAccess();
  v712 = v1106;
  sub_1C4460108(v496 + v711, v1106, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v713 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryEvChargerReciprocalRank;
  swift_beginAccess();
  v714 = *(v1258 + 48);
  v715 = v712;
  v716 = v1120;
  sub_1C4460108(v715, v1120, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v713, v716 + v714, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v716, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1106, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1120 + v714, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1120, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  v717 = v1120;
  sub_1C4460108(v1120, v1107, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v717 + v714, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1106, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_209:
    v508 = v1120;
    goto LABEL_427;
  }

  v718 = v1120;
  v719 = v1120 + v714;
  v720 = v1257;
  sub_1C4924B90(v719, v1257);
  v721 = sub_1C47E3504(v1107, v720);
  sub_1C4924B3C();
  sub_1C4420C3C(v1106, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v718, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v721 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_211:
  v722 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank;
  swift_beginAccess();
  v723 = v1109;
  sub_1C4460108(v496 + v722, v1109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v724 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFireStationReciprocalRank;
  swift_beginAccess();
  v725 = *(v1258 + 48);
  v726 = v723;
  v727 = v1123;
  sub_1C4460108(v726, v1123, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v724, v727 + v725, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v727, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1123 + v725, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1123, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_218;
    }

    goto LABEL_216;
  }

  v728 = v1123;
  sub_1C4460108(v1123, v1110, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v728 + v725, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_216:
    v508 = v1123;
    goto LABEL_427;
  }

  v729 = v1123;
  v730 = v1123 + v725;
  v731 = v1257;
  sub_1C4924B90(v730, v1257);
  v732 = sub_1C47E3504(v1110, v731);
  sub_1C4924B3C();
  sub_1C4420C3C(v1109, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v729, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v732 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_218:
  v733 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank;
  swift_beginAccess();
  v734 = v1112;
  sub_1C4460108(v496 + v733, v1112, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v735 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFitnessCenterReciprocalRank;
  swift_beginAccess();
  v736 = *(v1258 + 48);
  v737 = v734;
  v738 = v1126;
  sub_1C4460108(v737, v1126, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v735, v738 + v736, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v738, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1112, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1126 + v736, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1126, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_225;
    }

    goto LABEL_223;
  }

  v739 = v1126;
  sub_1C4460108(v1126, v1113, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v739 + v736, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1112, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_223:
    v508 = v1126;
    goto LABEL_427;
  }

  v740 = v1126;
  v741 = v1126 + v736;
  v742 = v1257;
  sub_1C4924B90(v741, v1257);
  v743 = sub_1C47E3504(v1113, v742);
  sub_1C4924B3C();
  sub_1C4420C3C(v1112, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v740, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v743 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_225:
  v744 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank;
  swift_beginAccess();
  v745 = v1115;
  sub_1C4460108(v496 + v744, v1115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v746 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryFoodMarketReciprocalRank;
  swift_beginAccess();
  v747 = *(v1258 + 48);
  v748 = v745;
  v749 = v1129;
  sub_1C4460108(v748, v1129, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v746, v749 + v747, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v749, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1129 + v747, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1129, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_232;
    }

    goto LABEL_230;
  }

  v750 = v1129;
  sub_1C4460108(v1129, v1116, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v750 + v747, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_230:
    v508 = v1129;
    goto LABEL_427;
  }

  v751 = v1129;
  v752 = v1129 + v747;
  v753 = v1257;
  sub_1C4924B90(v752, v1257);
  v754 = sub_1C47E3504(v1116, v753);
  sub_1C4924B3C();
  sub_1C4420C3C(v1115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v751, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v754 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_232:
  v755 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank;
  swift_beginAccess();
  v756 = v1118;
  sub_1C4460108(v496 + v755, v1118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v757 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryGasStationReciprocalRank;
  swift_beginAccess();
  v758 = *(v1258 + 48);
  v759 = v756;
  v760 = v1132;
  sub_1C4460108(v759, v1132, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v757, v760 + v758, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v760, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1132 + v758, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1132, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_239;
    }

    goto LABEL_237;
  }

  v761 = v1132;
  sub_1C4460108(v1132, v1119, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v761 + v758, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_237:
    v508 = v1132;
    goto LABEL_427;
  }

  v762 = v1132;
  v763 = v1132 + v758;
  v764 = v1257;
  sub_1C4924B90(v763, v1257);
  v765 = sub_1C47E3504(v1119, v764);
  sub_1C4924B3C();
  sub_1C4420C3C(v1118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v762, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v765 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_239:
  v766 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank;
  swift_beginAccess();
  v767 = v1121;
  sub_1C4460108(v496 + v766, v1121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v768 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHospitalReciprocalRank;
  swift_beginAccess();
  v769 = *(v1258 + 48);
  v770 = v767;
  v771 = v1135;
  sub_1C4460108(v770, v1135, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v768, v771 + v769, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v771, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1135 + v769, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1135, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_246;
    }

    goto LABEL_244;
  }

  v772 = v1135;
  sub_1C4460108(v1135, v1122, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v772 + v769, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_244:
    v508 = v1135;
    goto LABEL_427;
  }

  v773 = v1135;
  v774 = v1135 + v769;
  v775 = v1257;
  sub_1C4924B90(v774, v1257);
  v776 = sub_1C47E3504(v1122, v775);
  sub_1C4924B3C();
  sub_1C4420C3C(v1121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v773, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v776 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_246:
  v777 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank;
  swift_beginAccess();
  v778 = v1124;
  sub_1C4460108(v496 + v777, v1124, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v779 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryHotelReciprocalRank;
  swift_beginAccess();
  v780 = *(v1258 + 48);
  v781 = v778;
  v782 = v1138;
  sub_1C4460108(v781, v1138, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v779, v782 + v780, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v782, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1124, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1138 + v780, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1138, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_253;
    }

    goto LABEL_251;
  }

  v783 = v1138;
  sub_1C4460108(v1138, v1125, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v783 + v780, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1124, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_251:
    v508 = v1138;
    goto LABEL_427;
  }

  v784 = v1138;
  v785 = v1138 + v780;
  v786 = v1257;
  sub_1C4924B90(v785, v1257);
  v787 = sub_1C47E3504(v1125, v786);
  sub_1C4924B3C();
  sub_1C4420C3C(v1124, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v784, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v787 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_253:
  v788 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank;
  swift_beginAccess();
  v789 = v1127;
  sub_1C4460108(v496 + v788, v1127, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v790 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLaundryReciprocalRank;
  swift_beginAccess();
  v791 = *(v1258 + 48);
  v792 = v789;
  v793 = v1141;
  sub_1C4460108(v792, v1141, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v790, v793 + v791, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v793, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1127, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1141 + v791, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1141, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_260;
    }

    goto LABEL_258;
  }

  v794 = v1141;
  sub_1C4460108(v1141, v1128, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v794 + v791, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1127, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_258:
    v508 = v1141;
    goto LABEL_427;
  }

  v795 = v1141;
  v796 = v1141 + v791;
  v797 = v1257;
  sub_1C4924B90(v796, v1257);
  v798 = sub_1C47E3504(v1128, v797);
  sub_1C4924B3C();
  sub_1C4420C3C(v1127, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v795, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v798 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_260:
  v799 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank;
  swift_beginAccess();
  v800 = v1130;
  sub_1C4460108(v496 + v799, v1130, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v801 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryLibraryReciprocalRank;
  swift_beginAccess();
  v802 = *(v1258 + 48);
  v803 = v800;
  v804 = v1144;
  sub_1C4460108(v803, v1144, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v801, v804 + v802, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v804, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1130, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1144 + v802, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1144, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_267;
    }

    goto LABEL_265;
  }

  v805 = v1144;
  sub_1C4460108(v1144, v1131, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v805 + v802, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1130, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_265:
    v508 = v1144;
    goto LABEL_427;
  }

  v806 = v1144;
  v807 = v1144 + v802;
  v808 = v1257;
  sub_1C4924B90(v807, v1257);
  v809 = sub_1C47E3504(v1131, v808);
  sub_1C4924B3C();
  sub_1C4420C3C(v1130, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v806, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v809 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_267:
  v810 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank;
  swift_beginAccess();
  v811 = v1133;
  sub_1C4460108(v496 + v810, v1133, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v812 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMarinaReciprocalRank;
  swift_beginAccess();
  v813 = *(v1258 + 48);
  v814 = v811;
  v815 = v1146;
  sub_1C4460108(v814, v1146, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v812, v815 + v813, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v815, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1133, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1146 + v813, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1146, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_274;
    }

    goto LABEL_272;
  }

  v816 = v1146;
  sub_1C4460108(v1146, v1134, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v816 + v813, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1133, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_272:
    v508 = v1146;
    goto LABEL_427;
  }

  v817 = v1146;
  v818 = v1146 + v813;
  v819 = v1257;
  sub_1C4924B90(v818, v1257);
  v820 = sub_1C47E3504(v1134, v819);
  sub_1C4924B3C();
  sub_1C4420C3C(v1133, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v817, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v820 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_274:
  v821 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank;
  swift_beginAccess();
  v822 = v1136;
  sub_1C4460108(v496 + v821, v1136, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v823 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMovieTheaterReciprocalRank;
  swift_beginAccess();
  v824 = *(v1258 + 48);
  v825 = v822;
  v826 = v1149;
  sub_1C4460108(v825, v1149, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v823, v826 + v824, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v826, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1136, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1149 + v824, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1149, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_281;
    }

    goto LABEL_279;
  }

  v827 = v1149;
  sub_1C4460108(v1149, v1137, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v827 + v824, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1136, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_279:
    v508 = v1149;
    goto LABEL_427;
  }

  v828 = v1149;
  v829 = v1149 + v824;
  v830 = v1257;
  sub_1C4924B90(v829, v1257);
  v831 = sub_1C47E3504(v1137, v830);
  sub_1C4924B3C();
  sub_1C4420C3C(v1136, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v828, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v831 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_281:
  v832 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank;
  swift_beginAccess();
  v833 = v1139;
  sub_1C4460108(v496 + v832, v1139, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v834 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryMuseumReciprocalRank;
  swift_beginAccess();
  v835 = *(v1258 + 48);
  v836 = v833;
  v837 = v1151;
  sub_1C4460108(v836, v1151, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v834, v837 + v835, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v837, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1139, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1151 + v835, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1151, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_288;
    }

    goto LABEL_286;
  }

  v838 = v1151;
  sub_1C4460108(v1151, v1140, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v838 + v835, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1139, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_286:
    v508 = v1151;
    goto LABEL_427;
  }

  v839 = v1151;
  v840 = v1151 + v835;
  v841 = v1257;
  sub_1C4924B90(v840, v1257);
  v842 = sub_1C47E3504(v1140, v841);
  sub_1C4924B3C();
  sub_1C4420C3C(v1139, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v839, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v842 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_288:
  v843 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank;
  swift_beginAccess();
  v844 = v1142;
  sub_1C4460108(v496 + v843, v1142, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v845 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNationalParkReciprocalRank;
  swift_beginAccess();
  v846 = *(v1258 + 48);
  v847 = v844;
  v848 = v1154;
  sub_1C4460108(v847, v1154, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v845, v848 + v846, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v848, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1142, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1154 + v846, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1154, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_295;
    }

    goto LABEL_293;
  }

  v849 = v1154;
  sub_1C4460108(v1154, v1143, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v849 + v846, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1142, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_293:
    v508 = v1154;
    goto LABEL_427;
  }

  v850 = v1154;
  v851 = v1154 + v846;
  v852 = v1257;
  sub_1C4924B90(v851, v1257);
  v853 = sub_1C47E3504(v1143, v852);
  sub_1C4924B3C();
  sub_1C4420C3C(v1142, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v850, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v853 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_295:
  v854 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank;
  swift_beginAccess();
  v855 = v1145;
  sub_1C4460108(v496 + v854, v1145, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v856 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryNightLifeReciprocalRank;
  swift_beginAccess();
  v857 = *(v1258 + 48);
  v858 = v855;
  v859 = v1157;
  sub_1C4460108(v858, v1157, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v856, v859 + v857, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v859, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1145, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1157 + v857, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1157, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_302;
    }

    goto LABEL_300;
  }

  v860 = v1157;
  sub_1C4460108(v1157, v1147, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v860 + v857, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1145, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_300:
    v508 = v1157;
    goto LABEL_427;
  }

  v861 = v1157;
  v862 = v1157 + v857;
  v863 = v1257;
  sub_1C4924B90(v862, v1257);
  v864 = sub_1C47E3504(v1147, v863);
  sub_1C4924B3C();
  sub_1C4420C3C(v1145, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v861, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v864 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_302:
  v865 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank;
  swift_beginAccess();
  v866 = v1148;
  sub_1C4460108(v496 + v865, v1148, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v867 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkReciprocalRank;
  swift_beginAccess();
  v868 = *(v1258 + 48);
  v869 = v866;
  v870 = v1160;
  sub_1C4460108(v869, v1160, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v867, v870 + v868, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v870, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1148, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1160 + v868, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1160, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_309;
    }

    goto LABEL_307;
  }

  v871 = v1160;
  sub_1C4460108(v1160, v1150, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v871 + v868, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1148, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_307:
    v508 = v1160;
    goto LABEL_427;
  }

  v872 = v1160;
  v873 = v1160 + v868;
  v874 = v1257;
  sub_1C4924B90(v873, v1257);
  v875 = sub_1C47E3504(v1150, v874);
  sub_1C4924B3C();
  sub_1C4420C3C(v1148, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v872, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v875 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_309:
  v876 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank;
  swift_beginAccess();
  v877 = v1152;
  sub_1C4460108(v496 + v876, v1152, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v878 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryParkingReciprocalRank;
  swift_beginAccess();
  v879 = *(v1258 + 48);
  v880 = v877;
  v881 = v1163;
  sub_1C4460108(v880, v1163, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v878, v881 + v879, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v881, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1152, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1163 + v879, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1163, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_316;
    }

    goto LABEL_314;
  }

  v882 = v1163;
  sub_1C4460108(v1163, v1153, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v882 + v879, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1152, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_314:
    v508 = v1163;
    goto LABEL_427;
  }

  v883 = v1163;
  v884 = v1163 + v879;
  v885 = v1257;
  sub_1C4924B90(v884, v1257);
  v886 = sub_1C47E3504(v1153, v885);
  sub_1C4924B3C();
  sub_1C4420C3C(v1152, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v883, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v886 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_316:
  v887 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank;
  swift_beginAccess();
  v888 = v1155;
  sub_1C4460108(v496 + v887, v1155, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v889 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPharmacyReciprocalRank;
  swift_beginAccess();
  v890 = *(v1258 + 48);
  v891 = v888;
  v892 = v1166;
  sub_1C4460108(v891, v1166, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v889, v892 + v890, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v892, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1155, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1166 + v890, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1166, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_323;
    }

    goto LABEL_321;
  }

  v893 = v1166;
  sub_1C4460108(v1166, v1156, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v893 + v890, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1155, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_321:
    v508 = v1166;
    goto LABEL_427;
  }

  v894 = v1166;
  v895 = v1166 + v890;
  v896 = v1257;
  sub_1C4924B90(v895, v1257);
  v897 = sub_1C47E3504(v1156, v896);
  sub_1C4924B3C();
  sub_1C4420C3C(v1155, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v894, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v897 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_323:
  v898 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank;
  swift_beginAccess();
  v899 = v1158;
  sub_1C4460108(v496 + v898, v1158, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v900 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPlaygroundReciprocalRank;
  swift_beginAccess();
  v901 = *(v1258 + 48);
  v902 = v899;
  v903 = v1169;
  sub_1C4460108(v902, v1169, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v900, v903 + v901, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v903, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1158, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1169 + v901, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1169, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_330;
    }

    goto LABEL_328;
  }

  v904 = v1169;
  sub_1C4460108(v1169, v1159, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v904 + v901, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1158, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_328:
    v508 = v1169;
    goto LABEL_427;
  }

  v905 = v1169;
  v906 = v1169 + v901;
  v907 = v1257;
  sub_1C4924B90(v906, v1257);
  v908 = sub_1C47E3504(v1159, v907);
  sub_1C4924B3C();
  sub_1C4420C3C(v1158, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v905, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v908 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_330:
  v909 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank;
  swift_beginAccess();
  v910 = v1161;
  sub_1C4460108(v496 + v909, v1161, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v911 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPoliceReciprocalRank;
  swift_beginAccess();
  v912 = *(v1258 + 48);
  v913 = v910;
  v914 = v1172;
  sub_1C4460108(v913, v1172, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v911, v914 + v912, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v914, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1161, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1172 + v912, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1172, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_337;
    }

    goto LABEL_335;
  }

  v915 = v1172;
  sub_1C4460108(v1172, v1162, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v915 + v912, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1161, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_335:
    v508 = v1172;
    goto LABEL_427;
  }

  v916 = v1172;
  v917 = v1172 + v912;
  v918 = v1257;
  sub_1C4924B90(v917, v1257);
  v919 = sub_1C47E3504(v1162, v918);
  sub_1C4924B3C();
  sub_1C4420C3C(v1161, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v916, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v919 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_337:
  v920 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank;
  swift_beginAccess();
  v921 = v1164;
  sub_1C4460108(v496 + v920, v1164, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v922 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPostOfficeReciprocalRank;
  swift_beginAccess();
  v923 = *(v1258 + 48);
  v924 = v921;
  v925 = v1175;
  sub_1C4460108(v924, v1175, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v922, v925 + v923, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v925, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1164, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1175 + v923, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1175, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_344;
    }

    goto LABEL_342;
  }

  v926 = v1175;
  sub_1C4460108(v1175, v1165, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v926 + v923, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1164, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_342:
    v508 = v1175;
    goto LABEL_427;
  }

  v927 = v1175;
  v928 = v1175 + v923;
  v929 = v1257;
  sub_1C4924B90(v928, v1257);
  v930 = sub_1C47E3504(v1165, v929);
  sub_1C4924B3C();
  sub_1C4420C3C(v1164, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v927, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v930 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_344:
  v931 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank;
  swift_beginAccess();
  v932 = v1167;
  sub_1C4460108(v496 + v931, v1167, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v933 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryPublicTransportReciprocalRank;
  swift_beginAccess();
  v934 = *(v1258 + 48);
  v935 = v932;
  v936 = v1178;
  sub_1C4460108(v935, v1178, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v933, v936 + v934, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v936, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1167, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1178 + v934, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1178, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_351;
    }

    goto LABEL_349;
  }

  v937 = v1178;
  sub_1C4460108(v1178, v1168, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v937 + v934, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1167, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_349:
    v508 = v1178;
    goto LABEL_427;
  }

  v938 = v1178;
  v939 = v1178 + v934;
  v940 = v1257;
  sub_1C4924B90(v939, v1257);
  v941 = sub_1C47E3504(v1168, v940);
  sub_1C4924B3C();
  sub_1C4420C3C(v1167, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v938, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v941 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_351:
  v942 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank;
  swift_beginAccess();
  v943 = v1170;
  sub_1C4460108(v496 + v942, v1170, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v944 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryReligiousSiteReciprocalRank;
  swift_beginAccess();
  v945 = *(v1258 + 48);
  v946 = v943;
  v947 = v1181;
  sub_1C4460108(v946, v1181, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v944, v947 + v945, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v947, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1170, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1181 + v945, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1181, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_358;
    }

    goto LABEL_356;
  }

  v948 = v1181;
  sub_1C4460108(v1181, v1171, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v948 + v945, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1170, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_356:
    v508 = v1181;
    goto LABEL_427;
  }

  v949 = v1181;
  v950 = v1181 + v945;
  v951 = v1257;
  sub_1C4924B90(v950, v1257);
  v952 = sub_1C47E3504(v1171, v951);
  sub_1C4924B3C();
  sub_1C4420C3C(v1170, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v949, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v952 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_358:
  v953 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank;
  swift_beginAccess();
  v954 = v1173;
  sub_1C4460108(v496 + v953, v1173, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v955 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestaurantReciprocalRank;
  swift_beginAccess();
  v956 = *(v1258 + 48);
  v957 = v954;
  v958 = v1184;
  sub_1C4460108(v957, v1184, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v955, v958 + v956, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v958, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1173, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1184 + v956, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1184, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_365;
    }

    goto LABEL_363;
  }

  v959 = v1184;
  sub_1C4460108(v1184, v1174, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v959 + v956, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1173, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_363:
    v508 = v1184;
    goto LABEL_427;
  }

  v960 = v1184;
  v961 = v1184 + v956;
  v962 = v1257;
  sub_1C4924B90(v961, v1257);
  v963 = sub_1C47E3504(v1174, v962);
  sub_1C4924B3C();
  sub_1C4420C3C(v1173, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v960, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v963 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_365:
  v964 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank;
  swift_beginAccess();
  v965 = v1176;
  sub_1C4460108(v496 + v964, v1176, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v966 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryRestroomReciprocalRank;
  swift_beginAccess();
  v967 = *(v1258 + 48);
  v968 = v965;
  v969 = v1187;
  sub_1C4460108(v968, v1187, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v966, v969 + v967, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v969, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1176, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1187 + v967, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1187, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_372;
    }

    goto LABEL_370;
  }

  v970 = v1187;
  sub_1C4460108(v1187, v1177, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v970 + v967, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1176, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_370:
    v508 = v1187;
    goto LABEL_427;
  }

  v971 = v1187;
  v972 = v1187 + v967;
  v973 = v1257;
  sub_1C4924B90(v972, v1257);
  v974 = sub_1C47E3504(v1177, v973);
  sub_1C4924B3C();
  sub_1C4420C3C(v1176, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v971, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v974 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_372:
  v975 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank;
  swift_beginAccess();
  v976 = v1179;
  sub_1C4460108(v496 + v975, v1179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v977 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategorySchoolReciprocalRank;
  swift_beginAccess();
  v978 = *(v1258 + 48);
  v979 = v976;
  v980 = v1190;
  sub_1C4460108(v979, v1190, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v977, v980 + v978, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v980, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1190 + v978, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1190, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_379;
    }

    goto LABEL_377;
  }

  v981 = v1190;
  sub_1C4460108(v1190, v1180, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v981 + v978, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_377:
    v508 = v1190;
    goto LABEL_427;
  }

  v982 = v1190;
  v983 = v1190 + v978;
  v984 = v1257;
  sub_1C4924B90(v983, v1257);
  v985 = sub_1C47E3504(v1180, v984);
  sub_1C4924B3C();
  sub_1C4420C3C(v1179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v982, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v985 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_379:
  v986 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank;
  swift_beginAccess();
  v987 = v1182;
  sub_1C4460108(v496 + v986, v1182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v988 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStadiumReciprocalRank;
  swift_beginAccess();
  v989 = *(v1258 + 48);
  v990 = v987;
  v991 = v1193;
  sub_1C4460108(v990, v1193, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v988, v991 + v989, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v991, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1193 + v989, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1193, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_386;
    }

    goto LABEL_384;
  }

  v992 = v1193;
  sub_1C4460108(v1193, v1183, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v992 + v989, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_384:
    v508 = v1193;
    goto LABEL_427;
  }

  v993 = v1193;
  v994 = v1193 + v989;
  v995 = v1257;
  sub_1C4924B90(v994, v1257);
  v996 = sub_1C47E3504(v1183, v995);
  sub_1C4924B3C();
  sub_1C4420C3C(v1182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v993, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v996 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_386:
  v997 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank;
  swift_beginAccess();
  v998 = v1185;
  sub_1C4460108(v496 + v997, v1185, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v999 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryStoreReciprocalRank;
  swift_beginAccess();
  v1000 = *(v1258 + 48);
  v1001 = v998;
  v1002 = v1196;
  sub_1C4460108(v1001, v1196, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v999, v1002 + v1000, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1002, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1185, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1196 + v1000, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1196, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_393;
    }

    goto LABEL_391;
  }

  v1003 = v1196;
  sub_1C4460108(v1196, v1186, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1003 + v1000, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1185, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_391:
    v508 = v1196;
    goto LABEL_427;
  }

  v1004 = v1196;
  v1005 = v1196 + v1000;
  v1006 = v1257;
  sub_1C4924B90(v1005, v1257);
  v1007 = sub_1C47E3504(v1186, v1006);
  sub_1C4924B3C();
  sub_1C4420C3C(v1185, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v1004, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v1007 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_393:
  v1008 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank;
  swift_beginAccess();
  v1009 = v1188;
  sub_1C4460108(v496 + v1008, v1188, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v1010 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryTheaterReciprocalRank;
  swift_beginAccess();
  v1011 = *(v1258 + 48);
  v1012 = v1009;
  v1013 = v1199;
  sub_1C4460108(v1012, v1199, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v1010, v1013 + v1011, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1013, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1188, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1199 + v1011, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1199, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_400;
    }

    goto LABEL_398;
  }

  v1014 = v1199;
  sub_1C4460108(v1199, v1189, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1014 + v1011, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1188, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_398:
    v508 = v1199;
    goto LABEL_427;
  }

  v1015 = v1199;
  v1016 = v1199 + v1011;
  v1017 = v1257;
  sub_1C4924B90(v1016, v1257);
  v1018 = sub_1C47E3504(v1189, v1017);
  sub_1C4924B3C();
  sub_1C4420C3C(v1188, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v1015, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v1018 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_400:
  v1019 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank;
  swift_beginAccess();
  v1020 = v1191;
  sub_1C4460108(v496 + v1019, v1191, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v1021 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryUniversityReciprocalRank;
  swift_beginAccess();
  v1022 = *(v1258 + 48);
  v1023 = v1020;
  v1024 = v1202;
  sub_1C4460108(v1023, v1202, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v1021, v1024 + v1022, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1024, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1191, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1202 + v1022, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1202, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_407;
    }

    goto LABEL_405;
  }

  v1025 = v1202;
  sub_1C4460108(v1202, v1192, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1025 + v1022, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1191, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_405:
    v508 = v1202;
    goto LABEL_427;
  }

  v1026 = v1202;
  v1027 = v1202 + v1022;
  v1028 = v1257;
  sub_1C4924B90(v1027, v1257);
  v1029 = sub_1C47E3504(v1192, v1028);
  sub_1C4924B3C();
  sub_1C4420C3C(v1191, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v1026, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v1029 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_407:
  v1030 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank;
  swift_beginAccess();
  v1031 = v1194;
  sub_1C4460108(v496 + v1030, v1194, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v1032 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryWineryReciprocalRank;
  swift_beginAccess();
  v1033 = *(v1258 + 48);
  v1034 = v1031;
  v1035 = v1205;
  sub_1C4460108(v1034, v1205, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v1032, v1035 + v1033, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1035, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1194, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1205 + v1033, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1205, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_414;
    }

    goto LABEL_412;
  }

  v1036 = v1205;
  sub_1C4460108(v1205, v1195, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1036 + v1033, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1194, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_412:
    v508 = v1205;
    goto LABEL_427;
  }

  v1037 = v1205;
  v1038 = v1205 + v1033;
  v1039 = v1257;
  sub_1C4924B90(v1038, v1257);
  v1040 = sub_1C47E3504(v1195, v1039);
  sub_1C4924B3C();
  sub_1C4420C3C(v1194, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v1037, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v1040 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_414:
  v1041 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank;
  swift_beginAccess();
  v1042 = v1197;
  sub_1C4460108(v496 + v1041, v1197, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v1043 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryZooReciprocalRank;
  swift_beginAccess();
  v1044 = *(v1258 + 48);
  v1045 = v1042;
  v1046 = v1206;
  sub_1C4460108(v1045, v1206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v1043, v1046 + v1044, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1046, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1197, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1206 + v1044, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_421;
    }

    goto LABEL_419;
  }

  v1047 = v1206;
  sub_1C4460108(v1206, v1198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1047 + v1044, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1197, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_419:
    v508 = v1206;
    goto LABEL_427;
  }

  v1048 = v1206;
  v1049 = v1206 + v1044;
  v1050 = v1257;
  sub_1C4924B90(v1049, v1257);
  v1051 = sub_1C47E3504(v1198, v1050);
  sub_1C4924B3C();
  sub_1C4420C3C(v1197, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v1048, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v1051 & 1) == 0)
  {
LABEL_37:

    return 0;
  }

LABEL_421:
  v1052 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank;
  swift_beginAccess();
  v1053 = v1200;
  sub_1C4460108(v496 + v1052, v1200, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v1054 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportGateReciprocalRank;
  swift_beginAccess();
  v1055 = *(v1258 + 48);
  v1056 = v1053;
  v1057 = v1207;
  sub_1C4460108(v1056, v1207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v1054, v1057 + v1055, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1057, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1200, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1207 + v1055, 1, v1259) == 1)
    {
      sub_1C4420C3C(v1207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_430;
    }

    goto LABEL_426;
  }

  v1058 = v1207;
  sub_1C4460108(v1207, v1201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1058 + v1055, 1, v1259) == 1)
  {
    sub_1C4420C3C(v1200, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_426:
    v508 = v1207;
    goto LABEL_427;
  }

  v1059 = v1207;
  v1060 = v1207 + v1055;
  v1061 = v1257;
  sub_1C4924B90(v1060, v1257);
  v1062 = sub_1C47E3504(v1201, v1061);
  sub_1C4924B3C();
  sub_1C4420C3C(v1200, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v1059, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v1062 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_430:
  v1063 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank;
  swift_beginAccess();
  v1064 = v1203;
  sub_1C4460108(v496 + v1063, v1203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v1065 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11POICategoryP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__geoPoiCategoryAirportTerminalReciprocalRank;
  swift_beginAccess();
  v1066 = *(v1258 + 48);
  v1067 = v1064;
  v1068 = v1208;
  sub_1C4460108(v1067, v1208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v506 + v1065, v1068 + v1066, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1068, 1, v1259) != 1)
  {
    sub_1C4460108(v1068, v1204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v1068 + v1066, 1, v1259) == 1)
    {

      sub_1C4420C3C(v1203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_435;
    }

    v1069 = v1068 + v1066;
    v1070 = v1257;
    sub_1C4924B90(v1069, v1257);
    v1071 = sub_1C47E3504(v1204, v1070);

    sub_1C4924B3C();
    sub_1C4420C3C(v1203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v1068, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v1071 & 1) != 0;
  }

  sub_1C4420C3C(v1203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v1068 + v1066, 1, v1259) != 1)
  {
LABEL_435:
    sub_1C4420C3C(v1068, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v1068, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}
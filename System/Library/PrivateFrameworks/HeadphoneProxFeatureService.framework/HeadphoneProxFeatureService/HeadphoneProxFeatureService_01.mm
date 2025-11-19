char *HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures2025(deviceAddress:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v89[7] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v6 = *(v2 + 136);
  if (v6)
  {
    v7 = *(v2 + 152);
    v8 = qword_2814AEED8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_25126654C();
    __swift_project_value_buffer(v9, qword_2814AF200);

    v10 = sub_25126652C();
    v11 = sub_2512666EC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v89[0] = v13;
      *v12 = 136315138;

      v15 = MEMORY[0x25306ED40](v14, &type metadata for HeadphoneProxFeatureManager.HeadphoneProxFeature);
      v17 = v16;

      v18 = sub_251251A44(v15, v17, v89);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_25124E000, v10, v11, "HeadphoneProxFeatureService: showing cached values: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x25306F360](v13, -1, -1);
      MEMORY[0x25306F360](v12, -1, -1);
    }

    goto LABEL_28;
  }

  v19.value._countAndFlagsBits = a1;
  v19.value._object = a2;
  if (!HeadphoneProxFeatureManager.shouldShowPauseMediaOnSleepCard(deviceAddress:)(v19))
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v38 = sub_25126654C();
    __swift_project_value_buffer(v38, qword_2814AF200);
    v39 = sub_25126652C();
    v40 = sub_2512666EC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_25124E000, v39, v40, "HeadphoneProxFeatureService: returning [] due to not fiddle ", v41, 2u);
      MEMORY[0x25306F360](v41, -1, -1);
    }

    v43 = sub_25125647C();
    if (*v42)
    {
      v6 = MEMORY[0x277D84F90];
      *v42 = MEMORY[0x277D84F90];

      (v43)(v89, 0);
      goto LABEL_28;
    }

    (v43)(v89, 0);
LABEL_27:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v88 = MEMORY[0x277D84F90];
  if (!a2)
  {
LABEL_22:
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v44 = sub_25126654C();
    __swift_project_value_buffer(v44, qword_2814AF200);
    v45 = sub_25126652C();
    v46 = sub_2512666EC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_25124E000, v45, v46, "HeadphoneProxFeatureService: getWhatsNewNotShowedFeatures: Invalid Device, Return", v47, 2u);
      MEMORY[0x25306F360](v47, -1, -1);
    }

    goto LABEL_27;
  }

  v20 = sub_251254BE0();

  v21 = MEMORY[0x277D837D0];
  v22 = sub_25126672C();
  v24 = v23;
  sub_25126648C();
  v25 = sub_25126647C();
  v89[0] = v22;
  v89[1] = v24;
  v84 = v20;
  v85 = v20;
  v82 = v21;
  v83 = v20;
  v26 = sub_25126672C();
  v28 = v27;

  v29 = sub_25126646C();

  if (!*(v29 + 16))
  {

    goto LABEL_21;
  }

  v30 = sub_2512520B0(v26, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v87 = *(*(v29 + 56) + 8 * v30);

  v33 = sub_25125A8E4(a1, a2);

  v34.value._countAndFlagsBits = a1;
  v34.value._object = a2;
  v35 = HeadphoneProxFeatureManager.shouldShowLiveTranslationCard(deviceAddress:)(v34);

  if (v35)
  {
    v36 = [v33 personalTranslatorVersion];
    v37 = v36 < [*(v3 + 72) personalTranslatorVersion];
  }

  else
  {
    v37 = 0;
  }

  sub_25126641C();
  v50 = sub_2512664BC();

  if (v50 == 2)
  {
    v51 = [v33 chargingRemindersVersion];
    v52 = v51 < [*(v3 + 72) chargingRemindersVersion];
  }

  else
  {
    v52 = 0;
  }

  sub_25126641C();
  v53 = sub_2512664CC();

  if (v53 == 2)
  {
    v54 = [v33 newChargingStatusVersion];
    v55 = v54 < [*(v3 + 72) newChargingStatusVersion];
  }

  else
  {
    v55 = 0;
  }

  v56 = [v33 remoteCameraControlVersion];
  if (v56 >= [*(v3 + 72) remoteCameraControlVersion])
  {
    v58 = 0;
  }

  else
  {
    sub_25126641C();
    v57 = sub_2512664AC();

    v58 = v57 == 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B08, &qword_251267510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251267500;
  *(inited + 32) = v52;
  *(inited + 33) = 9;
  *(inited + 34) = v55;
  *(inited + 35) = 266;
  *(inited + 37) = 5;
  *(inited + 38) = v58;
  *(inited + 39) = 11;
  v60 = sub_2512643F8(1, 5, 1, inited);
  *(v60 + 2) = 5;
  v60[40] = v37;
  v60[41] = 8;
  sub_251264118(0, 0xE000000000000000, v60, &v88);
  v62 = v61;

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v63 = sub_25126654C();
  __swift_project_value_buffer(v63, qword_2814AF200);

  v64 = v33;

  v65 = sub_25126652C();
  v66 = sub_2512666EC();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v89[0] = v86;
    *v67 = 136315906;
    *(v67 + 4) = sub_251251A44(a1, a2, v89);
    *(v67 + 12) = 2080;
    v68 = sub_251251A44(0, v62, v89);

    *(v67 + 14) = v68;
    *(v67 + 22) = 2080;
    v69 = [v64 description];
    v70 = sub_2512665BC();
    v72 = v71;

    v73 = sub_251251A44(v70, v72, v89);

    *(v67 + 24) = v73;
    *(v67 + 32) = 2080;
    v74 = [*(v3 + 72) description];
    v75 = sub_2512665BC();
    v77 = v76;

    v78 = sub_251251A44(v75, v77, v89);

    *(v67 + 34) = v78;
    _os_log_impl(&dword_25124E000, v65, v66, "HeadphoneProxFeatureService: [%s] featuresToShow: %s current: %s target: %s", v67, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v86, -1, -1);
    MEMORY[0x25306F360](v67, -1, -1);
  }

  else
  {
  }

  v6 = v88;
  v79 = *(v3 + 136);
  v80 = *(v3 + 144);
  v81 = *(v3 + 152);
  *(v3 + 136) = v88;
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  swift_bridgeObjectRetain_n();
  sub_25125DB58(v79);

LABEL_28:
  v48 = *MEMORY[0x277D85DE8];
  return v6;
}

char *HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures(deviceAddress:)(uint64_t a1, unint64_t a2)
{
  v134[13] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v22 = sub_25126654C();
    __swift_project_value_buffer(v22, qword_2814AF200);
    v6 = sub_25126652C();
    v23 = sub_2512666EC();
    if (os_log_type_enabled(v6, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25124E000, v6, v23, "HeadphoneProxFeatureService: getWhatsNewNotShowedFeatures: Invalid Device, Return", v24, 2u);
      MEMORY[0x25306F360](v24, -1, -1);
    }

    goto LABEL_20;
  }

  v3 = v2;
  v6 = sub_25125A8E4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B10, &qword_251267518);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251267500;
  *(inited + 32) = [*(v3 + 72) chargingRemindersVersion];
  *(inited + 40) = [v6 chargingRemindersVersion];
  *(inited + 48) = [*(v3 + 72) newChargingStatusVersion];
  *(inited + 56) = [v6 newChargingStatusVersion];
  *(inited + 64) = [*(v3 + 72) pauseMediaOnSleepVersion];
  *(inited + 72) = [v6 pauseMediaOnSleepVersion];
  *(inited + 80) = [*(v3 + 72) remoteCameraControlVersion];
  *(inited + 88) = [v6 remoteCameraControlVersion];
  v8 = [*(v3 + 72) personalTranslatorVersion];
  v9 = [v6 personalTranslatorVersion];
  v10 = sub_2512646F4(1, 5, 1, inited);
  *(v10 + 2) = 5;
  *(v10 + 12) = v8;
  *(v10 + 13) = v9;
  v11 = MEMORY[0x277D84F90];
  for (i = 32; i != 112; i += 16)
  {
    if (vmovn_s64(vceqq_s64(*&v10[i], vdupq_laneq_s64(*&v10[i], 1))).u8[0])
    {
      v132 = *&v10[i];
      v134[0] = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2512647F8(0, *(v11 + 16) + 1, 1);
        v11 = v134[0];
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = v132;
      if (v14 >= v13 >> 1)
      {
        sub_2512647F8((v13 > 1), v14 + 1, 1);
        v15 = v132;
        v11 = v134[0];
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 16 * v14 + 32) = vdupq_lane_s64(v15, 0);
    }
  }

  v16 = *(v11 + 16);

  if (v16)
  {

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v17 = sub_25126654C();
    __swift_project_value_buffer(v17, qword_2814AF200);

    v18 = sub_25126652C();
    v19 = sub_2512666EC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v134[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_251251A44(a1, a2, v134);
      _os_log_impl(&dword_25124E000, v18, v19, "HeadphoneProxFeatureService: [%s] getWhatsNewNotShowedFeatures: All 2025 features seen, Return empty array", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x25306F360](v21, -1, -1);
      MEMORY[0x25306F360](v20, -1, -1);
    }

LABEL_20:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_96;
  }

  v26 = [v6 headGesturesVersion];
  v27 = [*(v3 + 72) headGesturesVersion];
  v28 = sub_2512665AC();
  v29 = sub_2512665AC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v28, v29, 0);

  v131 = a1;
  v129 = AppBooleanValue;
  if (v26 < v27 || AppBooleanValue)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v32 = sub_25126654C();
    __swift_project_value_buffer(v32, qword_2814AF200);

    v33 = v6;

    v34 = sub_25126652C();
    v35 = sub_2512666EC();

    v31 = 0x2796B2000uLL;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v134[0] = v126;
      *v36 = 136315906;
      *(v36 + 4) = sub_251251A44(v131, a2, v134);
      *(v36 + 12) = 2080;
      [v33 headGesturesVersion];
      sub_2512521C8();
      v123 = v35;
      v37 = sub_25126673C();
      v39 = sub_251251A44(v37, v38, v134);

      *(v36 + 14) = v39;
      *(v36 + 22) = 2080;
      [*(v3 + 72) headGesturesVersion];
      v40 = sub_25126673C();
      v42 = sub_251251A44(v40, v41, v134);

      *(v36 + 24) = v42;
      *(v36 + 32) = 2080;
      if (v129)
      {
        v43 = 5457241;
      }

      else
      {
        v43 = 20302;
      }

      if (v129)
      {
        v44 = 0xE300000000000000;
      }

      else
      {
        v44 = 0xE200000000000000;
      }

      v45 = sub_251251A44(v43, v44, v134);

      *(v36 + 34) = v45;
      _os_log_impl(&dword_25124E000, v34, v123, "HeadphoneProxFeatureService: [%s] getWhatsNewNotShowedFeatures: Head Gestures: Yes, Current Version: %s, Target Version: %s, Force Show: %s", v36, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v126, -1, -1);
      MEMORY[0x25306F360](v36, -1, -1);
    }

    v25 = sub_251264600(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = *(v25 + 2);
    v46 = *(v25 + 3);
    if (v47 >= v46 >> 1)
    {
      v25 = sub_251264600((v46 > 1), v47 + 1, 1, v25);
    }

    *(v25 + 2) = v47 + 1;
    v25[v47 + 32] = 1;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    v31 = 0x2796B2000;
  }

  v48 = [v6 *(v31 + 1696)];
  v49 = [*(v3 + 72) *(v31 + 1696)];
  v50 = sub_2512665AC();
  v51 = sub_2512665AC();
  v52 = CFPreferencesGetAppBooleanValue(v50, v51, 0);

  if (v48 < v49 || v52)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v53 = sub_25126654C();
    __swift_project_value_buffer(v53, qword_2814AF200);

    v54 = v6;

    v55 = sub_25126652C();
    v56 = sub_2512666EC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v134[0] = v127;
      *v57 = 136315906;
      *(v57 + 4) = sub_251251A44(v131, a2, v134);
      *(v57 + 12) = 2080;
      [v54 pauseMediaOnSleepVersion];
      sub_2512521C8();
      v124 = v56;
      v58 = sub_25126673C();
      v60 = sub_251251A44(v58, v59, v134);

      *(v57 + 14) = v60;
      *(v57 + 22) = 2080;
      [*(v3 + 72) pauseMediaOnSleepVersion];
      v61 = sub_25126673C();
      v63 = sub_251251A44(v61, v62, v134);

      *(v57 + 24) = v63;
      *(v57 + 32) = 2080;
      if (v129)
      {
        v64 = 5457241;
      }

      else
      {
        v64 = 20302;
      }

      if (v129)
      {
        v65 = 0xE300000000000000;
      }

      else
      {
        v65 = 0xE200000000000000;
      }

      v66 = sub_251251A44(v64, v65, v134);

      *(v57 + 34) = v66;
      _os_log_impl(&dword_25124E000, v55, v124, "HeadphoneProxFeatureService: [%s] getWhatsNewNotShowedFeatures: Pause Media on Sleep: Yes, Current Version: %s, Target Version: %s, Force Show: %s", v57, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v127, -1, -1);
      MEMORY[0x25306F360](v57, -1, -1);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_251264600(0, *(v25 + 2) + 1, 1, v25);
    }

    v68 = *(v25 + 2);
    v67 = *(v25 + 3);
    if (v68 >= v67 >> 1)
    {
      v25 = sub_251264600((v67 > 1), v68 + 1, 1, v25);
    }

    *(v25 + 2) = v68 + 1;
    v25[v68 + 32] = 5;
  }

  v69 = [v6 hearingAssistVersion];
  v70 = [*(v3 + 72) hearingAssistVersion];
  v71 = sub_2512665AC();
  v72 = sub_2512665AC();
  v73 = CFPreferencesGetAppBooleanValue(v71, v72, 0);

  if (v69 < v70 || v73)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v75 = sub_25126654C();
    __swift_project_value_buffer(v75, qword_2814AF200);

    v76 = v6;

    v77 = sub_25126652C();
    v78 = sub_2512666EC();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v134[0] = v128;
      *v79 = 136315906;
      *(v79 + 4) = sub_251251A44(v131, a2, v134);
      *(v79 + 12) = 2080;
      [v76 hearingAssistVersion];
      sub_2512521C8();
      v125 = v78;
      v80 = sub_25126673C();
      v82 = sub_251251A44(v80, v81, v134);

      *(v79 + 14) = v82;
      *(v79 + 22) = 2080;
      [*(v3 + 72) hearingAssistVersion];
      v83 = sub_25126673C();
      v85 = sub_251251A44(v83, v84, v134);

      *(v79 + 24) = v85;
      *(v79 + 32) = 2080;
      if (v129)
      {
        v86 = 5457241;
      }

      else
      {
        v86 = 20302;
      }

      if (v129)
      {
        v87 = 0xE300000000000000;
      }

      else
      {
        v87 = 0xE200000000000000;
      }

      v88 = sub_251251A44(v86, v87, v134);

      *(v79 + 34) = v88;

      _os_log_impl(&dword_25124E000, v77, v125, "HeadphoneProxFeatureService: [%s] getWhatsNewNotShowedFeatures: Yodel: Yes, Current Version: %s, Target Version: %s, Force Show: %s", v79, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v128, -1, -1);
      MEMORY[0x25306F360](v79, -1, -1);
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_251264600(0, *(v25 + 2) + 1, 1, v25);
    }

    v74 = v131;
    v90 = *(v25 + 2);
    v89 = *(v25 + 3);
    if (v90 >= v89 >> 1)
    {
      v25 = sub_251264600((v89 > 1), v90 + 1, 1, v25);
    }

    *(v25 + 2) = v90 + 1;
    v25[v90 + 32] = 6;
  }

  else
  {

    v74 = v131;
  }

  v91 = [v6 voiceQualityVersion];
  v92 = [*(v3 + 72) voiceQualityVersion];
  v93 = sub_2512665AC();
  v94 = sub_2512665AC();
  v95 = CFPreferencesGetAppBooleanValue(v93, v94, 0);

  if (v91 < v92 || v95)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v96 = sub_25126654C();
    __swift_project_value_buffer(v96, qword_2814AF200);

    v97 = v6;

    v98 = sub_25126652C();
    v99 = sub_2512666EC();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134[0] = v133;
      *v100 = 136315906;
      *(v100 + 4) = sub_251251A44(v131, a2, v134);
      *(v100 + 12) = 2080;
      [v97 voiceQualityVersion];
      sub_2512521C8();
      v130 = v99;
      v101 = sub_25126673C();
      v103 = sub_251251A44(v101, v102, v134);

      *(v100 + 14) = v103;
      *(v100 + 22) = 2080;
      [*(v3 + 72) voiceQualityVersion];
      v104 = sub_25126673C();
      v106 = sub_251251A44(v104, v105, v134);

      *(v100 + 24) = v106;
      *(v100 + 32) = 2080;
      if (v95)
      {
        v107 = 5457241;
      }

      else
      {
        v107 = 20302;
      }

      if (v95)
      {
        v108 = 0xE300000000000000;
      }

      else
      {
        v108 = 0xE200000000000000;
      }

      v109 = sub_251251A44(v107, v108, v134);

      *(v100 + 34) = v109;
      _os_log_impl(&dword_25124E000, v98, v130, "HeadphoneProxFeatureService: [%s] getWhatsNewNotShowedFeatures: Voice Quality: Yes, Current Version: %s, Target Version: %s, Force Show: %s", v100, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v133, -1, -1);
      v110 = v100;
      v74 = v131;
      MEMORY[0x25306F360](v110, -1, -1);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_251264600(0, *(v25 + 2) + 1, 1, v25);
    }

    v112 = *(v25 + 2);
    v111 = *(v25 + 3);
    if (v112 >= v111 >> 1)
    {
      v25 = sub_251264600((v111 > 1), v112 + 1, 1, v25);
    }

    *(v25 + 2) = v112 + 1;
    v25[v112 + 32] = 3;
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v113 = sub_25126654C();
  __swift_project_value_buffer(v113, qword_2814AF200);

  v114 = sub_25126652C();
  v115 = sub_2512666EC();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v134[0] = v117;
    *v116 = 136315394;
    *(v116 + 4) = sub_251251A44(v74, a2, v134);
    *(v116 + 12) = 2080;
    v118 = MEMORY[0x25306ED40](v25, &type metadata for HeadphoneProxFeatureManager.HeadphoneProxFeature);
    v120 = sub_251251A44(v118, v119, v134);

    *(v116 + 14) = v120;

    _os_log_impl(&dword_25124E000, v114, v115, "HeadphoneProxFeatureService: [%s] getWhatsNewNotShowedFeatures: notShowedFeatureSet: %s", v116, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v117, -1, -1);
    MEMORY[0x25306F360](v116, -1, -1);
  }

  else
  {
  }

LABEL_96:
  v121 = *MEMORY[0x277D85DE8];
  return v25;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_251264118(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 33);
    do
    {
      if (*(v6 - 1) == 1)
      {
        v16 = *v6;
        v17 = *a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_251264600(0, *(v17 + 2) + 1, 1, v17);
          *a4 = v17;
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        if (v20 >= v19 >> 1)
        {
          v17 = sub_251264600((v19 > 1), v20 + 1, 1, v17);
          *a4 = v17;
        }

        *(v17 + 2) = v20 + 1;
        v17[v20 + 32] = v16;
        if (v16 <= 5)
        {
          v7 = 0xD000000000000014;
          if (v16 == 4)
          {
            v8 = 0xD000000000000010;
          }

          else
          {
            v8 = 0xD000000000000011;
          }

          v9 = 0x8000000251267540;
          if (v16 == 4)
          {
            v9 = 0x80000002512675C0;
          }

          if (v16 != 3)
          {
            v7 = v8;
          }

          v10 = 0x80000002512675A0;
          if (v16 != 3)
          {
            v10 = v9;
          }

          v11 = 0x7473654764616568;
          if (v16 != 1)
          {
            v11 = 0x6E6172546576696CLL;
          }

          v12 = 0xEC00000073657275;
          if (v16 != 1)
          {
            v12 = 0xEF6E6F6974616C73;
          }

          if (!v16)
          {
            v11 = 0x77654E7374616877;
            v12 = 0xE800000000000000;
          }

          v13 = v16 <= 2;
        }

        else
        {
          v7 = 0x676E696772616863;
          if (v16 != 10)
          {
            v7 = 0x6F436172656D6163;
          }

          v10 = 0xEE00737574617453;
          if (v16 != 10)
          {
            v10 = 0xEE00736C6F72746ELL;
          }

          if (v16 == 9)
          {
            v7 = 0xD000000000000011;
            v10 = 0x8000000251267600;
          }

          v11 = 0xD000000000000012;
          if (v16 == 7)
          {
            v11 = 0xD000000000000010;
          }

          v12 = 0x8000000251267560;
          if (v16 == 7)
          {
            v12 = 0x80000002512675E0;
          }

          if (v16 == 6)
          {
            v11 = 0x6C65646F79;
            v12 = 0xE500000000000000;
          }

          v13 = v16 <= 8;
        }

        if (v13)
        {
          v14 = v11;
        }

        else
        {
          v14 = v7;
        }

        if (v13)
        {
          v15 = v12;
        }

        else
        {
          v15 = v10;
        }

        MEMORY[0x25306ECA0](v14, v15);

        MEMORY[0x25306ECA0](32, 0xE100000000000000);
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }
}

char *sub_2512643F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B08, &qword_251267510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_2512644F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B18, &qword_251267520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251264600(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F427B30, &qword_251267538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_2512646F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B10, &qword_251267518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2512647F8(char *a1, int64_t a2, char a3)
{
  result = sub_251264838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251264818(void *a1, int64_t a2, char a3)
{
  result = sub_25126493C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251264838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B10, &qword_251267518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25126493C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B20, &qword_251267528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B28, &qword_251267530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Bool __swiftcall HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(Swift::String_optional deviceAddress)
{
  v2 = v1;
  object = deviceAddress.value._object;
  countAndFlagsBits = deviceAddress.value._countAndFlagsBits;
  if (!deviceAddress.value._object)
  {
    goto LABEL_32;
  }

  v5 = sub_2512665DC();
  v7 = v6;
  LOBYTE(v84[0]) = 6;

  v8 = sub_25125B280(v5, v7, v84);
  v10 = v9;

  if (!v8)
  {

LABEL_32:
    if (qword_2814AEED8 != -1)
    {
LABEL_55:
      swift_once();
    }

    v52 = sub_25126654C();
    __swift_project_value_buffer(v52, qword_2814AF200);

    v53 = sub_25126652C();
    v54 = sub_2512666EC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v85[0] = v56;
      *v55 = 136315394;
      if (object)
      {
        v57 = object;
      }

      else
      {
        countAndFlagsBits = 4999502;
        v57 = 0xE300000000000000;
      }

      v58 = sub_251251A44(countAndFlagsBits, v57, v85);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2080;
      swift_beginAccess();
      v59 = *(v2 + 24);
      sub_251252064();

      v60 = sub_25126659C();
      v62 = v61;

      v63 = sub_251251A44(v60, v62, v85);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_25124E000, v53, v54, "HeadphoneProxFeatureService: shouldShowYodelCard: Invalid Device, Return false address: %s %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306F360](v56, -1, -1);
      MEMORY[0x25306F360](v55, -1, -1);
    }

    return 0;
  }

  v78 = v5;
  countAndFlagsBits = v83;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v83[0] = sub_251266284;
  v83[1] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  v83[2] = sub_2512662E4;
  v83[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v83[4] = sub_2512662F8;
  v83[5] = v13;
  v14 = v8;
  v15 = v10;
  v16 = v14;
  v17 = v15;
  v80 = v16;
  v79 = v17;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  do
  {
    if (v18 <= 3)
    {
      object = 3;
    }

    else
    {
      object = v18;
    }

    v20 = v18;
    while (1)
    {
      if (object == v20)
      {
        __break(1u);
        goto LABEL_55;
      }

      v81 = *&v83[2 * v20];
      v18 = v20 + 1;

      (v81)(v85, v21);
      if (v85[0])
      {
        break;
      }

      ++v20;
      if (v18 == 3)
      {
        goto LABEL_17;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_251264818(0, *(v19 + 16) + 1, 1);
      v19 = v84[0];
    }

    v23 = v81;
    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_251264818((v24 > 1), v25 + 1, 1);
      v23 = v81;
      v19 = v84[0];
    }

    *(v19 + 16) = v25 + 1;
    *(v19 + 16 * v25 + 32) = v23;
  }

  while (v20 != 2);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427B28, &qword_251267530);
  swift_arrayDestroy();
  v26 = *(v19 + 16);

  if (!v26)
  {

    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v65 = sub_25126654C();
    __swift_project_value_buffer(v65, qword_2814AF200);

    v66 = sub_25126652C();
    v67 = sub_2512666EC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v85[0] = v69;
      *v68 = 136315138;
      swift_beginAccess();
      v70 = *(v2 + 24);
      sub_251252064();

      v71 = sub_25126659C();
      v73 = v72;

      v74 = sub_251251A44(v71, v73, v85);

      *(v68 + 4) = v74;
      _os_log_impl(&dword_25124E000, v66, v67, "HeadphoneProxFeatureService: shouldShowYodelCard: device does not support Yodel, Return false %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x25306F360](v69, -1, -1);
      MEMORY[0x25306F360](v68, -1, -1);
    }

    return 0;
  }

  v27 = v5;
  v28 = sub_25125A8E4(v5, v7);
  v82 = [v28 hearingAssistVersion];
  v77 = [*(v2 + 72) hearingAssistVersion];
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v29 = sub_25126654C();
  __swift_project_value_buffer(v29, qword_2814AF200);

  v30 = v28;

  v31 = sub_25126652C();
  v32 = sub_2512666EC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v84[0] = v76;
    *v33 = 136315906;
    *(v33 + 4) = sub_251251A44(v5, v7, v84);
    *(v33 + 12) = 2080;
    if (v82 >= v77)
    {
      v34 = 20302;
    }

    else
    {
      v34 = 5457241;
    }

    if (v82 >= v77)
    {
      v35 = 0xE200000000000000;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = sub_251251A44(v34, v35, v84);

    *(v33 + 14) = v36;
    *(v33 + 22) = 2080;
    v85[0] = [v30 hearingAssistVersion];
    sub_2512521C8();
    v37 = sub_25126673C();
    v39 = sub_251251A44(v37, v38, v84);

    *(v33 + 24) = v39;
    *(v33 + 32) = 2080;
    v85[0] = [*(v2 + 72) hearingAssistVersion];
    v27 = v78;
    v40 = sub_25126673C();
    v42 = sub_251251A44(v40, v41, v84);

    *(v33 + 34) = v42;
    _os_log_impl(&dword_25124E000, v31, v32, "HeadphoneProxFeatureService: [%s] shouldShowYodelCard: %s, Current Version: %s, Target Version: %s", v33, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v76, -1, -1);
    MEMORY[0x25306F360](v33, -1, -1);
  }

  v43 = sub_2512665AC();
  CFPreferencesAppSynchronize(v43);

  v44 = sub_2512665AC();
  v45 = sub_2512665AC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v44, v45, 0);

  if (AppBooleanValue)
  {

    v47 = sub_25126652C();
    v48 = sub_2512666EC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v84[0] = v50;
      *v49 = 136315138;
      v51 = sub_251251A44(v27, v7, v84);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_25124E000, v47, v48, "HeadphoneProxFeatureService: [%s] shouldShowYodelCard: Force Show!", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x25306F360](v50, -1, -1);
      MEMORY[0x25306F360](v49, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v82 < v77 || AppBooleanValue != 0;
}

void HeadphoneProxFeatureManager.updateDevice(for:deviceAddress:usecase:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  swift_beginAccess();
  v16 = *(v7 + 24);
  if (*(v16 + 16))
  {
    v17 = *(v7 + 24);

    v18 = sub_2512520B0(a2, a3);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v18);

      swift_beginAccess();
      v21 = *(v8 + 40);
      v22 = [v20 identifier];
      if (!v22)
      {
        sub_2512665BC();
        v22 = sub_2512665AC();
      }

      v23 = swift_allocObject();
      v23[2] = a4;
      v23[3] = a5;
      v23[4] = a1;
      v23[5] = a6;
      v23[6] = a7;
      aBlock[4] = sub_251266370;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_251251908;
      aBlock[3] = &block_descriptor_2;
      v24 = _Block_copy(aBlock);

      v25 = a1;
      sub_25124F9C8(a6);

      [v21 sendDeviceConfig:v25 identifier:v22 completion:v24];
      _Block_release(v24);

      return;
    }
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v26 = sub_25126654C();
  __swift_project_value_buffer(v26, qword_2814AF200);

  v27 = sub_25126652C();
  v28 = sub_2512666EC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v29 = 136315394;
    v30 = *(v8 + 24);
    sub_251252064();

    v31 = sub_25126659C();
    v33 = v32;

    v34 = sub_251251A44(v31, v33, aBlock);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_251251A44(a2, a3, aBlock);
    _os_log_impl(&dword_25124E000, v27, v28, "HeadphoneProxFeatureService: setYodelConfig: Invalid Device, Return %s %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v35, -1, -1);
    MEMORY[0x25306F360](v29, -1, -1);
  }

  if (a6)
  {
    a6();
  }
}

void sub_251265810(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(void))
{
  if (!a1)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v24 = sub_25126654C();
    __swift_project_value_buffer(v24, qword_2814AF200);

    v25 = a4;
    v14 = sub_25126652C();
    v26 = sub_2512666EC();

    if (os_log_type_enabled(v14, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v27 = 136315394;
      *(v27 + 4) = sub_251251A44(a2, a3, &v31);
      *(v27 + 12) = 2112;
      *(v27 + 14) = v25;
      *v28 = v25;
      v30 = v25;
      _os_log_impl(&dword_25124E000, v14, v26, "HeadphoneProxFeatureService: Successfully Updated AAD Device Config for %s %@", v27, 0x16u);
      sub_25125E830(v28);
      MEMORY[0x25306F360](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x25306F360](v29, -1, -1);
      MEMORY[0x25306F360](v27, -1, -1);
    }

LABEL_10:

    if (!a5)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = a1;
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v11 = sub_25126654C();
  __swift_project_value_buffer(v11, qword_2814AF200);
  v12 = a1;

  v13 = a4;
  v14 = sub_25126652C();
  v15 = sub_2512666DC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_251251A44(a2, a3, &v31);
    *(v16 + 12) = 2080;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427A90, &qword_2512671B8);
    v20 = sub_2512665CC();
    v22 = sub_251251A44(v20, v21, &v31);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v13;
    *v17 = v13;
    v23 = v13;
    _os_log_impl(&dword_25124E000, v14, v15, "HeadphoneProxFeatureService:  Failed to update AAD Device Config for %s, Error: %s %@", v16, 0x20u);
    sub_25125E830(v17);
    MEMORY[0x25306F360](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v18, -1, -1);
    MEMORY[0x25306F360](v16, -1, -1);

    goto LABEL_10;
  }

  if (!a5)
  {
    return;
  }

LABEL_11:
  a5();
}

void HeadphoneProxFeatureManager.updateRecord(configs:deviceAddress:usecase:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  swift_beginAccess();
  v16 = *(v7 + 32);
  if (*(v16 + 16))
  {
    v17 = *(v7 + 32);

    v18 = sub_2512520B0(a2, a3);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v18);

      v21 = *(v8 + 88);
      v22 = [v20 bluetoothUUID];
      if (!v22)
      {
        sub_2512665BC();
        v22 = sub_2512665AC();
      }

      v23 = swift_allocObject();
      v23[2] = a4;
      v23[3] = a5;
      v23[4] = a6;
      v23[5] = a7;
      aBlock[4] = sub_251266398;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_251251908;
      aBlock[3] = &block_descriptor_15;
      v24 = _Block_copy(aBlock);

      sub_25124F9C8(a6);

      [v21 modifyDeviceConfig:a1 identifier:v22 completion:v24];
      _Block_release(v24);

      return;
    }
  }

  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v25 = sub_25126654C();
  __swift_project_value_buffer(v25, qword_2814AF200);

  v26 = sub_25126652C();
  v27 = sub_2512666EC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v28 = 136315394;
    swift_beginAccess();
    v29 = *(v8 + 24);
    sub_251252064();

    v30 = sub_25126659C();
    v32 = v31;

    v33 = sub_251251A44(v30, v32, &v36);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_251251A44(a2, a3, &v36);
    _os_log_impl(&dword_25124E000, v26, v27, "HeadphoneProxFeatureService: updateRecord: Invalid Device, Return %s %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v34, -1, -1);
    MEMORY[0x25306F360](v28, -1, -1);
  }

  if (a6)
  {
    a6();
  }
}

void sub_251265F70(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  if (!a1)
  {
    if (qword_2814AEED8 != -1)
    {
      swift_once();
    }

    v19 = sub_25126654C();
    __swift_project_value_buffer(v19, qword_2814AF200);

    v11 = sub_25126652C();
    v20 = sub_2512666EC();

    if (os_log_type_enabled(v11, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_251251A44(a2, a3, &v24);
      _os_log_impl(&dword_25124E000, v11, v20, "HeadphoneProxFeatureService: Successfully Updated Hearing Record Configs for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x25306F360](v22, -1, -1);
      MEMORY[0x25306F360](v21, -1, -1);
    }

LABEL_10:

    if (!a4)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = a1;
  if (qword_2814AEED8 != -1)
  {
    swift_once();
  }

  v9 = sub_25126654C();
  __swift_project_value_buffer(v9, qword_2814AF200);
  v10 = a1;

  v11 = sub_25126652C();
  v12 = sub_2512666DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_251251A44(a2, a3, &v24);
    *(v13 + 12) = 2080;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F427A90, &qword_2512671B8);
    v16 = sub_2512665CC();
    v18 = sub_251251A44(v16, v17, &v24);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_25124E000, v11, v12, "HeadphoneProxFeatureService:  Failed to update Hearing Record Config for %s, Error: %s ", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306F360](v14, -1, -1);
    MEMORY[0x25306F360](v13, -1, -1);

    goto LABEL_10;
  }

  if (!a4)
  {
    return;
  }

LABEL_11:
  a4(v23);
}

id sub_251266284@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = [v3 hearingProtectionCapability];
  if (result == 2)
  {
    result = [v3 hearingAidCapability];
    v5 = result == 2;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

id sub_25126630C@<X0>(SEL *a1@<X0>, SEL *a2@<X1>, BOOL *a3@<X8>)
{
  v6 = *(v3 + 16);
  result = [*(v3 + 24) *a1];
  if (result == 2)
  {
    result = [v6 *a2];
    v8 = result == 2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}
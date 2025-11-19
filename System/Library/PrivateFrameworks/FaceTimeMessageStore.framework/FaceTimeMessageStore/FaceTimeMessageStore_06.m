void sub_1BC81A34C(uint64_t a1)
{
  v3 = sub_1BC7C0454(a1);
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    sub_1BC8E2358(v4, v5 == 0, a1);
    if (v5)
    {
      v6 = MEMORY[0x1BFB29A00](v4, a1);
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    sub_1BC81A514();
    v9 = v8;

    if (v1)
    {
      return;
    }

    ++v4;
  }
}

id sub_1BC81A418(void *a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Resetting the context", v5, 2u);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  return [a1 reset];
}

void sub_1BC81A514()
{
  OUTLINED_FUNCTION_22();
  v289 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v283 = v9;
  OUTLINED_FUNCTION_19_6();
  v10 = sub_1BC8F71E4();
  v11 = OUTLINED_FUNCTION_0(v10);
  v281 = v12;
  v282 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v280 = v16 - v15;
  v17 = OUTLINED_FUNCTION_19_6();
  v284 = type metadata accessor for FaceTimeMessageStore_Transcript(v17);
  v18 = OUTLINED_FUNCTION_4_1(v284);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v288 = (v22 - v21);
  OUTLINED_FUNCTION_19_6();
  v23 = sub_1BC8F7264();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v286 = (v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v32 = OUTLINED_FUNCTION_25(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31();
  v287 = v35;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v36);
  v278 = &v263 - v37;
  OUTLINED_FUNCTION_19_6();
  v38 = sub_1BC8F7014();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31();
  v279 = v44;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v45);
  v277 = &v263 - v46;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v263 - v48;
  if ((sub_1BC86D048() & 1) == 0)
  {
LABEL_20:
    sub_1BC82EF30();
    OUTLINED_FUNCTION_76();
    swift_allocError();
    *v108 = 0;
    swift_willThrow();
LABEL_50:
    OUTLINED_FUNCTION_23();
    return;
  }

  v268 = v23;
  v269 = v26;
  v266 = v0;
  v50 = objc_opt_self();
  v51 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v52 = *(v41 + 16);
  v271 = v41 + 16;
  v272 = v51;
  v270 = v52;
  v52(v49, &v4[v51], v38);
  v53 = sub_1BC8F6F44();
  v267 = v41;
  v54 = *(v41 + 8);
  v274 = v41 + 8;
  v275 = v38;
  v273 = v54;
  (v54)(v49, v38);
  v55 = [v50 createFutureForFileAtURL_];

  v276 = v55;
  v56 = v4;
  if (!v55)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v96 = sub_1BC8F7734();
    __swift_project_value_buffer(v96, qword_1EDC2B268);
    v97 = v4;
    v98 = sub_1BC8F7714();
    v99 = sub_1BC8F81E4();

    if (os_log_type_enabled(v98, v99))
    {
      OUTLINED_FUNCTION_9();
      v100 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v295 = swift_slowAlloc();
      v101 = v295;
      *v100 = 136446210;
      v102 = &v4[v272];
      v103 = v275;
      v270(v49, v102, v275);
      sub_1BC7AAAD0(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
      v104 = sub_1BC8F8A54();
      (v273)(v49, v103);
      v105 = OUTLINED_FUNCTION_97();
      sub_1BC7A9A4C(v105, v106, v107);
      OUTLINED_FUNCTION_77();

      *(v100 + 4) = v104;
      _os_log_impl(&dword_1BC7A3000, v98, v99, "MessageStoreManager: Failed to create future for asset at URL %{public}s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    goto LABEL_20;
  }

  type metadata accessor for FTStoredMessage();
  v57 = [swift_getObjCClassFromMetadata() entityName];
  if (!v57)
  {
    sub_1BC8F7C24();
    v57 = sub_1BC8F7BE4();
  }

  v58 = objc_opt_self();
  v59 = v289;
  v60 = [v58 insertNewObjectForEntityForName:v57 inManagedObjectContext:v289];

  v285 = swift_dynamicCastClass();
  if (!v285)
  {

    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v109 = sub_1BC8F7734();
    __swift_project_value_buffer(v109, qword_1EDC2B268);
    v110 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v111 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v111, v112))
    {
      OUTLINED_FUNCTION_45();
      v113 = swift_slowAlloc();
      OUTLINED_FUNCTION_118(v113);
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v114, v115, v116, v117, v118, 2u);
      v119 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v119);
    }

    [v59 reset];
    sub_1BC82EF30();
    OUTLINED_FUNCTION_76();
    swift_allocError();
    *v120 = 0;
    swift_willThrow();
    goto LABEL_49;
  }

  v264 = v60;
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v263 = sub_1BC8F7734();
  v61 = __swift_project_value_buffer(v263, qword_1EDC2B268);
  v62 = v4;
  v63 = v59;
  v64 = sub_1BC8F7714();
  v65 = sub_1BC8F8204();
  v265 = v63;

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v289 = v61;
    v67 = v66;
    v68 = swift_slowAlloc();
    *v67 = 138543618;
    *(v67 + 4) = v62;
    *(v67 + 12) = 2114;
    v69 = v265;
    *(v67 + 14) = v265;
    *v68 = v62;
    v68[1] = v69;
    v70 = v62;
    v71 = v69;
    _os_log_impl(&dword_1BC7A3000, v64, v65, "MessageStoreManager: Inserting message: %{public}@\nto context: %{public}@", v67, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v72 = &v56[v272];
  v73 = v275;
  v270(v49, v72, v275);
  v74 = sub_1BC8F6EE4();
  v76 = v75;
  (v273)(v49, v73);
  v77 = v285;
  sub_1BC7C3588(v74, v76, v285, &selRef_setFileType_);
  v78 = v276;
  swift_unknownObjectRetain();
  v79 = sub_1BC8F7BE4();
  [v77 setValue:v78 forKey:v79];
  swift_unknownObjectRelease();

  v80 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v289 = v80;
  v81 = *&v62[v80];
  v82 = v62;
  if (v81 >= 2)
  {
    v87 = v1;
    v88 = v288;
    v124 = v267;
    if (v81 != 2)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v125 = v278;
    sub_1BC830400();
    if (__swift_getEnumTagSinglePayload(v125, 1, v73) != 1)
    {
      (*(v124 + 32))(v277, v125, v73);
      v140 = sub_1BC8F6EE4();
      sub_1BC7C3588(v140, v141, v77, &selRef_setThumbnailType_);
      v142 = sub_1BC8F7054();
      if (v1)
      {
        v144 = OUTLINED_FUNCTION_97();
        v273(v144);
LABEL_48:

LABEL_49:
        swift_unknownObjectRelease();
        goto LABEL_50;
      }

      sub_1BC82EE28(v142, v143, v77, &selRef_setMessageThumbnail_);
      v165 = OUTLINED_FUNCTION_97();
      v273(v165);
      goto LABEL_45;
    }

    sub_1BC7C1744(v125, &qword_1EBCF5A20, &qword_1BC901BF0);
    v126 = v82;
    v127 = sub_1BC8F7714();
    v128 = sub_1BC8F81E4();

    if (os_log_type_enabled(v127, v128))
    {
      OUTLINED_FUNCTION_9();
      v129 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v287 = swift_slowAlloc();
      v293[0] = v287;
      *v129 = 136446210;
      LODWORD(v279) = v128;
      v130 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v131 = v269;
      v132 = &v126[v130];
      v133 = v286;
      (*(v269 + 16))(v286, v132, v268);
      OUTLINED_FUNCTION_12_9();
      sub_1BC7AAAD0(v134, v135);
      v136 = sub_1BC8F8A54();
      v138 = v137;
      (*(v131 + 8))(v133, v268);
      sub_1BC7A9A4C(v136, v138, v293);
      OUTLINED_FUNCTION_100();

      *(v129 + 4) = v133;
      _os_log_impl(&dword_1BC7A3000, v127, v279, "MessageStoreManager: Missing thumbnail for message with UUID %{public}s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v287);
      v87 = v1;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v139 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v139);
    }
  }

  else
  {
    [v77 setMessageThumbnail_];
    v83 = sub_1BC8F7714();
    sub_1BC8F8204();
    v84 = OUTLINED_FUNCTION_36_0();
    v86 = os_log_type_enabled(v84, v85);
    v87 = v1;
    v88 = v288;
    if (v86)
    {
      OUTLINED_FUNCTION_45();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_90();
      _os_log_impl(v89, v90, v91, v92, v93, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v94 = v287;
    sub_1BC830400();
    v95 = v275;
    if (__swift_getEnumTagSinglePayload(v94, 1, v275) == 1)
    {
      sub_1BC7C1744(v94, &qword_1EBCF5A20, &qword_1BC901BF0);
      goto LABEL_38;
    }

    v121 = v279;
    (*(v267 + 32))(v279, v94, v95);
    v122 = sub_1BC8F7054();
    if (v1)
    {

      (v273)(v121, v95);
      v87 = 0;
LABEL_37:
      v88 = v288;
LABEL_38:
      v147 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      if (*&v82[v147] == 3)
      {
        v148 = sub_1BC8F7714();
        sub_1BC8F81E4();
        v149 = OUTLINED_FUNCTION_36_0();
        if (os_log_type_enabled(v149, v150))
        {
          OUTLINED_FUNCTION_45();
          v151 = swift_slowAlloc();
          OUTLINED_FUNCTION_118(v151);
          OUTLINED_FUNCTION_43_0();
          _os_log_impl(v152, v153, v154, v155, v156, 2u);
          v157 = OUTLINED_FUNCTION_13_2();
          MEMORY[0x1BFB2AA50](v157);
        }
      }

      goto LABEL_45;
    }

    if (sub_1BC86365C(v122, v123))
    {
      (v273)(v279, v275);
      v145 = OUTLINED_FUNCTION_79();
      sub_1BC7D4C94(v145, v146);
      goto LABEL_37;
    }

    v158 = v279;
    v159 = sub_1BC8F6EE4();
    sub_1BC7C3588(v159, v160, v77, &selRef_setTranscriptType_);
    v161 = OUTLINED_FUNCTION_79();
    sub_1BC82EDD0(v161, v162, v77);
    v163 = OUTLINED_FUNCTION_79();
    sub_1BC7D4C94(v163, v164);
    (v273)(v158, v275);
  }

  v88 = v288;
LABEL_45:
  sub_1BC865C3C();
  if (v293[0])
  {
    sub_1BC8CE5F4(v293, v88);
    sub_1BC7AAAD0(&qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript);
    v166 = sub_1BC8F7544();
    if (v87)
    {
      OUTLINED_FUNCTION_57_1();
      goto LABEL_48;
    }

    v168 = v166;
    v169 = v167;
    OUTLINED_FUNCTION_57_1();
    sub_1BC82EE28(v168, v169, v77, &selRef_setTranscriptData_);
  }

  v170 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v172 = v268;
  v171 = v269;
  v173 = v269 + 16;
  v288 = *(v269 + 16);
  v284 = v170;
  v174 = v286;
  (v288)(v286, &v82[v170], v268);
  v175 = sub_1BC8F7214();
  v176 = *(v171 + 8);
  v176(v174, v172);
  v177 = v285;
  [v285 setRecordUUID_];

  v178 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (v288)(v174, &v82[v178], v172);
  sub_1BC8F7214();
  v179 = OUTLINED_FUNCTION_77();
  v176(v179, v172);
  [v177 setCallUUID_];

  v180 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v279 = v173;
  (v288)(v174, &v82[v180], v172);
  sub_1BC8F7214();
  v181 = OUTLINED_FUNCTION_77();
  v269 = v171 + 8;
  v286 = v176;
  v176(v181, v172);
  v182 = v177;
  [v177 setConversationID_];

  [v177 setMessageType_];
  v183 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v185 = *v183;
  v184 = v183[1];

  sub_1BC7C3588(v185, v184, v177, &selRef_setFrom_);
  v186 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v188 = *v186;
  v187 = v186[1];

  sub_1BC7C3588(v188, v187, v177, &selRef_setProvider_);
  v189 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v190 = v281;
  v191 = v282;
  v287 = *(v281 + 16);
  v192 = &v82[v189];
  v193 = v280;
  (v287)(v280, v192, v282);
  v194 = sub_1BC8F7174();
  v195 = *(v190 + 8);
  v196 = OUTLINED_FUNCTION_97();
  v195(v196);
  [v182 setDateCreated_];

  v197 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (v287)(v193, &v82[v197], v191);
  v198 = sub_1BC8F7174();
  v199 = OUTLINED_FUNCTION_97();
  v195(v199);
  [v182 setDateModified_];

  v200 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v182 setIsRead_];
  v201 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v182 setMailboxType_];
  v202 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v182 setIsSensitive_];
  v203 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (v203[1])
  {
    v188 = *v203;
    v204 = v203[1];

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v203 = 0;
  }

  v205 = v266;
  v206 = v283;
  v207 = v285;
  [v285 setRecipient_];

  v208 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v207 setIsRTT_];
  v209 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v207 setTranscriptionStatus_];
  v210 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v207 setDuration_];
  v211 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v212 = v268;
  if (v211[1])
  {
    v188 = *v211;
    v213 = v211[1];

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v211 = 0;
  }

  [v285 setSimID_];

  v214 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v215 = 7827308;
  v216 = 0xE300000000000000;
  switch(v82[v214])
  {
    case 1:
      v216 = 0xE600000000000000;
      v215 = 0x6D756964656DLL;
      break;
    case 2:
      v216 = 0xE400000000000000;
      v215 = 1751607656;
      break;
    case 3:
      v215 = 7823730;
      break;
    default:
      break;
  }

  sub_1BC7C3588(v215, v216, v285, &selRef_setQuality_);
  v217 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v218 = *(v217 + 2);
  v291 = *v217;
  v292 = v218;

  sub_1BC8511D8(&v291);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC830400();
  v219 = 0;
  if (__swift_getEnumTagSinglePayload(v206, 1, v212) != 1)
  {
    v219 = v206;
    sub_1BC8F7214();
    v220 = OUTLINED_FUNCTION_100();
    v286(v220, v212);
  }

  [v285 setReminderUUID_];

  if (*&v289[v82] == 1)
  {
    v232 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    if (v232[4])
    {
      if (qword_1EDC1E1A0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v263, qword_1EDC2B208);
      v233 = sub_1BC8F7714();
      sub_1BC8F81E4();
      v234 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v234, v235))
      {
        OUTLINED_FUNCTION_45();
        v236 = swift_slowAlloc();
        OUTLINED_FUNCTION_118(v236);
        OUTLINED_FUNCTION_43_0();
        _os_log_impl(v237, v238, v239, v240, v241, 2u);
        v242 = OUTLINED_FUNCTION_13_2();
        MEMORY[0x1BFB2AA50](v242);
      }

      goto LABEL_76;
    }

    v252 = v82;
    v253 = *v232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5930, &qword_1BC902B98);
    v254 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5938, &qword_1BC902BA0) - 8);
    v255 = *(*v254 + 72);
    OUTLINED_FUNCTION_103();
    v256 = swift_allocObject();
    *(v256 + 16) = xmmword_1BC8FC230;
    v257 = v254[14];
    v258 = OUTLINED_FUNCTION_126();
    v259(v258);
    *(v256 + v191 + v257) = v253;
    OUTLINED_FUNCTION_12_9();
    sub_1BC7AAAD0(v260, v261);
    v262 = sub_1BC8F7AD4();
    OUTLINED_FUNCTION_106(v262);
    if (!v188)
    {

      v82 = v252;
      goto LABEL_76;
    }

    goto LABEL_80;
  }

  if (*&v289[v82])
  {
LABEL_76:
    if (swift_weakLoadStrong())
    {
      sub_1BC8EC824(0, v82);
    }

    v243 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v244 = *v243;
    v245 = v243[4];
    v246 = *(v205 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache);
    objc_allocWithZone(type metadata accessor for Message());

    v290 = v245;
    sub_1BC86A9C0(v285, v244 | (v245 << 32), v246, v247, v248, v249, v250, v251, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
    swift_unknownObjectRelease();
    goto LABEL_50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5930, &qword_1BC902B98);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5938, &qword_1BC902BA0);
  OUTLINED_FUNCTION_129(v221);
  v223 = *(v222 + 72);
  OUTLINED_FUNCTION_103();
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_1BC8FC230;
  v225 = v224 + v191;
  v226 = OUTLINED_FUNCTION_126();
  v227(v226);
  v228 = &v82[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  LOWORD(v81) = v228[4];
  if ((v81 & 1) == 0)
  {
    *(v225 + *(v221 + 48)) = *v228;
    OUTLINED_FUNCTION_12_9();
    sub_1BC7AAAD0(v229, v230);
    v231 = sub_1BC8F7AD4();
    OUTLINED_FUNCTION_106(v231);
    if (!v188)
    {

      goto LABEL_76;
    }

LABEL_80:
    swift_unknownObjectRelease();

    goto LABEL_50;
  }

  __break(1u);
LABEL_83:
  v294 = v81;
  sub_1BC8F8B04();
  __break(1u);
}

uint64_t sub_1BC81BD54(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v94 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v93 = &v84 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5940, &qword_1BC902BA8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v84 - v18;
  v19 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 64);
  v85 = (v20 + 63) >> 6;
  v103 = (v4 + 16);
  v98 = (v4 + 32);
  v89 = v4;
  v90 = a2;
  v105 = (v4 + 8);

  v24 = 0;
  *&v25 = 67240450;
  v87 = v25;
  *&v25 = 136446466;
  v86 = v25;
  v106 = v3;
  v92 = a2 + 64;
  v104 = v12;
  if (v22)
  {
    while (1)
    {
      v26 = v24;
LABEL_10:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v26 << 6);
      v31 = v89;
      v30 = v90;
      v32 = v88;
      v33 = v106;
      (*(v89 + 16))(v88, *(v90 + 48) + *(v89 + 72) * v29, v106);
      LODWORD(v30) = *(*(v30 + 56) + 4 * v29);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5948, &qword_1BC902BB0);
      v35 = *(v34 + 48);
      v36 = *(v31 + 32);
      v37 = v97;
      v36(v97, v32, v33);
      *(v37 + v35) = v30;
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v34);
      v12 = v104;
LABEL_11:
      v38 = v96;
      sub_1BC830458();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5948, &qword_1BC902BB0);
      if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
      {
      }

      v40 = *(v38 + *(v39 + 48));
      (*v98)(v12, v38, v106);
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v41 = sub_1BC8F7734();
      v42 = __swift_project_value_buffer(v41, qword_1EDC2B268);
      v43 = *v103;
      v44 = v93;
      (*v103)(v93, v12, v106);
      v45 = sub_1BC8F7714();
      v46 = sub_1BC8F8204();
      v47 = os_log_type_enabled(v45, v46);
      v102 = v40;
      v99 = v43;
      v100 = v42;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v108 = v49;
        *v48 = v87;
        *(v48 + 4) = v40;
        *(v48 + 8) = 2082;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v50 = sub_1BC8F8A54();
        v52 = v51;
        v101 = *v105;
        v101(v44, v106);
        v53 = sub_1BC7A9A4C(v50, v52, &v108);

        *(v48 + 10) = v53;
        _os_log_impl(&dword_1BC7A3000, v45, v46, "Attempting to set voicemailID: %{public}d for recordUUID: %{public}s", v48, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1BFB2AA50](v49, -1, -1);
        MEMORY[0x1BFB2AA50](v48, -1, -1);
      }

      else
      {

        v101 = *v105;
        v101(v44, v106);
      }

      v54 = type metadata accessor for FTLocalMessageProperties();
      v55 = [swift_getObjCClassFromMetadata() entityName];
      v56 = v104;
      if (!v55)
      {
        sub_1BC8F7C24();
        v55 = sub_1BC8F7BE4();
      }

      v57 = [objc_opt_self() insertNewObjectForEntityForName:v55 inManagedObjectContext:v95];

      v58 = v94;
      v99(v94, v56, v106);
      v59 = sub_1BC8F7714();
      v60 = sub_1BC8F8204();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v99 = v57;
        v63 = v62;
        v108 = v62;
        *v61 = v86;
        v107 = v102;
        v64 = sub_1BC8F8A54();
        v66 = sub_1BC7A9A4C(v64, v65, &v108);
        v91 = v54;
        v67 = v66;

        *(v61 + 4) = v67;
        *(v61 + 12) = 2082;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v68 = sub_1BC8F8A54();
        v70 = v69;
        v71 = v58;
        v72 = v101;
        v101(v71, v106);
        v73 = sub_1BC7A9A4C(v68, v70, &v108);

        *(v61 + 14) = v73;
        _os_log_impl(&dword_1BC7A3000, v59, v60, "Saving voicemailID: %{public}s to recordUUID: %{public}s", v61, 0x16u);
        swift_arrayDestroy();
        v74 = v63;
        v57 = v99;
        MEMORY[0x1BFB2AA50](v74, -1, -1);
        MEMORY[0x1BFB2AA50](v61, -1, -1);
      }

      else
      {

        v75 = v58;
        v72 = v101;
        v101(v75, v106);
      }

      v76 = swift_dynamicCastClass();
      v12 = v104;
      if (!v76)
      {
        break;
      }

      v77 = v76;
      v78 = sub_1BC8F7214();
      [v77 setRecordUUID_];

      [v77 setVoicemailID_];
      result = v72(v12, v106);
      v19 = v92;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    v80 = sub_1BC8F7714();
    v81 = sub_1BC8F81E4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1BC7A3000, v80, v81, "Failed to insert voicemail ID for recordUUID because property description was invalid!", v82, 2u);
      MEMORY[0x1BFB2AA50](v82, -1, -1);
    }

    sub_1BC82EF30();
    swift_allocError();
    *v83 = 0;
    swift_willThrow();

    return v72(v12, v106);
  }

  else
  {
LABEL_5:
    v27 = v97;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v85)
      {
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5948, &qword_1BC902BB0);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v79);
        v22 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v26);
      ++v24;
      if (v22)
      {
        v24 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BC81C684(void *a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Making sure temp store is empty!", v5, 2u);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  type metadata accessor for FTLocalMessage();
  v6 = static FTLocalMessage.fetchRequest()();
  [v6 setResultType_];
  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v7 setResultType_];
  sub_1BC81C7E4(v7, a1);
}

id sub_1BC81C7E4(void *a1, void *a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  v5 = __swift_project_value_buffer(v4, qword_1EDC2B268);
  v6 = a1;
  v7 = sub_1BC8F7714();
  v8 = sub_1BC8F8204();

  if (os_log_type_enabled(v7, v8))
  {
    v41 = v5;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v9 = 136446210;
    v42 = v6;
    sub_1BC7D9730(0, &qword_1EBCF59B0, 0x1E695D6D0);
    v11 = v6;
    v12 = sub_1BC8F7C94();
    v14 = sub_1BC7A9A4C(v12, v13, v45);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "MessageStoreManager: Executing request: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB2AA50](v10, -1, -1);
    MEMORY[0x1BFB2AA50](v9, -1, -1);
  }

  v45[0] = 0;
  v15 = [a2 executeRequest:v6 error:v45];
  v16 = v45[0];
  if (v15 && (v17 = v15, v18 = v45[0], v17, v45[0] = 0, v19 = [a2 save_], v16 = v45[0], v19))
  {
    result = v45[0];
  }

  else
  {
    v21 = v16;
    v22 = sub_1BC8F6EA4();

    swift_willThrow();
    v23 = v22;
    v24 = sub_1BC8F7714();
    v25 = sub_1BC8F81E4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45[0] = v41;
      *v26 = 136446210;
      swift_getErrorValue();
      v27 = v43;
      v28 = v44;
      v29 = sub_1BC8F83F4();
      v40[1] = v40;
      v30 = *(v29 - 8);
      v31 = *(v30 + 64);
      MEMORY[0x1EEE9AC00](v29);
      v33 = v40 - v32;
      (*(*(v28 - 8) + 16))(v40 - v32, v27, v28);
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v28);
      v34 = sub_1BC8073F0(v33, v28);
      v36 = v35;
      (*(v30 + 8))(v33, v29);
      v37 = sub_1BC7A9A4C(v34, v36, v45);

      *(v26 + 4) = v37;
      _os_log_impl(&dword_1BC7A3000, v24, v25, "Error executing request %{public}s", v26, 0xCu);
      v38 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFB2AA50](v38, -1, -1);
      MEMORY[0x1BFB2AA50](v26, -1, -1);
    }

    result = swift_willThrow();
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC81CC20@<X0>(unint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  Request = type metadata accessor for MessageStoreFetchRequest();
  v6 = (Request - 8);
  v7 = *(*(Request - 8) + 64);
  MEMORY[0x1EEE9AC00](Request);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1BC7A5AB4(v10);
  sub_1BC8F7254();
  *&v9[v6[7]] = v10;
  *&v9[v6[8]] = 512;
  *&v9[v6[9]] = 1;
  v11 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v12 = &v9[v6[10]];
  *v12 = v11;
  v12[1] = v13;
  *&v9[v6[11]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v9[v6[12]] = 0;
  v14 = sub_1BC7BF3F8(v9);
  if (v2)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1BC8F7734();
    __swift_project_value_buffer(v15, qword_1EDC2B268);
    v16 = v2;
    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F81E4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1BC7A3000, v17, v18, "MessageStoreManager: Encountered an error while trying to get all messages for migration: %{public}@", v19, 0xCu);
      sub_1BC7C1744(v20, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v20, -1, -1);
      MEMORY[0x1BFB2AA50](v19, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    *a2 = v14;
  }

  return sub_1BC830350(v9, type metadata accessor for MessageStoreFetchRequest);
}

uint64_t sub_1BC81CE7C@<X0>(unint64_t *a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1BC8F7264();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for MessageStoreFetchRequest();
  v11 = (Request - 8);
  v12 = *(*(Request - 8) + 64);
  MEMORY[0x1EEE9AC00](Request);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  sub_1BC7A5AB4(v15);
  sub_1BC8F7254();
  *(v14 + v11[7]) = v15;
  *(v14 + v11[8]) = 512;
  *(v14 + v11[9]) = 0;
  v16 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v17 = (v14 + v11[10]);
  *v17 = v16;
  v17[1] = v18;
  *(v14 + v11[11]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v14 + v11[12]) = 0;
  v19 = sub_1BC7BF3F8(v14);
  v20 = v2;
  if (!v2)
  {
    v30 = v19;
    v40 = a2;
    v41 = 0;
    v42 = v14;
    v46 = sub_1BC7C0454(v19);
    v31 = 0;
    v44 = v30 & 0xFFFFFFFFFFFFFF8;
    v45 = v30 & 0xC000000000000001;
    v14 = (v6 + 16);
    v43 = v6 + 32;
    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v46 == v31)
      {

        result = sub_1BC830350(v42, type metadata accessor for MessageStoreFetchRequest);
        *v40 = v32;
        return result;
      }

      if (v45)
      {
        v33 = MEMORY[0x1BFB29A00](v31, v30);
      }

      else
      {
        if (v31 >= *(v44 + 16))
        {
          goto LABEL_20;
        }

        v33 = *(v30 + 8 * v31 + 32);
      }

      v34 = v33;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v35 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      (*v14)(v9, &v34[v35], v5);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v32 + 16);
        sub_1BC7F7144();
        v32 = v37;
      }

      v20 = *(v32 + 16);
      if (v20 >= *(v32 + 24) >> 1)
      {
        sub_1BC7F7144();
        v32 = v38;
      }

      *(v32 + 16) = v20 + 1;
      (*(v6 + 32))(v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v9, v5);
      ++v31;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (qword_1EDC1E1D0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v21 = sub_1BC8F7734();
  __swift_project_value_buffer(v21, qword_1EDC2B268);
  v22 = v20;
  v23 = sub_1BC8F7714();
  v24 = sub_1BC8F81E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    v27 = v20;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_1BC7A3000, v23, v24, "MessageStoreManager: Encountered an error while trying to get unnecessary messages for deletion: %{public}@", v25, 0xCu);
    sub_1BC7C1744(v26, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v26, -1, -1);
    MEMORY[0x1BFB2AA50](v25, -1, -1);
  }

  swift_willThrow();
  return sub_1BC830350(v14, type metadata accessor for MessageStoreFetchRequest);
}

uint64_t sub_1BC81D2F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTLocalMessage();
  result = sub_1BC8F8314();
  if (v1)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1BC8F7734();
    __swift_project_value_buffer(v4, qword_1EDC2B268);
    v5 = v1;
    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F81E4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BC7A3000, v6, v7, "MessageStoreManager: Encountered an error while trying to get all messages for migration to perm db: %{public}@", v8, 0xCu);
      sub_1BC7C1744(v9, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
      MEMORY[0x1BFB2AA50](v8, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BC81D480()
{
  v0 = sub_1BC8F6D14();
  if (!v0)
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  v1 = v0;

  sub_1BC8F8544();
  sub_1BC8E715C(v5, v1);

  sub_1BC8037DC(v5);
  if (!*(&v7 + 1))
  {
LABEL_6:
    sub_1BC7C1744(&v6, &unk_1EBCF5E50, &qword_1BC8FE850);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5978, &qword_1BC902D08);
  if ((OUTLINED_FUNCTION_134() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BC80EB38(v5[0]);
  v3 = v2;

  return v3;
}

void sub_1BC81D588()
{
  v0 = sub_1BC8F6D14();
  if (v0)
  {
    v1 = v0;

    sub_1BC8F8544();
    sub_1BC8E715C(v2, v1);

    sub_1BC8037DC(v2);
    if (*(&v4 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59A0, &qword_1BC902D28);
      if (OUTLINED_FUNCTION_134())
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  sub_1BC7C1744(&v3, &unk_1EBCF5E50, &qword_1BC8FE850);
LABEL_7:
  if (sub_1BC7C0454(MEMORY[0x1E69E7CC0]))
  {
    sub_1BC8C16BC(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1BC81D694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v19 - v4;
  v6 = *MEMORY[0x1E695D320];
  sub_1BC8F7C24();
  sub_1BC81D588();
  v8 = v7;

  v9 = *MEMORY[0x1E695D4C8];
  sub_1BC8F7C24();
  sub_1BC81D588();
  v11 = v10;

  v12 = *MEMORY[0x1E695D2F0];
  sub_1BC8F7C24();
  sub_1BC81D588();
  v14 = v13;

  if (!sub_1BC814718(v8) || !sub_1BC814718(v11))
  {

    goto LABEL_8;
  }

  v15 = sub_1BC814718(v14);

  if (!v15)
  {
LABEL_8:
    v17 = swift_allocObject();
    v17[2] = v0;
    v17[3] = v8;
    v17[4] = v11;
    v18 = swift_allocObject();
    *(v18 + 16) = &unk_1BC902D18;
    *(v18 + 24) = v17;
    v19[0] = &unk_1BC902D20;
    v19[1] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
    sub_1BC8F7FD4();

    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_1BC81D8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC81D91C, 0, 0);
}

uint64_t sub_1BC81D91C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = *(v1 + 56);
  v3 = swift_task_alloc();
  v4 = *(v1 + 40);
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  v5 = v4;
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v6 = *(v5 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v5 + 88, *(v5 + 112));
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_6();
  v7();
  swift_endAccess();

  if (v0)
  {
    OUTLINED_FUNCTION_112();

    return swift_unexpectedError();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void sub_1BC81DA34(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v153 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v151 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v150 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v136 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v136 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v136 - v19;
  v21 = sub_1BC8F7264();
  v145 = *(v21 - 8);
  v22 = *(v145 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v136 - v26;
  v28 = v154;
  sub_1BC81EBDC();
  v30 = qword_1EDC1E000;
  if (v28)
  {
    v31 = 0;
    v32 = v28;
LABEL_4:
    if (v30[58] != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  v141 = v27;
  v149 = v20;
  v147 = v18;
  v140 = v25;
  v148 = v21;
  v144 = v15;
  v143 = v29;
  v33 = v153;
  v34 = a1;
  v35 = a2;
  sub_1BC81EBDC();
  v37 = v36;
  v138 = v35;
  v55 = sub_1BC80EDA8(v33, v34);
  v142 = v37;
  v146 = 0;
  v154 = sub_1BC7C0454(v55);
  v31 = 0;
  v153 = (v55 & 0xC000000000000001);
  v152 = v55 & 0xFFFFFFFFFFFFFF8;
  v137 = (v145 + 32);
  v32 = &unk_1EBCF5D70;
  v136 = MEMORY[0x1E69E7CC0];
  v139 = MEMORY[0x1E69E7CC0];
  v56 = v148;
  v57 = v151;
  v58 = v149;
  while (v154 != v31)
  {
    if (v153)
    {
      v59 = MEMORY[0x1BFB29A00](v31, v55);
    }

    else
    {
      if (v31 >= *(v152 + 16))
      {
        goto LABEL_83;
      }

      v59 = *(v55 + 8 * v31 + 32);
    }

    v60 = v59;
    v61 = (v31 + 1);
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
LABEL_5:
      v38 = sub_1BC8F7734();
      __swift_project_value_buffer(v38, qword_1EDC2B268);
      v39 = v32;
      v40 = sub_1BC8F7714();
      v41 = sub_1BC8F81E4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v157[0] = v154;
        *v42 = 136446210;
        swift_getErrorValue();
        v146 = v31;
        v43 = v157[5];
        v44 = v157[6];
        v45 = sub_1BC8F83F4();
        v153 = &v136;
        v46 = *(v45 - 8);
        v47 = *(v46 + 64);
        MEMORY[0x1EEE9AC00](v45);
        v49 = &v136 - v48;
        (*(*(v44 - 8) + 16))(&v136 - v48, v43, v44);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v44);
        v50 = sub_1BC8073F0(v49, v44);
        v52 = v51;
        (*(v46 + 8))(v49, v45);
        v53 = sub_1BC7A9A4C(v50, v52, v157);

        *(v42 + 4) = v53;
        _os_log_impl(&dword_1BC7A3000, v40, v41, "Error extracting messages from object IDs %{public}s", v42, 0xCu);
        v54 = v154;
        __swift_destroy_boxed_opaque_existential_1(v154);
        MEMORY[0x1BFB2AA50](v54, -1, -1);
        MEMORY[0x1BFB2AA50](v42, -1, -1);
      }

      else
      {
      }

      return;
    }

    v62 = v32;
    v63 = [v59 dateDeleted];
    if (!v63)
    {

      v70 = sub_1BC8F71E4();
      __swift_storeEnumTagSinglePayload(v57, 1, 1, v70);
      sub_1BC7C1744(v57, &unk_1EBCF5D80, &qword_1BC8FEA60);
      __swift_storeEnumTagSinglePayload(v58, 1, 1, v56);
      goto LABEL_19;
    }

    v64 = v63;
    sub_1BC8F71B4();

    v65 = sub_1BC8F71E4();
    v66 = 1;
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v65);
    sub_1BC7C1744(v57, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v67 = [v60 recordUUID];
    if (v67)
    {
      v68 = v67;
      v69 = v147;
      sub_1BC8F7244();

      v66 = 0;
    }

    else
    {
      v69 = v147;
    }

    __swift_storeEnumTagSinglePayload(v69, v66, 1, v56);
    v58 = v149;
    v32 = v62;
    sub_1BC830458();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v56);
    v57 = v151;
    if (EnumTagSinglePayload == 1)
    {
LABEL_19:
      sub_1BC7C1744(v58, v32, &qword_1BC8FC740);
      ++v31;
    }

    else
    {
      v72 = *v137;
      v73 = v141;
      (*v137)(v141, v58, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = *(v139 + 16);
        sub_1BC7F7144();
        v139 = v77;
      }

      v74 = *(v139 + 16);
      if (v74 >= *(v139 + 24) >> 1)
      {
        sub_1BC7F7144();
        v139 = v78;
      }

      v75 = v139;
      *(v139 + 16) = v74 + 1;
      v72((v75 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v74), v73, v56);
      v31 = v61;
      v57 = v151;
      v32 = v62;
    }
  }

  v151 = v55;
  v79 = v143;
  v80 = sub_1BC7C0454(v143);
  v81 = v150;
  if (!v80)
  {
    goto LABEL_31;
  }

  if (qword_1EDC1E1D0 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v82 = sub_1BC8F7734();
    __swift_project_value_buffer(v82, qword_1EDC2B268);

    v83 = sub_1BC8F7714();
    v84 = sub_1BC8F8204();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v157[0] = v86;
      *v85 = 136446210;
      v156[0] = v143;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
      v87 = sub_1BC8F7C94();
      v89 = sub_1BC7A9A4C(v87, v88, v157);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_1BC7A3000, v83, v84, "calculated inserts: %{public}s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x1BFB2AA50](v86, -1, -1);
      v90 = v85;
      v79 = v143;
      MEMORY[0x1BFB2AA50](v90, -1, -1);
    }

LABEL_31:
    v91 = sub_1BC7C0454(v142);
    if (!v91)
    {
      break;
    }

    v92 = v91;
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v93 = sub_1BC8F7734();
    __swift_project_value_buffer(v93, qword_1EDC2B268);
    v94 = v142;

    v95 = sub_1BC8F7714();
    v96 = sub_1BC8F8204();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v157[0] = v98;
      *v97 = 136446210;
      v156[0] = v94;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
      v99 = sub_1BC8F7C94();
      v101 = sub_1BC7A9A4C(v99, v100, v157);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_1BC7A3000, v95, v96, "calculated updates: %{public}s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x1BFB2AA50](v98, -1, -1);
      MEMORY[0x1BFB2AA50](v97, -1, -1);
    }

    swift_beginAccess();
    sub_1BC830400();
    if (!v157[3])
    {
      sub_1BC7C1744(v157, &qword_1EBCF58F8, &qword_1BC9034D0);
LABEL_52:
      v79 = v143;
      break;
    }

    sub_1BC7A792C(v157, v156);
    sub_1BC7C1744(v157, &qword_1EBCF58F8, &qword_1BC9034D0);
    v79 = __swift_project_boxed_opaque_existential_1(v156, v156[3]);
    v102 = 0;
    v155 = MEMORY[0x1E69E7CC0];
    v103 = v142 & 0xC000000000000001;
    v104 = v142 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v92 == v102)
      {
        v109 = *v79;
        sub_1BC8C7030(v136);

        __swift_destroy_boxed_opaque_existential_1(v156);
        goto LABEL_52;
      }

      if (v103)
      {
        v105 = MEMORY[0x1BFB29A00](v102, v142);
      }

      else
      {
        if (v102 >= *(v104 + 16))
        {
          goto LABEL_88;
        }

        v105 = *(v142 + 8 * v102 + 32);
      }

      v106 = v105;
      v81 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      v107 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      v108 = swift_beginAccess();
      if (*&v106[v107] == 1)
      {
        MEMORY[0x1BFB29230](v108);
        if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v136 = v155;
        ++v102;
      }

      else
      {

        ++v102;
      }

      v81 = v150;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  if (!*(v139 + 16))
  {

    v134 = v139;
    goto LABEL_81;
  }

  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v110 = sub_1BC8F7734();
  __swift_project_value_buffer(v110, qword_1EDC2B268);
  v111 = v139;

  v112 = sub_1BC8F7714();
  v113 = sub_1BC8F8204();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v157[0] = v115;
    *v114 = 136446210;
    v156[0] = v111;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
    v116 = sub_1BC8F7C94();
    v118 = sub_1BC7A9A4C(v116, v117, v157);

    *(v114 + 4) = v118;
    _os_log_impl(&dword_1BC7A3000, v112, v113, "calculated deletions: %{public}s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x1BFB2AA50](v115, -1, -1);
    MEMORY[0x1BFB2AA50](v114, -1, -1);
  }

  v119 = v144;
  v120 = 0;
  v121 = MEMORY[0x1E69E7CC0];
  v79 = &qword_1BC8FC740;
  while (v154 != v120)
  {
    if (v153)
    {
      v122 = MEMORY[0x1BFB29A00](v120, v151);
    }

    else
    {
      if (v120 >= *(v152 + 16))
      {
        goto LABEL_86;
      }

      v122 = *&v151[8 * v120 + 32];
    }

    v123 = v122;
    if (__OFADD__(v120, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if ([v122 messageType] != 1)
    {

      __swift_storeEnumTagSinglePayload(v119, 1, 1, v148);
LABEL_70:
      sub_1BC7C1744(v119, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v120;
      continue;
    }

    v124 = [v123 recordUUID];
    if (v124)
    {
      v125 = v124;
      sub_1BC8F7244();

      v126 = 0;
    }

    else
    {
      v126 = 1;
    }

    v127 = v148;
    __swift_storeEnumTagSinglePayload(v81, v126, 1, v148);
    v119 = v144;
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v119, 1, v127) == 1)
    {
      goto LABEL_70;
    }

    v128 = v127;
    v129 = *v137;
    (*v137)(v140, v119, v128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v131 = *(v121 + 16);
      sub_1BC7F7144();
      v121 = v132;
    }

    v130 = *(v121 + 16);
    if (v130 >= *(v121 + 24) >> 1)
    {
      sub_1BC7F7144();
      v121 = v133;
    }

    *(v121 + 16) = v130 + 1;
    v129((v121 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v130), v140, v148);
    ++v120;
    v119 = v144;
  }

  sub_1BC81F2CC(v121);

  v134 = v139;
  v135 = v146;
  sub_1BC81F454(v139);
  if (v135)
  {

    v32 = v135;
    v31 = 0;
    v30 = qword_1EDC1E000;
    goto LABEL_4;
  }

  v79 = v143;
LABEL_81:
  sub_1BC81F598(v79, v142, v134);
}

void sub_1BC81EBDC()
{
  OUTLINED_FUNCTION_22();
  v81 = v1;
  v3 = v2;
  v5 = v4;
  v98[6] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v90 = v10;
  OUTLINED_FUNCTION_19_6();
  v93 = sub_1BC8F7264();
  v11 = OUTLINED_FUNCTION_0(v93);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v80 = v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v78 - v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v78 - v20;
  v97 = MEMORY[0x1E69E7CC0];
  v82 = v0;
  v95 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BC8F84F4();
    sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC82FECC(&qword_1EBCF5998, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC8F8124();
    v5 = v98[1];
    v21 = v98[2];
    v22 = v98[3];
    v23 = v98[4];
    v24 = v98[5];
  }

  else
  {
    v25 = -1 << *(v5 + 32);
    v21 = (v5 + 56);
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = (v27 & *(v5 + 56));

    v23 = 0;
  }

  v83 = v22;
  v28 = (v22 + 64) >> 6;
  v91 = (v13 + 32);
  v87 = (v13 + 8);
  v79 = v13;
  v78 = (v13 + 16);
  v84 = MEMORY[0x1E69E7CC0];
  v85 = MEMORY[0x1E69E7CC0];
  v88 = v21;
  v89 = v5;
  v94 = v28;
LABEL_8:
  v29 = v23;
  while ((v5 & 0x8000000000000000) != 0)
  {
    v34 = sub_1BC8F8514();
    if (!v34)
    {
      goto LABEL_33;
    }

    v96 = v34;
    sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
    swift_dynamicCast();
    v33 = v98[0];
    v23 = v29;
    v32 = v24;
    if (!v98[0])
    {
      goto LABEL_33;
    }

LABEL_18:
    v98[0] = 0;
    v35 = [v95 existingObjectWithID:v33 error:{v98, v78}];
    v36 = v98[0];
    if (!v35)
    {
      v76 = v98[0];

      sub_1BC8F6EA4();

      swift_willThrow();
      OUTLINED_FUNCTION_92();
      goto LABEL_37;
    }

    v37 = v35;
    type metadata accessor for FTStoredMessage();
    OUTLINED_FUNCTION_121();
    v38 = swift_dynamicCastClass();
    v39 = v36;
    if (!v38)
    {

      goto LABEL_25;
    }

    v40 = [v38 recordUUID];
    if (v40)
    {
      v41 = v40;
      v42 = v86;
      sub_1BC8F7244();

      v43 = v92;
      v44 = *v91;
      v45 = v42;
      v46 = v93;
      (*v91)(v92, v45, v93);
      v47 = [v38 dateDeleted];
      if (!v47)
      {
        sub_1BC8F71E4();
        v54 = v90;
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
        sub_1BC7C1744(v54, &unk_1EBCF5D80, &qword_1BC8FEA60);
        (*v78)(v80, v43, v46);
        v59 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = *(v59 + 16);
          sub_1BC7F7144();
          v59 = v69;
        }

        v21 = v88;
        v61 = *(v59 + 16);
        v60 = *(v59 + 24);
        v62 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          OUTLINED_FUNCTION_37(v60);
          v85 = v70;
          sub_1BC7F7144();
          v62 = v85;
          v59 = v71;
        }

        *(v59 + 16) = v62;
        v63 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v85 = v59;
        v64 = v59 + v63 + *(v79 + 72) * v61;
        v65 = v93;
        v44(v64, v80, v93);
        v66 = v37;
        MEMORY[0x1BFB29230]();
        v67 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v67 >> 1)
        {
          OUTLINED_FUNCTION_37(v67);
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();

        (*v87)(v92, v65);
        v84 = v97;
        v5 = v89;
        v24 = v32;
        v28 = v94;
        goto LABEL_8;
      }

      v48 = v47;
      v49 = v90;
      sub_1BC8F71B4();

      (*v87)(v43, v46);
      sub_1BC8F71E4();
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
      sub_1BC7C1744(v49, &unk_1EBCF5D80, &qword_1BC8FEA60);
      v29 = v23;
      v24 = v32;
      v21 = v88;
      v5 = v89;
      v28 = v94;
    }

    else
    {

LABEL_25:
      v29 = v23;
      v24 = v32;
      v28 = v94;
    }
  }

  v30 = v29;
  v31 = v24;
  v23 = v29;
  if (v24)
  {
LABEL_14:
    v32 = (v31 - 1) & v31;
    v33 = *(*(v5 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v31)))));
    if (!v33)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
    }

    if (v23 >= v28)
    {
      break;
    }

    v31 = v21[v23];
    ++v30;
    if (v31)
    {
      goto LABEL_14;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_21_4();
  v72 = swift_allocObject();
  *(v72 + 16) = v85;
  v98[0] = (v72 | 0x1000000000000000);
  v73 = v95;
  v74 = v81;
  v75 = sub_1BC821024(v95, v98);
  sub_1BC7B0EFC(v98[0]);
  if (!v74)
  {
    sub_1BC812E14(v84, v73, v75);
  }

LABEL_37:
  v77 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC81F2CC(uint64_t a1)
{
  v3 = sub_1BC8F7264();
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(v6 + 16);
    v10 = v6 + 16;
    v17 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    do
    {
      v15 = v17(v8, v12, v3);
      MEMORY[0x1EEE9AC00](v15);
      *(&v16 - 2) = v1;
      *(&v16 - 1) = v8;
      sub_1BC829428(0xD000000000000010, 0x80000001BC90C6C0, sub_1BC82F9F8);
      result = (*v14)(v8, v3);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_1BC81F454(uint64_t a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  OUTLINED_FUNCTION_101();

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_1BC8F7264();
    v8 = MEMORY[0x1BFB29280](a1, v7);
    v10 = sub_1BC7A9A4C(v8, v9, &v14);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_75_0(&dword_1BC7A3000, v11, v12, "MessageStoreManager: Deleting message assets for UUIDs: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v13 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v13);
  }

  sub_1BC7EEA50(a1);
}

uint64_t sub_1BC81F598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v12 = sub_1BC7C0454(a1);
  v13 = &unk_1EDC2B000;
  if (v12)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v14 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v14, qword_1EDC2B268);

    v15 = sub_1BC8F7714();
    v16 = sub_1BC8F8204();

    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_9();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v60 = swift_slowAlloc();
      v61 = v60;
      *v17 = 136446210;
      v18 = type metadata accessor for Message();
      v19 = MEMORY[0x1BFB29280](a1, v18);
      v21 = a2;
      v22 = a3;
      v23 = sub_1BC7A9A4C(v19, v20, &v61);
      v13 = &unk_1EDC2B000;

      *(v17 + 4) = v23;
      a3 = v22;
      a2 = v21;
      OUTLINED_FUNCTION_136(&dword_1BC7A3000, v24, v25, "Handling inserted messages %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v26 = v13[104];
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BC87AE20(a1);
      swift_unknownObjectRelease();
    }
  }

  result = sub_1BC7C0454(a2);
  v28 = result;
  if (result)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v29 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v29, qword_1EDC2B268);

    v30 = sub_1BC8F7714();
    v31 = sub_1BC8F8204();

    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_9();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v58 = v12;
      v33 = swift_slowAlloc();
      v61 = v33;
      *v32 = 136446210;
      v34 = type metadata accessor for Message();
      v35 = MEMORY[0x1BFB29280](a2, v34);
      v37 = sub_1BC7A9A4C(v35, v36, &v61);

      *(v32 + 4) = v37;
      OUTLINED_FUNCTION_136(&dword_1BC7A3000, v38, v39, "Handling updated messages %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v58;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v40 = v13[104];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1BC87B3C8(a2);
      result = swift_unknownObjectRelease();
    }
  }

  v41 = *(a3 + 16);
  if (v41)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v42 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v42, qword_1EDC2B268);

    v43 = sub_1BC8F7714();
    v44 = sub_1BC8F8204();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_9();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v59 = v12;
      v46 = swift_slowAlloc();
      v61 = v46;
      *v45 = 136446210;
      v47 = sub_1BC8F7264();
      v48 = MEMORY[0x1BFB29280](a3, v47);
      v50 = sub_1BC7A9A4C(v48, v49, &v61);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_1BC7A3000, v43, v44, "Handling deleted messages with UUIDs %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v12 = v59;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v51 = v13[104];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v52 = OUTLINED_FUNCTION_77();
      sub_1BC87B8F0(v52);
      result = swift_unknownObjectRelease();
    }
  }

  if (v28 | v12 | v41)
  {
    sub_1BC8F7FC4();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    OUTLINED_FUNCTION_41_0();
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v4;

    OUTLINED_FUNCTION_85();
    sub_1BC8333D4();
  }

  return result;
}

uint64_t sub_1BC81FAA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = sub_1BC8F6D24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BC8F7734();
  __swift_project_value_buffer(v11, qword_1EDC2B268);
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F8204();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v7;
    v15 = v2;
    v16 = a1;
    v17 = v4;
    v18 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "Handling store saved notification", v14, 2u);
    v19 = v18;
    v4 = v17;
    a1 = v16;
    v2 = v15;
    v7 = v24;
    MEMORY[0x1BFB2AA50](v19, -1, -1);
  }

  (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  (*(v9 + 32))(v21 + v20, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902CF0;
  *(v22 + 24) = v21;
  v26 = &unk_1BC902CF8;
  v27 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  sub_1BC8F7FD4();

  return (*(v25 + 8))(v7, v4);
}

uint64_t sub_1BC81FDC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC81FDE0, 0, 0);
}

uint64_t sub_1BC81FDE0()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = swift_task_alloc();
  v2 = *(v0 + 40);
  *(v1 + 16) = v2;
  v3 = v2;
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v4 = *(v3 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 88, *(v3 + 112));
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_6();
  v5();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

void sub_1BC81FEC0(uint64_t a1, uint64_t a2)
{
  v161 = a2;
  v153 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v149 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v150 = &v148 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v163 = &v148 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v162 = (&v148 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v148 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v148 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v148 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v148 - v20;
  v171 = sub_1BC8F7264();
  v22 = *(v171 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v171);
  v151 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v152 = &v148 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v155 = &v148 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v156 = &v148 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v148 - v32;
  v33 = *MEMORY[0x1E695D328];
  sub_1BC8F7C24();
  v170 = sub_1BC81D480();

  v34 = *MEMORY[0x1E695D4D0];
  sub_1BC8F7C24();
  v169 = sub_1BC81D480();

  v35 = *MEMORY[0x1E695D2F8];
  sub_1BC8F7C24();
  v36 = sub_1BC81D480();

  v37 = sub_1BC7C0454(v36);
  v38 = 0;
  v167 = v36 & 0xC000000000000001;
  v168 = v37;
  v166 = v36 & 0xFFFFFFFFFFFFFF8;
  v157 = v22;
  v160 = (v22 + 32);
  v159 = MEMORY[0x1E69E7CC0];
  while (v168 != v38)
  {
    if (v167)
    {
      v39 = MEMORY[0x1BFB29A00](v38, v36);
    }

    else
    {
      if (v38 >= *(v166 + 16))
      {
        goto LABEL_103;
      }

      v39 = *(v36 + 8 * v38 + 32);
    }

    v40 = v39;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      swift_once();
LABEL_99:
      v144 = sub_1BC8F7734();
      __swift_project_value_buffer(v144, qword_1EDC2B268);
      v145 = sub_1BC8F7714();
      v146 = sub_1BC8F8204();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_1BC7A3000, v145, v146, "Received a managed object merged notification with no inserts, updates, or deletes", v147, 2u);
        MEMORY[0x1BFB2AA50](v147, -1, -1);
      }

      return;
    }

    v41 = [v39 recordUUID];
    if (v41)
    {
      v42 = v41;
      sub_1BC8F7244();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = v43;
    v45 = v171;
    __swift_storeEnumTagSinglePayload(v19, v44, 1, v171);
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v21, 1, v45) == 1)
    {
      sub_1BC7C1744(v21, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v38;
    }

    else
    {
      v46 = *v160;
      (*v160)(v164, v21, v171);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v159 + 16);
        sub_1BC7F7144();
        v159 = v50;
      }

      v47 = *(v159 + 16);
      if (v47 >= *(v159 + 24) >> 1)
      {
        sub_1BC7F7144();
        v159 = v51;
      }

      v48 = v159;
      *(v159 + 16) = v47 + 1;
      v46(v48 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v47, v164, v171);
      ++v38;
    }
  }

  v52 = sub_1BC7C0454(v170);
  if (!v52 && !sub_1BC7C0454(v169) && !*(v159 + 16))
  {

    if (qword_1EDC1E1D0 != -1)
    {
      goto LABEL_112;
    }

    goto LABEL_99;
  }

  v53 = 0;
  v166 = v170 & 0xFFFFFFFFFFFFFF8;
  v167 = v170 & 0xC000000000000001;
  v158 = MEMORY[0x1E69E7CC0];
  while (v52 != v53)
  {
    if (v167)
    {
      v54 = MEMORY[0x1BFB29A00](v53, v170);
    }

    else
    {
      if (v53 >= *(v166 + 16))
      {
        goto LABEL_105;
      }

      v54 = *(v170 + 8 * v53 + 32);
    }

    v55 = v54;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_104;
    }

    v56 = [v54 recordUUID];
    if (v56)
    {
      v57 = v56;
      v58 = v165;
      sub_1BC8F7244();

      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v165;
    }

    v60 = v59;
    v61 = v171;
    __swift_storeEnumTagSinglePayload(v58, v60, 1, v171);
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v16, 1, v61) == 1)
    {
      sub_1BC7C1744(v16, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v53;
    }

    else
    {
      v62 = *v160;
      (*v160)(v156, v16, v171);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = *(v158 + 16);
        sub_1BC7F7144();
        v158 = v66;
      }

      v63 = *(v158 + 16);
      if (v63 >= *(v158 + 24) >> 1)
      {
        sub_1BC7F7144();
        v158 = v67;
      }

      v64 = v158;
      *(v158 + 16) = v63 + 1;
      v62(v64 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v63, v156, v171);
      ++v53;
    }
  }

  v68 = v169;
  v168 = sub_1BC7C0454(v169);
  v69 = 0;
  v165 = (v68 & 0xC000000000000001);
  v70 = MEMORY[0x1E69E7CC0];
  v164 = (v68 & 0xFFFFFFFFFFFFFF8);
  v156 = MEMORY[0x1E69E7CC0];
  while (v168 != v69)
  {
    if (v165)
    {
      v71 = MEMORY[0x1BFB29A00](v69, v169);
    }

    else
    {
      if (v69 >= *(v164 + 2))
      {
        goto LABEL_107;
      }

      v71 = *(v169 + 8 * v69 + 32);
    }

    v72 = v71;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_106;
    }

    v73 = [v71 recordUUID];
    if (v73)
    {
      v74 = v73;
      v75 = v163;
      sub_1BC8F7244();

      v76 = 0;
    }

    else
    {
      v76 = 1;
      v75 = v163;
    }

    v77 = v76;
    v78 = v171;
    __swift_storeEnumTagSinglePayload(v75, v77, 1, v171);
    v79 = v162;
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v79, 1, v78) == 1)
    {
      sub_1BC7C1744(v79, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v69;
    }

    else
    {
      v80 = *v160;
      (*v160)(v155, v79, v171);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = *(v70 + 16);
        sub_1BC7F7144();
        v70 = v83;
      }

      v81 = *(v70 + 16);
      if (v81 >= *(v70 + 24) >> 1)
      {
        sub_1BC7F7144();
        v70 = v84;
      }

      *(v70 + 16) = v81 + 1;
      v80(v70 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v81, v155, v171);
      ++v69;
    }
  }

  v85 = swift_allocObject();
  v175 = v158;
  sub_1BC7F3514(v70);
  *(v85 + 16) = v175;
  v175 = v85 | 0x1000000000000000;
  v86 = v154;
  v87 = sub_1BC821024(v153, &v175);
  if (v86)
  {
    sub_1BC7B0EFC(v175);

    sub_1BC821208(v86);
    swift_willThrow();
  }

  else
  {
    v88 = v87;
    v154 = 0;
    sub_1BC7B0EFC(v175);
    KeyPath = swift_getKeyPath();
    v90 = sub_1BC8134DC(KeyPath, v88);

    v91 = 0;
    v173 = MEMORY[0x1E69E7CC0];
    v163 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v162 = (v157 + 16);
    v160 = (v157 + 8);
    v92 = MEMORY[0x1E69E7CC0];
    while (v52 != v91)
    {
      if (v167)
      {
        v93 = MEMORY[0x1BFB29A00](v91, v170);
      }

      else
      {
        if (v91 >= *(v166 + 16))
        {
          goto LABEL_109;
        }

        v93 = *(v170 + 8 * v91 + 32);
      }

      v94 = v93;
      v95 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_108;
      }

      v96 = *&v163[v161];
      objc_allocWithZone(type metadata accessor for Message());
      v97 = v94;

      v172 = 1;
      sub_1BC86A9C0(v97, 0x100000000, v96, v98, v99, v100, v101, v102, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
      if (v103)
      {
        v104 = v103;
        v105 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        swift_beginAccess();
        if (*(v104 + v105) == 2 || (v106 = [v97 recordUUID], v107 = v150, !v106))
        {
        }

        else
        {
          v108 = v106;
          v109 = v152;
          sub_1BC8F7244();

          v110 = v171;
          (*v162)(v107, v109, v171);
          __swift_storeEnumTagSinglePayload(v107, 0, 1, v110);
          if (*(v90 + 16) && (v111 = sub_1BC83C9A8(v107), (v112 & 1) != 0))
          {
            v113 = *(*(v90 + 56) + 8 * v111);
            sub_1BC7C1744(v107, &unk_1EBCF5D70, &qword_1BC8FC740);
            v114 = [v113 voicemailID];

            v115 = 0;
          }

          else
          {

            sub_1BC7C1744(v107, &unk_1EBCF5D70, &qword_1BC8FC740);
            v114 = 0;
            v115 = 1;
          }

          (*v160)(v152, v171);
          v116 = v104 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
          swift_beginAccess();
          *v116 = v114;
          *(v116 + 4) = v115;
        }

        MEMORY[0x1BFB29230]();
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v92 = v173;
        v91 = v95;
      }

      else
      {

        ++v91;
      }
    }

    v117 = 0;
    v176 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v118 = v161;
      if (v168 == v117)
      {
        break;
      }

      if (v165)
      {
        v119 = MEMORY[0x1BFB29A00](v117, v169);
      }

      else
      {
        if (v117 >= *(v164 + 2))
        {
          goto LABEL_111;
        }

        v119 = *(v169 + 8 * v117 + 32);
      }

      v120 = v119;
      v121 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        goto LABEL_110;
      }

      v122 = *&v163[v118];
      objc_allocWithZone(type metadata accessor for Message());
      v123 = v120;

      v174 = 1;
      sub_1BC86A9C0(v123, 0x100000000, v122, v124, v125, v126, v127, v128, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
      if (v129)
      {
        v130 = v129;
        v131 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        swift_beginAccess();
        if (*(v130 + v131) == 2 || (v132 = [v123 recordUUID]) == 0)
        {
        }

        else
        {
          v133 = v132;
          v134 = v151;
          sub_1BC8F7244();

          v135 = v149;
          v136 = v134;
          v137 = v171;
          (*v162)(v149, v136, v171);
          __swift_storeEnumTagSinglePayload(v135, 0, 1, v137);
          if (*(v90 + 16) && (v138 = sub_1BC83C9A8(v135), (v139 & 1) != 0))
          {
            v140 = *(*(v90 + 56) + 8 * v138);
            sub_1BC7C1744(v135, &unk_1EBCF5D70, &qword_1BC8FC740);
            v141 = [v140 voicemailID];

            v142 = 0;
          }

          else
          {

            sub_1BC7C1744(v135, &unk_1EBCF5D70, &qword_1BC8FC740);
            v141 = 0;
            v142 = 1;
          }

          (*v160)(v151, v171);
          v143 = v130 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
          swift_beginAccess();
          *v143 = v141;
          *(v143 + 4) = v142;
        }

        MEMORY[0x1BFB29230]();
        if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v156 = v176;
        v117 = v121;
      }

      else
      {

        ++v117;
      }
    }

    sub_1BC81F598(v92, v156, v159);
  }
}

uint64_t sub_1BC821024(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  type metadata accessor for FTLocalMessageProperties();
  v4 = static FTLocalMessageProperties.fetchRequest()();
  [v4 setFetchBatchSize_];
  v5 = sub_1BC7E61F8();
  [v4 setPredicate_];

  v6 = sub_1BC8F8314();
  if (v2)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B268);
    v8 = v2;
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F81E4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = v2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1BC7A3000, v9, v10, "Got an error while attempting to fetch all local properties: %{public}@", v11, 0xCu);
      sub_1BC7C1744(v12, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v12, -1, -1);
      MEMORY[0x1BFB2AA50](v11, -1, -1);
    }

    swift_willThrow();
  }

  return v6;
}

void sub_1BC821208(void *a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  v3 = a1;
  v17[0] = sub_1BC8F7714();
  v4 = sub_1BC8F81E4();

  if (os_log_type_enabled(v17[0], v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = v17[2];
    v8 = sub_1BC8F83F4();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = v17 - v11;
    (*(*(v7 - 1) + 16))(v17 - v11, v17[1], v7);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v7);
    v13 = sub_1BC8073F0(v12, v7);
    v15 = v14;
    (*(v9 + 8))(v12, v8);
    v16 = sub_1BC7A9A4C(v13, v15, &v18);

    *(v5 + 4) = v16;
    _os_log_impl(&dword_1BC7A3000, v17[0], v4, "Error fetching voicemailIDs in storeDidSave: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BC8214C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1BC8F6D24();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  sub_1BC8F6D04();

  a4(v13);

  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_79();
  return v16(v15);
}

uint64_t sub_1BC8215A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = swift_task_alloc();
  *(v4 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_1BC821634;

  return sub_1BC810F5C();
}

uint64_t sub_1BC821634()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[9] = v12;
    *v12 = v7;
    v12[1] = sub_1BC821784;
    v13 = v3[6];

    return sub_1BC810798();
  }
}

uint64_t sub_1BC821784()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC821864()
{
  v36 = v0;
  if (qword_1EDC1E1C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B250);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = v0[8];
  if (v5)
  {
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_1BC8F83F4();
    OUTLINED_FUNCTION_0(v11);
    v34 = v6;
    v13 = v12;
    v15 = *(v14 + 64);
    v16 = OUTLINED_FUNCTION_47_3();
    (*(*(v10 - 8) + 16))(v16, v9, v10);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v10);
    v20 = sub_1BC8073F0(v16, v10);
    v22 = v21;
    (*(v13 + 8))(v16, v11);

    v23 = sub_1BC7A9A4C(v20, v22, &v35);

    *(v7 + 4) = v23;
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v24, v25, v26, v27, v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v30 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v30);
    v31 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v31);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v32();
}

uint64_t sub_1BC821AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC821ADC, 0, 0);
}

uint64_t sub_1BC821ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v13 = *(v10 + 48);
  v12 = *(v10 + 56);
  v14 = OUTLINED_FUNCTION_114_0();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v15 = *(v13 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v13 + 88, *(v13 + 112));
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_16_6();
  v11();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

void sub_1BC821BC8(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v119 = a3;
  *(&v105 + 1) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v118 = &v103 - v10;
  v117 = sub_1BC8F71E4();
  v11 = *(v117 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BC8F7264();
  v126 = *(v14 - 8);
  v15 = *(v126 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v115 = &v103 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v121 = &v103 - v21;
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v22 = sub_1BC8F7734();
  v23 = __swift_project_value_buffer(v22, qword_1EDC2B268);
  sub_1BC7A5AB4(a2);
  v109 = v23;
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();
  sub_1BC7B0EFC(a2);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v125 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v128 = v11;
    v129[0] = v28;
    v29 = v28;
    *v27 = 136315138;
    v130 = a2;
    v30 = sub_1BC7A5AB4(a2);
    MessageStoreQuery.description.getter(v30, v31, v32, v33, v34, v35, v36, v37, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    v39 = v38;
    v127 = v4;
    v40 = a2;
    v42 = v41;
    sub_1BC7B0EFC(v130);
    v43 = sub_1BC7A9A4C(v39, v42, v129);
    a2 = v40;
    v5 = v127;

    *(v27 + 4) = v43;
    _os_log_impl(&dword_1BC7A3000, v24, v25, "MessageStoreManager: Marking messages with query to be deleted: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v44 = v29;
    v11 = v128;
    MEMORY[0x1BFB2AA50](v44, -1, -1);
    MEMORY[0x1BFB2AA50](v27, -1, -1);
  }

  v129[0] = a2;
  v45 = sub_1BC7BC4A4();
  type metadata accessor for FTStoredMessage();
  v46 = sub_1BC8F8314();
  v47 = v121;
  if (v5)
  {
    sub_1BC822660(v5, a2);
    swift_willThrow();

    return;
  }

  v48 = v46;
  *&v105 = 0;
  v49 = sub_1BC7C0454(v46);
  if (v49)
  {
    v51 = v49;
    v104 = v45;
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v52 = 0;
    v111 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v125 = v48 & 0xC000000000000001;
    v108 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_analyticsManager;
    v123 = (v126 + 16);
    v124 = v126 + 32;
    v110 = (v11 + 8);
    v112 = (v126 + 8);
    *&v50 = 138543362;
    v106 = v50;
    v127 = MEMORY[0x1E69E7CC0];
    v128 = MEMORY[0x1E69E7CC0];
    v122 = v14;
    v113 = v18;
    v114 = v48;
    v120 = v49;
    do
    {
      if (v125)
      {
        v53 = MEMORY[0x1BFB29A00](v52, v48);
      }

      else
      {
        v53 = *(v48 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = [v53 recordUUID];
      if (v55)
      {
        v56 = v55;
        sub_1BC8F7244();

        v57 = objc_allocWithZone(type metadata accessor for Message());
        v58 = v54;
        LOBYTE(v129[0]) = 1;
        sub_1BC86A9C0(v58, 0x100000000, 0, v59, v60, v61, v62, v63, v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, v108, v109, v110, v111, v112);
        v65 = v64;
        v66 = [v58 messageType];
        v67 = *v123;
        if (v66 == 1)
        {
          v67(v115, v47, v14);
          v68 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = *(v68 + 16);
            sub_1BC7F7144();
            v68 = v96;
          }

          v69 = *(v68 + 16);
          if (v69 >= *(v68 + 24) >> 1)
          {
            sub_1BC7F7144();
            v68 = v97;
          }

          *(v68 + 16) = v69 + 1;
          v70 = v68 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v69;
          v14 = v122;
          (*(v126 + 32))(v70, v115, v122);
        }

        else
        {
          v68 = v127;
        }

        v67(v18, v47, v14);
        v79 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = *(v79 + 16);
          sub_1BC7F7144();
          v79 = v93;
        }

        v81 = *(v79 + 16);
        v80 = *(v79 + 24);
        v127 = v68;
        if (v81 >= v80 >> 1)
        {
          sub_1BC7F7144();
          v79 = v94;
        }

        *(v79 + 16) = v81 + 1;
        v82 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v128 = v79;
        (*(v126 + 32))(v79 + v82 + *(v126 + 72) * v81, v18, v14);
        v83 = v116;
        sub_1BC8F71D4();
        v84 = sub_1BC8F7174();
        v85 = *v110;
        v86 = v14;
        v87 = v117;
        (*v110)(v83, v117);
        [v58 setDateDeleted_];

        sub_1BC8F71D4();
        v88 = sub_1BC8F7174();
        v85(v83, v87);
        [v58 setDateModified_];

        [v58 setMailboxType_];
        [v58 setMessageFile_];
        sub_1BC7C3588(0, 0xE000000000000000, v58, &selRef_setFileType_);
        sub_1BC7C3588(0, 0xE000000000000000, v58, &selRef_setFrom_);
        sub_1BC7C3588(0, 0xE000000000000000, v58, &selRef_setSimID_);
        sub_1BC7C3588(0, 0xE000000000000000, v58, &selRef_setRecipient_);
        [v58 setTranscript_];
        sub_1BC7C3588(0, 0xE000000000000000, v58, &selRef_setTranscriptType_);
        [v58 setMessageThumbnail_];
        sub_1BC7C3588(0, 0xE000000000000000, v58, &selRef_setThumbnailType_);
        [v58 setTranscriptData_];
        memset(v129, 0, 24);
        sub_1BC8511D8(v129);
        v89 = v118;
        v90 = *(v119 + v111);
        v47 = v121;
        sub_1BC8227E0();
        sub_1BC7C1744(v89, &qword_1EBCF58E0, &qword_1BC904880);
        if (v65)
        {
          Strong = swift_weakLoadStrong();
          v51 = v120;
          if (Strong)
          {
            sub_1BC8EC824(1, v65);
          }

          else
          {
          }

          v14 = v122;
          (*v112)(v47, v122);
          v18 = v113;
          v48 = v114;
        }

        else
        {
          (*v112)(v47, v86);

          v14 = v86;
          v18 = v113;
          v48 = v114;
          v51 = v120;
        }
      }

      else
      {
        v71 = v54;
        v72 = sub_1BC8F7714();
        v73 = sub_1BC8F81E4();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *v74 = v106;
          *(v74 + 4) = v71;
          *v75 = v71;
          v76 = v71;
          _os_log_impl(&dword_1BC7A3000, v72, v73, "Stored message had no recordUUID: %{public}@", v74, 0xCu);
          sub_1BC7C1744(v75, &unk_1EBCF5DB0, &unk_1BC900410);
          v77 = v75;
          v14 = v122;
          MEMORY[0x1BFB2AA50](v77, -1, -1);
          v78 = v74;
          v51 = v120;
          MEMORY[0x1BFB2AA50](v78, -1, -1);
        }

        else
        {
        }
      }

      ++v52;
    }

    while (v51 != v52);

    v45 = v104;
    v98 = v127;
    v99 = v128;
  }

  else
  {

    v98 = MEMORY[0x1E69E7CC0];
    v99 = MEMORY[0x1E69E7CC0];
  }

  sub_1BC81F2CC(v98);

  v100 = sub_1BC8F7714();
  v101 = sub_1BC8F8204();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_1BC7A3000, v100, v101, "MessageStoreManager: Finished deleting voicemails", v102, 2u);
    MEMORY[0x1BFB2AA50](v102, -1, -1);
  }

  **(&v105 + 1) = v99;
}

void sub_1BC8227E0()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC830558(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC82B048();
}

uint64_t sub_1BC82285C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC822880, 0, 0);
}

uint64_t sub_1BC822880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_114_0();
  v11 = OUTLINED_FUNCTION_117();
  v12[1] = v11;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5928, &qword_1BC902B88);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_16_6();
  v10();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

void (*sub_1BC822960@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, void (**a3)(unint64_t, unsigned __int8 *, uint64_t)@<X8>))(unint64_t, unsigned __int8 *, uint64_t)
{
  result = sub_1BC822998(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void (*sub_1BC822998(unsigned __int8 *a1, uint64_t a2))(unint64_t, unsigned __int8 *, uint64_t)
{
  v47 = a2;
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
  v9 = *(v4 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC8FC230;
  v12 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v45 = a1;
  v13(v11 + v10, &a1[v12], v3);
  *(v8 + 16) = v11;
  v48 = (v8 | 0x2000000000000000);
  v14 = sub_1BC7BC4A4();

  type metadata accessor for FTStoredMessage();
  v15 = v46;
  v16 = sub_1BC8F8314();
  if (v15)
  {
  }

  else
  {
    v18 = v16;
    v42 = v13;
    v43 = v5;
    v46 = v12;
    v19 = v45;
    if (sub_1BC7C0454(v16))
    {
      v20 = v14;
      sub_1BC8E2358(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB29A00](0, v18);
      }

      else
      {
        v21 = *(v18 + 32);
      }

      v22 = v21;

      sub_1BC822DD8(v22, v19);

      return 0;
    }

    else
    {
      v41 = v14;

      if (qword_1EDC1E1F8 != -1)
      {
        swift_once();
      }

      v23 = sub_1BC8F7734();
      __swift_project_value_buffer(v23, qword_1EDC2B2B0);
      v24 = v19;
      v25 = sub_1BC8F7714();
      v26 = sub_1BC8F8204();

      v40 = v26;
      v27 = os_log_type_enabled(v25, v26);
      v28 = v46;
      if (v27)
      {
        v29 = v3;
        v30 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v48 = v39;
        *v30 = 136446210;
        v31 = v44;
        v42(v44, &v19[v28], v3);
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v32 = sub_1BC8F8A54();
        v34 = v33;
        (*(v43 + 8))(v31, v29);
        v35 = sub_1BC7A9A4C(v32, v34, &v48);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1BC7A3000, v25, v40, "No existing message found for conversation ID %{public}s, inserting now", v30, 0xCu);
        v36 = v39;
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1BFB2AA50](v36, -1, -1);
        MEMORY[0x1BFB2AA50](v30, -1, -1);
      }

      sub_1BC81A514();
      v13 = v37;
    }
  }

  return v13;
}

void sub_1BC822DD8(void *a1, unsigned __int8 *a2)
{
  sub_1BC7C31BC(a1);
  if (!v4 || (v5 = sub_1BC8F8804(), , v5 > 3))
  {
    if (qword_1EDC1E1F8 != -1)
    {
      swift_once();
    }

    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B2B0);
    v8 = a1;
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    sub_1BC7C31BC(v8);
    if (v13)
    {
      v14 = sub_1BC8F7C94();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v19 = sub_1BC7A9A4C(v14, v16, &v20);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "Unable to convert string%{public}s to MessageQuality", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
    goto LABEL_16;
  }

  v6 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  swift_beginAccess();
  if (v5 < a2[v6])
  {
    sub_1BC823090(a1, a2);
    return;
  }

  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v17 = sub_1BC8F7734();
  __swift_project_value_buffer(v17, qword_1EDC2B2B0);
  v9 = sub_1BC8F7714();
  v18 = sub_1BC8F8204();
  if (os_log_type_enabled(v9, v18))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BC7A3000, v9, v18, "Dropping message as incoming quality is worse than existing quality", v11, 2u);
LABEL_16:
    MEMORY[0x1BFB2AA50](v11, -1, -1);
  }

LABEL_17:
}

void sub_1BC823090(void *a1, unsigned __int8 *a2)
{
  v89[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1BC8F71E4();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC8F7264();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BC8F7014();
  v84 = *(v13 - 8);
  v14 = *(v84 + 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v83 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = v76 - v17;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v85 = v13;
  v78 = sub_1BC8F7734();
  __swift_project_value_buffer(v78, qword_1EDC2B2B0);
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1BC7A3000, v18, v19, "Replacing existing message as incoming quality is higher", v20, 2u);
    MEMORY[0x1BFB2AA50](v20, -1, -1);
  }

  v21 = [a1 recordUUID];
  if (!v21)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v22 = v21;
  sub_1BC8F7244();

  v79 = a1;
  v23 = sub_1BC805F68(a1);
  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = v23;
  v26 = v24;
  v27 = MEMORY[0x1BFB2A220]();
  sub_1BC7C1A54(v25, v26, v86);
  if (v2)
  {
    objc_autoreleasePoolPop(v27);
    __break(1u);
  }

  else
  {

    objc_autoreleasePoolPop(v27);
    (*(v9 + 8))(v12, v8);
    v28 = objc_opt_self();
    v29 = [v28 defaultManager];
    v30 = sub_1BC8F6F44();
    v89[0] = 0;
    v31 = [v29 removeItemAtURL:v30 error:v89];

    if (v31)
    {
      v32 = v89[0];
      v33 = [v28 defaultManager];
      v34 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
      swift_beginAccess();
      v35 = v83;
      v36 = v84;
      v37 = *(v84 + 2);
      v77 = v34;
      v38 = v85;
      v76[1] = v84 + 16;
      v76[0] = v37;
      v37(v83, &a2[v34], v85);
      v39 = sub_1BC8F6F44();
      v40 = *(v36 + 1);
      v40(v35, v38);
      v41 = sub_1BC8F6F44();
      v88[0] = 0;
      v42 = [v33 moveItemAtURL:v39 toURL:v41 error:v88];

      v43 = v88[0];
      if (v42)
      {
        v84 = v40;
        v44 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
        swift_beginAccess();
        v45 = a2[v44];
        v46 = 7827308;
        v47 = 0xE300000000000000;
        v48 = a2;
        switch(v45)
        {
          case 1:
            v47 = 0xE600000000000000;
            v46 = 0x6D756964656DLL;
            break;
          case 2:
            v47 = 0xE400000000000000;
            v46 = 1751607656;
            break;
          case 3:
            v46 = 7823730;
            break;
          default:
            break;
        }

        v51 = v43;
        v52 = v79;
        sub_1BC7C3588(v46, v47, v79, &selRef_setQuality_);
        v53 = v80;
        sub_1BC8F71D4();
        v54 = sub_1BC8F7174();
        (*(v81 + 8))(v53, v82);
        [v52 setDateModified_];

        v55 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
        swift_beginAccess();
        [v52 setIsSensitive_];
        v56 = objc_opt_self();
        v57 = sub_1BC8F6F44();
        v58 = [v56 createFutureForFileAtURL_];

        if (v58)
        {
          swift_unknownObjectRetain();
          v59 = sub_1BC8F7BE4();
          [v52 setValue:v58 forKey:v59];
          swift_unknownObjectRelease_n();

          v84(v86, v85);
        }

        else
        {
          if (qword_1EDC1E1D0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v78, qword_1EDC2B268);
          v60 = v48;
          v61 = sub_1BC8F7714();
          v62 = sub_1BC8F81E4();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v87 = v64;
            *v63 = 136446210;
            v65 = &v48[v77];
            v66 = v83;
            v67 = v85;
            (v76[0])(v83, v65, v85);
            sub_1BC7AAAD0(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
            v68 = sub_1BC8F8A54();
            v70 = v69;
            v71 = v66;
            v72 = v84;
            v84(v71, v67);
            v73 = sub_1BC7A9A4C(v68, v70, &v87);

            *(v63 + 4) = v73;
            _os_log_impl(&dword_1BC7A3000, v61, v62, "MessageStoreManager: Failed to create future for asset at URL %{public}s", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v64);
            MEMORY[0x1BFB2AA50](v64, -1, -1);
            MEMORY[0x1BFB2AA50](v63, -1, -1);
          }

          else
          {

            v72 = v84;
            v67 = v85;
          }

          sub_1BC82EF30();
          swift_allocError();
          *v74 = 0;
          swift_willThrow();
          v72(v86, v67);
        }
      }

      else
      {
        v50 = v88[0];
        sub_1BC8F6EA4();

        swift_willThrow();
        v40(v86, v38);
      }
    }

    else
    {
      v49 = v89[0];
      sub_1BC8F6EA4();

      swift_willThrow();
      (*(v84 + 1))(v86, v85);
    }

    v75 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1BC823970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC823994, 0, 0);
}

uint64_t sub_1BC823994()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_114_0();
  v0 = OUTLINED_FUNCTION_117();
  v1[1] = vextq_s8(v0, v0, 8uLL);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_16_6();
  v2();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BC823A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v319 = a3;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58D8, &unk_1BC902A50);
  v7 = *(*(v308 - 8) + 64);
  MEMORY[0x1EEE9AC00](v308);
  v307 = &v288 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v303 = &v288 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v301 = &v288 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v310 = &v288 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v309 = &v288 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v321 = &v288 - v19;
  v317 = type metadata accessor for MessageAssetInfo();
  v20 = *(*(v317 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v317);
  v300 = &v288 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v316 = &v288 - v23;
  v326 = sub_1BC8F71E4();
  *&v304 = *(v326 - 8);
  v24 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v326);
  v315 = &v288 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v314 = &v288 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v306 = &v288 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v313 = &v288 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v312 = &v288 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v305 = &v288 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v318 = &v288 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v311 = &v288 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v325 = &v288 - v43;
  v44 = sub_1BC8F7264();
  v336 = *(v44 - 8);
  v45 = *(v336 + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v302 = &v288 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v320 = &v288 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v288 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v324 = &v288 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v323 = &v288 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v335 = &v288 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v288 - v59;
  v337 = a2;
  v61 = sub_1BC7C0454(a2);
  v62 = MEMORY[0x1E69E7CC0];
  v340 = v44;
  v327 = v52;
  if (v61)
  {
    *&v338 = MEMORY[0x1E69E7CC0];
    v334 = v61;
    sub_1BC7DDB5C();
    v63 = v334;
    if (v334 < 0)
    {
      goto LABEL_174;
    }

    v332 = a1;
    v333 = v3;
    v64 = 0;
    v62 = v338;
    v65 = v337 & 0xC000000000000001;
    v66 = (v336 + 16);
    do
    {
      if (v65)
      {
        v67 = MEMORY[0x1BFB29A00](v64, v337);
        (*v66)(v60, v67 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v44);
        v63 = v334;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v66)(v60, *(v337 + 8 * v64 + 32) + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v44);
      }

      *&v338 = v62;
      v68 = *(v62 + 16);
      if (v68 >= *(v62 + 24) >> 1)
      {
        sub_1BC7DDB5C();
        v63 = v334;
        v62 = v338;
      }

      ++v64;
      *(v62 + 16) = v68 + 1;
      v69 = v62 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v68;
      v44 = v340;
      (*(v336 + 32))(v69, v60, v340);
    }

    while (v63 != v64);
    v52 = v327;
    v4 = v333;
  }

  v70 = swift_allocObject();
  *(v70 + 16) = v62;
  *&v338 = v70 | 0x1000000000000000;

  v71 = sub_1BC7BC4A4();

  type metadata accessor for FTStoredMessage();
  v322 = v71;
  v72 = sub_1BC8F8314();
  if (v4)
  {
    sub_1BC82926C(v4, v62);

    v73 = v322;
    goto LABEL_13;
  }

  v74 = v72;
  v299 = 0;
  if (sub_1BC7C0454(v72) <= 0)
  {

    if (qword_1EDC1E1D0 != -1)
    {
      goto LABEL_175;
    }

    goto LABEL_166;
  }

  v328 = v74;

  v75 = v337;
  v76 = sub_1BC7C0454(v337);
  v62 = 0;
  v331 = (v75 & 0xC000000000000001);
  v332 = v76;
  *&v330 = v75 & 0xFFFFFFFFFFFFFF8;
  v334 = v336 + 16;
  v77 = MEMORY[0x1E69E7CC8];
  v333 = (v336 + 8);
  while (1)
  {
    if (v332 == v62)
    {
      v96 = v328;
      v97 = sub_1BC7C0454(v328);
      if (!v97)
      {
LABEL_164:

        return;
      }

      v99 = v97;
      if (v97 < 1)
      {
        __break(1u);
LABEL_177:
        v264 = sub_1BC8F8B44();
        __break(1u);
LABEL_178:
        os_unfair_lock_unlock(v264);
        __break(1u);
        return;
      }

      v100 = 0;
      v294 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
      v291 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_analyticsManager;
      v335 = (v96 & 0xC000000000000001);
      v336 += 32;
      v293 = (v304 + 8);
      v289 = "move voicemail to the trash";
      v290 = "analyticsManager";
      v288 = "remove voicemail from the trash";
      *&v98 = 138543362;
      v304 = v98;
      *&v98 = 136446210;
      v330 = v98;
      v101 = v323;
      v332 = v97;
      v329 = v77;
      while (1)
      {
        if (v335)
        {
          v102 = MEMORY[0x1BFB29A00](v100, v328);
        }

        else
        {
          v102 = *(v328 + 8 * v100 + 32);
        }

        v103 = v102;
        v104 = [v102 recordUUID];
        if (!v104)
        {
          if (qword_1EDC1E1D0 != -1)
          {
            swift_once();
          }

          v123 = sub_1BC8F7734();
          __swift_project_value_buffer(v123, qword_1EDC2B268);
          v124 = v103;
          v125 = sub_1BC8F7714();
          v126 = sub_1BC8F81E4();

          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            *v127 = v304;
            *(v127 + 4) = v124;
            *v128 = v124;
            v129 = v124;
            _os_log_impl(&dword_1BC7A3000, v125, v126, "Skipping message because we found a nil recordUUID %{public}@", v127, 0xCu);
            sub_1BC7C1744(v128, &unk_1EBCF5DB0, &unk_1BC900410);
            v130 = v128;
            v101 = v323;
            MEMORY[0x1BFB2AA50](v130, -1, -1);
            MEMORY[0x1BFB2AA50](v127, -1, -1);
          }

          else
          {
          }

          goto LABEL_159;
        }

        v105 = v104;
        v337 = v100;
        v106 = v324;
        sub_1BC8F7244();

        v107 = *v336;
        (*v336)(v101, v106, v44);
        v108 = [v103 dateDeleted];
        if (v108)
        {
          break;
        }

        v131 = v325;
        __swift_storeEnumTagSinglePayload(v325, 1, 1, v326);
        sub_1BC7C1744(v131, &unk_1EBCF5D80, &qword_1BC8FEA60);
        v132 = v329;
        if (v329[2])
        {
          v133 = sub_1BC83C928();
          if (v134)
          {
            v135 = *(v132[7] + 8 * v133);
            v136 = *&v135[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
            v137 = v135[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4];
            v138 = *(v319 + v294);
            v296 = type metadata accessor for Message();
            v139 = objc_allocWithZone(v296);
            v140 = v135;
            v141 = v103;

            LOBYTE(v338) = v137;
            sub_1BC86A9C0(v141, v136 | (v137 << 32), v138, v142, v143, v144, v145, v146, v288, v289, v290, v291, v292, v293, v294, v295, v296, v138, v298, v299);
            v148 = v147;
            if (qword_1EDC1E1D0 != -1)
            {
              swift_once();
            }

            v149 = sub_1BC8F7734();
            __swift_project_value_buffer(v149, qword_1EDC2B268);
            v150 = v140;
            v151 = sub_1BC8F7714();
            v152 = sub_1BC8F8204();

            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              *v153 = v304;
              *(v153 + 4) = v150;
              *v154 = v150;
              v155 = v150;
              _os_log_impl(&dword_1BC7A3000, v151, v152, "Applying update: %{public}@", v153, 0xCu);
              sub_1BC7C1744(v154, &unk_1EBCF5DB0, &unk_1BC900410);
              MEMORY[0x1BFB2AA50](v154, -1, -1);
              MEMORY[0x1BFB2AA50](v153, -1, -1);
            }

            v156 = MessageType.init(rawValue:)([v141 messageType]);
            v157 = [v141 mailboxType];
            v158 = v150[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete];
            v159 = v313;
            v298 = v148;
            v295 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete;
            HIDWORD(v292) = v157;
            if (v158)
            {
              v160 = v156;
              v161 = 0;
              v162 = v318;
            }

            else
            {
              v162 = v318;
              v160 = v156;
              if (v150[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2])
              {
                v161 = [v141 mailboxType];
              }

              else
              {
                v161 = *&v150[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
              }
            }

            sub_1BC830400();
            v178 = v340;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v162, 1, v340);
            v331 = v150;
            if (EnumTagSinglePayload == 1)
            {
              v180 = [v141 callUUID];
              if (v180)
              {
                v181 = v180;
                v182 = v305;
                sub_1BC8F7244();

                v183 = 0;
              }

              else
              {
                v183 = 1;
                v182 = v305;
              }

              v185 = v182;
              v178 = v340;
              __swift_storeEnumTagSinglePayload(v185, v183, 1, v340);
              v184 = v311;
              sub_1BC830458();
              v186 = v318;
              if (__swift_getEnumTagSinglePayload(v318, 1, v178) != 1)
              {
                sub_1BC7C1744(v186, &unk_1EBCF5D70, &qword_1BC8FC740);
              }
            }

            else
            {
              v184 = v311;
              v107(v311, v162, v178);
              __swift_storeEnumTagSinglePayload(v184, 0, 1, v178);
            }

            if (__swift_getEnumTagSinglePayload(v184, 1, v178) == 1)
            {
              v187 = 0;
            }

            else
            {
              v187 = sub_1BC8F7214();
              (*v333)(v184, v178);
            }

            [v141 setCallUUID_];

            v188 = v331;
            sub_1BC830400();
            if (__swift_getEnumTagSinglePayload(v159, 1, v178) == 1)
            {
              v189 = [v141 conversationID];
              if (v189)
              {
                v190 = v189;
                v191 = v306;
                sub_1BC8F7244();

                v192 = 0;
              }

              else
              {
                v192 = 1;
                v191 = v306;
              }

              v194 = v191;
              v178 = v340;
              __swift_storeEnumTagSinglePayload(v194, v192, 1, v340);
              v193 = v312;
              sub_1BC830458();
              if (__swift_getEnumTagSinglePayload(v159, 1, v178) != 1)
              {
                sub_1BC7C1744(v159, &unk_1EBCF5D70, &qword_1BC8FC740);
              }
            }

            else
            {
              v193 = v312;
              v107(v312, v159, v178);
              __swift_storeEnumTagSinglePayload(v193, 0, 1, v178);
            }

            if (__swift_getEnumTagSinglePayload(v193, 1, v178) == 1)
            {
              v195 = 0;
            }

            else
            {
              v196 = v193;
              v195 = sub_1BC8F7214();
              (*v333)(v196, v178);
            }

            [v141 setConversationID_];

            if (*(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID + 8))
            {
              v197 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID);
              v198 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID + 8);
              goto LABEL_90;
            }

            v199 = [v141 simID];
            if (v199)
            {
              v200 = v199;
              sub_1BC8F7C24();

LABEL_90:

              v201 = sub_1BC8F7BE4();
            }

            else
            {
              v201 = 0;
            }

            [v141 setSimID_];

            v202 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead;
            v203 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead);
            if (v203 == 2)
            {
              LOBYTE(v203) = [v141 isRead];
            }

            [v141 setIsRead_];
            if (*(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus + 2))
            {
              v204 = [v141 transcriptionStatus];
            }

            else
            {
              v204 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus);
            }

            [v141 setTranscriptionStatus_];
            [v141 setMailboxType_];
            v205 = v315;
            sub_1BC8F71D4();
            v206 = sub_1BC8F7174();
            (*v293)(v205, v326);
            [v141 setDateModified_];

            v207 = v314;
            sub_1BC830400();
            v208 = v340;
            if (__swift_getEnumTagSinglePayload(v207, 1, v340) == 1)
            {
              v209 = 0;
            }

            else
            {
              v209 = sub_1BC8F7214();
              (*v333)(v207, v208);
            }

            [v141 setReminderUUID_];

            v210 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
            v338 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
            v339 = v210;

            v211 = sub_1BC8511D8(&v338);
            if ((v160 & 0x1FFFF) == 1)
            {
              v212 = *(v188 + v202);
              v213 = v321;
              v101 = v323;
              v214 = v298;
              if (v212 != 2 && (v212 & 1) != 0)
              {
                MEMORY[0x1EEE9AC00](v211);
                *(&v288 - 2) = v319;
                *(&v288 - 1) = v215;
                v211 = sub_1BC829428(0xD000000000000016, v289 | 0x8000000000000000, sub_1BC82F01C);
                v213 = v321;
              }

              v216 = v295;
              if ((*(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2) & 1) == 0 && *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType) != WORD2(v292))
              {
                MEMORY[0x1EEE9AC00](v211);
                *(&v288 - 2) = v319;
                *(&v288 - 1) = v217;
                if (v218 == 2)
                {
                  v219 = 0xD00000000000001BLL;
                  v220 = sub_1BC82EFEC;
                  v221 = v288 | 0x8000000000000000;
                }

                else
                {
                  v220 = sub_1BC830574;
                  v221 = v290 | 0x8000000000000000;
                  v219 = 0xD00000000000001FLL;
                }

                v211 = sub_1BC829428(v219, v221, v220);
                v213 = v321;
              }

              v239 = *(v188 + v216);
              v44 = v340;
              if (v239 == 1)
              {
                MEMORY[0x1EEE9AC00](v211);
                *(&v288 - 2) = v319;
                *(&v288 - 1) = v240;
                sub_1BC829428(0xD00000000000001FLL, v290 | 0x8000000000000000, sub_1BC82EFBC);
                [v141 setMailboxType_];
                goto LABEL_133;
              }

              goto LABEL_134;
            }

            v101 = v323;
            v214 = v298;
            if (*(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from + 8))
            {
              v222 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from);
              v223 = *(v188 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from + 8);
              v44 = v340;
              goto LABEL_111;
            }

            v224 = [v141 from];
            v44 = v340;
            if (v224)
            {
              v225 = v224;
              sub_1BC8F7C24();

LABEL_111:

              v226 = sub_1BC8F7BE4();
            }

            else
            {
              v226 = 0;
            }

            [v141 setFrom_];

            if (*(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider + 8))
            {
              v227 = *(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider);
              v228 = *(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider + 8);
              goto LABEL_116;
            }

            v229 = [v141 provider];
            if (v229)
            {
              v230 = v229;
              sub_1BC8F7C24();

LABEL_116:

              v231 = sub_1BC8F7BE4();
            }

            else
            {
              v231 = 0;
            }

            [v141 setProvider_];

            if (*(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8))
            {
              [v141 duration];
            }

            else
            {
              v232 = *(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration);
            }

            [v141 setDuration_];
            if (*(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient + 8))
            {
              v233 = *(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient);
              v234 = *(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient + 8);
              goto LABEL_124;
            }

            v235 = [v141 recipient];
            if (v235)
            {
              v236 = v235;
              sub_1BC8F7C24();

LABEL_124:

              v237 = sub_1BC8F7BE4();
            }

            else
            {
              v237 = 0;
            }

            [v141 setRecipient_];

            v238 = *(v331 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT);
            if (v238 == 2)
            {
              LOBYTE(v238) = [v141 isRTT];
            }

            [v141 setIsRTT_];
LABEL_133:
            v213 = v321;
LABEL_134:
            if (v214)
            {
              v241 = objc_allocWithZone(v296);
              v242 = v141;
              v243 = v214;
              LOBYTE(v338) = 1;
              sub_1BC86A9C0(v242, 0x100000000, 0, v244, v245, v246, v247, v248, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
              if (v249)
              {
                v250 = v249;
                v251 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
                swift_beginAccess();
                if ((v243[v251] & 1) == 0)
                {
                  v252 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
                  swift_beginAccess();
                  if (*(v250 + v252) == 1)
                  {
                    if (swift_weakLoadStrong())
                    {
                      sub_1BC8EC824(2, v250);
                    }
                  }
                }

                if (swift_weakLoadStrong())
                {
                  sub_1BC8EC824(3, v250);

                  v253 = v250;
                }

                else
                {
                  v253 = v243;
                  v243 = v250;
                }
              }

              v213 = v321;
            }

            sub_1BC803F84();
            v254 = v317;
            if (__swift_getEnumTagSinglePayload(v213, 1, v317) == 1)
            {
              (*v333)(v101, v44);

              sub_1BC7C1744(v213, &qword_1EBCF58E0, &qword_1BC904880);
              goto LABEL_157;
            }

            sub_1BC8303A8();
            v255 = v309;
            sub_1BC8302F8();
            v256 = __swift_storeEnumTagSinglePayload(v255, 0, 1, v254);
            v257 = *(v297 + 32);
            v258 = MEMORY[0x1EEE9AC00](v256);
            *(&v288 - 2) = v259;
            *(&v288 - 1) = v101;
            MEMORY[0x1EEE9AC00](v258);
            *(&v288 - 2) = sub_1BC82EF84;
            *(&v288 - 1) = v260;
            os_unfair_lock_lock(v257 + 4);
            v261 = v310;
            v262 = v299;
            sub_1BC82EFA0(v263);
            v299 = v262;
            v264 = v257 + 4;
            if (v262)
            {
              goto LABEL_178;
            }

            os_unfair_lock_unlock(v264);
            v265 = *(v308 + 48);
            v266 = v307;
            sub_1BC830400();
            sub_1BC830400();
            if (__swift_getEnumTagSinglePayload(v266, 1, v254) == 1)
            {
              sub_1BC7C1744(v261, &qword_1EBCF58E0, &qword_1BC904880);
              sub_1BC7C1744(v255, &qword_1EBCF58E0, &qword_1BC904880);
              if (__swift_getEnumTagSinglePayload(v266 + v265, 1, v254) == 1)
              {
                sub_1BC7C1744(v266, &qword_1EBCF58E0, &qword_1BC904880);
                v44 = v340;
                v99 = v332;
                v267 = v298;
                goto LABEL_156;
              }

LABEL_153:
              sub_1BC7C1744(v266, &qword_1EBCF58D8, &unk_1BC902A50);
              v44 = v340;
              v99 = v332;
              v267 = v298;
              goto LABEL_154;
            }

            v268 = v301;
            sub_1BC830400();
            if (__swift_getEnumTagSinglePayload(v266 + v265, 1, v254) == 1)
            {
              sub_1BC7C1744(v310, &qword_1EBCF58E0, &qword_1BC904880);
              sub_1BC7C1744(v309, &qword_1EBCF58E0, &qword_1BC904880);
              sub_1BC830350(v268, type metadata accessor for MessageAssetInfo);
              goto LABEL_153;
            }

            v275 = v300;
            sub_1BC8303A8();
            static MessageAssetInfo.== infix(_:_:)();
            v277 = v276;
            sub_1BC830350(v275, type metadata accessor for MessageAssetInfo);
            sub_1BC7C1744(v310, &qword_1EBCF58E0, &qword_1BC904880);
            sub_1BC7C1744(v309, &qword_1EBCF58E0, &qword_1BC904880);
            sub_1BC830350(v268, type metadata accessor for MessageAssetInfo);
            sub_1BC7C1744(v266, &qword_1EBCF58E0, &qword_1BC904880);
            v44 = v340;
            v99 = v332;
            v267 = v298;
            if (v277)
            {
LABEL_156:
              sub_1BC830350(v316, type metadata accessor for MessageAssetInfo);

              v101 = v323;
              (*v333)(v323, v44);
            }

            else
            {
LABEL_154:
              v269 = v302;
              v270 = v323;
              (*v334)(v302, v323, v44);
              v271 = v316;
              v272 = v303;
              sub_1BC8302F8();
              __swift_storeEnumTagSinglePayload(v272, 0, 1, v317);
              sub_1BC82A374(v272, v269);

              sub_1BC7C1744(v272, &qword_1EBCF58E0, &qword_1BC904880);
              v273 = *v333;
              v274 = v269;
              v101 = v270;
              (*v333)(v274, v44);
              sub_1BC830350(v271, type metadata accessor for MessageAssetInfo);
              v273(v270, v44);
            }

LABEL_157:
            v52 = v327;
LABEL_158:
            v100 = v337;
            goto LABEL_159;
          }
        }

        v164 = v99;
        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v165 = sub_1BC8F7734();
        __swift_project_value_buffer(v165, qword_1EDC2B268);
        v166 = v320;
        (*v334)(v320, v101, v44);
        v167 = sub_1BC8F7714();
        v168 = v101;
        v169 = sub_1BC8F8204();
        if (os_log_type_enabled(v167, v169))
        {
          v170 = swift_slowAlloc();
          v331 = swift_slowAlloc();
          *&v338 = v331;
          *v170 = v330;
          sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
          v171 = sub_1BC8F8A54();
          v173 = v172;
          v174 = *v333;
          (*v333)(v166, v340);
          v175 = sub_1BC7A9A4C(v171, v173, &v338);

          *(v170 + 4) = v175;
          _os_log_impl(&dword_1BC7A3000, v167, v169, "Failed to find message update for recordUUID %{public}s", v170, 0xCu);
          v176 = v331;
          __swift_destroy_boxed_opaque_existential_1(v331);
          v44 = v340;
          MEMORY[0x1BFB2AA50](v176, -1, -1);
          MEMORY[0x1BFB2AA50](v170, -1, -1);

          v101 = v323;
          v174(v323, v44);
          v99 = v332;
          goto LABEL_157;
        }

        v177 = *v333;
        (*v333)(v166, v44);
        v177(v168, v44);
        v101 = v168;
        v100 = v337;
        v99 = v164;
        v52 = v327;
LABEL_159:
        if (v99 == ++v100)
        {
          goto LABEL_164;
        }
      }

      v109 = v108;
      v110 = v325;
      sub_1BC8F71B4();

      __swift_storeEnumTagSinglePayload(v110, 0, 1, v326);
      sub_1BC7C1744(v110, &unk_1EBCF5D80, &qword_1BC8FEA60);
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v111 = sub_1BC8F7734();
      __swift_project_value_buffer(v111, qword_1EDC2B268);
      (*v334)(v52, v101, v44);
      v112 = sub_1BC8F7714();
      v113 = v101;
      v114 = sub_1BC8F81F4();
      if (os_log_type_enabled(v112, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v338 = v116;
        *v115 = v330;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v117 = sub_1BC8F8A54();
        v119 = v118;
        v331 = v103;
        v120 = *v333;
        (*v333)(v327, v340);
        v121 = sub_1BC7A9A4C(v117, v119, &v338);

        *(v115 + 4) = v121;
        _os_log_impl(&dword_1BC7A3000, v112, v114, "Skipping message with recordUUID %{public}s because it was marked as deleted", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v116);
        v122 = v116;
        v44 = v340;
        MEMORY[0x1BFB2AA50](v122, -1, -1);
        MEMORY[0x1BFB2AA50](v115, -1, -1);

        v120(v113, v44);
        v52 = v327;
      }

      else
      {

        v163 = *v333;
        (*v333)(v52, v44);
        v163(v113, v44);
      }

      v101 = v113;
      v99 = v332;
      goto LABEL_158;
    }

    if (v331)
    {
      v78 = MEMORY[0x1BFB29A00](v62, v337);
    }

    else
    {
      if (v62 >= *(v330 + 16))
      {
        goto LABEL_171;
      }

      v78 = *(v337 + 8 * v62 + 32);
    }

    v79 = v78;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    v80 = *v334;
    (*v334)(v335, v78 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v44);
    v81 = v79;
    swift_isUniquelyReferenced_nonNull_native();
    *&v338 = v77;
    v82 = sub_1BC83C928();
    if (__OFADD__(v77[2], (v83 & 1) == 0))
    {
      goto LABEL_172;
    }

    v84 = v82;
    v85 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58F0, &unk_1BC902A60);
    if (sub_1BC8F8734())
    {
      v86 = sub_1BC83C928();
      if ((v85 & 1) != (v87 & 1))
      {
        goto LABEL_177;
      }

      v84 = v86;
    }

    v77 = v338;
    if (v85)
    {
      v88 = *(v338 + 56);
      v89 = *(v88 + 8 * v84);
      *(v88 + 8 * v84) = v81;

      v44 = v340;
      (*v333)(v335, v340);
    }

    else
    {
      *(v338 + 8 * (v84 >> 6) + 64) |= 1 << v84;
      v91 = v335;
      v90 = v336;
      v92 = v340;
      v80((v77[6] + *(v336 + 72) * v84), v335, v340);
      *(v77[7] + 8 * v84) = v81;
      v44 = v92;

      (*(v90 + 8))(v91, v92);
      v93 = v77[2];
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (v94)
      {
        goto LABEL_173;
      }

      v77[2] = v95;
    }

    ++v62;
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  swift_once();
LABEL_166:
  v278 = sub_1BC8F7734();
  __swift_project_value_buffer(v278, qword_1EDC2B268);

  v279 = sub_1BC8F7714();
  v280 = sub_1BC8F81E4();

  if (os_log_type_enabled(v279, v280))
  {
    v281 = swift_slowAlloc();
    v282 = swift_slowAlloc();
    *&v338 = v282;
    *v281 = 136446210;
    v283 = MEMORY[0x1BFB29280](v62, v44);
    v285 = v284;

    v286 = sub_1BC7A9A4C(v283, v285, &v338);

    *(v281 + 4) = v286;
    _os_log_impl(&dword_1BC7A3000, v279, v280, "MessageStoreManager: Failed to fetch any core data messages for recordUUIDs: %{public}s", v281, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v282);
    MEMORY[0x1BFB2AA50](v282, -1, -1);
    MEMORY[0x1BFB2AA50](v281, -1, -1);
  }

  else
  {
  }

  v73 = v322;
  sub_1BC82EF30();
  swift_allocError();
  *v287 = 3;
LABEL_13:
  swift_willThrow();
}

uint64_t sub_1BC825FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC826014, 0, 0);
}

uint64_t sub_1BC826014()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_114_0();
  v0 = OUTLINED_FUNCTION_117();
  v1[1] = vextq_s8(v0, v0, 8uLL);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_16_6();
  v2();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BC8260F4(void (**a1)(char *, char *, uint64_t), uint64_t *a2, uint64_t a3)
{
  v416 = a3;
  v428 = a1;
  v452 = *MEMORY[0x1E69E9840];
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58D8, &unk_1BC902A50);
  v4 = *(*(v400 - 8) + 64);
  MEMORY[0x1EEE9AC00](v400);
  v399 = &v379 - v5;
  v411 = type metadata accessor for MessageAssetInfo();
  v6 = *(*(v411 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v411);
  v393 = &v379 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v409 = &v379 - v9;
  v433 = sub_1BC8F71E4();
  *&v418 = *(v433 - 8);
  v10 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v433);
  v398 = &v379 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = sub_1BC8F7014();
  *&v413 = *(v401 - 8);
  v12 = *(v413 + 64);
  MEMORY[0x1EEE9AC00](v401);
  v410 = &v379 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  v14 = *(*(v403 - 8) + 64);
  MEMORY[0x1EEE9AC00](v403);
  v402 = (&v379 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v397 = &v379 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v412 = &v379 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v408 = &v379 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v395 = &v379 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v379 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v379 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v379 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v419 = &v379 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v407 = &v379 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v406 = &v379 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v405 = &v379 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v431 = &v379 - v45;
  v423 = type metadata accessor for VoicemailUpdate();
  v46 = *(v423 - 1);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x1EEE9AC00](v423);
  v415 = &v379 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v414 = &v379 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v434 = &v379 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v438 = (&v379 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v437 = (&v379 - v57);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v379 - v58;
  v440 = sub_1BC8F7264();
  v60 = *(v440 - 8);
  v61 = *(v60 + 64);
  v62 = MEMORY[0x1EEE9AC00](v440);
  v430 = &v379 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v404 = &v379 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v394 = &v379 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v417 = &v379 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v432 = &v379 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v436 = &v379 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v439 = &v379 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v379 - v76;
  v78 = a2;
  v79 = a2[2];
  v443 = v60;
  v425 = v46;
  v426 = v78;
  v435 = v79;
  if (v79)
  {
    v422 = v35;
    v421 = v32;
    v420 = v29;
    *&v450 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDB5C();
    v80 = v440;
    v81 = v450;
    v82 = v78 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v83 = *(v46 + 72);
    v84 = (v60 + 16);
    v441 = (v60 + 32);
    v442 = v83;
    v85 = v79;
    do
    {
      sub_1BC8302F8();
      (*v84)(v77, v59, v80);
      sub_1BC830350(v59, type metadata accessor for VoicemailUpdate);
      *&v450 = v81;
      v86 = *(v81 + 16);
      if (v86 >= *(v81 + 24) >> 1)
      {
        sub_1BC7DDB5C();
        v80 = v440;
        v81 = v450;
      }

      *(v81 + 16) = v86 + 1;
      (*(v443 + 32))(v81 + ((*(v443 + 80) + 32) & ~*(v443 + 80)) + *(v443 + 72) * v86, v77, v80);
      v82 += v442;
      v85 = (v85 - 1);
    }

    while (v85);
    v427 = v81;
    v87 = v420;
    v32 = v421;
    v35 = v422;
  }

  else
  {
    v427 = MEMORY[0x1E69E7CC0];
    v87 = v29;
  }

  v88 = swift_allocObject();
  v89 = v427;
  *(v88 + 16) = v427;
  *&v450 = v88 | 0x1000000000000000;

  v90 = sub_1BC7BC4A4();

  type metadata accessor for FTStoredMessage();
  v91 = v429;
  v92 = sub_1BC8F8314();
  v93 = v425;
  if (!v91)
  {
    v94 = v92;
    v396 = 0;
    if (sub_1BC7C0454(v92) <= 0)
    {
      isUniquelyReferenced_nonNull_native = &unk_1BC8FB000;

      if (qword_1EDC1E1D0 == -1)
      {
LABEL_26:
        v117 = sub_1BC8F7734();
        __swift_project_value_buffer(v117, qword_1EDC2B268);
        v118 = v427;

        v119 = sub_1BC8F7714();
        v120 = sub_1BC8F81E4();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v450 = v122;
          *v121 = isUniquelyReferenced_nonNull_native[438];
          v123 = MEMORY[0x1BFB29280](v118, v440);
          v125 = v124;

          v126 = sub_1BC7A9A4C(v123, v125, &v450);

          *(v121 + 4) = v126;
          _os_log_impl(&dword_1BC7A3000, v119, v120, "MessageStoreManager: Failed to fetch any core data messages for recordUUIDs: %{public}s", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v122);
          MEMORY[0x1BFB2AA50](v122, -1, -1);
          MEMORY[0x1BFB2AA50](v121, -1, -1);
        }

        else
        {
        }

        sub_1BC82EF30();
        swift_allocError();
        *v378 = 3;
        goto LABEL_10;
      }

LABEL_172:
      swift_once();
      goto LABEL_26;
    }

    v429 = v94;
    v392 = v90;
    v422 = v35;
    v421 = v32;
    v420 = v87;
    v95 = v435;
    if (v435)
    {
      v90 = (v426 + ((*(v93 + 80) + 32) & ~*(v93 + 80)));
      v96 = *(v93 + 72);
      v442 = v443 + 16;
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
      v441 = (v443 + 8);
      while (1)
      {
        v98 = v437;
        sub_1BC8302F8();
        v99 = *v442;
        (*v442)(v439, v98, v440);
        sub_1BC8302F8();
        v100 = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v450 = v100;
        v101 = sub_1BC83C928();
        if (__OFADD__(v100[2], (v102 & 1) == 0))
        {
          break;
        }

        v103 = v101;
        v104 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF59B8, &qword_1BC902D88);
        if (sub_1BC8F8734())
        {
          v105 = v450;
          v106 = sub_1BC83C928();
          v108 = v436;
          if ((v104 & 1) != (v107 & 1))
          {
            v221 = sub_1BC8F8B44();
            __break(1u);
LABEL_174:
            os_unfair_lock_unlock(v221);
            __break(1u);
            objc_autoreleasePoolPop(v105);
            __break(1u);
            return;
          }

          v103 = v106;
          v109 = v440;
        }

        else
        {
          v109 = v440;
          v108 = v436;
        }

        isUniquelyReferenced_nonNull_native = v450;
        if (v104)
        {
          sub_1BC8304B0(v438, *(v450 + 56) + v103 * v96);
          (*v441)(v439, v109);
          sub_1BC830350(v437, type metadata accessor for VoicemailUpdate);
        }

        else
        {
          v435 = v95;
          v110 = v108;
          *(v450 + 8 * (v103 >> 6) + 64) |= 1 << v103;
          v111 = v443;
          v112 = v439;
          v99(isUniquelyReferenced_nonNull_native[6] + *(v443 + 72) * v103, v439, v109);
          v113 = isUniquelyReferenced_nonNull_native[7] + v103 * v96;
          sub_1BC8303A8();
          (*(v111 + 8))(v112, v109);
          sub_1BC830350(v437, type metadata accessor for VoicemailUpdate);
          v114 = isUniquelyReferenced_nonNull_native[2];
          v115 = __OFADD__(v114, 1);
          v116 = v114 + 1;
          if (v115)
          {
            goto LABEL_170;
          }

          isUniquelyReferenced_nonNull_native[2] = v116;
          v108 = v110;
          v95 = v435;
        }

        v90 = (v90 + v96);
        v95 = (v95 - 1);
        if (!v95)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    v108 = v436;
LABEL_29:
    v127 = v429;
    v442 = sub_1BC7C0454(v429);
    if (!v442)
    {
LABEL_164:

      goto LABEL_165;
    }

    v129 = 0;
    v391 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v441 = (v127 & 0xC000000000000001);
    v389 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_analyticsManager;
    v424 = v127 & 0xFFFFFFFFFFFFFF8;
    v437 = (v443 + 32);
    v428 = (v443 + 16);
    v435 = (v443 + 8);
    v386 = (v418 + 32);
    v390 = (v418 + 8);
    v388 = (v413 + 8);
    *&v128 = 138543362;
    v413 = v128;
    *&v128 = 136446210;
    v418 = v128;
    v130 = v433;
    v438 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v441)
      {
        v131 = MEMORY[0x1BFB29A00](v129, v127);
      }

      else
      {
        if (v129 >= *(v424 + 16))
        {
          goto LABEL_171;
        }

        v131 = v127[v129 + 4];
      }

      v132 = v131;
      v90 = (v129 + 1);
      if (__OFADD__(v129, 1))
      {
        goto LABEL_169;
      }

      v133 = [v131 recordUUID];
      if (!v133)
      {
        v158 = v127;
        v159 = (v129 + 1);
        v160 = v129;
        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v161 = sub_1BC8F7734();
        __swift_project_value_buffer(v161, qword_1EDC2B268);
        v162 = v132;
        v163 = sub_1BC8F7714();
        v164 = sub_1BC8F81E4();

        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          *v165 = v413;
          *(v165 + 4) = v162;
          *v166 = v162;
          v167 = v162;
          _os_log_impl(&dword_1BC7A3000, v163, v164, "Skipping message because we found a nil recordUUID %{public}@", v165, 0xCu);
          sub_1BC7C1744(v166, &unk_1EBCF5DB0, &unk_1BC900410);
          MEMORY[0x1BFB2AA50](v166, -1, -1);
          v168 = v165;
          v108 = v436;
          MEMORY[0x1BFB2AA50](v168, -1, -1);
        }

        else
        {
        }

        v191 = v160;
        v90 = v159;
        v127 = v158;
        goto LABEL_60;
      }

      v134 = v133;
      v443 = v129;
      v135 = v432;
      sub_1BC8F7244();

      v136 = *v437;
      (*v437)(v108, v135, v440);
      v137 = [v132 dateDeleted];
      v138 = v132;
      if (v137)
      {
        v139 = v137;
        v439 = v132;
        v140 = v431;
        sub_1BC8F71B4();

        __swift_storeEnumTagSinglePayload(v140, 0, 1, v130);
        sub_1BC7C1744(v140, &unk_1EBCF5D80, &qword_1BC8FEA60);
        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v141 = sub_1BC8F7734();
        __swift_project_value_buffer(v141, qword_1EDC2B268);
        v142 = v430;
        v143 = v440;
        (*v428)(v430, v108, v440);
        v144 = sub_1BC8F7714();
        v145 = sub_1BC8F81F4();
        if (!os_log_type_enabled(v144, v145))
        {

LABEL_55:
          v190 = *v435;
          (*v435)(v142, v143);
          (v190)(v108, v143);
          goto LABEL_56;
        }

        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v426 = v90;
        v148 = v147;
        *&v450 = v147;
        *v146 = v418;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v149 = sub_1BC8F8A54();
        v150 = v142;
        v152 = v151;
        v153 = *v435;
        (*v435)(v150, v143);
        v154 = sub_1BC7A9A4C(v149, v152, &v450);

        *(v146 + 4) = v154;
        _os_log_impl(&dword_1BC7A3000, v144, v145, "Skipping message with recordUUID %{public}s because it was marked as deleted", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v148);
        v155 = v148;
        v90 = v426;
        v156 = v433;
        MEMORY[0x1BFB2AA50](v155, -1, -1);
        v157 = v146;
        v108 = v436;
        MEMORY[0x1BFB2AA50](v157, -1, -1);

        (v153)(v108, v143);
      }

      else
      {
        v169 = v431;
        __swift_storeEnumTagSinglePayload(v431, 1, 1, v130);
        sub_1BC7C1744(v169, &unk_1EBCF5D80, &qword_1BC8FEA60);
        v170 = v138;
        if ([v138 messageType] != 1)
        {
          if (qword_1EDC1E1D0 != -1)
          {
            swift_once();
          }

          v192 = sub_1BC8F7734();
          __swift_project_value_buffer(v192, qword_1EDC2B268);
          v193 = sub_1BC8F7714();
          v194 = sub_1BC8F8204();
          v195 = os_log_type_enabled(v193, v194);
          isUniquelyReferenced_nonNull_native = v438;
          if (v195)
          {
            v196 = swift_slowAlloc();
            *v196 = 0;
            _os_log_impl(&dword_1BC7A3000, v193, v194, "Not updating message as it isn't a voicemail", v196, 2u);
            v197 = v196;
            v108 = v436;
            MEMORY[0x1BFB2AA50](v197, -1, -1);
          }

          else
          {
          }

          (*v435)(v108, v440);
          goto LABEL_57;
        }

        v171 = v438;
        if (v438[2])
        {
          v172 = sub_1BC83C928();
          if (v173)
          {
            v439 = v138;
            v174 = *(v171 + 56) + *(v425 + 72) * v172;
            sub_1BC8302F8();
            sub_1BC8303A8();
            if (qword_1EDC1E1D0 != -1)
            {
              swift_once();
            }

            v426 = sub_1BC8F7734();
            __swift_project_value_buffer(v426, qword_1EDC2B268);
            v175 = v415;
            sub_1BC8302F8();
            v176 = sub_1BC8F7714();
            v177 = sub_1BC8F8204();
            if (os_log_type_enabled(v176, v177))
            {
              v178 = v127;
              v179 = v175;
              v180 = swift_slowAlloc();
              v387 = swift_slowAlloc();
              *&v450 = v387;
              *v180 = v418;
              sub_1BC87DDDC();
              v182 = v181;
              v183 = v90;
              v185 = v184;
              v186 = v179;
              v127 = v178;
              sub_1BC830350(v186, type metadata accessor for VoicemailUpdate);
              v187 = sub_1BC7A9A4C(v182, v185, &v450);
              v90 = v183;
              v130 = v433;

              *(v180 + 4) = v187;
              _os_log_impl(&dword_1BC7A3000, v176, v177, "Applying voicemail update: %{public}s", v180, 0xCu);
              v188 = v387;
              __swift_destroy_boxed_opaque_existential_1(v387);
              MEMORY[0x1BFB2AA50](v188, -1, -1);
              MEMORY[0x1BFB2AA50](v180, -1, -1);
            }

            else
            {

              v189 = sub_1BC830350(v175, type metadata accessor for VoicemailUpdate);
            }

            v212 = *(*(v416 + v391) + 32);
            v213 = MEMORY[0x1EEE9AC00](v189);
            v387 = v214;
            v215 = v436;
            *(&v379 - 2) = v214;
            *(&v379 - 1) = v215;
            MEMORY[0x1EEE9AC00](v213);
            v105 = &v379 - 4;
            *(&v379 - 2) = sub_1BC830520;
            *(&v379 - 1) = v216;
            os_unfair_lock_lock(v212 + 4);
            v217 = v396;
            sub_1BC830558(v218);
            v219 = v434;
            v396 = v217;
            v220 = v439;
            v221 = v212 + 4;
            if (v217)
            {
              goto LABEL_174;
            }

            os_unfair_lock_unlock(v221);
            sub_1BC87D064();
            if (v222)
            {
              if (qword_1EDC1E1A0 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v426, qword_1EDC2B208);
              v223 = v404;
              v108 = v436;
              v224 = v440;
              (*v428)(v404, v436, v440);
              v225 = sub_1BC8F7714();
              v226 = sub_1BC8F8204();
              if (os_log_type_enabled(v225, v226))
              {
                v227 = swift_slowAlloc();
                v228 = swift_slowAlloc();
                v426 = v90;
                v229 = v228;
                *&v450 = v228;
                *v227 = v418;
                sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
                v230 = sub_1BC8F8A54();
                v231 = v223;
                v233 = v232;
                v387 = *v435;
                (v387)(v231, v224);
                v234 = sub_1BC7A9A4C(v230, v233, &v450);

                *(v227 + 4) = v234;
                _os_log_impl(&dword_1BC7A3000, v225, v226, "Not applying update to message with recordUUID: %{public}s because nothing was changed", v227, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v229);
                v235 = v229;
                v90 = v426;
                MEMORY[0x1BFB2AA50](v235, -1, -1);
                v236 = v227;
                v108 = v436;
                MEMORY[0x1BFB2AA50](v236, -1, -1);

                sub_1BC7C1744(v419, &qword_1EBCF58E0, &qword_1BC904880);
                (v387)(v108, v224);
              }

              else
              {

                v241 = *v435;
                (*v435)(v223, v224);
                sub_1BC7C1744(v419, &qword_1EBCF58E0, &qword_1BC904880);
                (v241)(v108, v224);
              }

              sub_1BC830350(v434, type metadata accessor for VoicemailUpdate);
              isUniquelyReferenced_nonNull_native = v438;
              v191 = v443;
LABEL_60:
              v130 = v433;
              goto LABEL_61;
            }

            v237 = (v219 + v423[5]);
            v238 = v407;
            if (v237[1])
            {
              v239 = *v237;
              v240 = v237[1];
              goto LABEL_86;
            }

            sub_1BC7C3174(v220);
            if (v242)
            {
LABEL_86:

              v243 = sub_1BC8F7BE4();
            }

            else
            {
              v243 = 0;
            }

            [v220 setFrom_];

            v244 = *(v219 + v423[6]);
            if (v244 == 2)
            {
              LOBYTE(v244) = [v220 isRead];
            }

            [v220 setIsRead_];
            v245 = (v219 + v423[11]);
            if (v245[1])
            {
              v246 = *v245;
              v247 = v245[1];
              goto LABEL_92;
            }

            sub_1BC7C31B0(v220);
            if (v248)
            {
LABEL_92:

              v249 = sub_1BC8F7BE4();
            }

            else
            {
              v249 = 0;
            }

            [v220 setSimID_];

            v250 = v219 + v423[12];
            v251 = v406;
            sub_1BC830400();
            if (__swift_getEnumTagSinglePayload(v251, 1, v130) == 1)
            {
              v252 = [v220 dateCreated];
              if (v252)
              {
                v253 = v252;
                sub_1BC8F71B4();

                v254 = 0;
              }

              else
              {
                v254 = 1;
              }

              __swift_storeEnumTagSinglePayload(v238, v254, 1, v130);
              v255 = v405;
              sub_1BC830458();
              if (__swift_getEnumTagSinglePayload(v251, 1, v130) != 1)
              {
                sub_1BC7C1744(v251, &unk_1EBCF5D80, &qword_1BC8FEA60);
              }
            }

            else
            {
              v255 = v405;
              (*v386)(v405, v251, v130);
              __swift_storeEnumTagSinglePayload(v255, 0, 1, v130);
            }

            if (__swift_getEnumTagSinglePayload(v255, 1, v130) == 1)
            {
              v256 = 0;
            }

            else
            {
              v256 = sub_1BC8F7174();
              (*v390)(v255, v130);
            }

            [v220 setDateCreated_];

            v257 = v219 + v423[9];
            if (*(v257 + 2))
            {
              v258 = [v220 transcriptionStatus];
            }

            else
            {
              v258 = *v257;
            }

            [v220 setTranscriptionStatus_];
            v259 = v219 + v423[7];
            if (*(v259 + 2))
            {
              v260 = [v220 mailboxType];
            }

            else
            {
              v260 = *v259;
            }

            [v220 setMailboxType_];
            v261 = v219 + v423[14];
            v262 = *(v261 + 16);
            if (v262)
            {
              v263 = *v261;
              *&v450 = *v261;
              v264 = v262;
            }

            else
            {
              sub_1BC7C31C8();
              v263 = v450;
              v264 = v451;
            }

            v448 = v263;
            v449 = v264;

            sub_1BC8511D8(&v448);
            v265 = v219 + v423[15];
            v266 = v412;
            sub_1BC830400();
            v267 = v440;
            if (__swift_getEnumTagSinglePayload(v266, 1, v440) == 1)
            {
              v268 = [v220 reminderUUID];
              v269 = v397;
              if (v268)
              {
                v270 = v268;
                sub_1BC8F7244();

                v271 = 0;
              }

              else
              {
                v271 = 1;
              }

              isUniquelyReferenced_nonNull_native = v438;
              v267 = v440;
              __swift_storeEnumTagSinglePayload(v269, v271, 1, v440);
              v272 = v408;
              sub_1BC830458();
              v273 = v412;
              if (__swift_getEnumTagSinglePayload(v412, 1, v267) != 1)
              {
                sub_1BC7C1744(v273, &unk_1EBCF5D70, &qword_1BC8FC740);
              }
            }

            else
            {
              v272 = v408;
              v136(v408, v266, v267);
              __swift_storeEnumTagSinglePayload(v272, 0, 1, v267);
              isUniquelyReferenced_nonNull_native = v438;
            }

            if (__swift_getEnumTagSinglePayload(v272, 1, v267) == 1)
            {
              v274 = 0;
            }

            else
            {
              v274 = sub_1BC8F7214();
              (*v435)(v272, v267);
            }

            [v220 setReminderUUID_];

            v275 = (v219 + v423[8]);
            if (v275[1])
            {
              v276 = *v275;
              v277 = v275[1];
              goto LABEL_125;
            }

            sub_1BC7C318C(v220);
            if (v278)
            {
LABEL_125:

              v279 = sub_1BC8F7BE4();
            }

            else
            {
              v279 = 0;
            }

            [v220 setRecipient_];

            v280 = (v219 + v423[10]);
            v281 = *v280;
            if (*v280)
            {
              v283 = v280[1];
              v282 = v280[2];
              *&v450 = *v280;
              *(&v450 + 1) = v283;
              v385 = v283;
              v451 = v282;
              v384 = v282;

              v284 = v402;
              sub_1BC8CE5F4(&v450, v402);
              sub_1BC7AAAD0(qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript);
              v285 = v396;
              v286 = sub_1BC8F7544();
              if (v285)
              {
                sub_1BC830350(v284, type metadata accessor for FaceTimeMessageStore_Transcript);
                if (qword_1EDC1E1A0 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v426, qword_1EDC2B208);
                v288 = v285;
                v289 = sub_1BC8F7714();
                v290 = sub_1BC8F81F4();

                v396 = v289;
                if (os_log_type_enabled(v289, v290))
                {
                  v291 = swift_slowAlloc();
                  v382 = v291;
                  v383 = swift_slowAlloc();
                  *&v450 = v383;
                  *v291 = v418;
                  swift_getErrorValue();
                  v292 = v444;
                  v293 = v445;
                  v294 = v90;
                  v295 = sub_1BC8F83F4();
                  v380 = &v379;
                  v296 = *(v295 - 8);
                  v297 = *(v296 + 64);
                  MEMORY[0x1EEE9AC00](v295);
                  HIDWORD(v381) = v290;
                  v299 = &v379 - v298;
                  (*(*(v293 - 8) + 16))(&v379 - v298, v292, v293);
                  __swift_storeEnumTagSinglePayload(v299, 0, 1, v293);
                  v300 = sub_1BC8073F0(v299, v293);
                  v302 = v301;
                  v303 = v295;
                  v90 = v294;
                  v304 = v433;
                  (*(v296 + 8))(v299, v303);
                  v130 = v304;
                  v305 = sub_1BC7A9A4C(v300, v302, &v450);

                  v306 = v382;
                  *(v382 + 1) = v305;
                  v307 = v396;
                  v308 = v306;
                  _os_log_impl(&dword_1BC7A3000, v396, BYTE4(v381), "Failed to archive voicemail transcript %{public}s", v306, 0xCu);
                  v309 = v383;
                  __swift_destroy_boxed_opaque_existential_1(v383);
                  MEMORY[0x1BFB2AA50](v309, -1, -1);
                  MEMORY[0x1BFB2AA50](v308, -1, -1);
                }

                else
                {
                }
              }

              else
              {
                v310 = v286;
                v311 = v287;
                sub_1BC830350(v284, type metadata accessor for FaceTimeMessageStore_Transcript);
                sub_1BC82EE28(v310, v311, v439, &selRef_setTranscriptData_);
              }

              v312 = MEMORY[0x1BFB2A220]();
              sub_1BC7C1A54(0x697263736E617274, 0xEA00000000007470, v410);
              objc_autoreleasePoolPop(v312);
              v313 = objc_opt_self();
              *&v450 = v281;
              *(&v450 + 1) = v385;
              v451 = v384;
              v314 = sub_1BC7DA680();
              *&v450 = 0;
              v315 = [v313 archivedDataWithRootObject:v314 requiringSecureCoding:1 error:&v450];

              v316 = v450;
              if (v315)
              {
                v317 = sub_1BC8F70D4();
                v319 = v318;

                v320 = v410;
                sub_1BC8F70F4();
                isUniquelyReferenced_nonNull_native = v438;
                v396 = 0;
                v220 = v439;
                sub_1BC82EDD0(v317, v319, v439);
                v344 = sub_1BC8F6EE4();
                sub_1BC7C3588(v344, v345, v220, &selRef_setTranscriptType_);
                sub_1BC7D4C94(v317, v319);
                (*v388)(v320, v401);
                v219 = v434;
              }

              else
              {
                v321 = v316;
                v322 = sub_1BC8F6EA4();

                swift_willThrow();
                (*v388)(v410, v401);
                v396 = 0;
                isUniquelyReferenced_nonNull_native = v438;
                if (qword_1EDC1E1A0 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v426, qword_1EDC2B208);
                v323 = v322;
                v324 = sub_1BC8F7714();
                v325 = sub_1BC8F81F4();

                if (os_log_type_enabled(v324, v325))
                {
                  v326 = swift_slowAlloc();
                  v385 = v326;
                  v426 = swift_slowAlloc();
                  *&v450 = v426;
                  *v326 = v418;
                  swift_getErrorValue();
                  v328 = v446;
                  v327 = v447;
                  v329 = sub_1BC8F83F4();
                  LODWORD(v384) = v325;
                  v330 = v90;
                  v331 = v329;
                  v383 = &v379;
                  v332 = *(v329 - 8);
                  v333 = *(v332 + 64);
                  MEMORY[0x1EEE9AC00](v329);
                  v335 = &v379 - v334;
                  (*(*(v327 - 8) + 16))(&v379 - v334, v328, v327);
                  __swift_storeEnumTagSinglePayload(v335, 0, 1, v327);
                  v336 = sub_1BC8073F0(v335, v327);
                  v338 = v337;
                  v339 = v331;
                  v90 = v330;
                  v340 = v433;
                  (*(v332 + 8))(v335, v339);
                  v130 = v340;
                  v341 = sub_1BC7A9A4C(v336, v338, &v450);

                  v342 = v385;
                  *(v385 + 1) = v341;
                  isUniquelyReferenced_nonNull_native = v438;
                  _os_log_impl(&dword_1BC7A3000, v324, v384, "Failed to archive legacy voicemail transcript %{public}s", v342, 0xCu);
                  v343 = v426;
                  __swift_destroy_boxed_opaque_existential_1(v426);
                  MEMORY[0x1BFB2AA50](v343, -1, -1);
                  MEMORY[0x1BFB2AA50](v342, -1, -1);
                }

                else
                {
                }

                v219 = v434;
                v220 = v439;
              }
            }

            if ([v220 hasPersistentChangedValues])
            {
              v346 = v398;
              sub_1BC8F71D4();
              v347 = sub_1BC8F7174();
              (*v390)(v346, v130);
              [v220 setDateModified_];
            }

            v348 = objc_allocWithZone(type metadata accessor for Message());
            v349 = v220;
            LOBYTE(v450) = 1;
            sub_1BC86A9C0(v349, 0x100000000, 0, v350, v351, v352, v353, v354, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
            if (v355)
            {
              v356 = v355;
              if (swift_weakLoadStrong())
              {
                sub_1BC8EC824(4, v356);
              }
            }

            v357 = v422;
            sub_1BC803F84();
            v358 = v411;
            if (__swift_getEnumTagSinglePayload(v357, 1, v411) != 1)
            {
              v439 = v349;
              v426 = v90;
              sub_1BC8303A8();
              v361 = v421;
              sub_1BC8302F8();
              __swift_storeEnumTagSinglePayload(v361, 0, 1, v358);
              v362 = *(v400 + 48);
              v363 = v399;
              sub_1BC830400();
              sub_1BC830400();
              if (__swift_getEnumTagSinglePayload(v363, 1, v358) == 1)
              {
                sub_1BC7C1744(v361, &qword_1EBCF58E0, &qword_1BC904880);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v363 + v362, 1, v358);
                v365 = v439;
                if (EnumTagSinglePayload == 1)
                {

                  sub_1BC7C1744(v363, &qword_1EBCF58E0, &qword_1BC904880);
                  v108 = v436;
                  v191 = v443;
                  goto LABEL_162;
                }

LABEL_155:
                sub_1BC7C1744(v363, &qword_1EBCF58D8, &unk_1BC902A50);
                goto LABEL_156;
              }

              v366 = v420;
              sub_1BC830400();
              if (__swift_getEnumTagSinglePayload(v363 + v362, 1, v358) == 1)
              {
                sub_1BC7C1744(v421, &qword_1EBCF58E0, &qword_1BC904880);
                sub_1BC830350(v366, type metadata accessor for MessageAssetInfo);
                v365 = v439;
                goto LABEL_155;
              }

              v374 = v393;
              sub_1BC8303A8();
              static MessageAssetInfo.== infix(_:_:)();
              v376 = v375;
              sub_1BC830350(v374, type metadata accessor for MessageAssetInfo);
              sub_1BC7C1744(v421, &qword_1EBCF58E0, &qword_1BC904880);
              sub_1BC830350(v366, type metadata accessor for MessageAssetInfo);
              sub_1BC7C1744(v363, &qword_1EBCF58E0, &qword_1BC904880);
              v365 = v439;
              if (v376)
              {

                v108 = v436;
                isUniquelyReferenced_nonNull_native = v438;
                v191 = v443;
LABEL_162:
                sub_1BC830350(v409, type metadata accessor for MessageAssetInfo);
                sub_1BC7C1744(v419, &qword_1EBCF58E0, &qword_1BC904880);
                (*v435)(v108, v440);
                sub_1BC830350(v434, type metadata accessor for VoicemailUpdate);
              }

              else
              {
LABEL_156:
                v367 = v394;
                v368 = v436;
                v369 = v440;
                (*v428)(v394, v436, v440);
                v370 = v409;
                v371 = v395;
                sub_1BC8302F8();
                __swift_storeEnumTagSinglePayload(v371, 0, 1, v411);
                sub_1BC82A374(v371, v367);

                v372 = v371;
                v108 = v368;
                v127 = v429;
                sub_1BC7C1744(v372, &qword_1EBCF58E0, &qword_1BC904880);
                v373 = *v435;
                (*v435)(v367, v369);
                sub_1BC830350(v370, type metadata accessor for MessageAssetInfo);
                sub_1BC7C1744(v419, &qword_1EBCF58E0, &qword_1BC904880);
                (v373)(v108, v369);
                sub_1BC830350(v434, type metadata accessor for VoicemailUpdate);
                isUniquelyReferenced_nonNull_native = v438;
                v191 = v443;
              }

              v90 = v426;
              goto LABEL_61;
            }

            sub_1BC7C1744(v419, &qword_1EBCF58E0, &qword_1BC904880);

            v359 = v436;
            (*v435)(v436, v440);
            sub_1BC830350(v219, type metadata accessor for VoicemailUpdate);
            v360 = v357;
            v108 = v359;
            sub_1BC7C1744(v360, &qword_1EBCF58E0, &qword_1BC904880);
            goto LABEL_57;
          }
        }

        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v198 = sub_1BC8F7734();
        __swift_project_value_buffer(v198, qword_1EDC2B268);
        v142 = v417;
        v143 = v440;
        (*v428)(v417, v108, v440);
        v199 = sub_1BC8F7714();
        v200 = sub_1BC8F8204();
        if (!os_log_type_enabled(v199, v200))
        {

          goto LABEL_55;
        }

        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        v426 = v90;
        v203 = v202;
        *&v450 = v202;
        *v201 = v418;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v204 = sub_1BC8F8A54();
        v205 = v142;
        v207 = v206;
        v439 = v170;
        v208 = *v435;
        (*v435)(v205, v143);
        v209 = sub_1BC7A9A4C(v204, v207, &v450);

        *(v201 + 4) = v209;
        _os_log_impl(&dword_1BC7A3000, v199, v200, "Failed to find message update for recordUUID %{public}s", v201, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v203);
        v210 = v203;
        v90 = v426;
        v156 = v433;
        MEMORY[0x1BFB2AA50](v210, -1, -1);
        v211 = v201;
        v108 = v436;
        MEMORY[0x1BFB2AA50](v211, -1, -1);

        (v208)(v108, v143);
      }

      v130 = v156;
LABEL_56:
      v127 = v429;
      isUniquelyReferenced_nonNull_native = v438;
LABEL_57:
      v191 = v443;
LABEL_61:
      v129 = v191 + 1;
      if (v90 == v442)
      {
        goto LABEL_164;
      }
    }
  }

  sub_1BC82926C(v91, v89);

LABEL_10:
  swift_willThrow();

LABEL_165:
  v377 = *MEMORY[0x1E69E9840];
}

void sub_1BC82926C(void *a1, uint64_t a2)
{
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v4 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B268);

  v5 = a1;
  oslog = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    v10 = sub_1BC8F7264();
    v11 = MEMORY[0x1BFB29280](a2, v10);
    v13 = sub_1BC7A9A4C(v11, v12, &v19);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2114;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_1BC7A3000, oslog, v6, "MessageStoreManager: Got an error while fetching messages with UUIDs %{public}s: %{public}@", v7, 0x16u);
    sub_1BC7C1744(v8, &unk_1EBCF5DB0, &unk_1BC900410);
    v16 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v16);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }
}

BOOL sub_1BC82977C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC830400();
  v5 = v10;
  if (v10)
  {
    sub_1BC7A792C(v9, v8);
    sub_1BC7C1744(v9, &qword_1EBCF58F8, &qword_1BC9034D0);
    v6 = *__swift_project_boxed_opaque_existential_1(v8, v8[3]);
    a3(a2);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1BC7C1744(v9, &qword_1EBCF58F8, &qword_1BC9034D0);
  }

  return v5 == 0;
}

uint64_t sub_1BC82986C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC829890, 0, 0);
}

uint64_t sub_1BC829890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v13 = v10[7];
  v12 = v10[8];
  v14 = v10[5];
  v15 = v10[6];
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  *(v16 + 28) = BYTE4(v13) & 1;
  *(v16 + 32) = v12;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v17 = *(v15 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v15 + 88, *(v15 + 112));
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5968, &qword_1BC902CB0);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_16_6();
  v11();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

void sub_1BC829994(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1BC8299E4(a1, a2 | ((HIDWORD(a2) & 1) << 32), a3);
  if (!v4)
  {
    *a4 = v6;
    *(a4 + 4) = BYTE4(v6) & 1;
  }
}

void sub_1BC8299E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 9)
  {
    v5 = a2;
    if ((a2 & 0x100000000) != 0)
    {
      v5 = sub_1BC82EA28(0x7FFE7960uLL) + 100000;
    }

    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v30 = a1;
    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B268);
    v8 = sub_1BC8F7714();
    v9 = sub_1BC8F8204();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      *(v10 + 4) = v5;
      _os_log_impl(&dword_1BC7A3000, v8, v9, "Checking if generated voicemailID is unique: %{public}d", v10, 8u);
      MEMORY[0x1BFB2AA50](v10, -1, -1);
    }

    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5970, &qword_1BC902CB8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC8FC230;
    *(v12 + 32) = v5;
    *(v11 + 16) = v12;
    type metadata accessor for FTLocalMessageProperties();
    v13 = static FTLocalMessageProperties.fetchRequest()();
    [v13 setFetchBatchSize_];
    v14 = sub_1BC7E61F8();
    [v13 setPredicate_];

    v15 = sub_1BC8F7714();
    v16 = sub_1BC8F8204();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BC7A3000, v15, v16, "Getting count for fetch request", v17, 2u);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
    }

    v18 = v30;
    v19 = sub_1BC8F8304();
    if (v3)
    {
      sub_1BC829E38(v3, v13);
      swift_willThrow();
    }

    else
    {
      v20 = v19;
      v21 = sub_1BC8F7714();
      v22 = sub_1BC8F8204();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134349056;
        *(v23 + 4) = v20;
        _os_log_impl(&dword_1BC7A3000, v21, v22, "Got count %{public}ld for fetch request", v23, 0xCu);
        v24 = v23;
        v18 = v30;
        MEMORY[0x1BFB2AA50](v24, -1, -1);
      }

      v25 = sub_1BC8F7714();
      v26 = sub_1BC8F8204();
      v27 = os_log_type_enabled(v25, v26);
      if (v20 < 1)
      {
        if (v27)
        {
          v29 = swift_slowAlloc();
          *v29 = 67240192;
          *(v29 + 4) = v5;
          _os_log_impl(&dword_1BC7A3000, v25, v26, "Generated voicemailID was unique. Final voicemailID: %{public}d", v29, 8u);
          MEMORY[0x1BFB2AA50](v29, -1, -1);
        }
      }

      else
      {
        if (v27)
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1BC7A3000, v25, v26, "Generated voicemailID was not unique. Re-rolling", v28, 2u);
          MEMORY[0x1BFB2AA50](v28, -1, -1);
        }

        sub_1BC8299E4(v18, 0x100000000, a3 + 1);
      }
    }
  }
}

void sub_1BC829E38(void *a1, void *a2)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B268);
  v5 = a2;
  v6 = a1;
  oslog = sub_1BC8F7714();
  v7 = sub_1BC8F81E4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2114;
    v10 = v5;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    v9[1] = v12;
    _os_log_impl(&dword_1BC7A3000, oslog, v7, "MessageStoreManager: Failed to get count with fetchRequest: %{public}@: %{public}@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    MEMORY[0x1BFB2AA50](v9, -1, -1);
    MEMORY[0x1BFB2AA50](v8, -1, -1);
  }
}

uint64_t sub_1BC829FF0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 88), *(v1 + 112));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_133(v3);
  *v4 = v5;
  v4[1] = sub_1BC82A094;

  return sub_1BC8E9F34();
}

uint64_t sub_1BC82A094()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC82A194()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = v1;
  sub_1BC8103A8(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 56);
  if (Strong)
  {
    sub_1BC87BBFC(*(v0 + 56));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_1BC82A230()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1D8 != -1)
  {
    OUTLINED_FUNCTION_66();
  }

  v1 = *(v0 + 64);
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B280);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = *(v0 + 64);
  if (v5)
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_61_1();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_125_0(5.8381e-34);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v9);
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_1BC7C1744(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v16 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v16);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1BC82A374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = type metadata accessor for MessageAssetInfo();
  v6 = OUTLINED_FUNCTION_4_1(v70);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v66 = v16;
  OUTLINED_FUNCTION_19_6();
  v17 = sub_1BC8F7264();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v27 = OUTLINED_FUNCTION_25(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_31();
  v67 = v30;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v31);
  v68 = &v60 - v32;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v60 - v34;
  if (qword_1EDC1E1E8 != -1)
  {
    OUTLINED_FUNCTION_50_1();
    swift_once();
  }

  v36 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v36, qword_1EDC2B298);
  v69 = a1;
  sub_1BC830400();
  v37 = *(v20 + 16);
  v37(v25, a2, v17);
  v38 = sub_1BC8F7714();
  v65 = sub_1BC8F81C4();
  v39 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v63 = v11;
    v42 = v41;
    v62 = swift_slowAlloc();
    v71 = v62;
    *v42 = 136446466;
    v43 = sub_1BC863800();
    v61 = v38;
    v44 = v43;
    v64 = v3;
    v46 = v45;
    sub_1BC7C1744(v35, &qword_1EBCF58E0, &qword_1BC904880);
    v47 = sub_1BC7A9A4C(v44, v46, &v71);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    v48 = v66;
    v37(v66, v25, v17);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v17);
    v52 = sub_1BC863940(v48);
    v54 = v53;
    sub_1BC7C1744(v48, &unk_1EBCF5D70, &qword_1BC8FC740);
    (*(v20 + 8))(v25, v17);
    v55 = sub_1BC7A9A4C(v52, v54, &v71);

    *(v42 + 14) = v55;
    v56 = v61;
    _os_log_impl(&dword_1BC7A3000, v61, v65, "Setting %{public}s to the cache with key %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v11 = v63;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    (*(v20 + 8))(v25, v17);
    sub_1BC7C1744(v35, &qword_1EBCF58E0, &qword_1BC904880);
  }

  v57 = v68;
  sub_1BC830400();
  if (__swift_getEnumTagSinglePayload(v57, 1, v70) == 1)
  {
    sub_1BC7C1744(v57, &qword_1EBCF58E0, &qword_1BC904880);
    v58 = v67;
    sub_1BC8227E0();
    return sub_1BC7C1744(v58, &qword_1EBCF58E0, &qword_1BC904880);
  }

  else
  {
    OUTLINED_FUNCTION_51_1();
    sub_1BC8303A8();
    sub_1BC82AC84();
    return sub_1BC830350(v11, type metadata accessor for MessageAssetInfo);
  }
}

uint64_t sub_1BC82A834()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F470(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_1BC82A8E8()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1BC8F7264();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v21 = v20 - v19;
  swift_beginAccess();
  v22 = sub_1BC8E7208(v2, *(v4 + 56));
  if (v22)
  {
    v23 = v22;
    swift_endAccess();
    sub_1BC82AC30(v23);
    v24 = *(*v23 + 144);
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    OUTLINED_FUNCTION_51_1();
    sub_1BC8302F8();

    v25 = 0;
  }

  else
  {
    v47 = v6;
    swift_endAccess();
    if (qword_1EDC1E1E8 != -1)
    {
      OUTLINED_FUNCTION_50_1();
      swift_once();
    }

    v26 = sub_1BC8F7734();
    v27 = __swift_project_value_buffer(v26, qword_1EDC2B298);
    v28 = *(v16 + 16);
    v28(v21, v2, v13);
    v29 = sub_1BC8F7714();
    sub_1BC8F8204();
    v30 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_9();
      v32 = swift_slowAlloc();
      v45 = v0;
      v33 = v32;
      OUTLINED_FUNCTION_8_2();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v33 = 136446210;
      v28(v12, v21, v13);
      v25 = 1;
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v13);
      v37 = sub_1BC863940(v12);
      HIDWORD(v43) = v27;
      v38 = v37;
      v40 = v39;
      sub_1BC7C1744(v12, &unk_1EBCF5D70, &qword_1BC8FC740);
      (*(v16 + 8))(v21, v13);
      v41 = sub_1BC7A9A4C(v38, v40, &v46);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_1BC7A3000, v29, BYTE4(v43), "Cache miss for %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      (*(v16 + 8))(v21, v13);
      v25 = 1;
    }

    v6 = v47;
  }

  v42 = type metadata accessor for MessageAssetInfo();
  __swift_storeEnumTagSinglePayload(v6, v25, 1, v42);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC82AC30(uint64_t result)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    sub_1BC82B328(result);

    return sub_1BC82AF70(v4);
  }

  return result;
}

void sub_1BC82AC84()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC7A9F74(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC82B048();
  sub_1BC82B0A8();
}

uint64_t sub_1BC82AD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessageAssetInfo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1BC8F7264();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = sub_1BC8E7208(a2, *(a1 + 56));
  if (v13)
  {
    v14 = v13;
    swift_endAccess();
    v15 = *(*v14 + 144);
    swift_beginAccess();
    sub_1BC82F48C(a3, v14 + v15);
    swift_endAccess();
    sub_1BC82AC30(v14);
  }

  else
  {
    swift_endAccess();
    (*(v9 + 16))(v12, a2, v8);
    sub_1BC8302F8();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1BC82BCC0(v12);
    swift_beginAccess();

    v20 = *(a1 + 56);
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + 56);
    sub_1BC83D958();
    *(a1 + 56) = v23;
    swift_endAccess();
    sub_1BC82AF70(v19);
  }
}

uint64_t sub_1BC82AF70(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = *(*v3 + 152);
    v5 = *(v3 + v4);
    *(v3 + v4) = a1;
    swift_retain_n();

    v6 = *(v1 + 48);
    v7 = *(*a1 + 160);
    swift_weakAssign();
    v8 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    v9 = *(v1 + 40);
    *(v1 + 40) = a1;

    v10 = *(v1 + 48);
    *(v1 + 48) = a1;
  }
}

void sub_1BC82B048()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC830540(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BC82B0A8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F354(v2, &v3);
  os_unfair_lock_unlock(v1 + 4);
  if (v3 == 1)
  {
    sub_1BC82B048();
  }
}

uint64_t sub_1BC82B124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  v5 = sub_1BC83C928();
  if (v6)
  {
    v7 = v5;
    v8 = *(a1 + 56);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + 56);
    v9 = v17[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
    sub_1BC8F8734();
    v10 = v17[6];
    v11 = sub_1BC8F7264();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v17[7] + 8 * v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
    sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
    sub_1BC8F8754();
    *(a1 + 56) = v17;
    swift_endAccess();
    sub_1BC82B328(v12);
    v13 = *(*v12 + 144);
    swift_beginAccess();
    sub_1BC8302F8();

    v14 = 0;
  }

  else
  {
    swift_endAccess();
    v14 = 1;
  }

  v15 = type metadata accessor for MessageAssetInfo();
  return __swift_storeEnumTagSinglePayload(a2, v14, 1, v15);
}

uint64_t sub_1BC82B328(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(v1 + 40) = *(a1 + *(*a1 + 152));
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(*a1 + 160);
    *(v1 + 48) = swift_weakLoadStrong();
  }

  v8 = *(*a1 + 160);
  Strong = swift_weakLoadStrong();
  v10 = *(*a1 + 152);
  v11 = *(a1 + v10);
  *(a1 + v10) = 0;
  swift_weakAssign();
  if (Strong)
  {
    v12 = *(*Strong + 152);
    v13 = *(Strong + v12);
    *(Strong + v12) = v11;
  }

  if (v11)
  {
    v14 = *(*v11 + 160);
    swift_weakAssign();
  }
}

uint64_t sub_1BC82B494()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14[-v2];
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC830400();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_1BC7C1744(v3, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  (*(v5 + 32))(v8, v3, v4);
  type metadata accessor for OSTransaction();
  if (qword_1EDC1DF70 != -1)
  {
    swift_once();
  }

  v10 = sub_1BC8F76B4();
  v11 = __swift_project_value_buffer(v10, qword_1EDC2B1D0);
  MEMORY[0x1EEE9AC00](v11);
  v13[3] = v13;
  static OSTransaction.transaction(withID:with:beginInterval:endInterval:block:)("com.apple.facetimemessagestored.fileCacheSave", 45, 2, v12, "Saving asset cache to disk", 26, 2, "Finished saving asset cache to disk", 35, 2, sub_1BC82F41C);
  return (*(v5 + 8))(v8, v4);
}

void sub_1BC82B708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = v39 - v6;
  v7 = sub_1BC8F7014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1E8 != -1)
  {
    swift_once();
  }

  v12 = sub_1BC8F7734();
  v13 = __swift_project_value_buffer(v12, qword_1EDC2B298);
  (*(v8 + 16))(v11, a2, v7);

  v39[2] = v13;
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  v16 = os_log_type_enabled(v14, v15);
  v39[1] = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v41 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39[0] = v4;
    v20 = v19;
    v42 = v19;
    *v18 = 134349314;
    *(v18 + 4) = sub_1BC82A834();

    *(v18 + 12) = 2082;
    sub_1BC7AAAD0(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
    v21 = sub_1BC8F8A54();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = sub_1BC7A9A4C(v21, v23, &v42);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Saving %{public}ld cached values to %{public}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB2AA50](v20, -1, -1);
    v25 = v18;
    a1 = v41;
    MEMORY[0x1BFB2AA50](v25, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v26 = sub_1BC8F6CB4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1BC8F6CA4();
  v30 = *(a1 + 32);
  MEMORY[0x1EEE9AC00](v29);
  v39[-2] = sub_1BC82F438;
  v39[-1] = a1;
  os_unfair_lock_lock(v30 + 4);
  v31 = v39[3];
  v32 = v40;
  sub_1BC82EFA0(v33);
  if (v31)
  {
    os_unfair_lock_unlock(v30 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v30 + 4);
    sub_1BC82F8EC(qword_1EDC1E000, &qword_1EBCF5910, &unk_1BC903510);
    v34 = sub_1BC8F6C94();
    v36 = v35;
    sub_1BC7C1744(v32, &qword_1EBCF5910, &unk_1BC903510);

    sub_1BC8F70F4();
    sub_1BC7D4C94(v34, v36);
    if (*(a1 + 64))
    {
      v37 = *(a1 + 64);

      sub_1BC8F8024();

      v38 = *(a1 + 64);
    }

    *(a1 + 64) = 0;
  }
}

uint64_t sub_1BC82BCC0(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  *(v1 + *(v3 + 152)) = 0;
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 160);
  swift_weakInit();
  OUTLINED_FUNCTION_80();
  v7 = *(v6 + 136);
  v8 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v8);
  (*(v9 + 32))(v1 + v7, a1);
  OUTLINED_FUNCTION_80();
  v11 = *(v10 + 144);
  sub_1BC8303A8();
  OUTLINED_FUNCTION_80();
  v13 = *(v12 + 160);
  swift_weakAssign();
  OUTLINED_FUNCTION_80();
  v15 = *(v14 + 152);
  v16 = *(v1 + v15);
  *(v1 + v15) = 0;

  return v1;
}

uint64_t sub_1BC82BDCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  sub_1BC8F7264();
  type metadata accessor for MessageAssetInfo();
  v5 = MEMORY[0x1E69695A8];
  sub_1BC7AAAD0(&unk_1EDC20FB0, MEMORY[0x1E69695A8]);
  sub_1BC7AAAD0(&unk_1EDC20FC0, v5);
  sub_1BC7AAAD0(&unk_1EDC20600, v5);
  sub_1BC7AAAD0(&qword_1EDC1F990, type metadata accessor for MessageAssetInfo);
  sub_1BC7AAAD0(&qword_1EDC1F998, type metadata accessor for MessageAssetInfo);
  KeyPath = swift_getKeyPath();

  v8 = sub_1BC82EAB0(v7, KeyPath);

  v9 = sub_1BC82BFE4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  v11 = *(v10 + 80);
  result = sub_1BC830400();
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  *a2 = v8;
  a2[1] = v9;
  v15 = a2 + *(v10 + 84);
  *v15 = v13;
  v15[8] = v14;
  return result;
}

uint64_t sub_1BC82BFE4()
{
  v1 = sub_1BC8F7264();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    do
    {
      (*(v2 + 16))(v5, v6 + *(*v6 + 136), v1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v7 + 16);
        sub_1BC7F7144();
        v7 = v11;
      }

      v8 = *(v7 + 16);
      if (v8 >= *(v7 + 24) >> 1)
      {
        sub_1BC7F7144();
        v7 = v12;
      }

      *(v7 + 16) = v8 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v5, v1);
      v9 = *(v6 + *(*v6 + 152));

      v6 = v9;
    }

    while (v9);
  }

  return v7;
}

void sub_1BC82C1C4(uint64_t a1)
{
  v80 = sub_1BC8F7264();
  v3 = *(v80 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v80);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v78 = &v73 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v73 - v10;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v74 = v1;
  v75 = a1;
  if (v13)
  {
    swift_beginAccess();
    v14 = *(*(a1 + 56) + 16);
    v15 = *(a1 + qword_1EDC2B1E8);
    v16 = v14 * v15;
    if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v17 = MEMORY[0x1E69E7CC0];
    v18 = v80;
    if (v12 < v16)
    {
      v19 = __OFSUB__(v16, v12);
      v20 = v16 - v12;
      if (v19)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v19 = __OFADD__(v20, v15);
      v21 = v20 + v15;
      if (v19)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v19 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (v19)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (!v15)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v79 = v3;
      if (v22 == 0x8000000000000000 && v15 == -1)
      {
        goto LABEL_56;
      }

      v24 = MEMORY[0x1E69E7CC0];
      v25 = v22 / v15;
      v26 = sub_1BC82BFE4();
      v27 = sub_1BC8101C8(v25, v26);
      v77 = v29;
      v31 = v30 >> 1;
      v32 = (v30 >> 1) - v28;
      if (__OFSUB__(v30 >> 1, v28))
      {
        goto LABEL_53;
      }

      if (v32)
      {
        v33 = v28;
        v73 = v27;
        v81 = v24;
        sub_1BC7DDB5C();
        if (v32 < 0)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          return;
        }

        v34 = v81;
        v3 = v79;
        v76 = v79 + 16;
        while (v33 < v31)
        {
          v35 = *(v3 + 72);
          (*(v3 + 16))(v7, &v77[v35 * v33], v18);
          v36 = v34;
          v81 = v34;
          v37 = v18;
          v38 = *(v34 + 16);
          if (v38 >= *(v34 + 24) >> 1)
          {
            sub_1BC7DDB5C();
            v3 = v79;
            v36 = v81;
          }

          *(v36 + 16) = v38 + 1;
          v34 = v36;
          (*(v3 + 32))(v36 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + v38 * v35, v7, v37);
          ++v33;
          v18 = v37;
          if (v31 == v33)
          {
            swift_unknownObjectRelease();
            a1 = v75;
            goto LABEL_33;
          }
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
      a1 = v75;
      v3 = v79;
    }
  }

  else
  {
    swift_beginAccess();
    v39 = *(*(a1 + 56) + 16);
    v19 = __OFSUB__(v39, v12);
    v40 = v39 - v12;
    if (v19)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v17 = MEMORY[0x1E69E7CC0];
    if (v40 <= 0)
    {
      v18 = v80;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
      v79 = v3;
      v42 = sub_1BC82BFE4();
      v43 = sub_1BC8101C8(v40, v42);
      v77 = v45;
      v47 = v46 >> 1;
      v48 = (v46 >> 1) - v44;
      if (__OFSUB__(v46 >> 1, v44))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (v48)
      {
        v49 = v44;
        v73 = v43;
        v81 = v41;
        sub_1BC7DDB5C();
        if (v48 < 0)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v34 = v81;
        v3 = v79;
        v76 = v79 + 16;
        do
        {
          if (v49 >= v47)
          {
            __break(1u);
            goto LABEL_45;
          }

          v50 = *(v3 + 72);
          v51 = v80;
          (*(v3 + 16))(v11, &v77[v50 * v49], v80);
          v52 = v34;
          v81 = v34;
          v53 = *(v34 + 16);
          if (v53 >= *(v34 + 24) >> 1)
          {
            sub_1BC7DDB5C();
            v3 = v79;
            v52 = v81;
          }

          *(v52 + 16) = v53 + 1;
          v34 = v52;
          (*(v3 + 32))(v52 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + v53 * v50, v11, v51);
          ++v49;
        }

        while (v47 != v49);
        swift_unknownObjectRelease();
        a1 = v75;
        v18 = v80;
LABEL_33:
        v17 = v34;
      }

      else
      {
        swift_unknownObjectRelease();
        v17 = MEMORY[0x1E69E7CC0];
        a1 = v75;
        v3 = v79;
        v18 = v80;
      }
    }
  }

  v54 = *(v17 + 16);
  if (v54)
  {
    v56 = *(v3 + 16);
    v55 = v3 + 16;
    v57 = *(v55 + 64);
    v73 = v17;
    v58 = v17 + ((v57 + 32) & ~v57);
    v59 = (v55 - 8);
    v60 = *(v55 + 56);
    v79 = v55;
    v76 = v60;
    v77 = v56;
    do
    {
      v61 = v78;
      (v77)(v78, v58, v18);
      swift_beginAccess();
      v62 = *(a1 + 56);
      v63 = sub_1BC83C928();
      LOBYTE(v62) = v64;
      v65 = *v59;
      (*v59)(v61, v18);
      if (v62)
      {
        v66 = *(a1 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        v82 = *(a1 + 56);
        v67 = v82;
        *(a1 + 56) = 0x8000000000000000;
        v68 = *(v67 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
        sub_1BC8F8734();
        v69 = v82;
        v70 = v76;
        v65((*(v82 + 48) + v63 * v76), v80);
        v71 = *(*(v69 + 56) + 8 * v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
        sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
        a1 = v75;
        sub_1BC8F8754();
        *(a1 + 56) = v69;
        swift_endAccess();
        sub_1BC82B328(v71);
        v18 = v80;
      }

      else
      {
        swift_endAccess();
        v70 = v76;
      }

      v58 += v70;
      --v54;
    }

    while (v54);
    v72 = *(v73 + 16) != 0;
  }
}

uint64_t sub_1BC82C814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  sub_1BC830400();
  v10 = sub_1BC8F7014();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  result = sub_1BC7C1744(v9, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (EnumTagSinglePayload != 1 && !*(a1 + 64))
  {
    v13 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;

    sub_1BC8333D4();
    v15 = *(a1 + 64);
    *(a1 + 64) = v16;
  }

  return result;
}

uint64_t sub_1BC82C9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BC8F86F4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC82CA90, 0, 0);
}

uint64_t sub_1BC82CA90()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  sub_1BC8F8B74();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_133(v2);
  *v3 = v4;
  v3[1] = sub_1BC82CB50;
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_13();

  return sub_1BC82D814();
}

uint64_t sub_1BC82CB50()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[3];
  if (v0)
  {

    v9 = *(v7 + 8);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v10 = OUTLINED_FUNCTION_30();
  v11(v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BC82CCC8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1BC82B494();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC82CD2C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_1BC82CE20;

  return v6(v2 + 16);
}

uint64_t sub_1BC82CE20()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC82CF18()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = *(*(*(v0 + 40) + 64) + 40);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v1;
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC82CF94()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  OUTLINED_FUNCTION_76();
  v3 = swift_allocError();
  OUTLINED_FUNCTION_54_1(v3, v4);
  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC82D014(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1BC82D100;

  return v6();
}

uint64_t sub_1BC82D100()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC82D1F8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC82D250()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  OUTLINED_FUNCTION_76();
  v3 = swift_allocError();
  OUTLINED_FUNCTION_54_1(v3, v4);
  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC82D2D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1BC82D3C4;

  return v6(v2 + 40);
}

uint64_t sub_1BC82D3C4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC82D4BC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 44);
  v2 = *(*(*(v0 + 16) + 64) + 40);
  *v2 = *(v0 + 40);
  *(v2 + 4) = v1;
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC82D540(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1BC82D634;

  return v6(v2 + 16);
}

uint64_t sub_1BC82D634()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC82D72C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  OUTLINED_FUNCTION_76();
  v3 = swift_allocError();
  OUTLINED_FUNCTION_54_1(v3, v4);
  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC82D7B8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for FTStoredMessage();
      result = sub_1BC8F7EB4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1BC82D814()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1BC8F86E4();
  *(v1 + 64) = v12;
  OUTLINED_FUNCTION_26(v12);
  *(v1 + 72) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1BC82D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[8];
  v14 = v10[9];
  v15 = v10[7];
  sub_1BC8F86F4();
  sub_1BC7AAAD0(&qword_1EDC210B8, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_30();
  sub_1BC8F8B54();
  sub_1BC7AAAD0(&unk_1EDC210C0, MEMORY[0x1E69E87E8]);
  sub_1BC8F8704();
  v16 = *(v14 + 8);
  v10[12] = v16;
  v10[13] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v13);
  v17 = *(MEMORY[0x1E69E8938] + 4);
  v18 = swift_task_alloc();
  v10[14] = v18;
  *v18 = v10;
  v18[1] = sub_1BC82DA7C;
  v19 = v10[11];
  v20 = v10[7];
  OUTLINED_FUNCTION_111();

  return MEMORY[0x1EEE6DE58](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1BC82DA7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    OUTLINED_FUNCTION_11();

    return v18();
  }
}

uint64_t sub_1BC82DC14()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_27();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1BC82DC78()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC823970(v3, v4, v5);
}

uint64_t sub_1BC82DD08()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82D014(v3, v4);
}

uint64_t sub_1BC82DD94()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0248;

  return sub_1BC813F88(v2, v0);
}

uint64_t sub_1BC82DE24()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82CD2C(v3, v4);
}

uint64_t sub_1BC82DEB0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16(v1);

  return v4(v3);
}

void sub_1BC82DF40(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1BC81431C(a1);
}

uint64_t sub_1BC82DF7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BC8DC0B8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BC82DFF8(v6);
  return sub_1BC8F8664();
}

void sub_1BC82DFF8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1BC8F8A44();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1BC82D7B8(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1BC82E1C0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1BC82E0D8(0, v3, 1, a1);
  }
}

void sub_1BC82E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    type metadata accessor for FTStoredMessage();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v27 = v7;
      do
      {
        v11 = *v7;
        v12 = v9;
        v13 = v11;
        static FTStoredMessage.< infix(_:_:)(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v22 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v22;
        v7 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 = v27 + 8;
      --v8;
      if (v4 != v25)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BC82E1C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v130 = a3;
  v5 = v4;
  v122 = a1;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v132 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v110 = v8 + 16;
      v109 = *(v8 + 2);
      while (v109 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_130;
        }

        v111 = v8;
        v8 += 16 * v109;
        v112 = *v8;
        v113 = &v110[2 * v109];
        v114 = *(v113 + 1);
        sub_1BC82E804((*v130 + 8 * *v8), (*v130 + 8 * *v113), (*v130 + 8 * v114), v132);
        if (v5)
        {
          break;
        }

        if (v114 < v112)
        {
          goto LABEL_118;
        }

        if (v109 - 2 >= *v110)
        {
          goto LABEL_119;
        }

        *v8 = v112;
        *(v8 + 1) = v114;
        v115 = *v110 - v109;
        if (*v110 < v109)
        {
          goto LABEL_120;
        }

        v109 = *v110 - 1;
        sub_1BC8D950C(v113 + 16, v115, v113);
        *v110 = v109;
        v8 = v111;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_1BC8D94F4(v8);
    goto LABEL_94;
  }

  v117 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v118 = v8;
    v133 = v5;
    v11 = v7 + 1;
    v12 = *(*v130 + 8 * v10);
    v13 = (*v130 + 8 * v7);
    v14 = 8 * v7;
    v16 = *v13;
    v15 = v13 + 2;
    v126 = v6;
    type metadata accessor for FTStoredMessage();
    v8 = v9;
    v17 = v12;
    v5 = v16;
    static FTStoredMessage.< infix(_:_:)(v17, v5, v18, v19, v20, v21, v22, v23, v116, v117, v118, v121, v122, v123, v126, v130, v131, v133, v134, v135);
    v25 = v24;

    v26 = v127;
    v121 = v9;
    v27 = v9 + 2;
    do
    {
      v28 = v27;
      if (v11 + 1 >= v26)
      {
        v11 = v26;
        if (v25)
        {
          goto LABEL_8;
        }

LABEL_20:
        v5 = v132;
        v8 = v119;
        v9 = v121;
        v10 = v11;
        goto LABEL_22;
      }

      ++v11;
      v29 = *(v15 - 1);
      v30 = *v15;
      v5 = v29;
      static FTStoredMessage.< infix(_:_:)(v30, v5, v31, v32, v33, v34, v35, v36, v116, v117, v119, v121, v122, v124, v127, v130, v131, v132, v134, v135);
      v8 = (v37 & 1);

      ++v15;
      v27 = (v28 + 1);
      v26 = v127;
    }

    while ((v25 & 1) == v8);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v121;
    if (v11 < v121)
    {
      goto LABEL_124;
    }

    v10 = v11;
    if (v121 >= v11)
    {
      v5 = v132;
      v8 = v119;
    }

    else
    {
      v38 = v26 >= v28 ? v28 : v26;
      v39 = 8 * v38 - 8;
      v40 = v11;
      v41 = v121;
      v5 = v132;
      v8 = v119;
      do
      {
        if (v41 != --v40)
        {
          v42 = *v130;
          if (!*v130)
          {
            goto LABEL_131;
          }

          v43 = *(v42 + v14);
          *(v42 + v14) = *(v42 + v39);
          *(v42 + v39) = v43;
        }

        ++v41;
        v39 -= 8;
        v14 += 8;
      }

      while (v41 < v40);
    }

LABEL_22:
    v44 = v130[1];
    if (v10 < v44)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (v10 - v9 < v117)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    v129 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = *(v8 + 2);
      sub_1BC7F6FCC();
      v8 = v107;
    }

    v65 = *(v8 + 2);
    v66 = v65 + 1;
    v132 = v5;
    if (v65 >= *(v8 + 3) >> 1)
    {
      sub_1BC7F6FCC();
      v8 = v108;
    }

    *(v8 + 2) = v66;
    v5 = v8 + 32;
    v67 = &v8[16 * v65 + 32];
    *v67 = v9;
    *(v67 + 1) = v10;
    v123 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if (v65)
    {
      while (1)
      {
        v68 = v66 - 1;
        v69 = &v5[16 * v66 - 16];
        v70 = &v8[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v71 = *(v8 + 4);
          v72 = *(v8 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_59:
          if (v74)
          {
            goto LABEL_109;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_112;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_117;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v66 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v66 < 2)
        {
          goto LABEL_111;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_74:
        if (v89)
        {
          goto LABEL_114;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_116;
        }

        if (v96 < v88)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v68 - 1 >= v66)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v130)
        {
          goto LABEL_129;
        }

        v100 = &v5[16 * v68 - 16];
        v101 = *v100;
        v102 = &v5[16 * v68];
        v103 = *(v102 + 1);
        sub_1BC82E804((*v130 + 8 * *v100), (*v130 + 8 * *v102), (*v130 + 8 * v103), v123);
        if (v132)
        {
          goto LABEL_102;
        }

        if (v103 < v101)
        {
          goto LABEL_104;
        }

        v104 = v8;
        v8 = *(v8 + 2);
        if (v68 > v8)
        {
          goto LABEL_105;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        if (v68 >= v8)
        {
          goto LABEL_106;
        }

        v66 = (v8 - 1);
        sub_1BC8D950C(v102 + 16, &v8[-v68 - 1], &v5[16 * v68]);
        *(v104 + 2) = v8 - 1;
        v105 = v8 > 2;
        v8 = v104;
        if (!v105)
        {
          goto LABEL_88;
        }
      }

      v75 = &v5[16 * v66];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_107;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_108;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_110;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_113;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_121;
        }

        if (v73 < v99)
        {
          v68 = v66 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v129;
    v6 = v130[1];
    v5 = v132;
    if (v129 >= v6)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v9, v117))
  {
    goto LABEL_125;
  }

  if (&v9[v117] >= v44)
  {
    v45 = v130[1];
  }

  else
  {
    v45 = &v9[v117];
  }

  if (v45 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v45)
  {
    goto LABEL_39;
  }

  v120 = v8;
  v132 = v5;
  v46 = *v130;
  type metadata accessor for FTStoredMessage();
  v47 = v46 + 8 * v10 - 8;
  v121 = v9;
  v48 = &v9[-v10];
  v125 = v45;
LABEL_32:
  v128 = v10;
  v49 = *(v46 + 8 * v10);
  v50 = v48;
  v51 = v47;
  while (1)
  {
    v52 = *v51;
    v53 = v49;
    v54 = v52;
    static FTStoredMessage.< infix(_:_:)(v53, v54, v55, v56, v57, v58, v59, v60, v116, v117, v120, v121, v122, v125, v128, v130, v131, v132, v134, v135);
    v62 = v61;

    if ((v62 & 1) == 0)
    {
LABEL_37:
      v10 = v128 + 1;
      v47 += 8;
      --v48;
      if (v128 + 1 == v125)
      {
        v10 = v125;
        v5 = v132;
        v8 = v120;
        v9 = v121;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v46)
    {
      break;
    }

    v63 = *v51;
    v49 = *(v51 + 8);
    *v51 = v49;
    *(v51 + 8) = v63;
    v51 -= 8;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1BC82E804(char *a1, char *a2, void **a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1BC7DD644(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      type metadata accessor for FTStoredMessage();
      v15 = v13;
      v16 = v14;
      static FTStoredMessage.< infix(_:_:)(v15, v16, v17, v18, v19, v20, v21, v22, v51, v52, v53, v54, v56, v57, v58, v59, v60, v61, v62, v63);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = v6;
      v26 = v7 == v6++;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v25 = v4;
    v26 = v7 == v4++;
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v25;
    goto LABEL_13;
  }

  sub_1BC7DD644(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v55 = v4;
LABEL_15:
  v27 = v6 - 1;
  v28 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v30 = v6;
    v31 = v28;
    v32 = v7;
    v33 = *(v10 - 1);
    v34 = v27;
    v35 = *v27;
    type metadata accessor for FTStoredMessage();
    v36 = v33;
    v37 = v35;
    static FTStoredMessage.< infix(_:_:)(v36, v37, v38, v39, v40, v41, v42, v43, v51, v52, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    v45 = v44;

    v5 = v31;
    v46 = v31 + 1;
    if (v45)
    {
      v47 = v34;
      v6 = v34;
      v7 = v32;
      v4 = v55;
      if (v46 != v30)
      {
        *v5 = *v47;
        v6 = v47;
      }

      goto LABEL_15;
    }

    if (v10 != v46)
    {
      *v31 = *(v10 - 1);
    }

    v28 = v31 - 1;
    --v10;
    v27 = v34;
    v7 = v32;
    v4 = v55;
  }

LABEL_28:
  v48 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v48])
  {
    memmove(v6, v4, 8 * v48);
  }

  return 1;
}

unint64_t sub_1BC82EA28(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1BFB2AA70](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      while (v4 > v3)
      {
        v5 = 0;
        MEMORY[0x1BFB2AA70](&v5, 8);
        v3 = v5 * v2;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC82EAB0(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for MessageAssetInfo();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BC8F7264();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5918, &qword_1BC902AC0);
  result = sub_1BC8F87B4();
  v10 = 0;
  v41 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = result + 64;
  v34 = v6 + 16;
  v37 = v6;
  v32[1] = v6 + 32;
  v18 = result;
  v35 = result;
  if (v16)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v16));
      v43 = (v16 - 1) & v16;
LABEL_10:
      v22 = v19 | (v10 << 6);
      v23 = v41;
      v24 = *(v41 + 48);
      v25 = v36;
      v26 = v37;
      v44 = *(v37 + 72) * v22;
      v27 = v38;
      (*(v37 + 16))(v36, v24 + v44, v38);
      v45 = *(*(v23 + 56) + 8 * v22);

      swift_getAtKeyPath();

      *(v33 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v18 = v35;
      (*(v26 + 32))(*(v35 + 48) + v44, v25, v27);
      v28 = *(v18 + 56) + *(v40 + 72) * v22;
      result = sub_1BC8303A8();
      v29 = *(v18 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v18 + 16) = v31;
      v16 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v17)
      {

        return v18;
      }

      v21 = *(v12 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BC82EDD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BC8F70C4();
  [a3 setTranscript_];
}

void sub_1BC82EE28(uint64_t a1, unint64_t a2, void *a3, SEL *a4)
{
  v8 = sub_1BC8F70C4();
  sub_1BC7D4C94(a1, a2);
  [a3 *a4];
}

void (*sub_1BC82EE9C(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1BC82D7AC(a3);
  sub_1BC8E2358(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1BFB29A00](a2, a3);
  }

  *a1 = v7;
  return sub_1BC82EF28;
}

unint64_t sub_1BC82EF30()
{
  result = qword_1EBCF58E8;
  if (!qword_1EBCF58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58E8);
  }

  return result;
}

void sub_1BC82EF84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BC82A8E8();
}

uint64_t sub_1BC82F06C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1BC82F0B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1BC8F8504();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BC7C0454(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for FTStoredMessage();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1BC82F8EC(&qword_1EBCF5958, &qword_1EBCF5950, &unk_1BC902C10);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5950, &unk_1BC902C10);
          v9 = sub_1BC82EE9C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC82F240(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1BC8F84D4();
  v4 = *(a1 + 36);
  return result;
}

void *sub_1BC82F280@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1BC850194(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1BC82F2AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC82A89C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BC82F2D8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8501CC(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void sub_1BC82F308(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1BC82C1C4(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
  }
}

uint64_t sub_1BC82F38C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC82C9D0(v3, v4, v5, v6);
}

uint64_t sub_1BC82F48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAssetInfo();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC82F50C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0168;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC82285C(v3, v4, v5);
}

uint64_t sub_1BC82F59C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82D540(v3, v4);
}

uint64_t sub_1BC82F644()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC821AB8(v3, v4, v5);
}

uint64_t sub_1BC82F6D4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC8215A0(v3, v4, v5, v6);
}

uint64_t sub_1BC82F764()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC814418(v3, v4, v5);
}

uint64_t sub_1BC82F830(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_1BC82F874(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BC8F8504();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x1EEE6A410](0, v2, 0, a1);
}

unint64_t sub_1BC82F8D8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1BC7B0EFC(result);
  }

  return result;
}

uint64_t sub_1BC82F8EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_121();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC82F950()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC7BA51C(v3, v4);
}

uint64_t objectdestroy_127Tm()
{
  v1 = (type metadata accessor for MessageStoreFetchRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 8))(v0 + v3);
  sub_1BC7B0EFC(*(v0 + v3 + v1[7]));
  v8 = *(v0 + v3 + v1[10] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}
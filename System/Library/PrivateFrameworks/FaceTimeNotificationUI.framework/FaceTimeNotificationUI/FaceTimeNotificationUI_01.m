void *sub_24AA2D3F0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AA400BC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856A8, &qword_24AAB7508);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24AA2D4F8()
{
  v1 = v0;
  v2 = type metadata accessor for CustomViewControl(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v7 = sub_24AAB3A64();
  v8 = sub_24AAB5144();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v123 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
    *(v9 + 22) = 2048;
    *(v9 + 24) = 435;
    _os_log_impl(&dword_24AA0F000, v7, v8, "[%s:%s:%ld] Generating feature controls", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v10, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  sub_24AAB2E94();
  v11 = sub_24AAB2E84();
  v12 = sub_24AAB2E74();

  v13 = sub_24AAB3A64();
  v14 = sub_24AAB5144();
  v15 = os_log_type_enabled(v13, v14);
  if (v12)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v123 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
      *(v16 + 22) = 2048;
      *(v16 + 24) = 438;
      _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] More menu enabled", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v17, -1, -1);
      MEMORY[0x24C226630](v16, -1, -1);
    }

    sub_24AA2E894();
    swift_getKeyPath();
    *&v123 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v18 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel);

      v20 = sub_24AAB3A64();
      v21 = sub_24AAB5144();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v123 = v23;
        *v22 = 136315650;
        *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
        *(v22 + 22) = 2048;
        *(v22 + 24) = 442;
        _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] More menu view model available, creating more button", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v23, -1, -1);
        MEMORY[0x24C226630](v22, -1, -1);
      }

      v24 = &v5[v2[6]];
      sub_24AAB2B24();
      v25 = qword_27EF84C70;

      if (v25 != -1)
      {
        swift_once();
      }

      v27 = qword_27EF919F8;
      v26 = unk_27EF91A00;
      v28 = qword_27EF91A08;
      v29 = unk_27EF91A10;
      v5[v2[8]] = 0;
      v5[v2[9]] = 0;
      *v5 = xmmword_24AAB7060;
      v5[16] = 1;
      *(v5 + 3) = 0;
      *(v5 + 4) = 0xE000000000000000;
      v30 = &v5[v2[7]];
      *v30 = v27;
      v30[1] = v26;
      v30[2] = v28;
      v30[3] = v29;
      v31 = &v5[v2[10]];
      *v31 = 0x7475425F65726F4DLL;
      *(v31 + 1) = 0xEB000000006E6F74;
      v32 = &v5[v2[11]];
      *v32 = sub_24AA42D04;
      v32[1] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85698, &qword_24AAB74D8);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_24AAB7070;
      *(v33 + 56) = v2;
      *(v33 + 64) = sub_24AA42080(&qword_27EF85680, type metadata accessor for CustomViewControl);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 32));
      sub_24AA42D0C(v5, boxed_opaque_existential_1Tm, type metadata accessor for CustomViewControl);

      sub_24AA1B750(v28, v29);

      sub_24AA42D74(v5, type metadata accessor for CustomViewControl);
    }

    else
    {
      v55 = sub_24AAB3A64();
      v56 = sub_24AAB5144();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v123 = v58;
        *v57 = 136315650;
        *(v57 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
        *(v57 + 22) = 2048;
        *(v57 + 24) = 449;
        _os_log_impl(&dword_24AA0F000, v55, v56, "[%s:%s:%ld] More menu view model not available", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v58, -1, -1);
        MEMORY[0x24C226630](v57, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (v15)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v123 = v36;
      *v35 = 136315650;
      *(v35 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
      *(v35 + 22) = 2048;
      *(v35 + 24) = 453;
      _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] More menu disabled, using legacy controls", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v36, -1, -1);
      MEMORY[0x24C226630](v35, -1, -1);
    }

    v37 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v38 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    *&v123 = v37;
    v39 = *(v38 + 8);
    v40 = sub_24AAB3534();
    v122[0] = v6;
    if ((v40 & 1) != 0 || (v122[1] = v37, v41 = sub_24AAB35A4(), v42 = [v41 isFaceTimeProvider], v41, v42))
    {
      v43 = sub_24AAB39C4();
      v44 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
      v45 = sub_24AAB33C4();
      LOBYTE(v44) = sub_24AAB3874();
      v46 = sub_24AAB3914();
      v47 = type metadata accessor for ShareControl(0);
      *(&v124 + 1) = v47;
      v125 = sub_24AA42080(&qword_27EF85690, type metadata accessor for ShareControl);
      v48 = __swift_allocate_boxed_opaque_existential_1Tm(&v123);
      *v48 = v43 & 1;
      *(v48 + 1) = v45 & 1;
      *(v48 + 1) = xmmword_24AAB7030;
      *(v48 + 24) = 2;
      v49 = v48 + v47[7];
      sub_24AAB2B24();
      v50 = (v48 + v47[8]);
      *v50 = 0xD000000000000028;
      v50[1] = 0x800000024AAD1D60;
      v51 = (v48 + v47[9]);
      v52 = sub_24AAB4A44();
      v53 = sub_24AAB4A44();
      v54 = sub_24AAB4A14();
      *v51 = 0;
      v51[1] = v52;
      v51[2] = v53;
      v51[3] = v54;
      *(v48 + v47[10]) = (v44 & 1) == 0;
      *(v48 + v47[11]) = v46 & 1;
      *(v48 + v47[12]) = 0;
    }

    else
    {
      v59 = type metadata accessor for KeypadControl(0);
      *(&v124 + 1) = v59;
      v125 = sub_24AA42080(&qword_27EF85678, type metadata accessor for KeypadControl);
      v60 = __swift_allocate_boxed_opaque_existential_1Tm(&v123);
      *v60 = xmmword_24AAB6FD0;
      *(v60 + 16) = 2;
      v61 = v60 + v59[5];
      sub_24AAB2B24();
      v62 = (v60 + v59[6]);
      *v62 = 0xD000000000000014;
      v62[1] = 0x800000024AAD1D00;
      v63 = (v60 + v59[7]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v64 = unk_27EF91A00;
      v65 = qword_27EF91A08;
      v66 = unk_27EF91A10;
      *v63 = qword_27EF919F8;
      v63[1] = v64;
      v63[2] = v65;
      v63[3] = v66;
      *(v60 + v59[8]) = 1;
      *(v60 + v59[9]) = 0;

      sub_24AA1B750(v65, v66);
    }

    v33 = sub_24AA400BC(0, 1, 1, MEMORY[0x277D84F90]);
    v68 = *(v33 + 16);
    v67 = *(v33 + 24);
    if (v68 >= v67 >> 1)
    {
      v33 = sub_24AA400BC((v67 > 1), v68 + 1, 1, v33);
    }

    *(v33 + 16) = v68 + 1;
    v69 = v33 + 40 * v68;
    v70 = v123;
    v71 = v124;
    *(v69 + 64) = v125;
    *(v69 + 32) = v70;
    *(v69 + 48) = v71;
    if (sub_24AA2E894())
    {
      v72 = sub_24AAB3A64();
      v73 = sub_24AAB5144();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v123 = v75;
        *v74 = 136315650;
        *(v74 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
        *(v74 + 12) = 2080;
        *(v74 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
        *(v74 + 22) = 2048;
        *(v74 + 24) = 466;
        _os_log_impl(&dword_24AA0F000, v72, v73, "[%s:%s:%ld] Call eligible for wait on hold, appending control", v74, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v75, -1, -1);
        MEMORY[0x24C226630](v74, -1, -1);
      }

      v76 = type metadata accessor for WaitOnHoldControl(0);
      *(&v124 + 1) = v76;
      v125 = sub_24AA42080(&qword_27EF85688, type metadata accessor for WaitOnHoldControl);
      v77 = __swift_allocate_boxed_opaque_existential_1Tm(&v123);
      *v77 = xmmword_24AAB7040;
      *(v77 + 16) = 2;
      v78 = v77 + v76[5];
      sub_24AAB2B24();
      v79 = (v77 + v76[6]);
      *v79 = 0xD000000000000019;
      v79[1] = 0x800000024AAD1D40;
      v80 = (v77 + v76[7]);
      v81 = sub_24AAB4A44();
      v82 = sub_24AAB4A44();
      v83 = sub_24AAB4A14();
      *v80 = 0;
      v80[1] = v81;
      v80[2] = v82;
      v80[3] = v83;
      *(v77 + v76[8]) = 0;
      *(v77 + v76[9]) = 0;
      v85 = *(v33 + 16);
      v84 = *(v33 + 24);
      if (v85 >= v84 >> 1)
      {
        v33 = sub_24AA400BC((v84 > 1), v85 + 1, 1, v33);
      }

      *(v33 + 16) = v85 + 1;
      v86 = v33 + 40 * v85;
      v87 = v123;
      v88 = v124;
      *(v86 + 64) = v125;
      *(v86 + 32) = v87;
      *(v86 + 48) = v88;
    }

    v89 = sub_24AAB3A64();
    v90 = sub_24AAB5144();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v123 = v92;
      *v91 = 136315650;
      *(v91 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
      *(v91 + 12) = 2080;
      *(v91 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
      *(v91 + 22) = 2048;
      *(v91 + 24) = 471;
      _os_log_impl(&dword_24AA0F000, v89, v90, "[%s:%s:%ld] Appending live translation control", v91, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v92, -1, -1);
      MEMORY[0x24C226630](v91, -1, -1);
    }

    swift_getKeyPath();
    *&v123 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v93 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
    swift_beginAccess();
    if (*(v1 + v93))
    {
      v94 = *(v1 + v93);

      v95 = sub_24AA1FBC4();
      sub_24AA97C60(v95, &v123);
    }

    else
    {
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
    }

    v97 = *(v33 + 16);
    v96 = *(v33 + 24);
    if (v97 >= v96 >> 1)
    {
      v33 = sub_24AA400BC((v96 > 1), v97 + 1, 1, v33);
    }

    *(v33 + 16) = v97 + 1;
    v98 = v33 + 40 * v97;
    v99 = v123;
    v100 = v124;
    *(v98 + 64) = v125;
    *(v98 + 32) = v99;
    *(v98 + 48) = v100;
    swift_getKeyPath();
    *&v123 = v1;
    sub_24AAB2CF4();

    v101 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);
    if (v101)
    {
      swift_getKeyPath();
      *&v123 = v101;
      sub_24AA42080(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);

      sub_24AAB2CF4();

      if (*(v101 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord) == 1)
      {
        v102 = sub_24AAB3A64();
        v103 = sub_24AAB5144();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *&v123 = v105;
          *v104 = 136315650;
          *(v104 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v123);
          *(v104 + 12) = 2080;
          *(v104 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v123);
          *(v104 + 22) = 2048;
          *(v104 + 24) = 477;
          _os_log_impl(&dword_24AA0F000, v102, v103, "[%s:%s:%ld] Appending call recording control", v104, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v105, -1, -1);
          MEMORY[0x24C226630](v104, -1, -1);
        }

        *(&v124 + 1) = v2;
        v125 = sub_24AA42080(&qword_27EF85680, type metadata accessor for CustomViewControl);
        v106 = __swift_allocate_boxed_opaque_existential_1Tm(&v123);
        v107 = v106 + v2[6];
        sub_24AAB2B24();
        v108 = qword_27EF84C70;

        if (v108 != -1)
        {
          swift_once();
        }

        v109 = qword_27EF919F8;
        v110 = unk_27EF91A00;
        v111 = qword_27EF91A08;
        v112 = unk_27EF91A10;
        *(v106 + v2[8]) = 0;
        *(v106 + v2[9]) = 0;
        *v106 = xmmword_24AAB7050;
        *(v106 + 16) = 1;
        v106[3] = 0;
        v106[4] = 0xE000000000000000;
        v113 = (v106 + v2[7]);
        *v113 = v109;
        v113[1] = v110;
        v113[2] = v111;
        v113[3] = v112;
        v114 = (v106 + v2[10]);
        *v114 = 0x4345525F4C4C4143;
        v114[1] = 0xEB0000000044524FLL;
        v115 = (v106 + v2[11]);
        *v115 = sub_24AA42CFC;
        v115[1] = v101;

        sub_24AA1B750(v111, v112);
        v117 = *(v33 + 16);
        v116 = *(v33 + 24);
        if (v117 >= v116 >> 1)
        {
          v33 = sub_24AA400BC((v116 > 1), v117 + 1, 1, v33);
        }

        *(v33 + 16) = v117 + 1;
        v118 = v33 + 40 * v117;
        v119 = v123;
        v120 = v124;
        *(v118 + 64) = v125;
        *(v118 + 32) = v119;
        *(v118 + 48) = v120;
      }

      else
      {
      }
    }
  }

  return v33;
}

uint64_t sub_24AA2E894()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 1001;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Checking if call is eligible for wait on hold", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v7 = [v6 waitOnHoldEnabled];

  if (!v7)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  v31 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (!*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController) || (v8 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call), objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_12:
    v20 = sub_24AAB3A64();
    v21 = sub_24AAB5144();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 1008;
      _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] Wait on hold not enabled or missing dependencies", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v23, -1, -1);
      MEMORY[0x24C226630](v22, -1, -1);
    }

    return 0;
  }

  v10 = v9;

  swift_unknownObjectRetain();
  if ((sub_24AAB2EA4() & 1) == 0)
  {
    v14 = sub_24AAB3A64();
    v24 = sub_24AAB5144();
    if (os_log_type_enabled(v14, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 1014;
      v27 = "[%s:%s:%ld] Wait on hold controller does not have available assets";
LABEL_21:
      _os_log_impl(&dword_24AA0F000, v14, v24, v27, v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      v28 = v25;
LABEL_22:
      MEMORY[0x24C226630](v28, -1, -1);
    }

LABEL_23:

    swift_unknownObjectRelease();

    return 0;
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 currentAudioAndVideoCallCount];

  if (v12 != 1)
  {
    v14 = sub_24AAB3A64();
    v24 = sub_24AAB5144();
    if (os_log_type_enabled(v14, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 1020;
      v27 = "[%s:%s:%ld] Multiple calls present, wait on hold not supported";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v13 = [v10 smartHoldingAvailability];
  v14 = sub_24AAB3A64();
  v15 = sub_24AAB5144();
  v16 = os_log_type_enabled(v14, v15);
  if (v13 != 1)
  {
    if (!v16)
    {
      goto LABEL_23;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 1025;
    _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Smart holding not available for this call", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    v28 = v29;
    goto LABEL_22;
  }

  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v31);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1D90, &v31);
    *(v17 + 22) = 2048;
    *(v17 + 24) = 1029;
    _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Call is eligible for wait on hold", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v17, -1, -1);
  }

  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_24AA2F050(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MoreMenuButton();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = a2;
  v8 = v7 + *(v5 + 20);
  *v8 = xmmword_24AAB7080;
  v8[16] = 2;
  v9 = type metadata accessor for MoreMenuControl(0);
  v10 = v9[5];

  sub_24AAB2B24();
  v11 = &v8[v9[6]];
  *v11 = 0x73697370696C6C65;
  *(v11 + 1) = 0xE800000000000000;
  v12 = v9[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v13 = &v8[v12];
  v14 = unk_27EF91A00;
  v15 = qword_27EF91A08;
  v16 = unk_27EF91A10;
  *v13 = qword_27EF919F8;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  v8[v9[8]] = 0;
  v8[v9[9]] = 0;
  *(v7 + *(v3 + 24)) = 0x4041800000000000;
  v17 = v7 + *(v3 + 28);
  v20[15] = 0;

  sub_24AA1B750(v15, v16);
  sub_24AAB4B54();
  v18 = v21;
  *v17 = v20[16];
  *(v17 + 1) = v18;
  sub_24AA42080(&qword_27EF856A0, type metadata accessor for MoreMenuButton);
  return sub_24AAB4BD4();
}

void sub_24AA2F244()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v19);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD2090, &v19);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 485;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Making waveform if needed", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  swift_unknownObjectRetain();
  if (([v8 isVideo]& 1) != 0 || (swift_getKeyPath(), v19 = v1, sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel), sub_24AAB2CF4(), , *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel)))
  {
    swift_unknownObjectRelease();
LABEL_7:
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v19);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD2090, &v19);
      *(v11 + 22) = 2048;
      *(v11 + 24) = 491;
      _os_log_impl(&dword_24AA0F000, v9, v10, "[%s:%s:%ld] Not creating waveform - video call or already exists", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v12, -1, -1);
      MEMORY[0x24C226630](v11, -1, -1);
    }

    return;
  }

  v13 = sub_24AAB3A64();
  v14 = sub_24AAB5144();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v19);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD2090, &v19);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 488;
    _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] Creating waveform view model for non-video call", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v16, -1, -1);
    MEMORY[0x24C226630](v15, -1, -1);
  }

  v17 = objc_allocWithZone(type metadata accessor for AudioPowerSpectrumViewModel());
  swift_unknownObjectRetain();
  v18 = sub_24AA68A88(v8);
  sub_24AA1E39C(v18);
  swift_unknownObjectRelease();
}

void sub_24AA2F6C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v174 - v6;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  sub_24AA15F10(*a1, v8, *(a1 + 16));
  sub_24AA15F10(v9, v8, v10);
  v12 = sub_24AAB3A64();
  v13 = sub_24AAB5144();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    LODWORD(v175) = v13;
    v15 = v14;
    v176 = swift_slowAlloc();
    v180 = v176;
    *v15 = 136315906;
    *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v180);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v180);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 496;
    *(v15 + 32) = 2080;
    v177 = v9;
    v178 = v8;
    v179 = v10;
    sub_24AA15F10(v9, v8, v10);
    v16 = sub_24AAB4F44();
    v18 = sub_24AA406B4(v16, v17, &v180);

    *(v15 + 34) = v18;
    sub_24AA15ED0(v9, v8, v10);
    sub_24AA15ED0(v9, v8, v10);
    _os_log_impl(&dword_24AA0F000, v12, v175, "[%s:%s:%ld] Performing action: %s", v15, 0x2Au);
    v19 = v176;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v19, -1, -1);
    MEMORY[0x24C226630](v15, -1, -1);

    if (v10)
    {
LABEL_3:
      if (v10 == 2 && v9 <= 0x1A)
      {
        switch(v9)
        {
          case 1uLL:
            v107 = sub_24AAB3A64();
            v108 = sub_24AAB5144();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v177 = v110;
              *v109 = 136315650;
              *(v109 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v109 + 12) = 2080;
              *(v109 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v109 + 22) = 2048;
              *(v109 + 24) = 596;
              _os_log_impl(&dword_24AA0F000, v107, v108, "[%s:%s:%ld] Answer as audio action", v109, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v110, -1, -1);
              MEMORY[0x24C226630](v109, -1, -1);
            }

            sub_24AA37734();
            return;
          case 2uLL:
            v79 = sub_24AAB3A64();
            v80 = sub_24AAB5144();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v177 = v82;
              *v81 = 136315650;
              *(v81 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v81 + 12) = 2080;
              *(v81 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v81 + 22) = 2048;
              *(v81 + 24) = 512;
              _os_log_impl(&dword_24AA0F000, v79, v80, "[%s:%s:%ld] Decline action", v81, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v82, -1, -1);
              MEMORY[0x24C226630](v81, -1, -1);
            }

            swift_getKeyPath();
            v177 = v2;
            sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
            sub_24AAB2CF4();

            v83 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
            swift_beginAccess();
            v84 = *(v2 + v83);
            if (v84)
            {
              v85 = *(v2 + v83);

              v86 = sub_24AAB3A64();
              v87 = sub_24AAB5144();
              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                v180 = v89;
                *v88 = 136315650;
                *(v88 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v180);
                *(v88 + 12) = 2080;
                *(v88 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v180);
                *(v88 + 22) = 2048;
                *(v88 + 24) = 514;
                _os_log_impl(&dword_24AA0F000, v86, v87, "[%s:%s:%ld] Using call screening for decline", v88, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x24C226630](v89, -1, -1);
                MEMORY[0x24C226630](v88, -1, -1);
              }

              v90 = sub_24AAB50F4();
              (*(*(v90 - 8) + 56))(v7, 1, 1, v90);
              sub_24AAB50C4();

              v91 = sub_24AAB50B4();
              v92 = swift_allocObject();
              v93 = MEMORY[0x277D85700];
              v92[2] = v91;
              v92[3] = v93;
              v92[4] = v84;
              v92[5] = v2;
              sub_24AA330D4(0, 0, v7, &unk_24AAB7350, v92);
            }

            else
            {
              v163 = sub_24AAB3A64();
              v164 = sub_24AAB5144();
              if (os_log_type_enabled(v163, v164))
              {
                v165 = swift_slowAlloc();
                v166 = swift_slowAlloc();
                v180 = v166;
                *v165 = 136315650;
                *(v165 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v180);
                *(v165 + 12) = 2080;
                *(v165 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v180);
                *(v165 + 22) = 2048;
                *(v165 + 24) = 528;
                _os_log_impl(&dword_24AA0F000, v163, v164, "[%s:%s:%ld] Direct call decline", v165, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x24C226630](v166, -1, -1);
                MEMORY[0x24C226630](v165, -1, -1);
              }

              sub_24AA339E0();
              v167 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
              __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
              v168 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
              v169 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
              swift_getObjectType();
              sub_24AAB3374();
            }

            return;
          case 3uLL:
            v134 = sub_24AAB3A64();
            v135 = sub_24AAB5144();
            if (os_log_type_enabled(v134, v135))
            {
              v136 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v177 = v137;
              *v136 = 136315650;
              *(v136 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v136 + 12) = 2080;
              *(v136 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v136 + 22) = 2048;
              *(v136 + 24) = 505;
              _os_log_impl(&dword_24AA0F000, v134, v135, "[%s:%s:%ld] Decline with message action", v136, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v137, -1, -1);
              MEMORY[0x24C226630](v136, -1, -1);
            }

            sub_24AA339E0();
            goto LABEL_80;
          case 4uLL:
            v138 = sub_24AAB3A64();
            v139 = sub_24AAB5144();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v177 = v141;
              *v140 = 136315650;
              *(v140 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v140 + 12) = 2080;
              *(v140 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v140 + 22) = 2048;
              *(v140 + 24) = 533;
              _os_log_impl(&dword_24AA0F000, v138, v139, "[%s:%s:%ld] End call action", v140, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v141, -1, -1);
              MEMORY[0x24C226630](v140, -1, -1);
            }

            sub_24AA34330();
            return;
          case 5uLL:
            v94 = sub_24AAB3A64();
            v95 = sub_24AAB5144();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v177 = v97;
              *v96 = 136315650;
              *(v96 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v96 + 12) = 2080;
              *(v96 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v96 + 22) = 2048;
              *(v96 + 24) = 536;
              _os_log_impl(&dword_24AA0F000, v94, v95, "[%s:%s:%ld] Toggle mute action", v96, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v97, -1, -1);
              MEMORY[0x24C226630](v96, -1, -1);
            }

            v99 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
            v98 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
            swift_getObjectType();
            v100 = sub_24AAB38D4();
            *v101 = !*v101;
            v100(&v177, 0);
            return;
          case 6uLL:
            v111 = sub_24AAB3A64();
            v112 = sub_24AAB5144();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              v177 = v114;
              *v113 = 136315650;
              *(v113 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v113 + 12) = 2080;
              *(v113 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v113 + 22) = 2048;
              *(v113 + 24) = 549;
              _os_log_impl(&dword_24AA0F000, v111, v112, "[%s:%s:%ld] Upgrade to video action", v113, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v114, -1, -1);
              MEMORY[0x24C226630](v113, -1, -1);
            }

            sub_24AA35704();
            return;
          case 7uLL:
            v115 = sub_24AAB3A64();
            v116 = sub_24AAB5144();
            if (os_log_type_enabled(v115, v116))
            {
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              v177 = v118;
              *v117 = 136315650;
              *(v117 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v117 + 12) = 2080;
              *(v117 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v117 + 22) = 2048;
              *(v117 + 24) = 539;
              _os_log_impl(&dword_24AA0F000, v115, v116, "[%s:%s:%ld] Toggle keypad action", v117, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v118, -1, -1);
              MEMORY[0x24C226630](v117, -1, -1);
            }

            MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
            sub_24AAB3E24();

            return;
          case 8uLL:
            v146 = sub_24AAB3A64();
            v147 = sub_24AAB5144();
            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v177 = v149;
              *v148 = 136315650;
              *(v148 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v148 + 12) = 2080;
              *(v148 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v148 + 22) = 2048;
              *(v148 + 24) = 545;
              _os_log_impl(&dword_24AA0F000, v146, v147, "[%s:%s:%ld] Toggle RTT action", v148, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v149, -1, -1);
              MEMORY[0x24C226630](v148, -1, -1);
            }

            sub_24AA34C58();
LABEL_80:
            v43 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
            if (!v43)
            {
              return;
            }

            v150 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction + 8);
            v177 = v9;
            v178 = v8;
            v179 = 2;
            goto LABEL_18;
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
          case 0x13uLL:
          case 0x17uLL:
            goto LABEL_13;
          case 0xDuLL:
            v142 = sub_24AAB3A64();
            v143 = sub_24AAB5144();
            if (os_log_type_enabled(v142, v143))
            {
              v144 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              v177 = v145;
              *v144 = 136315650;
              *(v144 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v144 + 12) = 2080;
              *(v144 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v144 + 22) = 2048;
              *(v144 + 24) = 552;
              _os_log_impl(&dword_24AA0F000, v142, v143, "[%s:%s:%ld] Open share action", v144, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v145, -1, -1);
              MEMORY[0x24C226630](v144, -1, -1);
            }

            sub_24AA28638();
            return;
          case 0xEuLL:
            v56 = sub_24AAB3A64();
            v57 = sub_24AAB5144();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v177 = v59;
              *v58 = 136315650;
              *(v58 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v58 + 12) = 2080;
              *(v58 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v58 + 22) = 2048;
              *(v58 + 24) = 555;
              _os_log_impl(&dword_24AA0F000, v56, v57, "[%s:%s:%ld] Request to share action", v58, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v59, -1, -1);
              MEMORY[0x24C226630](v58, -1, -1);
            }

            sub_24AA35AB0();
            return;
          case 0xFuLL:
            v102 = sub_24AAB3A64();
            v103 = sub_24AAB5144();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v177 = v105;
              *v104 = 136315650;
              *(v104 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v104 + 12) = 2080;
              *(v104 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v104 + 22) = 2048;
              *(v104 + 24) = 558;
              _os_log_impl(&dword_24AA0F000, v102, v103, "[%s:%s:%ld] Swap calls action", v104, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v105, -1, -1);
              MEMORY[0x24C226630](v104, -1, -1);
            }

            v106 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
            __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
            sub_24AAB3364();
            return;
          case 0x10uLL:
            v60 = sub_24AAB3A64();
            v61 = sub_24AAB5144();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v177 = v63;
              *v62 = 136315650;
              *(v62 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v62 + 12) = 2080;
              *(v62 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v62 + 22) = 2048;
              *(v62 + 24) = 561;
              _os_log_impl(&dword_24AA0F000, v60, v61, "[%s:%s:%ld] Merge calls action", v62, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v63, -1, -1);
              MEMORY[0x24C226630](v62, -1, -1);
            }

            v64 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
            v65 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24);
            v66 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
            v67 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), v65);
            MEMORY[0x28223BE20](v67);
            *(&v174 - 4) = v65;
            *(&v174 - 3) = v66;
            *(&v174 - 2) = sub_24AA4509C;
            *(&v174 - 1) = v2;
            sub_24AAB3344();
            swift_getAssociatedTypeWitness();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
            v68 = sub_24AAB53D4();

            if (v68[2])
            {
              v175 = v11;
              v69 = v68[4];
              v70 = v68[5];
              swift_unknownObjectRetain();

              v71 = v64[4];
              __swift_project_boxed_opaque_existential_1(v64, v64[3]);
              v176 = v2;
              v73 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
              v72 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
              swift_getObjectType();
              swift_getObjectType();
              v174 = v70;
              if (sub_24AAB3404())
              {
                v74 = v64[4];
                __swift_project_boxed_opaque_existential_1(v64, v64[3]);
                sub_24AAB33D4();
                swift_unknownObjectRelease();
                return;
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v170 = sub_24AAB3A64();
            v171 = sub_24AAB5144();
            if (os_log_type_enabled(v170, v171))
            {
              v172 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              v177 = v173;
              *v172 = 136315650;
              *(v172 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v172 + 12) = 2080;
              *(v172 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v172 + 22) = 2048;
              *(v172 + 24) = 564;
              _os_log_impl(&dword_24AA0F000, v170, v171, "[%s:%s:%ld] Cannot merge calls - no other call or cannot group", v172, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v173, -1, -1);
              MEMORY[0x24C226630](v172, -1, -1);
            }

            break;
          case 0x11uLL:
            v49 = sub_24AAB3A64();
            v50 = sub_24AAB5144();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v177 = v52;
              *v51 = 136315650;
              *(v51 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v51 + 12) = 2080;
              *(v51 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v51 + 22) = 2048;
              *(v51 + 24) = 570;
              _os_log_impl(&dword_24AA0F000, v49, v50, "[%s:%s:%ld] Unhold call action", v51, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v52, -1, -1);
              MEMORY[0x24C226630](v51, -1, -1);
            }

            v53 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
            __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
            v54 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
            v55 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
            swift_getObjectType();
            sub_24AAB33F4();
            return;
          case 0x12uLL:
            v119 = sub_24AAB3A64();
            v120 = sub_24AAB5144();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              v177 = v122;
              *v121 = 136315650;
              *(v121 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v121 + 12) = 2080;
              *(v121 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v121 + 22) = 2048;
              *(v121 + 24) = 573;
              _os_log_impl(&dword_24AA0F000, v119, v120, "[%s:%s:%ld] Dial action", v121, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v122, -1, -1);
              MEMORY[0x24C226630](v121, -1, -1);
            }

            v124 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
            v123 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
            swift_getObjectType();
            v125 = sub_24AAB3964();
            sub_24AA16768(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter, &v177);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85628, &qword_24AAB7338);
            sub_24AA442A0(0, &qword_27EF85630, 0x277D6EDF8);
            if (swift_dynamicCast())
            {
              v126 = v180;
              v127 = [v180 dialWithRequest_];
            }

            v128 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
            if (v128)
            {
              v129 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction + 8);
              v177 = v9;
              v178 = v8;
              v179 = 2;
              v128(&v177);
            }

            return;
          case 0x14uLL:
            v130 = sub_24AAB3A64();
            v131 = sub_24AAB5144();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v177 = v133;
              *v132 = 136315650;
              *(v132 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v132 + 12) = 2080;
              *(v132 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v132 + 22) = 2048;
              *(v132 + 24) = 578;
              _os_log_impl(&dword_24AA0F000, v130, v131, "[%s:%s:%ld] Send to live voicemail action", v132, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v133, -1, -1);
              MEMORY[0x24C226630](v132, -1, -1);
            }

            sub_24AA36250();
            return;
          case 0x15uLL:
            v155 = sub_24AAB3A64();
            v156 = sub_24AAB5144();
            if (os_log_type_enabled(v155, v156))
            {
              v157 = swift_slowAlloc();
              v158 = swift_slowAlloc();
              v177 = v158;
              *v157 = 136315650;
              *(v157 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v157 + 12) = 2080;
              *(v157 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v157 + 22) = 2048;
              *(v157 + 24) = 581;
              _os_log_impl(&dword_24AA0F000, v155, v156, "[%s:%s:%ld] Stop live voicemail action", v157, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v158, -1, -1);
              MEMORY[0x24C226630](v157, -1, -1);
            }

            sub_24AA3644C();
            return;
          case 0x16uLL:
            v151 = sub_24AAB3A64();
            v152 = sub_24AAB5144();
            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v177 = v154;
              *v153 = 136315650;
              *(v153 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v153 + 12) = 2080;
              *(v153 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v153 + 22) = 2048;
              *(v153 + 24) = 584;
              _os_log_impl(&dword_24AA0F000, v151, v152, "[%s:%s:%ld] Block action", v153, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v154, -1, -1);
              MEMORY[0x24C226630](v153, -1, -1);
            }

            sub_24AA36650();
            return;
          case 0x18uLL:
            v45 = sub_24AAB3A64();
            v46 = sub_24AAB5144();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v177 = v48;
              *v47 = 136315650;
              *(v47 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v47 + 12) = 2080;
              *(v47 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v47 + 22) = 2048;
              *(v47 + 24) = 587;
              _os_log_impl(&dword_24AA0F000, v45, v46, "[%s:%s:%ld] Toggle wait on hold action", v47, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v48, -1, -1);
              MEMORY[0x24C226630](v47, -1, -1);
            }

            sub_24AA28B38();
            return;
          case 0x19uLL:
            v75 = sub_24AAB3A64();
            v76 = sub_24AAB5144();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v177 = v78;
              *v77 = 136315650;
              *(v77 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v77 + 12) = 2080;
              *(v77 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v77 + 22) = 2048;
              *(v77 + 24) = 590;
              _os_log_impl(&dword_24AA0F000, v75, v76, "[%s:%s:%ld] Pick up wait on hold action", v77, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v78, -1, -1);
              MEMORY[0x24C226630](v77, -1, -1);
            }

            sub_24AA3684C();
            return;
          case 0x1AuLL:
            v159 = sub_24AAB3A64();
            v160 = sub_24AAB5144();
            if (os_log_type_enabled(v159, v160))
            {
              v161 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              v177 = v162;
              *v161 = 136315650;
              *(v161 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v161 + 12) = 2080;
              *(v161 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v161 + 22) = 2048;
              *(v161 + 24) = 593;
              _os_log_impl(&dword_24AA0F000, v159, v160, "[%s:%s:%ld] Decline wait on hold action", v161, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v162, -1, -1);
              MEMORY[0x24C226630](v161, -1, -1);
            }

            sub_24AA36F5C();
            return;
          default:
            v20 = sub_24AAB3A64();
            v21 = sub_24AAB5144();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              v23 = swift_slowAlloc();
              v177 = v23;
              *v22 = 136315650;
              *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
              *(v22 + 12) = 2080;
              *(v22 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
              *(v22 + 22) = 2048;
              *(v22 + 24) = 500;
              _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] Answer action", v22, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C226630](v23, -1, -1);
              MEMORY[0x24C226630](v22, -1, -1);
            }

            v24 = sub_24AAB50F4();
            (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
            sub_24AAB50C4();

            v25 = sub_24AAB50B4();
            v26 = swift_allocObject();
            v27 = MEMORY[0x277D85700];
            v26[2] = v25;
            v26[3] = v27;
            v26[4] = v2;
            sub_24AA330D4(0, 0, v7, &unk_24AAB7360, v26);

            return;
        }
      }

      else
      {
LABEL_13:
        sub_24AA15F10(v9, v8, v10);
        sub_24AA15F10(v9, v8, v10);
        v36 = sub_24AAB3A64();
        v37 = sub_24AAB5144();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v180 = v39;
          *v38 = 136315906;
          *(v38 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v180);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v180);
          *(v38 + 22) = 2048;
          *(v38 + 24) = 599;
          *(v38 + 32) = 2080;
          v177 = v9;
          v178 = v8;
          v179 = v10;
          sub_24AA15F10(v9, v8, v10);
          v40 = sub_24AAB4F44();
          v42 = sub_24AA406B4(v40, v41, &v180);

          *(v38 + 34) = v42;
          sub_24AA15ED0(v9, v8, v10);
          sub_24AA15ED0(v9, v8, v10);
          _os_log_impl(&dword_24AA0F000, v36, v37, "[%s:%s:%ld] Forwarding unknown action: %s", v38, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v39, -1, -1);
          MEMORY[0x24C226630](v38, -1, -1);
        }

        else
        {

          sub_24AA15ED0(v9, v8, v10);
          sub_24AA15ED0(v9, v8, v10);
        }

        v43 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
        if (v43)
        {
          v44 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction + 8);
          v177 = v9;
          v178 = v8;
          v179 = v10;
LABEL_18:
          v43(&v177);
        }
      }

      return;
    }
  }

  else
  {

    sub_24AA15ED0(v9, v8, v10);
    sub_24AA15ED0(v9, v8, v10);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v28 = sub_24AAB3A64();
  v29 = sub_24AAB5144();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v177 = v31;
    *v30 = 136315906;
    *(v30 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v177);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v177);
    *(v30 + 22) = 2048;
    *(v30 + 24) = 509;
    *(v30 + 32) = 2080;
    v32 = sub_24AAB5544();
    v34 = sub_24AA406B4(v32, v33, &v177);

    *(v30 + 34) = v34;
    _os_log_impl(&dword_24AA0F000, v28, v29, "[%s:%s:%ld] Reminder action with duration: %s", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v31, -1, -1);
    MEMORY[0x24C226630](v30, -1, -1);
  }

  v35 = sub_24AAB5534();
  sub_24AA33B70(v35);
}

uint64_t sub_24AA31E04()
{
  v0[2] = sub_24AAB50C4();
  v0[3] = sub_24AAB50B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24AA31EB0;

  return sub_24AA31FEC();
}

uint64_t sub_24AA31EB0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA450F0, v5, v4);
}

uint64_t sub_24AA31FEC()
{
  v1[17] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v3 = sub_24AAB3724();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = sub_24AAB50C4();
  v1[23] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v1[24] = v7;
  v1[25] = v6;

  return MEMORY[0x2822009F8](sub_24AA3211C, v7, v6);
}

uint64_t sub_24AA3211C()
{
  v20 = v0;
  v1 = v0[17];
  v0[26] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v19);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v19);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 786;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Attempting to answer call", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[17];
  v10 = *(v9 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callConfirmationHelper);
  v11 = (v9 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v12 = *v11;
  v0[27] = *v11;
  v13 = v11[1];
  v0[28] = v13;
  *v6 = v12;
  v6[1] = v13;
  v14 = *MEMORY[0x277D07EC0];
  (*(v7 + 104))();
  v15 = *(MEMORY[0x277D07EB8] + 4);
  swift_unknownObjectRetain();
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_24AA32344;
  v17 = v0[21];

  return MEMORY[0x28215E088](v17);
}

uint64_t sub_24AA32344(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 240) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 200);
  v8 = *(v2 + 192);

  return MEMORY[0x2822009F8](sub_24AA324D0, v8, v7);
}

uint64_t sub_24AA324D0()
{
  v81 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);

  v3 = *(v0 + 208);
  v4 = *(v0 + 136);
  if (v1 == 1)
  {
    v5 = *(v0 + 136);

    v6 = sub_24AAB3A64();
    v7 = sub_24AAB5144();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 216);
      v9 = *(v0 + 224);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v80 = v11;
      *v10 = 136316163;
      *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v80);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v80);
      *(v10 + 22) = 2048;
      *(v10 + 24) = 793;
      *(v10 + 32) = 2080;
      swift_getObjectType();
      *(v0 + 80) = sub_24AAB39A4();
      *(v0 + 88) = v12;
      v13 = sub_24AAB4F44();
      v15 = sub_24AA406B4(v13, v14, &v80);

      *(v10 + 34) = v15;
      *(v10 + 42) = 2081;
      *(v0 + 96) = v8;
      *(v0 + 104) = v9;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v16 = sub_24AAB4F44();
      v18 = sub_24AA406B4(v16, v17, &v80);

      *(v10 + 44) = v18;
      _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] Answering call with identifier %s %{private}s.", v10, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v11, -1, -1);
      MEMORY[0x24C226630](v10, -1, -1);
    }

    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    swift_getObjectType();
    *(v0 + 112) = v19;
    v21 = *(v20 + 8);
    if (sub_24AAB3574())
    {
      v22 = *(v0 + 136) + *(v0 + 208);
      v23 = sub_24AAB3A64();
      v24 = sub_24AAB5144();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v80 = v26;
        *v25 = 136315650;
        *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v80);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v80);
        *(v25 + 22) = 2048;
        *(v25 + 24) = 796;
        _os_log_impl(&dword_24AA0F000, v23, v24, "[%s:%s:%ld] Answering a video call, stop updating the view as it's about to transition.", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v26, -1, -1);
        MEMORY[0x24C226630](v25, -1, -1);
      }

      v27 = *(v0 + 136);
      sub_24AA339E0();
    }

    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v30 = (*(v0 + 136) + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
    v31 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v32 = sub_24AAB33A4();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 screenSharingRequests];
      sub_24AA442A0(0, &qword_27EF857A8, 0x277D6EF30);
      sub_24AA43064(&qword_27EF857B0, &qword_27EF857A8, 0x277D6EF30);
      v35 = sub_24AAB5114();

      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = sub_24AAB52F4();
      }

      else
      {
        v36 = *(v35 + 16);
      }

      if (v36)
      {
        v41 = *(v0 + 136) + *(v0 + 208);
        v42 = sub_24AAB3A64();
        v43 = sub_24AAB5144();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v80 = v45;
          *v44 = 136315650;
          *(v44 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v80);
          *(v44 + 12) = 2080;
          *(v44 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v80);
          *(v44 + 22) = 2048;
          *(v44 + 24) = 803;
          _os_log_impl(&dword_24AA0F000, v42, v43, "[%s:%s:%ld] Conversation has pending screen sharing requests, forcing ringing UI", v44, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v45, -1, -1);
          MEMORY[0x24C226630](v44, -1, -1);
        }

        v46 = *(v0 + 176);
        v48 = *(v0 + 136);
        v47 = *(v0 + 144);
        v49 = sub_24AAB50F4();
        (*(*(v49 - 8) + 56))(v47, 1, 1, v49);

        v50 = sub_24AAB50B4();
        v51 = swift_allocObject();
        v52 = MEMORY[0x277D85700];
        v51[2] = v50;
        v51[3] = v52;
        v51[4] = v48;
        sub_24AA330D4(0, 0, v47, &unk_24AAB7858, v51);
      }
    }

    v54 = *(v0 + 216);
    v53 = *(v0 + 224);
    sub_24AAB38B4();
    *(v0 + 120) = v54;
    if ((sub_24AAB3574() & 1) == 0)
    {
      v55 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      if (!sub_24AAB32C4())
      {
        v76 = *(v0 + 136) + *(v0 + 208);
        v57 = sub_24AAB3A64();
        v77 = sub_24AAB5144();
        if (os_log_type_enabled(v57, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v80 = v79;
          *v78 = 136315650;
          *(v78 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v80);
          *(v78 + 12) = 2080;
          *(v78 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v80);
          *(v78 + 22) = 2048;
          *(v78 + 24) = 818;
          _os_log_impl(&dword_24AA0F000, v57, v77, "[%s:%s:%ld] Audio call, setting behavior to hold active", v78, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v79, -1, -1);
          MEMORY[0x24C226630](v78, -1, -1);

          goto LABEL_26;
        }

LABEL_25:

LABEL_26:
        v61 = *(v0 + 136);
        v62 = *(v0 + 48);
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
        sub_24AAB3474();
        swift_getKeyPath();
        *(v0 + 128) = v61;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
        sub_24AAB2CF4();

        v63 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
        swift_beginAccess();
        if (*(v61 + v63))
        {

          CallScreeningViewModel.updateAnswerRequest(_:)(v0 + 16);
        }

        v64 = *(v0 + 208);
        v65 = *(v0 + 136);
        v66 = v30[4];
        __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        v67 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        sub_24AAB33E4();
        v68 = sub_24AAB3A64();
        v69 = sub_24AAB5144();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v80 = v71;
          *v70 = 136315650;
          *(v70 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v80);
          *(v70 + 12) = 2080;
          *(v70 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v80);
          *(v70 + 22) = 2048;
          *(v70 + 24) = 825;
          _os_log_impl(&dword_24AA0F000, v68, v69, "[%s:%s:%ld] Call answered successfully", v70, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v71, -1, -1);
          MEMORY[0x24C226630](v70, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
    }

    v56 = *(v0 + 136) + *(v0 + 208);
    v57 = sub_24AAB3A64();
    v58 = sub_24AAB5144();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v80 = v60;
      *v59 = 136315650;
      *(v59 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v80);
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v80);
      *(v59 + 22) = 2048;
      *(v59 + 24) = 814;
      _os_log_impl(&dword_24AA0F000, v57, v58, "[%s:%s:%ld] Video call or current video call exists, setting behavior to end active", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v60, -1, -1);
      MEMORY[0x24C226630](v59, -1, -1);
    }

    goto LABEL_25;
  }

  v37 = sub_24AAB3A64();
  v38 = sub_24AAB5144();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v80 = v40;
    *v39 = 136315650;
    *(v39 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v80);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_24AA406B4(0x2928726577736E61, 0xE800000000000000, &v80);
    *(v39 + 22) = 2048;
    *(v39 + 24) = 789;
    _os_log_impl(&dword_24AA0F000, v37, v38, "[%s:%s:%ld] User has cancelled answering the call with the confirmation alert.", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v40, -1, -1);
    MEMORY[0x24C226630](v39, -1, -1);
  }

LABEL_31:
  v72 = *(v0 + 168);
  v73 = *(v0 + 144);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_24AA330D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AA1695C(a3, v27 - v11, &qword_27EF85620, &qword_24AAB7330);
  v13 = sub_24AAB50F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AA169C4(v12, &qword_27EF85620, &qword_24AAB7330);
  }

  else
  {
    sub_24AAB50E4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AAB5094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AAB4F54() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);

      return v25;
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

  sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AA333D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AA1695C(a3, v27 - v11, &qword_27EF85620, &qword_24AAB7330);
  v13 = sub_24AAB50F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AA169C4(v12, &qword_27EF85620, &qword_24AAB7330);
  }

  else
  {
    sub_24AAB50E4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AAB5094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AAB4F54() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);

      return v25;
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

  sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AA336CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AA1695C(a3, v27 - v11, &qword_27EF85620, &qword_24AAB7330);
  v13 = sub_24AAB50F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AA169C4(v12, &qword_27EF85620, &qword_24AAB7330);
  }

  else
  {
    sub_24AAB50E4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AAB5094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AAB4F54() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857F0, &qword_24AAB7910);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);

      return v24;
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

  sub_24AA169C4(a3, &qword_27EF85620, &qword_24AAB7330);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857F0, &qword_24AAB7910);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AA339E0()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x6573624F706F7473, 0xEF2928676E697672, &v9);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 666;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Stopping observation", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;

  v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
}

uint64_t sub_24AA33B70(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_24AAB3A64();
  v9 = sub_24AAB5144();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v21);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_24AA406B4(0x654D646E696D6572, 0xED0000293A6E6928, &v21);
    *(v10 + 22) = 2048;
    *(v10 + 24) = 731;
    *(v10 + 32) = 2048;
    *(v10 + 34) = a1;
    _os_log_impl(&dword_24AA0F000, v8, v9, "[%s:%s:%ld] Disconnect call and remind later in %f seconds", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v10, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v13 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v14 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  sub_24AAB3384();
  v15 = sub_24AAB50F4();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_24AAB50C4();

  v16 = sub_24AAB50B4();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v2;
  *(v17 + 40) = a1;
  sub_24AA330D4(0, 0, v7, &unk_24AAB7870, v17);
}

uint64_t sub_24AA33E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = sub_24AAB50C4();
  v5[4] = sub_24AAB50B4();
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_24AA33EF0;

  return CallScreeningViewModel.startScreening(manualScreening:receptionist:)(0, 0);
}

uint64_t sub_24AA33EF0(char a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA34034, v6, v5);
}

uint64_t sub_24AA34034()
{
  v19 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();
  v6 = os_log_type_enabled(v4, v5);
  if (v1)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315650;
      *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v18);
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v18);
      *(v7 + 22) = 2048;
      *(v7 + 24) = 518;
      _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Call screening started successfully", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v8, -1, -1);
      MEMORY[0x24C226630](v7, -1, -1);
    }
  }

  else
  {
    if (v6)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v18);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD18B0, &v18);
      *(v9 + 22) = 2048;
      *(v9 + 24) = 523;
      _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Unable to screen, disconnecting call", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v10, -1, -1);
      MEMORY[0x24C226630](v9, -1, -1);
    }

    v11 = *(v0 + 16);
    sub_24AA339E0();
    v12 = *(v11 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
    __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v11 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
    v13 = v11 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call;
    v14 = *(v11 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v15 = *(v13 + 8);
    swift_getObjectType();
    sub_24AAB3374();
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_24AA34330()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v46);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v46);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 837;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Ending call", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = sub_24AA39F60();
  if (v6)
  {
    v7 = v6;
    v8 = sub_24AAB3A64();
    v9 = sub_24AAB5144();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v46 = v11;
      *v10 = 136315906;
      *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v46);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v46);
      *(v10 + 22) = 2048;
      *(v10 + 24) = 840;
      *(v10 + 32) = 2080;
      v48 = v7;
      sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
      v12 = v7;
      v13 = sub_24AAB4F44();
      v15 = sub_24AA406B4(v13, v14, &v46);

      *(v10 + 34) = v15;
      _os_log_impl(&dword_24AA0F000, v8, v9, "[%s:%s:%ld] Ending call group %s.", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v11, -1, -1);
      MEMORY[0x24C226630](v10, -1, -1);
    }

    v16 = [v7 calls];
    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    v17 = sub_24AAB5024();

    v44 = v7;
    if (v17 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
    {
      v19 = 0;
      v20 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x24C225BD0](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v21 = *(v17 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v24 = v20[4];
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        sub_24AAB3374();

        ++v19;
        if (v23 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  else
  {

    v25 = sub_24AAB3A64();
    v26 = sub_24AAB5144();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v27 = 136316163;
      *(v27 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v48);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v48);
      *(v27 + 22) = 2048;
      *(v27 + 24) = 843;
      *(v27 + 32) = 2080;
      v29 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v28 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      v46 = sub_24AAB39A4();
      v47 = v30;
      v31 = sub_24AAB4F44();
      v33 = sub_24AA406B4(v31, v32, &v48);

      *(v27 + 34) = v33;
      *(v27 + 42) = 2081;
      v46 = v29;
      v47 = v28;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v34 = sub_24AAB4F44();
      v36 = sub_24AA406B4(v34, v35, &v48);

      *(v27 + 44) = v36;
      _os_log_impl(&dword_24AA0F000, v25, v26, "[%s:%s:%ld] Ending call with identifier %s %{private}s.", v27, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v45, -1, -1);
      MEMORY[0x24C226630](v27, -1, -1);
    }

    v37 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
    v38 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v39 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    sub_24AAB3374();
  }

  sub_24AA339E0();
  v40 = sub_24AAB3A64();
  v41 = sub_24AAB5144();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v42 = 136315650;
    *(v42 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v46);
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_24AA406B4(0x286C6C6143646E65, 0xE900000000000029, &v46);
    *(v42 + 22) = 2048;
    *(v42 + 24) = 848;
    _os_log_impl(&dword_24AA0F000, v40, v41, "[%s:%s:%ld] Call ended successfully", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v43, -1, -1);
    MEMORY[0x24C226630](v42, -1, -1);
  }
}

uint64_t sub_24AA34A94(uint64_t a1)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel))
  {
    v2 = *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);

    MEMORY[0x24C2255E0](v3, 0.5, 1.0, 0.0);
    sub_24AAB3E24();
  }

  swift_getKeyPath();
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2D14();

  v4 = *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);
  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = v4 ^ 1;
  sub_24AA1DC18(v4);
  swift_getKeyPath();
  sub_24AAB2D04();
}

void sub_24AA34C58()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v49 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v49);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v49);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 877;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Toggling RTT", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = sub_24AA2CE68();

  v48 = sub_24AAB3A64();
  if (v6)
  {
    v7 = sub_24AAB5144();

    if (os_log_type_enabled(v48, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v51 = v9;
      *v8 = 136316163;
      *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v51);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v51);
      *(v8 + 22) = 2048;
      *(v8 + 24) = 884;
      *(v8 + 32) = 2080;
      v10 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v11 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      v49 = sub_24AAB39A4();
      v50 = v12;
      v13 = sub_24AAB4F44();
      v15 = sub_24AA406B4(v13, v14, &v51);

      *(v8 + 34) = v15;
      *(v8 + 42) = 2081;
      v49 = v10;
      v50 = v11;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v16 = sub_24AAB4F44();
      v18 = sub_24AA406B4(v16, v17, &v51);

      *(v8 + 44) = v18;
      _os_log_impl(&dword_24AA0F000, v48, v7, "[%s:%s:%ld] Toggling RTT on call with identifier %s %{private}s.", v8, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v9, -1, -1);
      MEMORY[0x24C226630](v8, -1, -1);
    }

    swift_getKeyPath();
    v49 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v19 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
    swift_beginAccess();
    if (*(v1 + v19) == 1)
    {
      v20 = sub_24AAB3A64();
      v21 = sub_24AAB5144();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v51 = v23;
        *v22 = 136315650;
        *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v51);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v51);
        *(v22 + 22) = 2048;
        *(v22 + 24) = 887;
        _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] Hiding RTT", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v23, -1, -1);
        MEMORY[0x24C226630](v22, -1, -1);
      }

      if ((*(v1 + v19) & 1) == 0)
      {
        *(v1 + v19) = 0;
        return;
      }
    }

    else
    {
      v36 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v37 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      if ((sub_24AAB39D4() & 1) == 0 && (sub_24AAB39E4() & 1) == 0)
      {
        v38 = sub_24AAB3A64();
        v39 = sub_24AAB5144();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v51 = v41;
          *v40 = 136315650;
          *(v40 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v51);
          *(v40 + 12) = 2080;
          *(v40 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v51);
          *(v40 + 22) = 2048;
          *(v40 + 24) = 891;
          _os_log_impl(&dword_24AA0F000, v38, v39, "[%s:%s:%ld] Setting TTY type to direct", v40, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v41, -1, -1);
          MEMORY[0x24C226630](v40, -1, -1);
        }

        v42 = [objc_opt_self() sharedInstance];
        objc_opt_self();
        [v42 setTTYType:1 forCall:swift_dynamicCastObjCClassUnconditional()];
      }

      v43 = sub_24AAB3A64();
      v44 = sub_24AAB5144();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v51 = v46;
        *v45 = 136315650;
        *(v45 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v51);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v51);
        *(v45 + 22) = 2048;
        *(v45 + 24) = 894;
        _os_log_impl(&dword_24AA0F000, v43, v44, "[%s:%s:%ld] Showing RTT", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v46, -1, -1);
        MEMORY[0x24C226630](v45, -1, -1);
      }

      if (*(v1 + v19) == 1)
      {
        *(v1 + v19) = 1;
        return;
      }
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v51 = v1;
    sub_24AAB2CE4();
  }

  else
  {
    v24 = sub_24AAB5124();

    if (os_log_type_enabled(v48, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136316163;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v51);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0x5452656C67676F74, 0xEB00000000292854, &v51);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 880;
      *(v25 + 32) = 2080;
      v28 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
      v27 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
      swift_getObjectType();
      v49 = sub_24AAB39A4();
      v50 = v29;
      v30 = sub_24AAB4F44();
      v32 = sub_24AA406B4(v30, v31, &v51);

      *(v25 + 34) = v32;
      *(v25 + 42) = 2081;
      v49 = v28;
      v50 = v27;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v33 = sub_24AAB4F44();
      v35 = sub_24AA406B4(v33, v34, &v51);

      *(v25 + 44) = v35;
      _os_log_impl(&dword_24AA0F000, v48, v24, "[%s:%s:%ld] RTT is not available for call with identifier %s %{private}s.", v25, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      MEMORY[0x24C226630](v25, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24AA35704()
{
  v1 = v0;

  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v4 = 136316163;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v22);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1EB0, &v22);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 745;
    *(v4 + 32) = 2080;
    v5 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    sub_24AAB39A4();
    v7 = sub_24AAB4F44();
    v9 = sub_24AA406B4(v7, v8, &v22);

    *(v4 + 34) = v9;
    *(v4 + 42) = 2081;
    v21[0] = v5;
    v21[1] = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
    v10 = sub_24AAB4F44();
    v12 = sub_24AA406B4(v10, v11, &v22);

    *(v4 + 44) = v12;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Upgrading call with identifier %s %{private}s to video.", v4, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v20, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  sub_24AA339E0();
  v13 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v14 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v15 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  sub_24AAB33B4();
  sub_24AAB3904();
  v16 = sub_24AAB3A64();
  v17 = sub_24AAB5144();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v21);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1EB0, v21);
    *(v18 + 22) = 2048;
    *(v18 + 24) = 752;
    _os_log_impl(&dword_24AA0F000, v16, v17, "[%s:%s:%ld] Video upgrade completed", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v19, -1, -1);
    MEMORY[0x24C226630](v18, -1, -1);
  }
}

void sub_24AA35AB0()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v35);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v35);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 769;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Requesting to share", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v8 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v9 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v10 = sub_24AAB33A4();
  if (!v10)
  {

    oslog = sub_24AAB3A64();
    v18 = sub_24AAB5124();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136316163;
      *(v19 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v37);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v37);
      *(v19 + 22) = 2048;
      *(v19 + 24) = 772;
      *(v19 + 32) = 2080;
      v35 = sub_24AAB39A4();
      v36 = v21;
      v22 = sub_24AAB4F44();
      v24 = sub_24AA406B4(v22, v23, &v37);

      *(v19 + 34) = v24;
      *(v19 + 42) = 2081;
      v35 = v8;
      v36 = v9;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v25 = sub_24AAB4F44();
      v27 = sub_24AA406B4(v25, v26, &v37);

      *(v19 + 44) = v27;
      _os_log_impl(&dword_24AA0F000, oslog, v18, "[%s:%s:%ld] Could not find conversation for call with identifier %s %{private}s.", v19, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v20, -1, -1);
      MEMORY[0x24C226630](v19, -1, -1);

      return;
    }

    goto LABEL_12;
  }

  v33 = v10;
  v11 = [v10 activeRemoteParticipants];
  sub_24AA442A0(0, &unk_27EF863F0, 0x277D6EEA8);
  sub_24AA43064(&qword_27EF857D0, &unk_27EF863F0, 0x277D6EEA8);
  v12 = sub_24AAB5114();

  oslog = sub_24AA58C64(v12);

  if (oslog)
  {
    v13 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_24AAB3394();
    v14 = sub_24AAB3A64();
    v15 = sub_24AAB5144();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v35);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v35);
      *(v16 + 22) = 2048;
      *(v16 + 24) = 782;
      _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Share request sent successfully", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v17, -1, -1);
      MEMORY[0x24C226630](v16, -1, -1);

      return;
    }

LABEL_12:
    v32 = oslog;
    goto LABEL_14;
  }

  v28 = sub_24AAB3A64();
  v29 = sub_24AAB5124();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v30 = 136315650;
    *(v30 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v35);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD1ED0, &v35);
    *(v30 + 22) = 2048;
    *(v30 + 24) = 777;
    _os_log_impl(&dword_24AA0F000, v28, v29, "[%s:%s:%ld] Could not find an active remote participant", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v31, -1, -1);
    MEMORY[0x24C226630](v30, -1, -1);

    return;
  }

  v32 = v33;
LABEL_14:
}

uint64_t sub_24AA36190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = sub_24AAB39A4();
  v6 = v5;
  v7 = *(a3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v8 = *(a3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  if (v4 == sub_24AAB39A4() && v6 == v9)
  {

    v12 = 0;
  }

  else
  {
    v11 = sub_24AAB5474();

    v12 = v11 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_24AA36250()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8[0] = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v8);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1EF0, v8);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 852;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Sending to live voicemail", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  swift_getKeyPath();
  v8[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  result = swift_beginAccess();
  if (*(v1 + v6))
  {

    CallScreeningViewModel.sendToLiveVoicemail()();
  }

  return result;
}

uint64_t sub_24AA3644C()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8[0] = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v8);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F10, v8);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 862;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Stopping live voicemail", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  sub_24AA339E0();
  swift_getKeyPath();
  v8[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  result = swift_beginAccess();
  if (*(v1 + v6))
  {

    CallScreeningViewModel.stopLiveVoicemail()();
  }

  return result;
}

void sub_24AA36650()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7[0] = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v7);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, v7);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 868;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Blocking call", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  swift_getKeyPath();
  v7[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v1 + v6))
  {

    CallScreeningViewModel.block()();
  }

  sub_24AA34330();
}

void sub_24AA3684C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857D8, &qword_24AAB7898);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v9 = sub_24AAB2CB4();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = v12;
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v41 - v13;
  v14 = sub_24AAB3A64();
  v15 = sub_24AAB5144();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v50 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v50);
    *(v16 + 22) = 2048;
    *(v16 + 24) = 1064;
    _os_log_impl(&dword_24AA0F000, v14, v15, "[%s:%s:%ld] Ending wait on hold", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v17, -1, -1);
    MEMORY[0x24C226630](v16, -1, -1);
  }

  v18 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = v19;
  swift_unknownObjectRetain();
  v21 = [v20 callUUID];
  sub_24AAB4EF4();

  sub_24AAB2C64();

  if ((*(v49 + 48))(v8, 1, v9) == 1)
  {
    swift_unknownObjectRelease();
    sub_24AA169C4(v8, &qword_27EF857D8, &qword_24AAB7898);
LABEL_6:
    v22 = sub_24AAB3A64();
    v23 = sub_24AAB5144();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v50);
      *(v24 + 22) = 2048;
      *(v24 + 24) = 1067;
      _os_log_impl(&dword_24AA0F000, v22, v23, "[%s:%s:%ld] Cannot end wait on hold - invalid call or UUID", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v25, -1, -1);
      MEMORY[0x24C226630](v24, -1, -1);
    }

    return;
  }

  v42 = *(v49 + 32);
  v43 = v49 + 32;
  v42(v48, v8, v9);
  v44 = v1;
  v26 = sub_24AAB3A64();
  v27 = sub_24AAB5144();
  v28 = v9;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50 = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v50);
    *(v29 + 22) = 2048;
    *(v29 + 24) = 1071;
    _os_log_impl(&dword_24AA0F000, v26, v27, "[%s:%s:%ld] WoH FOR MAC: Ending Wait on Hold", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v30, -1, -1);
    MEMORY[0x24C226630](v29, -1, -1);
  }

  v31 = v47;
  sub_24AAB50D4();
  v32 = sub_24AAB50F4();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v49;
  v34 = v46;
  (*(v49 + 16))(v46, v48, v9);
  sub_24AAB50C4();
  v35 = v44;

  v36 = sub_24AAB50B4();
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = (v45 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  *(v39 + 16) = v36;
  *(v39 + 24) = v40;
  v42((v39 + v37), v34, v28);
  *(v39 + v38) = v35;
  sub_24AA330D4(0, 0, v31, &unk_24AAB78D0, v39);

  swift_unknownObjectRelease();
  (*(v33 + 8))(v48, v28);
}

void sub_24AA36F5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857D8, &qword_24AAB7898);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v45 - v4;
  v52 = sub_24AAB2CB4();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v52);
  v47 = v8;
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v51 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v15 = sub_24AAB3A64();
  v16 = sub_24AAB5144();
  v17 = os_log_type_enabled(v15, v16);
  v50 = v5;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v53);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, &v53);
    *(v18 + 22) = 2048;
    *(v18 + 24) = 1086;
    _os_log_impl(&dword_24AA0F000, v15, v16, "[%s:%s:%ld] WoH FOR MAC: Wait on Hold suggestion declined", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v19, -1, -1);
    MEMORY[0x24C226630](v18, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) == 1)
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v45 - 2) = v1;
    *(&v45 - 8) = 1;
    v53 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  swift_getKeyPath();
  v53 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v21 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
  v22 = sub_24AAB50F4();
  v23 = *(*(v22 - 8) + 56);
  v23(v14, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v21;

  sub_24AA330D4(0, 0, v14, &unk_24AAB78D8, v24);

  sub_24AA21AFC();
  v25 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v46 = v14;
    swift_unknownObjectRetain();
    v28 = [v27 callUUID];
    sub_24AAB4EF4();

    v29 = v49;
    sub_24AAB2C64();

    v30 = v50;
    if ((*(v50 + 48))(v29, 1, v52) != 1)
    {
      v51 = *(v30 + 32);
      v45 = v10;
      v35 = v29;
      v36 = v52;
      v51(v10, v35);
      v37 = v46;
      sub_24AAB50D4();
      v23(v37, 0, 1, v22);
      v38 = v48;
      (*(v30 + 16))(v48, v10, v36);
      sub_24AAB50C4();

      v39 = sub_24AAB50B4();
      v40 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v41 = (v47 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      v43 = MEMORY[0x277D85700];
      *(v42 + 16) = v39;
      *(v42 + 24) = v43;
      v44 = v52;
      (v51)(v42 + v40, v38, v52);
      *(v42 + v41) = v1;
      sub_24AA330D4(0, 0, v37, &unk_24AAB78E8, v42);

      swift_unknownObjectRelease();
      (*(v30 + 8))(v45, v44);
      return;
    }

    swift_unknownObjectRelease();
    sub_24AA169C4(v29, &qword_27EF857D8, &qword_24AAB7898);
  }

  v31 = sub_24AAB3A64();
  v32 = sub_24AAB5144();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v53);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, &v53);
    *(v33 + 22) = 2048;
    *(v33 + 24) = 1092;
    _os_log_impl(&dword_24AA0F000, v31, v32, "[%s:%s:%ld] Cannot decline wait on hold - invalid call or UUID", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v34, -1, -1);
    MEMORY[0x24C226630](v33, -1, -1);
  }
}

uint64_t sub_24AA37734()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0x7341726577736E61, 0xEF29286F69647541, &v16);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 829;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] Setting video sending to false and answering", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  v10 = sub_24AAB50F4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_24AAB50C4();

  v11 = sub_24AAB50B4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v1;
  sub_24AA330D4(0, 0, v5, &unk_24AAB78F8, v12);
}

uint64_t CallNotificationViewModel.observe()()
{
  v1[2] = v0;
  v1[3] = sub_24AAB50C4();
  v1[4] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_24AA37A24, v3, v2);
}

uint64_t sub_24AA37A24()
{
  v15 = v0;
  v1 = v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v14);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v14);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 608;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Starting observation", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_allocObject();
  v0[7] = v8;
  swift_weakInit();
  v9 = swift_task_alloc();
  v0[8] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v0[9] = sub_24AAB50B4();
  v10 = *(MEMORY[0x277D85A10] + 4);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_24AA37C78;
  v12 = v0[2];

  return MEMORY[0x282200830]();
}

uint64_t sub_24AA37C78()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[8];
  }

  else
  {
    v8 = v2[8];
    v7 = v2[9];
    v9 = v2[7];

    v10 = v2[5];
    v11 = v2[6];

    return MEMORY[0x2822009F8](sub_24AA450EC, v10, v11);
  }
}

uint64_t sub_24AA37DD0(uint64_t a1, uint64_t a2)
{
  v2[11] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85768, &qword_24AAB7800);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85770, &qword_24AAB7808);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85778, &qword_24AAB7810);
  v2[19] = v10;
  v11 = *(v10 - 8);
  v2[20] = v11;
  v12 = *(v11 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = sub_24AAB50C4();
  v2[23] = sub_24AAB50B4();
  v13 = swift_task_alloc();
  v2[24] = v13;
  *v13 = v2;
  v13[1] = sub_24AA37FF0;

  return sub_24AA389D8();
}

uint64_t sub_24AA37FF0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v5 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA3812C, v5, v4);
}

uint64_t sub_24AA3812C()
{
  v51 = v0;
  v1 = v0[23];
  v2 = v0[11];

  swift_getKeyPath();
  v0[5] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v2 + v3))
  {

    v4 = sub_24AAB3A64();
    v5 = sub_24AAB5144();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v50 = v7;
      *v6 = 136315650;
      *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v50);
      *(v6 + 22) = 2048;
      *(v6 + 24) = 614;
      _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Setting up observation with call screening", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v7, -1, -1);
      MEMORY[0x24C226630](v6, -1, -1);
    }

    v8 = v0 + 21;
    v46 = v0[19];
    v49 = v0 + 19;
    v9 = v0[18];
    v42 = v0[21];
    v43 = v0[17];
    v10 = v0[15];
    v41 = v0[16];
    v44 = v0[11];
    v11 = *(v44 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v12 = *(v44 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    v0[8] = sub_24AAB3924();
    v0[9] = _s22FaceTimeNotificationUI22CallScreeningViewModelC16changesPublisher7Combine03AnyJ0Vyyts5NeverOGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820);
    sub_24AAB3C04();

    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v13 = sub_24AAB5184();
    v0[10] = v13;
    v14 = sub_24AAB5174();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_24AA16A68(&qword_27EF85798, &qword_27EF85770, &qword_24AAB7808);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78);
    sub_24AAB3C14();
    sub_24AA169C4(v10, &qword_27EF856C8, &qword_24AAB75E0);

    (*(v43 + 8))(v9, v41);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_24AA44FA0;
    *(v16 + 24) = v15;
    sub_24AA16A68(&qword_27EF857A0, &qword_27EF85778, &qword_24AAB7810);
    v47 = sub_24AAB3C44();

    v17 = 20;
  }

  else
  {
    v18 = sub_24AAB3A64();
    v19 = sub_24AAB5144();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v50 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v50);
      *(v20 + 22) = 2048;
      *(v20 + 24) = 622;
      _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] Setting up observation without call screening", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v21, -1, -1);
      MEMORY[0x24C226630](v20, -1, -1);
    }

    v23 = v0[14];
    v22 = v0[15];
    v8 = v0 + 14;
    v48 = v0[12];
    v49 = v0 + 12;
    v45 = v0[11];
    v24 = *(v45 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v25 = *(v45 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    v0[6] = sub_24AAB3924();
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v26 = sub_24AAB5184();
    v0[7] = v26;
    v27 = sub_24AAB5174();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78);
    sub_24AAB3C14();
    sub_24AA169C4(v22, &qword_27EF856C8, &qword_24AAB75E0);

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_24AA44FA0;
    *(v29 + 24) = v28;
    sub_24AA16A68(&qword_27EF85790, &qword_27EF85768, &qword_24AAB7800);
    v47 = sub_24AAB3C44();
    v17 = 13;
  }

  v30 = *v8;
  v31 = v0[v17];
  v32 = *v49;
  v33 = v0[21];
  v34 = v0[18];
  v36 = v0[14];
  v35 = v0[15];
  v37 = v0[11];

  (*(v31 + 8))(v30, v32);
  v38 = *(v37 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable);
  *(v37 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = v47;

  v39 = v0[1];

  return v39();
}

uint64_t sub_24AA389D8()
{
  v1[2] = v0;
  v1[3] = sub_24AAB50C4();
  v1[4] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_24AA38A74, v3, v2);
}

uint64_t sub_24AA38A74()
{
  v15 = v0;
  v1 = v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v14);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v14);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 638;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Starting call recording observation", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_allocObject();
  v0[7] = v8;
  swift_weakInit();
  v9 = swift_task_alloc();
  v0[8] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v0[9] = sub_24AAB50B4();
  v10 = *(MEMORY[0x277D85A10] + 4);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_24AA38CCC;
  v12 = v0[2];

  return MEMORY[0x282200830]();
}

uint64_t sub_24AA38CCC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[8];
  }

  else
  {
    v8 = v2[8];
    v7 = v2[9];
    v9 = v2[7];

    v10 = v2[5];
    v11 = v2[6];

    return MEMORY[0x2822009F8](sub_24AA38E24, v10, v11);
  }
}

uint64_t sub_24AA38E24()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AA38E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24AAB50C4();
  v5[4] = sub_24AAB50B4();
  v7 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA38F1C, v7, v6);
}

uint64_t sub_24AA38F1C()
{
  v12 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x286576726573626FLL, 0xE900000000000029, &v11);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 631;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Observation cancelled", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = v0[3];
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable);
    *(v7 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AA390C8(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85768, &qword_24AAB7800);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85770, &qword_24AAB7808);
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85778, &qword_24AAB7810);
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  sub_24AAB50C4();
  v2[19] = sub_24AAB50B4();
  v14 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA392D0, v14, v13);
}

uint64_t sub_24AA392D0()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[8];

  swift_getKeyPath();
  v0[2] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel))
  {
    v46 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);

    v3 = sub_24AAB3A64();
    v4 = sub_24AAB5144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v50 = v6;
      *v5 = 136315650;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v50);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 642;
      _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Setting up recording observation with audio recording view model", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v6, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);
    }

    v7 = v0 + 18;
    v48 = v0 + 16;
    v8 = v0[14];
    v9 = v0[15];
    v10 = v0[12];
    v41 = v0[13];
    v42 = v0[18];
    v43 = v0[8];
    v44 = v0[16];
    v11 = *(v43 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v12 = *(v43 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    v0[5] = sub_24AAB3924();
    v0[6] = _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC16changesPublisher7Combine03AnyK0Vyyts5NeverOGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820);
    sub_24AAB3C04();

    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v13 = sub_24AAB5184();
    v0[7] = v13;
    v14 = sub_24AAB5174();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_24AA16A68(&qword_27EF85798, &qword_27EF85770, &qword_24AAB7808);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78);
    sub_24AAB3C14();
    sub_24AA169C4(v10, &qword_27EF856C8, &qword_24AAB75E0);

    (*(v8 + 8))(v9, v41);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_24AA44FA0;
    *(v16 + 24) = v15;
    sub_24AA16A68(&qword_27EF857A0, &qword_27EF85778, &qword_24AAB7810);
    v49 = sub_24AAB3C44();

    v17 = 17;
  }

  else
  {
    v18 = sub_24AAB3A64();
    v19 = sub_24AAB5144();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v50 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v50);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v50);
      *(v20 + 22) = 2048;
      *(v20 + 24) = 650;
      _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] Setting up recording observation without audio recording view model", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v21, -1, -1);
      MEMORY[0x24C226630](v20, -1, -1);
    }

    v22 = v0[11];
    v23 = v0[12];
    v7 = v0 + 11;
    v47 = v0[9];
    v48 = v0 + 9;
    v45 = v0[8];
    v24 = *(v45 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v25 = *(v45 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    v0[3] = sub_24AAB3924();
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v26 = sub_24AAB5184();
    v0[4] = v26;
    v27 = sub_24AAB5174();
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85780, &qword_24AAB7820);
    sub_24AA16A68(&qword_27EF85788, &qword_27EF85780, &qword_24AAB7820);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78);
    sub_24AAB3C14();
    sub_24AA169C4(v23, &qword_27EF856C8, &qword_24AAB75E0);

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_24AA44FA0;
    *(v29 + 24) = v28;
    sub_24AA16A68(&qword_27EF85790, &qword_27EF85768, &qword_24AAB7800);
    v49 = sub_24AAB3C44();
    v17 = 10;
  }

  v30 = *v7;
  v31 = v0[v17];
  v32 = *v48;
  v33 = v0[18];
  v34 = v0[15];
  v36 = v0[11];
  v35 = v0[12];
  v37 = v0[8];

  (*(v31 + 8))(v30, v32);
  v38 = *(v37 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable);
  *(v37 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = v49;

  v39 = v0[1];

  return v39();
}

uint64_t sub_24AA39B70(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_24AA39BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_24AAB50F4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_24AAB50C4();

  v12 = sub_24AAB50B4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = Strong;
  sub_24AA330D4(0, 0, v9, a4, v13);
}

uint64_t sub_24AA39D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24AAB50C4();
  v5[4] = sub_24AAB50B4();
  v7 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA39DB0, v7, v6);
}

uint64_t sub_24AA39DB0()
{
  v12 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000016, 0x800000024AAD1E90, &v11);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 659;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Call recording observation cancelled", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = v0[3];
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable);
    *(v7 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
  }

  v9 = v0[1];

  return v9();
}

id sub_24AA39F60()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v3 = sub_24AAB3314();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
  {
    v6 = 0;
    v7 = 0;
    v32 = v4;
    v33 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v35 = v4 & 0xFFFFFFFFFFFFFF8;
    v36 = v4 & 0xC000000000000001;
    v34 = v4 + 32;
    v31 = i;
    while (1)
    {
      if (v36)
      {
        v8 = MEMORY[0x24C225BD0](v6, v4);
      }

      else
      {
        if (v6 >= *(v35 + 16))
        {
          goto LABEL_27;
        }

        v8 = *(v34 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6, 1);
      v11 = v6 + 1;
      if (v10)
      {
        break;
      }

      v39 = v7;
      v12 = [v8 calls];
      sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
      v13 = sub_24AAB5024();

      if (v13 >> 62)
      {
        v1 = sub_24AAB52F4();
        v37 = v11;
        v38 = v9;
        if (!v1)
        {
LABEL_21:

          v15 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      else
      {
        v1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v37 = v11;
        v38 = v9;
        if (!v1)
        {
          goto LABEL_21;
        }
      }

      v40[0] = MEMORY[0x277D84F90];
      sub_24AA5D43C(0, v1 & ~(v1 >> 63), 0);
      if (v1 < 0)
      {
        goto LABEL_28;
      }

      v14 = 0;
      v15 = v40[0];
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x24C225BD0](v14, v13);
        }

        else
        {
          v16 = *(v13 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v17 uniqueProxyIdentifier];
        v19 = sub_24AAB4EF4();
        v21 = v20;

        v40[0] = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_24AA5D43C((v22 > 1), v23 + 1, 1);
          v15 = v40[0];
        }

        ++v14;
        *(v15 + 16) = v23 + 1;
        v24 = v15 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v1 != v14);

      i = v31;
      v4 = v32;
LABEL_22:
      v26 = *v33;
      v25 = v33[1];
      swift_getObjectType();
      v27 = sub_24AAB39A4();
      v1 = v28;
      v40[0] = v27;
      v40[1] = v28;
      MEMORY[0x28223BE20](v27);
      v30[2] = v40;
      v7 = v39;
      LOBYTE(v26) = sub_24AA5D68C(sub_24AA44D7C, v30, v15);

      if (v26)
      {

        return v38;
      }

      v6 = v37;
      if (v37 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_24:

  return 0;
}

uint64_t sub_24AA3A2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v6 = 136315906;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, &v15);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 699;
    *(v6 + 32) = 2080;
    swift_getKeyPath();
    v14[0] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
    swift_beginAccess();
    sub_24AA1695C(v1 + v7, v14, &qword_27EF85568, &qword_24AABC830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85568, &qword_24AABC830);
    v8 = sub_24AAB4F34();
    v10 = sub_24AA406B4(v8, v9, &v15);

    *(v6 + 34) = v10;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Getting trailing control recipe: %s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v13, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  swift_getKeyPath();
  v14[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  return sub_24AA1695C(v2 + v11, a1, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA3A5B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a1;
  *(v5 + 64) = a5;
  v6 = sub_24AAB3A34();
  *(v5 + 80) = v6;
  v7 = *(v6 - 8);
  *(v5 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  sub_24AAB50C4();
  *(v5 + 104) = sub_24AAB50B4();
  v10 = sub_24AAB5094();
  *(v5 + 112) = v10;
  *(v5 + 120) = v9;

  return MEMORY[0x2822009F8](sub_24AA3A6B0, v10, v9);
}

uint64_t sub_24AA3A6B0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];
  sub_24AA16768(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call;
  v7 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v8 = *(v6 + 8);
  swift_getObjectType();
  sub_24AAB3A24();
  v9 = *(MEMORY[0x277D07E88] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_24AA3A9D0;
  v11 = v0[12];

  return MEMORY[0x28215DE50](v11, v4, v5);
}

uint64_t sub_24AA3A9D0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {
    v7 = sub_24AA3AD00;
  }

  else
  {
    v7 = sub_24AA3AB58;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24AA3AB58()
{
  v11 = v0;
  v1 = v0[13];
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x654D646E696D6572, 0xED0000293A6E6928, &v10);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 737;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Successfully added reminder", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AA3AD00()
{
  v17 = v0;
  v1 = v0[13];

  v2 = v0[17];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v2;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5134();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0x654D646E696D6572, 0xED0000293A6E6928, &v16);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 739;
    *(v7 + 32) = 2080;
    v0[7] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857C8, &qword_24AAB7878);
    v10 = sub_24AAB4F44();
    v12 = sub_24AA406B4(v10, v11, &v16);

    *(v7 + 34) = v12;
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] Failed to add reminder, error: %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AA3AF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_24AAB53B4();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_24AAB50C4();
  v4[8] = sub_24AAB50B4();
  v9 = sub_24AAB5094();
  v4[9] = v9;
  v4[10] = v8;

  return MEMORY[0x2822009F8](sub_24AA3B020, v9, v8);
}

uint64_t sub_24AA3B020()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare;
  v0[11] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[2] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  v4 = v0[7];
  sub_24AAB54D4();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_24AA3B1D8;
  v6 = v0[7];

  return sub_24AA3FC04(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24AA3B1D8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = v2[9];
    v9 = v2[10];
    v10 = sub_24AA3B4D0;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = v2[9];
    v9 = v2[10];
    v10 = sub_24AA3B370;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24AA3B370()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[4];

  v5 = *(v4 + v2);
  v6 = v0[4];
  if (v5)
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[3] = v6;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    *(v6 + v0[11]) = 0;
  }

  v8 = v0[7];
  v9 = v0[4];
  sub_24AA21AFC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AA3B4D0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];

  v4 = *(v3 + v1);
  v5 = v0[4];
  if (v4)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[3] = v5;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    *(v5 + v0[11]) = 0;
  }

  v7 = v0[7];
  v8 = v0[4];
  sub_24AA21AFC();

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AA3B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24AAB50C4();
  v4[3] = sub_24AAB50B4();
  v6 = sub_24AAB5094();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24AA3B6C0, v6, v5);
}

uint64_t sub_24AA3B6C0()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v3 = *v1;
  v2 = v1[1];
  swift_getObjectType();
  sub_24AAB3904();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_24AA3B77C;
  v5 = *(v0 + 16);

  return sub_24AA31FEC();
}

uint64_t sub_24AA3B77C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24AA3B89C, v4, v3);
}

uint64_t sub_24AA3B89C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_24AA3B8FC()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v25);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000020, 0x800000024AAD1E40, &v25);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 1108;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Updating wait on hold service for call", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_getKeyPath();
    v25 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    swift_unknownObjectRetain();
    sub_24AAB2CF4();

    v9 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService);
    if (v9)
    {
      v10 = v9;
      v11 = [v8 callUUID];
      sub_24AAB4EF4();

      sub_24AAB2DA4();
    }

    swift_unknownObjectRetain();
    v12 = sub_24AAB3A64();
    v13 = sub_24AAB5144();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v25);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_24AA406B4(0xD000000000000020, 0x800000024AAD1E40, &v25);
      *(v14 + 22) = 2048;
      *(v14 + 24) = 1116;
      *(v14 + 32) = 2080;
      v16 = [v8 callUUID];
      v17 = sub_24AAB4EF4();
      v19 = v18;

      v20 = sub_24AA406B4(v17, v19, &v25);

      *(v14 + 34) = v20;
      _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] Wait on hold service updated for call UUID: %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v15, -1, -1);
      MEMORY[0x24C226630](v14, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_24AAB3A64();
    v21 = sub_24AAB5144();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v25);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24AA406B4(0xD000000000000020, 0x800000024AAD1E40, &v25);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 1111;
      _os_log_impl(&dword_24AA0F000, oslog, v21, "[%s:%s:%ld] Cannot update wait on hold service - not a TUCall", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v23, -1, -1);
      MEMORY[0x24C226630](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24AA3BE34(void *a1@<X8>)
{
  sub_24AAB29D4();
  if (!v5)
  {
    sub_24AA169C4(v4, &qword_27EF85740, &qword_24AAB76D0);
    goto LABEL_5;
  }

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = [v3 smartHoldingSession];

LABEL_6:
  *a1 = v2;
}

uint64_t sub_24AA3BEFC(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v80 - v4;
  v6 = sub_24AAB2CD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AAB4ED4();
  v86 = *(v10 - 8);
  v11 = *(v86 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v80 - v15;
  v17 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v83 = v14;
    v84 = v9;
    v85 = v10;
    v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
    v21 = v17;
    v22 = sub_24AAB3A64();
    v23 = sub_24AAB5144();
    v88 = v21;

    v24 = os_log_type_enabled(v22, v23);
    v87 = v20;
    v81 = v5;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v90[0] = v26;
      *v25 = 136315906;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v90);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v90);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 942;
      *(v25 + 32) = 2080;
      if (v17)
      {
        v89 = [v88 state];
        type metadata accessor for TUSmartHoldingSessionState(0);
        v27 = sub_24AAB4F44();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      v30 = sub_24AA406B4(v27, v29, v90);

      *(v25 + 34) = v30;
      _os_log_impl(&dword_24AA0F000, v22, v23, "[%s:%s:%ld] Smart holding session changed: %s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      MEMORY[0x24C226630](v25, -1, -1);
    }

    else
    {
    }

    v31 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol;
    if (*(v19 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v80 - 2) = v19;
      *(&v80 - 8) = 0;
      v90[0] = v19;
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
      sub_24AAB2CE4();

      if (!v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(v19 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol) = 0;
      if (!v17)
      {
        goto LABEL_40;
      }
    }

    v33 = [v88 state];
    v82 = 0;
    if (v33 == 3)
    {
      v34 = sub_24AAB3A64();
      v35 = sub_24AAB5144();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v90[0] = v37;
        *v36 = 136315650;
        *(v36 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v90);
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v90);
        *(v36 + 22) = 2048;
        *(v36 + 24) = 948;
        _os_log_impl(&dword_24AA0F000, v34, v35, "[%s:%s:%ld] Smart holding requires user attention", v36, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v37, -1, -1);
        MEMORY[0x24C226630](v36, -1, -1);
      }

      sub_24AAB4E84();
      v38 = v85;
      v39 = v86;
      (*(v86 + 16))(v83, v16, v85);
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v40 = qword_27EF919A8;
      sub_24AAB2CC4();
      v41 = sub_24AAB4F14();
      v43 = v42;
      (*(v39 + 8))(v16, v38);
      sub_24AA1EE4C(v41, v43);
    }

    v44 = [v88 requiresUserAttentionReason];
    v45 = sub_24AAB3A64();
    v46 = sub_24AAB5144();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v90[0] = v48;
      *v47 = 136315906;
      *(v47 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v90);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v90);
      *(v47 + 22) = 2048;
      *(v47 + 24) = 953;
      *(v47 + 32) = 2048;
      *(v47 + 34) = v44;
      _os_log_impl(&dword_24AA0F000, v45, v46, "[%s:%s:%ld] User attention reason: %lu", v47, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v48, -1, -1);
      MEMORY[0x24C226630](v47, -1, -1);
    }

    v49 = v44 - 3;
    v50 = sub_24AAB3A64();
    v51 = sub_24AAB5144();
    v52 = os_log_type_enabled(v50, v51);
    if (v49 > 1)
    {
      if (v52)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v90[0] = v58;
        *v57 = 136315650;
        *(v57 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v90);
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v90);
        *(v57 + 22) = 2048;
        *(v57 + 24) = 960;
        _os_log_impl(&dword_24AA0F000, v50, v51, "[%s:%s:%ld] Other reason, not showing error symbol", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v58, -1, -1);
        MEMORY[0x24C226630](v57, -1, -1);
      }

      if (*(v19 + v31))
      {
        v59 = swift_getKeyPath();
        MEMORY[0x28223BE20](v59);
        *(&v80 - 2) = v19;
        *(&v80 - 8) = 0;
        v90[0] = v19;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
        sub_24AAB2CE4();
      }

      else
      {
        *(v19 + v31) = 0;
      }
    }

    else
    {
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v90[0] = v54;
        *v53 = 136315650;
        *(v53 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v90);
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v90);
        *(v53 + 22) = 2048;
        *(v53 + 24) = 956;
        _os_log_impl(&dword_24AA0F000, v50, v51, "[%s:%s:%ld] Error or language unsupported, showing error symbol", v53, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v54, -1, -1);
        MEMORY[0x24C226630](v53, -1, -1);
      }

      v55 = v86;
      if (*(v19 + v31) == 1)
      {
        *(v19 + v31) = 1;
      }

      else
      {
        v60 = swift_getKeyPath();
        MEMORY[0x28223BE20](v60);
        *(&v80 - 2) = v19;
        *(&v80 - 8) = 1;
        v90[0] = v19;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
        sub_24AAB2CE4();
      }

      v56 = v85;
      sub_24AAB4E84();
      (*(v55 + 16))(v83, v16, v56);
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v61 = qword_27EF919A8;
      sub_24AAB2CC4();
      v62 = sub_24AAB4F14();
      v64 = v63;
      (*(v55 + 8))(v16, v56);
      sub_24AA1EE4C(v62, v64);
    }

    if ([v88 state] == 2 && (sub_24AA2E894() & 1) != 0)
    {
      v65 = sub_24AAB3A64();
      v66 = sub_24AAB5144();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v90[0] = v68;
        *v67 = 136315650;
        *(v67 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v90);
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v90);
        *(v67 + 22) = 2048;
        *(v67 + 24) = 967;
        _os_log_impl(&dword_24AA0F000, v65, v66, "[%s:%s:%ld] Hold detected and call eligible for wait on hold", v67, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v68, -1, -1);
        MEMORY[0x24C226630](v67, -1, -1);
      }

      if (*(v19 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) == 1)
      {
        *(v19 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 1;
      }

      else
      {
        v75 = swift_getKeyPath();
        MEMORY[0x28223BE20](v75);
        *(&v80 - 2) = v19;
        *(&v80 - 8) = 1;
        v90[0] = v19;
        sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
        sub_24AAB2CE4();
      }

      swift_getKeyPath();
      v90[0] = v19;
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
      sub_24AAB2CF4();

      v76 = *(v19 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
      v77 = sub_24AAB50F4();
      v78 = v81;
      (*(*(v77 - 8) + 56))(v81, 1, 1, v77);
      v79 = swift_allocObject();
      v79[2] = 0;
      v79[3] = 0;
      v79[4] = v76;

      sub_24AA330D4(0, 0, v78, &unk_24AAB76A0, v79);

LABEL_47:
      MEMORY[0x24C2255E0](v73, 0.5, 1.0, 0.0);
      sub_24AAB3E24();
    }

LABEL_40:
    v69 = sub_24AAB3A64();
    v70 = sub_24AAB5144();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v90[0] = v72;
      *v71 = 136315650;
      *(v71 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v90);
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, v90);
      *(v71 + 22) = 2048;
      *(v71 + 24) = 971;
      _os_log_impl(&dword_24AA0F000, v69, v70, "[%s:%s:%ld] Hold not detected or call not eligible", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v72, -1, -1);
      MEMORY[0x24C226630](v71, -1, -1);
    }

    if (*(v19 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected))
    {
      v74 = swift_getKeyPath();
      MEMORY[0x28223BE20](v74);
      *(&v80 - 2) = v19;
      *(&v80 - 8) = 0;
      v90[0] = v19;
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v19 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 0;
    }

    goto LABEL_47;
  }

  return result;
}

uint64_t sub_24AA3D0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_24AAB3A64();
    v8 = sub_24AAB5144();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v11);
      *(v9 + 22) = 2048;
      *(v9 + 24) = 984;
      _os_log_impl(&dword_24AA0F000, v7, v8, "[%s:%s:%ld] Wait on hold status message updated", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v10, -1, -1);
      MEMORY[0x24C226630](v9, -1, -1);
    }

    sub_24AA1695C(a1, v5, &qword_27EF855C0, &unk_24AAB7270);
    sub_24AA1E9D4(v5);
  }

  return result;
}

uint64_t sub_24AA3D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_24AAB50C4();
  v4[8] = sub_24AAB50B4();
  v6 = sub_24AAB5094();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_24AA3D358, v6, v5);
}

uint64_t sub_24AA3D358()
{
  v14 = v0;
  v1 = v0[7];
  v0[11] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v13);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v13);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 990;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Prewarming wait on hold controller", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = v0[7];
  swift_getKeyPath();
  v0[5] = v6;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v7 = *(v6 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController);
  v0[12] = v7;
  if (v7)
  {
    v8 = *(MEMORY[0x277CF7E28] + 4);

    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_24AA3D5F0;

    return MEMORY[0x282149798]();
  }

  else
  {
    v10 = v0[8];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24AA3D5F0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_24AA3D76C;
  }

  else
  {
    v7 = v2[12];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_24AA3D70C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24AA3D70C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AA3D76C()
{
  v22 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v1;
  v7 = sub_24AAB3A64();
  v8 = sub_24AAB5144();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v21);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v21);
    *(v10 + 22) = 2048;
    *(v10 + 24) = 993;
    *(v10 + 32) = 2080;
    swift_getErrorValue();
    v13 = v0[2];
    v12 = v0[3];
    v14 = v0[4];
    v15 = sub_24AAB54E4();
    v17 = sub_24AA406B4(v15, v16, &v21);

    *(v10 + 34) = v17;
    _os_log_impl(&dword_24AA0F000, v7, v8, "[%s:%s:%ld] WoH FOR MAC: Prewarming failed %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v11, -1, -1);
    MEMORY[0x24C226630](v10, -1, -1);
  }

  else
  {
    v18 = v0[14];
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_24AA3D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_24AAB50C4();
  v5[20] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_24AA3DA10, v7, v6);
}

uint64_t sub_24AA3DA10()
{
  v1 = v0[18];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v3 = sub_24AAB2C84();
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_24AA3DB68;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857E0, &qword_24AAB78B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AA3E070;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 performSmartHoldingRequestWithType:3 forCallWithUUID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AA3DB68()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_24AA3DE38;
  }

  else
  {
    v6 = sub_24AA3DC98;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24AA3DC98()
{
  v13 = v0;
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v12);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v12);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 1056;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] WoH FOR MAC: Successfully started wait on hold", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AA3DE38()
{
  v19 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[19];
  v3 = v0[20];

  swift_willThrow();

  v5 = v1;
  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[25];
  v10 = v0[23];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v11 = 136315906;
    *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, v18);
    *(v11 + 22) = 2048;
    *(v11 + 24) = 1058;
    *(v11 + 32) = 2112;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v15;
    *v12 = v15;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] WoH FOR MAC: Failed to start wait on hold: %@", v11, 0x2Au);
    sub_24AA169C4(v12, &qword_27EF857E8, &qword_24AAB78C0);
    MEMORY[0x24C226630](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v13, -1, -1);
    MEMORY[0x24C226630](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24AA3E070(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857C8, &qword_24AAB7878);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24AA3E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_24AAB50C4();
  v5[20] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_24AA3E1B4, v7, v6);
}

uint64_t sub_24AA3E1B4()
{
  v1 = v0[18];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v3 = sub_24AAB2C84();
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_24AA3E30C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857E0, &qword_24AAB78B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AA3E070;
  v0[13] = &block_descriptor_365;
  v0[14] = v4;
  [v2 performSmartHoldingRequestWithType:4 forCallWithUUID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AA3E30C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_24AA3E5E0;
  }

  else
  {
    v6 = sub_24AA3E43C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24AA3E43C()
{
  v13 = v0;
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v12);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, &v12);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 1078;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] WoH FOR MAC: Successfully ended wait on hold", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AA3E5E0()
{
  v19 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[19];
  v3 = v0[20];

  swift_willThrow();

  v5 = v1;
  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[25];
  v10 = v0[23];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v11 = 136315906;
    *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_24AA406B4(0x4F74696157646E65, 0xEF2928646C6F486ELL, v18);
    *(v11 + 22) = 2048;
    *(v11 + 24) = 1080;
    *(v11 + 32) = 2112;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v15;
    *v12 = v15;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] WoH FOR MAC: Failed to end wait on hold: %@", v11, 0x2Au);
    sub_24AA169C4(v12, &qword_27EF857E8, &qword_24AAB78C0);
    MEMORY[0x24C226630](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v13, -1, -1);
    MEMORY[0x24C226630](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24AA3E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_24AAB50C4();
  v5[20] = sub_24AAB50B4();
  v7 = sub_24AAB5094();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2822009F8](sub_24AA3E8B4, v7, v6);
}

uint64_t sub_24AA3E8B4()
{
  v1 = v0[18];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v3 = sub_24AAB2C84();
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_24AA3EA0C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857E0, &qword_24AAB78B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AA3E070;
  v0[13] = &block_descriptor_377;
  v0[14] = v4;
  [v2 performSmartHoldingRequestWithType:2 forCallWithUUID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AA3EA0C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_24AA3ECD8;
  }

  else
  {
    v6 = sub_24AA3EB3C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24AA3EB3C()
{
  v12 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v3 = v0[20];

  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, &v11);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 1100;
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] WoH FOR MAC: Successfully stopped hold detection", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AA3ECD8()
{
  v19 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];

  swift_willThrow();

  v6 = v1;
  v7 = sub_24AAB3A64();
  v8 = sub_24AAB5144();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v11 = 136315906;
    *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F70, v18);
    *(v11 + 22) = 2048;
    *(v11 + 24) = 1102;
    *(v11 + 32) = 2112;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v15;
    *v12 = v15;
    _os_log_impl(&dword_24AA0F000, v7, v8, "[%s:%s:%ld] WoH FOR MAC: Failed to end hold detection: %@", v11, 0x2Au);
    sub_24AA169C4(v12, &qword_27EF857E8, &qword_24AAB78C0);
    MEMORY[0x24C226630](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v13, -1, -1);
    MEMORY[0x24C226630](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

void sub_24AA3EF0C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_24AAB3A64();
    v4 = sub_24AAB5144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v5 = 136315906;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, &v15);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 1147;
      *(v5 + 32) = 2112;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 34) = v9;
      *v6 = v9;
      _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion error=%@", v5, 0x2Au);
      sub_24AA169C4(v6, &qword_27EF857E8, &qword_24AAB78C0);
      MEMORY[0x24C226630](v6, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v7, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);

      return;
    }

    v13 = a1;

    goto LABEL_9;
  }

  oslog = sub_24AAB3A64();
  v10 = sub_24AAB5144();
  if (!os_log_type_enabled(oslog, v10))
  {
    v13 = oslog;

LABEL_9:

    return;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v15 = v12;
  *v11 = 136315650;
  *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
  *(v11 + 12) = 2080;
  *(v11 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, &v15);
  *(v11 + 22) = 2048;
  *(v11 + 24) = 1149;
  _os_log_impl(&dword_24AA0F000, oslog, v10, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion succeeded", v11, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v12, -1, -1);
  MEMORY[0x24C226630](v11, -1, -1);
}

void sub_24AA3F25C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_24AA3F2C8(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_24AAB3A64();
    v4 = sub_24AAB5144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v5 = 136315906;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &v15);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 1169;
      *(v5 + 32) = 2112;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 34) = v9;
      *v6 = v9;
      _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion error=%@", v5, 0x2Au);
      sub_24AA169C4(v6, &qword_27EF857E8, &qword_24AAB78C0);
      MEMORY[0x24C226630](v6, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v7, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);

      return;
    }

    v13 = a1;

    goto LABEL_9;
  }

  oslog = sub_24AAB3A64();
  v10 = sub_24AAB5144();
  if (!os_log_type_enabled(oslog, v10))
  {
    v13 = oslog;

LABEL_9:

    return;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v15 = v12;
  *v11 = 136315650;
  *(v11 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v15);
  *(v11 + 12) = 2080;
  *(v11 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &v15);
  *(v11 + 22) = 2048;
  *(v11 + 24) = 1171;
  _os_log_impl(&dword_24AA0F000, oslog, v10, "[%s:%s:%ld] TUOpenURLAndActivateWithCompletion succeeded for contact card", v11, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v12, -1, -1);
  MEMORY[0x24C226630](v11, -1, -1);
}

id sub_24AA3F618@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  *a2 = v4;

  return v4;
}

void sub_24AA3F6D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA47AAC(v2);
}

uint64_t sub_24AA3F708@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  a2[1] = v4;
}

uint64_t sub_24AA3F7D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_24AA3F820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_24AA3F8F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts);
  return result;
}

uint64_t sub_24AA3F9C8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24AA3FA14(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AA3FB0C;

  return v7(a1);
}

uint64_t sub_24AA3FB0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AA3FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AAB53A4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AA3FD04, 0, 0);
}

uint64_t sub_24AA3FD04()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24AAB53B4();
  v7 = sub_24AA42080(&qword_27EF857B8, MEMORY[0x277D85928]);
  sub_24AAB54B4();
  sub_24AA42080(&qword_27EF857C0, MEMORY[0x277D858F8]);
  sub_24AAB53C4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24AA3FE94;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24AA3FE94()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AA40050, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24AA40050()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void *sub_24AA400BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85698, &qword_24AAB74D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856A8, &qword_24AAB7508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AA40204(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85060, &unk_24AABB850);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AA4034C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
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

size_t sub_24AA40458(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85880, &qword_24AAB7948);
  v10 = *(sub_24AAB2A04() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24AAB2A04() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24AA40658(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24AA406B4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_24AA406B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AA40780(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AA168B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24AA40780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AA4088C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_24AAB5394();
    a6 = v11;
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

uint64_t sub_24AA4088C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AA408D8(a1, a2);
  sub_24AA40A08(&unk_285E034F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AA408D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AA40AF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AAB5394();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AAB4FC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AA40AF4(v10, 0);
        result = sub_24AAB5364();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AA40A08(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24AA40B68(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AA40AF4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85890, &qword_24AAB7958);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AA40B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85890, &qword_24AAB7958);
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

_BYTE **sub_24AA40C5C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_24AA40C6C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24AA40C8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24AA40CBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24AA40DB0;

  return v6(v2 + 32);
}

uint64_t sub_24AA40DB0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24AA40EC4(uint64_t a1, uint64_t a2)
{
  sub_24AA1695C(a1, v9, &qword_27EF85568, &qword_24AABC830);
  sub_24AA1695C(a2, v10, &qword_27EF85568, &qword_24AABC830);
  if (v9[80] == 255)
  {
    if (v11 == 255)
    {
      sub_24AA169C4(v9, &qword_27EF85568, &qword_24AABC830);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_24AA169C4(v9, &qword_27EF85760, &qword_24AAB77A8);
    v4 = 1;
    return v4 & 1;
  }

  sub_24AA1695C(v9, v8, &qword_27EF85568, &qword_24AABC830);
  if (v11 == 255)
  {
    sub_24AA4214C(v8);
    goto LABEL_7;
  }

  v6[2] = v10[2];
  v6[3] = v10[3];
  v6[4] = v10[4];
  v7 = v11;
  v6[0] = v10[0];
  v6[1] = v10[1];
  v3 = sub_24AA72E4C(v8, v6);
  sub_24AA4214C(v6);
  sub_24AA4214C(v8);
  sub_24AA169C4(v9, &qword_27EF85568, &qword_24AABC830);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_24AA41024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v113 = a7;
  v108 = a6;
  v107 = a5;
  v114 = a3;
  v103 = a1;
  v106 = a12;
  v104 = a9;
  v109 = type metadata accessor for CallSubtitle(0);
  v17 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for CallStatusViewModel(0);
  v19 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v105 = (&v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_24AAB3A84();
  v111 = *(v21 - 8);
  v22 = *(v111 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118[3] = a10;
  v118[4] = a13;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v118);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a10);
  v117[3] = a11;
  v117[4] = a14;
  v26 = __swift_allocate_boxed_opaque_existential_1Tm(v117);
  (*(*(a11 - 8) + 32))(v26, a4, a11);
  v27 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v21, qword_27EF919D8);
  v102 = *(v111 + 16);
  v102(a8 + v27, v28, v21);
  v29 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *v29 = 0u;
  *(v29 + 80) = 5;
  v30 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  *(v30 + 48) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *v30 = 0u;
  *(v30 + 80) = -1;
  v31 = type metadata accessor for CallHoldingAnalytics();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85888, &qword_24AAB7950);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 16) = v35;
  v36 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  v37 = sub_24AAB2C54();
  v38 = *(*(v37 - 8) + 56);
  v38(v34 + v36, 1, 1, v37);
  v38(v34 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp, 1, 1, v37);
  *(v34 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = 0;
  *(v34 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPreviewLatency) = 0;
  *(v34 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 4;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) = v34;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel) = 0;
  v39 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__liveVoicemailViewController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService) = 0;
  v40 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  v41 = sub_24AAB2AA4();
  (*(*(v41 - 8) + 56))(a8 + v40, 1, 1, v41);
  v42 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  *v42 = 0;
  v42[1] = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare) = 0;
  v43 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags;
  *(a8 + v43) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager) = 1;
  sub_24AAB2D24();
  v102(v24, a8 + v27, v21);
  v44 = v103;
  swift_unknownObjectRetain();
  v45 = sub_24AAB3A64();
  v46 = sub_24AAB5144();
  swift_unknownObjectRelease();
  v47 = os_log_type_enabled(v45, v46);
  v102 = v21;
  v48 = v44;
  if (v47)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v100 = v24;
    v101 = v39;
    v51 = v50;
    v115[0] = v50;
    *v49 = 136316162;
    *(v49 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v115);
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v115);
    *(v49 + 22) = 2048;
    *(v49 + 24) = 158;
    *(v49 + 32) = 2080;
    v52 = v104;
    v53 = v106;
    v54 = sub_24AAB39A4();
    v56 = sub_24AA406B4(v54, v55, v115);

    *(v49 + 34) = v56;
    v57 = v53;
    *(v49 + 42) = 1024;
    v58 = v113;
    *(v49 + 44) = v113 & 1;
    _os_log_impl(&dword_24AA0F000, v45, v46, "[%s:%s:%ld] Initializing CallNotificationViewModel with call: %s, isScreenLocked: %{BOOL}d", v49, 0x30u);
    swift_arrayDestroy();
    v59 = v51;
    v39 = v101;
    MEMORY[0x24C226630](v59, -1, -1);
    MEMORY[0x24C226630](v49, -1, -1);

    (*(v111 + 8))(v100, v102);
  }

  else
  {

    (*(v111 + 8))(v24, v102);
    v58 = v113;
    v57 = v106;
    v52 = v104;
  }

  v60 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  *v60 = v48;
  v60[1] = v57;
  sub_24AA16768(v118, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  sub_24AA16768(v114, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder);
  v61 = type metadata accessor for CallNotificationPosterViewModel();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v64 = swift_allocObject();
  v65 = swift_unknownObjectRetain_n();
  v66 = sub_24AA48A94(v65, v64, v52, v57);
  v67 = *(a8 + v39);

  *(a8 + v39) = v66;
  sub_24AA16768(v118, v115);
  sub_24AA16768(v117, v116);
  v68 = sub_24AAB3734();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callConfirmationHelper) = sub_24AAB3714();
  v71 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
  v72 = v107;
  v73 = v108;
  *v71 = v107;
  v71[1] = v73;
  v74 = v57;
  ObjectType = swift_getObjectType();
  v115[0] = v48;
  swift_unknownObjectRetain();
  sub_24AA16D2C(v72);
  v111 = sub_24AA87578(v115, 0, v58 & 1, ObjectType, *(v74 + 8));
  v108 = v76;
  v77 = sub_24AA86BC8(v115, 0, 0, ObjectType);
  v79 = v78;
  swift_storeEnumTagMultiPayload();
  v80 = sub_24AAB3564();
  if (v80 && (v81 = v80, v82 = [v80 shouldHideContactWithLockState_], v81, v82))
  {
    v83 = MEMORY[0x277D84F90];
  }

  else
  {
    v83 = sub_24AA86F34(v115, ObjectType);
  }

  v84 = sub_24AAB35A4();
  v85 = sub_24AAB3574();
  if ([v84 isFaceTimeProvider])
  {

    if (v85)
    {
      v86 = 2;
    }

    else
    {
      v86 = 1;
    }
  }

  else
  {
    v87 = [v84 isTelephonyProvider];

    if (v87)
    {
      v86 = 0;
    }

    else
    {
      v86 = 3;
    }
  }

  v88 = sub_24AAB3554();
  v90 = v89;
  swift_unknownObjectRelease_n();
  v91 = v105;
  v92 = v108;
  *v105 = v111;
  v91[1] = v92;
  v91[2] = v77;
  v91[3] = v79;
  v93 = v110;
  sub_24AA44DD4(v112, v91 + *(v110 + 24), type metadata accessor for CallSubtitle);
  *(v91 + v93[7]) = v83;
  *(v91 + v93[8]) = v86;
  v94 = (v91 + v93[9]);
  *v94 = v88;
  v94[1] = v90;
  sub_24AA44DD4(v91, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel, type metadata accessor for CallStatusViewModel);
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked) = v113 & 1;
  sub_24AA23BC0();
  v95 = sub_24AAB3A64();
  v96 = sub_24AAB5144();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v115[0] = v98;
    *v97 = 136315650;
    *(v97 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v115);
    *(v97 + 12) = 2080;
    *(v97 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v115);
    *(v97 + 22) = 2048;
    *(v97 + 24) = 169;
    _os_log_impl(&dword_24AA0F000, v95, v96, "[%s:%s:%ld] CallNotificationViewModel features set up completed. Starting control recipe creation", v97, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v98, -1, -1);
    MEMORY[0x24C226630](v97, -1, -1);
  }

  sub_24AA2A2D4(v115);
  sub_24AA1D19C(v115);
  sub_24AA29C9C(v115);
  sub_24AA20C48(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  return a8;
}

uint64_t sub_24AA41C74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v36 = a7;
  v34 = a5;
  v35 = a6;
  v32 = a1;
  v33 = a3;
  v31 = a12;
  v30 = a13;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a10 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CallNotificationViewModel();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  (*(v20 + 16))(v23, a2, a10);
  (*(v15 + 16))(v19, a4, a11);
  return sub_24AA41024(v32, v23, v33, v19, v34, v35, v36, v27, a9, a10, a11, v31, *(&v31 + 1), v30);
}

uint64_t type metadata accessor for CallNotificationViewModel()
{
  result = qword_27EF85660;
  if (!qword_27EF85660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA42080(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24AA420CC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA47AAC(v2);
}

void sub_24AA421A0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_24AA4220C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + *a1);
  *(v3 + v4) = *(v2 + 24);
  return a2(v5);
}

void sub_24AA422A4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA1E39C(v2);
}

void sub_24AA422D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel) = v2;
  v4 = v2;
}

uint64_t sub_24AA42330(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_24AA2CDD0(a1, *(v1 + 32));
}

uint64_t sub_24AA4235C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA44FD0;

  return sub_24AA33E34(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA4241C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AA44FD0;

  return sub_24AA31E04();
}

uint64_t sub_24AA424D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AA44FD0;

  return sub_24AA37DD0(a1, v1);
}

uint64_t sub_24AA4256C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24AA425E4()
{
  v0 = sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for CallStatusViewModel(319);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_24AA42C9C();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_24AAB2D34();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24AA42C9C()
{
  if (!qword_27EF85670)
  {
    sub_24AAB2AA4();
    v0 = sub_24AAB5274();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF85670);
    }
  }
}

uint64_t sub_24AA42D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AA42D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AA42FB4()
{
  result = qword_27EF85700;
  if (!qword_27EF85700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF856E8, &qword_24AAB7600);
    sub_24AA43064(&qword_27EF85708, &qword_27EF85710, 0x277D6EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85700);
  }

  return result;
}

uint64_t sub_24AA43064(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24AA442A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24AA430D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA1E5B4(v2);
}

uint64_t sub_24AA43118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA3D2C0(a1, v4, v5, v6);
}

uint64_t sub_24AA431D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24AA1C8F4(v4);
}

uint64_t sub_24AA431FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45C0C(a1, v4, v5, v6);
}

uint64_t sub_24AA43340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45970(a1, v4, v5, v6);
}

id sub_24AA4345C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t keypath_set_63Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_24AA435B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AAB2AA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85750, &qword_24AAB7778);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_24AA1695C(a1, &v24 - v16, &qword_27EF855C0, &unk_24AAB7270);
  sub_24AA1695C(a2, &v17[v18], &qword_27EF855C0, &unk_24AAB7270);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_24AA1695C(v17, v12, &qword_27EF855C0, &unk_24AAB7270);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_24AA42080(&qword_27EF85758, MEMORY[0x277CC8C40]);
      v21 = sub_24AAB4E74();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_24AA169C4(v17, &qword_27EF855C0, &unk_24AAB7270);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_24AA169C4(v17, &qword_27EF85750, &qword_24AAB7778);
    v20 = 1;
    return v20 & 1;
  }

  sub_24AA169C4(v17, &qword_27EF855C0, &unk_24AAB7270);
  v20 = 0;
  return v20 & 1;
}

void sub_24AA438FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService) = v2;
  v4 = v2;
}

uint64_t sub_24AA4393C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) = *(v0 + 24);
}

uint64_t sub_24AA43980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AA439EC(uint64_t a1, uint64_t *a2)
{
  sub_24AA1695C(a1, v5, &qword_27EF85568, &qword_24AABC830);
  v3 = *a2;
  return sub_24AA1C538(v5);
}

uint64_t sub_24AA43AB4(uint64_t a1, uint64_t *a2)
{
  sub_24AA43A54(a1, v5);
  v3 = *a2;
  return sub_24AA1C194(v5);
}

uint64_t sub_24AA43B68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA43BA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AA44FD0;

  return sub_24AA40CBC(a1, v5);
}

uint64_t sub_24AA43C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA44FD0;

  return sub_24AA38E84(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA43D20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AA43DBC;

  return sub_24AA390C8(a1, v1);
}

uint64_t sub_24AA43DBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AA43F30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA43DBC;

  return sub_24AA39D18(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA43FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA3AF2C(a1, v4, v5, v6);
}

uint64_t sub_24AA440AC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA44FD0;

  return sub_24AA3A5B8(v7, a1, v4, v5, v6);
}

uint64_t sub_24AA44170(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AA44FD0;

  return sub_24AA3FA14(a1, v5);
}

uint64_t sub_24AA44244()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24AA442A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24AA442EC(uint64_t a1)
{
  v4 = *(sub_24AAB2CB4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AA44FD0;

  return sub_24AA3D978(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24AA4440C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_24AA44458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45680(a1, v4, v5, v6);
}

uint64_t sub_24AA44538(uint64_t a1)
{
  v4 = *(sub_24AAB2CB4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AA44FD0;

  return sub_24AA3E11C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24AA44658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA45774(a1, v4, v5, v6);
}

uint64_t objectdestroy_351Tm()
{
  v1 = sub_24AAB2CB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AA447E4(uint64_t a1)
{
  v4 = *(sub_24AAB2CB4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AA44FD0;

  return sub_24AA3E81C(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_69Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24AA44950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA3B628(a1, v4, v5, v6);
}

uint64_t sub_24AA44A04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AA44FD0;

  return sub_24AA40CBC(a1, v5);
}

uint64_t sub_24AA44ABC()
{
  v1 = *(v0 + 16);
  sub_24AA43A54(*(v0 + 24), v3);
  return sub_24AA1C194(v3);
}

unint64_t sub_24AA44B08()
{
  result = qword_27EF85800;
  if (!qword_27EF85800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85800);
  }

  return result;
}

uint64_t sub_24AA44B5C()
{
  sub_24AA15ED0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  if (*(v0 + 80))
  {
    v4 = *(v0 + 72);

    v5 = *(v0 + 80);
  }

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t sub_24AA44BE8()
{
  v1 = *(v0 + 16);
  sub_24AA43A54(*(v0 + 24), v3);
  return sub_24AA1C538(v3);
}

uint64_t block_copy_helper_404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AA44DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AA44E5C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_24AA44EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallStatusViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA45108()
{
  v1 = *v0;
  sub_24AAB54F4();
  MEMORY[0x24C225D50](v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA4517C()
{
  v1 = *v0;
  sub_24AAB54F4();
  MEMORY[0x24C225D50](v1);
  return sub_24AAB5524();
}

unint64_t sub_24AA451C0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24AA46D28(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24AA451F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_24AAB2C54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = sub_24AA46E80(MEMORY[0x277D84F90]);
  v17 = 0x277CCA000uLL;
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  v20 = v10;
  sub_24AA4698C(v18, 0xD000000000000012, 0x800000024AAD21D0, isUniquelyReferenced_nonNull_native);
  v21 = v43;
  v22 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(v1 + v22, v8);
  v23 = *(v10 + 48);
  if (v23(v8, 1, v9) == 1)
  {
    sub_24AA46E18(v8);
    v24 = &selRef_save;
LABEL_9:
    v34 = [objc_allocWithZone(*(v17 + 2992)) v24[22]];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v21;
    sub_24AA4698C(v34, 0x6E656D6D6F636552, 0xEE006E6F69746164, v35);
    v36 = v42;
    v37 = [objc_allocWithZone(*(v17 + 2992)) v24[22]];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v36;
    sub_24AA4698C(v37, 0x746176726573624FLL, 0xEB000000006E6F69, v38);
    return v42;
  }

  v39 = v21;
  v25 = *(v20 + 32);
  v25(v15, v8, v9);
  v26 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  v40 = v1;
  sub_24AA46DA8(v1 + v26, v6);
  if (v23(v6, 1, v9) == 1)
  {
    (*(v20 + 8))(v15, v9);
    sub_24AA46E18(v6);
    v17 = 0x277CCA000;
    v24 = &selRef_save;
    v21 = v39;
    v1 = v40;
    goto LABEL_9;
  }

  v27 = v41;
  v25(v41, v6, v9);
  result = sub_24AAB2C14();
  v24 = &selRef_save;
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v29 < 9.22337204e18)
  {
    v17 = 0x277CCA000uLL;
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v31 = v39;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v31;
    sub_24AA4698C(v30, 0xD000000000000011, 0x800000024AAD21F0, v32);
    v21 = v42;
    v33 = *(v20 + 8);
    v33(v27, v9);
    v33(v15, v9);
    v1 = v40;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24AA45680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA456A0, 0, 0);
}

uint64_t sub_24AA456A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_24AA46FE4;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_24AA47120();
  os_unfair_lock_unlock(v3 + 4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AA45774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA45794, 0, 0);
}

uint64_t sub_24AA45794()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_24AA470CC;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_24AA47120();
  os_unfair_lock_unlock(v3 + 4);

  v5 = v0[1];

  return v5();
}

void sub_24AA45868(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = a2;
  sub_24AA45F24();
  v7 = sub_24AA451F8();
  sub_24AA4616C();
  v8 = sub_24AAB4EE4();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v11[4] = a4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24AA45E98;
  v11[3] = a5;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t sub_24AA45970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA45990, 0, 0);
}

uint64_t sub_24AA45990()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_24AA46FC8;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_24AA47120();
  os_unfair_lock_unlock(v3 + 4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AA45A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(a1 + v9, v8);
  v10 = sub_24AAB2C54();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  result = sub_24AA46E18(v8);
  if (v12 == 1)
  {
    sub_24AAB2C44();
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_24AA46D38(v6, a1 + v9);
    result = swift_endAccess();
  }

  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 3;
  return result;
}

uint64_t sub_24AA45C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AA45C2C, 0, 0);
}

uint64_t sub_24AA45C2C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_24AA46F84;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_24AA46FA0();
  os_unfair_lock_unlock(v3 + 4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AA45D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(a1 + v9, v8);
  v10 = sub_24AAB2C54();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  result = sub_24AA46E18(v8);
  if (v12 == 1)
  {
    sub_24AAB2C44();
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_24AA46D38(v6, a1 + v9);
    return swift_endAccess();
  }

  return result;
}

id sub_24AA45E98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_24AA47080();
    v5 = sub_24AAB4E44();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_24AA45F24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_24AAB2C54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  sub_24AA46DA8(v1 + v14, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24AA46E18(v5);
  }

  (*(v7 + 32))(v13, v5, v6);
  sub_24AAB2C44();
  sub_24AAB2C14();
  v17 = v16;
  v18 = v16;
  v19 = *(v7 + 8);
  v19(v11, v6);
  result = (v19)(v13, v6);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v17 >= 1)
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = v17;
  }

  return result;
}

uint64_t sub_24AA4616C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_24AAB2C54();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_24AA46D38(v4, v0 + v7);
  swift_endAccess();
  v6(v4, 1, 1, v5);
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp;
  swift_beginAccess();
  sub_24AA46D38(v4, v0 + v8);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPreviewLatency) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 4;
  return result;
}

uint64_t sub_24AA462D4()
{
  v1 = v0[2];

  sub_24AA46E18(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp);
  sub_24AA46E18(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t type metadata accessor for CallHoldingAnalytics()
{
  result = qword_27EF85898;
  if (!qword_27EF85898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AA463A4()
{
  sub_24AA46460();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24AA46460()
{
  if (!qword_27EF858A8)
  {
    sub_24AAB2C54();
    v0 = sub_24AAB5274();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF858A8);
    }
  }
}

uint64_t getEnumTagSinglePayload for CallHoldingAnalytics.TipAnalyticsObservation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallHoldingAnalytics.TipAnalyticsObservation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AA4661C()
{
  result = qword_27EF858B0;
  if (!qword_27EF858B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF858B0);
  }

  return result;
}

unint64_t sub_24AA46670(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AAB54F4();
  sub_24AAB4F64();
  v6 = sub_24AAB5524();

  return sub_24AA46B04(a1, a2, v6);
}

uint64_t sub_24AA466E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF858B8, &qword_24AAB7A80);
  v39 = a2;
  result = sub_24AAB5424();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_24AAB54F4();
      sub_24AAB4F64();
      result = sub_24AAB5524();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24AA4698C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AA46670(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24AA466E8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24AA46670(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_24AAB54A4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24AA46BBC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_24AA46B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24AAB5474())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_24AA46BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF858B8, &qword_24AAB7A80);
  v2 = *v0;
  v3 = sub_24AAB5414();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_24AA46D28(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_24AA46D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA46DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA46E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AA46E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF858B8, &qword_24AAB7A80);
    v3 = sub_24AAB5434();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24AA46670(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24AA46FA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24AA47028()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AA47080()
{
  result = qword_27EF858C0;
  if (!qword_27EF858C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF858C0);
  }

  return result;
}

BOOL CallNotificationPosterViewModel.showingPoster.getter()
{
  if ((sub_24AA47230() & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  return *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView) != 0;
}

char *CallNotificationPosterViewModel.__allocating_init(call:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ObjectType = swift_getObjectType();

  return sub_24AA48A94(a1, v7, ObjectType, a2);
}

uint64_t sub_24AA47230()
{
  v1 = v0;
  v2 = sub_24AAB3AF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v9 = result;
    swift_unknownObjectRetain();
    v10 = [v9 contactIdentifiers];
    if (v10)
    {
      v11 = v10;
      v24 = v3;
      v12 = [objc_opt_self() predicateForContactsWithIdentifiers_];

      swift_getKeyPath();
      v25 = v1;
      sub_24AA48808();
      sub_24AAB2CF4();

      v13 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
      v14 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
      sub_24AAB3064();
      v15 = v14;
      sub_24AAB3054();
      v16 = sub_24AAB30B4();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_24AAB30A4();
      v19 = sub_24AAB3094();
      swift_unknownObjectRelease();

      if (v19)
      {
        sub_24AAB3AB4();
        swift_getKeyPath();
        v25 = v1;
        v20 = v19;
        sub_24AAB2CF4();

        MEMORY[0x24C2242F0](v20, *(v1 + v13));
        v21 = v24;
        (*(v24 + 104))(v6, *MEMORY[0x277D7EA60], v2);
        v22 = sub_24AAB3A94();
        (*(v21 + 8))(v6, v2);

        if (v22)
        {

          return 1;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

char *CallNotificationPosterViewModel.init(call:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_24AA48A94(a1, v2, ObjectType, a2);
}

void sub_24AA475A4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
  sub_24AA442A0(0, &qword_27EF85920, 0x277CBDAB8);
  v6 = v5;
  v7 = sub_24AAB5214();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();
  }
}

id sub_24AA476E8()
{
  v1 = v0;
  v2 = sub_24AA483E4();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call);
    v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call + 8);
    v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call);
    swift_getObjectType();
    if (sub_24AAB3954() == 4 && (sub_24AAB3864() & 1) != 0)
    {
      v7 = *(v5 + 8);
      v8 = sub_24AAB34D4();
      v9 = sub_24AAB3A64();
      v10 = sub_24AAB5144();
      v11 = os_log_type_enabled(v9, v10);
      if (v8)
      {
        if (v11)
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_24AA0F000, v9, v10, "makePosterView NO because call is screening", v12, 2u);
          MEMORY[0x24C226630](v12, -1, -1);
        }
      }

      else
      {
        if (v11)
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_24AA0F000, v9, v10, "makePosterView YES", v20, 2u);
          MEMORY[0x24C226630](v20, -1, -1);
        }

        sub_24AAB3AE4();
        swift_getKeyPath();
        sub_24AA48808();
        v21 = v3;
        sub_24AAB2CF4();

        v22 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
        v23 = sub_24AAB3AD4();
        sub_24AA485E8(v23);
        swift_getKeyPath();
        sub_24AAB2CF4();

        v24 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
        v25 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
        if (v25)
        {
          result = [v25 view];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v26 = result;
          [result setFrame_];
        }

        swift_getKeyPath();
        sub_24AAB2CF4();

        v27 = *(v1 + v24);
        if (v27)
        {
          v28 = *(v1 + v24);
          v29 = v27;
          return v28;
        }
      }
    }

    else
    {
      v13 = sub_24AAB3A64();
      v14 = sub_24AAB5144();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24AA0F000, v13, v14, "makePosterView NO because call is not ringing & incoming", v15, 2u);
        MEMORY[0x24C226630](v15, -1, -1);
      }
    }
  }

  else
  {
    v16 = sub_24AAB3A64();
    v17 = sub_24AAB5144();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24AA0F000, v16, v17, "makePosterView NO because contact nil", v18, 2u);
      MEMORY[0x24C226630](v18, -1, -1);
    }
  }

  return 0;
}

void sub_24AA47AAC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AA442A0(0, &qword_27EF85918, 0x277D75D28);
  v6 = v5;
  v7 = a1;
  v8 = sub_24AAB5214();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_24AA47C14()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x277D6EFF0];
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_24AA48F08;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_24AA4820C;
  v5[3] = &block_descriptor_1;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

void sub_24AA47D40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v23[-1] - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24AAB29D4();
    if (!v23[3])
    {

      sub_24AA48F28(v23);
      return;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v6 = v22;
    v7 = [v22 uniqueProxyIdentifier];
    v8 = sub_24AAB4EF4();
    v10 = v9;

    v11 = *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call);
    v12 = *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call + 8);
    swift_getObjectType();
    if (v8 == sub_24AAB39A4() && v10 == v13)
    {
    }

    else
    {
      v15 = sub_24AAB5474();

      if ((v15 & 1) == 0)
      {
LABEL_15:

LABEL_16:

        return;
      }
    }

    if ([v6 status] == 1)
    {
      swift_getKeyPath();
      v23[0] = v5;
      sub_24AA48808();
      sub_24AAB2CF4();

      v16 = *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
      if (v16)
      {
        v17 = sub_24AAB50F4();
        (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
        sub_24AAB50C4();
        v18 = v16;

        v19 = sub_24AAB50B4();
        v20 = swift_allocObject();
        v21 = MEMORY[0x277D85700];
        v20[2] = v19;
        v20[3] = v21;
        v20[4] = v5;
        sub_24AA330D4(0, 0, v3, &unk_24AAB7BB0, v20);

        return;
      }
    }

    goto LABEL_15;
  }
}

void *sub_24AA4804C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

uint64_t sub_24AA480C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24AAB50C4();
  *(v4 + 24) = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA4815C, v6, v5);
}

uint64_t sub_24AA4815C()
{
  v2 = v0[2];
  v1 = v0[3];

  MEMORY[0x24C2255E0](v3, 0.5, 1.0, 0.0);
  sub_24AAB3E24();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AA4820C(uint64_t a1)
{
  v2 = sub_24AAB29E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_24AAB29C4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24AA48300(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA483E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();
    v4 = [v3 contactIdentifiers];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() predicateForContactsWithIdentifiers_];

      swift_getKeyPath();
      sub_24AA48808();
      sub_24AAB2CF4();

      v7 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
      sub_24AAB3064();
      v8 = v7;
      sub_24AAB3054();
      v9 = sub_24AAB30B4();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      sub_24AAB30A4();
      v12 = sub_24AAB3094();
      swift_unknownObjectRelease();

      return v12;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_24AA48560()
{
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);

  return v1;
}

void sub_24AA485E8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA48808();
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AAB3AE4();
  v6 = v5;
  v7 = a1;
  v8 = sub_24AAB5214();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_24AA48740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
  *a2 = v4;

  return v4;
}

void sub_24AA487D0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA485E8(v2);
}

unint64_t sub_24AA48808()
{
  result = qword_27EF85528;
  if (!qword_27EF85528)
  {
    type metadata accessor for CallNotificationPosterViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85528);
  }

  return result;
}

uint64_t type metadata accessor for CallNotificationPosterViewModel()
{
  result = qword_27EF85908;
  if (!qword_27EF85908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24AA488AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA48808();
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
  *a2 = v4;

  return v4;
}

uint64_t CallNotificationPosterViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_logger;
  v2 = sub_24AAB3A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel___observationRegistrar;
  v6 = sub_24AAB2D34();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t CallNotificationPosterViewModel.__deallocating_deinit()
{
  CallNotificationPosterViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

char *sub_24AA48A94(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = *a2;
  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v8 = sub_24AAB3A84();
  v9 = __swift_project_value_buffer(v8, qword_27EF919D8);
  v10 = *(v8 - 8);
  v27 = v7;
  (*(v10 + 16))(&v4[v7], v9, v8);
  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_featureFlags;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__cancellables;
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__cancellables] = MEMORY[0x277D84FA0];
  v25 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController] = 0;
  v26 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView;
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView] = 0;
  v13 = [objc_opt_self() tu_contactStore];
  v14 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore] = v13;
  v15 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel___observationRegistrar;
  sub_24AAB2D24();
  if ([*&v4[v11] posterEnabledMac] && (swift_getObjectType(), v16 = *(a4 + 8), (sub_24AAB3574() & 1) == 0) && (sub_24AAB3864() & 1) != 0)
  {
    v17 = &v4[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call];
    *v17 = a1;
    *(v17 + 1) = a4;
    swift_unknownObjectRetain();
    v18 = sub_24AA476E8();
    sub_24AA47AAC(v18);
    sub_24AA47C14();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v10 + 8))(&v4[v27], v8);

    v19 = *&v4[v12];

    v20 = sub_24AAB2D34();
    (*(*(v20 - 8) + 8))(&v4[v15], v20);
    v21 = *(*v4 + 48);
    v22 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_24AA48DA8()
{
  result = sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24AAB2D34();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24AA48ED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AA48F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85740, &qword_24AAB76D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24AA48F94(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA485E8(v2);
}

uint64_t sub_24AA48FC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}
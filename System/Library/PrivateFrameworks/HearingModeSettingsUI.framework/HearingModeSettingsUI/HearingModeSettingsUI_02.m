uint64_t (*sub_251FF836C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FF7F08();
  return sub_251FF83B4;
}

uint64_t sub_251FF83E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_251FF8448(void *a1)
{
  v2 = sub_2520046A0();
  v26 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520042A0();
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_252004360();
  v30 = a1;
  sub_252004620();
  v17 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v7);
  v18 = *(v3 + 8);
  v25[1] = v3 + 8;
  v27 = v18;
  v18(v7, v2);
  v31 = v17;
  v30 = a1;
  v19 = a1;
  sub_252004290();
  sub_252004320();

  v20 = v28;
  v21 = *(v29 + 8);
  v29 += 8;
  v21(v13, v28);
  v30 = v19;
  sub_252004620();
  sub_251FEAB30(v7);
  v27(v7, v26);
  v31 = v17;
  v30 = v19;
  v22 = v19;
  sub_252004290();
  sub_252004320();

  v21(v13, v20);
  v23 = sub_252004350();

  return v23;
}

uint64_t sub_251FF87E4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___adjustMediaAssistSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___adjustMediaAssistSection) = a1;
}

uint64_t (*sub_251FF87FC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FF83C0();
  return sub_251FF8844;
}

void *sub_251FF8850()
{
  v1 = v0;
  v43 = sub_2520042A0();
  v39 = *(v43 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v43, v3);
  v42 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252004680();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = v0;
  sub_252004620();
  v14 = type metadata accessor for HearingAidSettingsViewController();
  v40 = sub_251FEAC98(v13);
  v44 = v15;
  v16 = *(v9 + 8);
  v16(v13, v8);
  *&v50 = v0;
  sub_252004670();
  sub_252004660();
  sub_251FF6CF8();
  sub_252004640();

  sub_252004660();
  v17 = v14;
  sub_252004690();
  v18 = sub_251FEAB30(v13);
  v20 = v19;
  v16(v13, v8);
  *&v50 = v0;
  sub_252004620();
  sub_251FEAB30(v13);
  v41 = v16;
  v38[1] = v9 + 8;
  v16(v13, v8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_252004360();
  v45 = v18;
  v46 = v20;
  v47 = v40;
  v48 = v44;
  v49 = v0;
  sub_252004310();

  result = sub_251FF6DB8();
  if (result)
  {
    v25 = result;
    v26 = sub_252003E60();

    LODWORD(v25) = sub_252004080();
    if (!v25)
    {

      *&v50 = v1;
      sub_252004620();
      sub_251FEAB30(v13);
      v41(v13, v8);
      *(&v51 + 1) = v17;
      *&v50 = v1;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = v1;
      v37 = v42;
      sub_252004290();
      sub_252004340();
      (*(v39 + 8))(v37, v43);
      v35 = sub_252004350();

LABEL_8:

      return v35;
    }

    *&v50 = v1;
    sub_252004620();
    v38[0] = v17;
    sub_251FEAB30(v13);
    v40 = v8;
    v41(v13, v8);
    v50 = 0u;
    v51 = 0u;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v42;
    sub_252004290();
    sub_252004340();

    v28 = *(v39 + 8);
    v28(v27, v43);
    result = sub_251FF6DB8();
    if (result)
    {
      v29 = result;

      v30 = sub_252003E60();

      LODWORD(v29) = sub_252004080();
      if (v29 == 1)
      {
        *&v50 = v1;
        sub_252004620();
        v31 = v38[0];
        sub_251FEAB30(v13);
        v41(v13, v40);
        *(&v51 + 1) = v31;
        *&v50 = v1;
        type metadata accessor for HearingAidTuningVoiceEntertainmentController();
        v1;
        v32 = v42;
        sub_252004290();
        sub_252004320();
        v33 = (v28)(v32, v43);
        MEMORY[0x28223BE20](v33, v34);
        sub_252004330();
      }

      v35 = sub_252004350();
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_251FF9044()
{
  v1 = v0;
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520042A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_251FF6DB8();
  if (result)
  {
    v15 = result;
    v16 = sub_252003E60();

    LODWORD(v15) = sub_252004080();
    if (!v15)
    {
      return MEMORY[0x277D84F90];
    }

    result = sub_251FF6DB8();
    if (result)
    {
      v17 = result;
      v18 = sub_252003E50();

      v19 = [v18 firmwareVersion];
      v29 = v9;
      v30 = v8;
      if (v19)
      {
        v28 = sub_2520046E0();
      }

      else
      {
        v28 = 0;
      }

      v27 = (*((*MEMORY[0x277D85000] & *v1) + 0x158))();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_252004360();
      v31 = v1;
      sub_252004620();
      v24 = type metadata accessor for HearingAidSettingsViewController();
      sub_251FEAB30(v7);
      (*(v3 + 8))(v7, v2);
      v32 = v24;
      v31 = v1;
      sub_251FD6770(0, &qword_27F4C7188, off_2796F1698);
      v1;
      sub_252004290();
      sub_252004320();

      v25 = (*(v29 + 8))(v13, v30);
      MEMORY[0x28223BE20](v25, v26);
      sub_252004330();

      v20 = sub_252004350();

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251FF9424()
{
  result = sub_251FF6DB8();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v1 = result;
  v2 = sub_252003E60();

  LODWORD(v1) = sub_252004140();
  if (v1 != 2)
  {
    return 1;
  }

  result = sub_251FF6DB8();
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_252003E60();

  LODWORD(v3) = sub_252004110();
  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_251FF94C4()
{
  v1 = sub_2520043D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252004920();
  v138 = *(v7 - 8);
  v8 = *(v138 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v137 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6900, &qword_2520073C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v136 = &v112 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7190, &unk_252008950);
  v15 = *(*(v129 - 1) + 64);
  MEMORY[0x28223BE20](v129, v16);
  v128 = &v112 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E48, &qword_252007E90);
  v18 = *(*(v127 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v127, v19);
  v126 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = MEMORY[0x28223BE20](v23, v24);
  MEMORY[0x28223BE20](v25, v26);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7198, &qword_252008960);
  v27 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121, v28);
  v118 = &v112 - v29;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71A0, &qword_252008968);
  v122 = *(v124 - 8);
  v30 = *(v122 + 64);
  MEMORY[0x28223BE20](v124, v31);
  v119 = &v112 - v32;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71A8, &qword_252008970);
  v123 = *(v125 - 8);
  v33 = *(v123 + 64);
  MEMORY[0x28223BE20](v125, v34);
  v120 = &v112 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71B0, &qword_252008978);
  v131 = *(v36 - 8);
  v132 = v36;
  v37 = *(v131 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v130 = &v112 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71B8, &unk_252008980);
  v134 = *(v40 - 8);
  v135 = v40;
  v41 = *(v134 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v133 = &v112 - v43;
  v44 = [v0 specifier];
  if (!v44)
  {
    __break(1u);
    goto LABEL_37;
  }

  v45 = v44;
  v46 = [v44 userInfo];

  if (v46)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v141 = 0u;
    v142 = 0u;
  }

  v47 = v1;
  v143 = v141;
  v144 = v142;
  if (!*(&v142 + 1))
  {
    goto LABEL_28;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v116 = v7;
  v48 = v140;
  v49 = sub_2520046B0();
  v117 = v48;
  v50 = [v48 objectForKey_];

  if (v50)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v141 = 0u;
    v142 = 0u;
  }

  v143 = v141;
  v144 = v142;
  v47 = v1;
  if (!*(&v142 + 1))
  {

LABEL_28:
    sub_251FC6470(&v143, &qword_27F4C69B0, &unk_252007A00);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_29;
  }

  v115 = v140;
  v51 = sub_2520046B0();
  v52 = v117;
  v53 = [v117 objectForKey_];

  if (v53)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v141 = 0u;
    v142 = 0u;
  }

  v143 = v141;
  v144 = v142;
  v47 = v1;
  if (!*(&v142 + 1))
  {

    goto LABEL_28;
  }

  sub_251FD6770(0, &qword_27F4C70A0, 0x277D12B98);
  if (swift_dynamicCast())
  {
    v114 = v0;
    v113 = v140;
    sub_252003F10();
    v54 = sub_252003EF0();
    v143 = v115;
    *&v141 = 58;
    *(&v141 + 1) = 0xE100000000000000;
    *&v140 = 45;
    *(&v140 + 1) = 0xE100000000000000;
    sub_251FD671C();
    v112 = sub_2520049E0();
    v56 = v55;
    v57 = v54;
    v58 = sub_252003EE0();

    if (*(v58 + 16))
    {
      v112 = sub_251FD4318(v112, v56);
      v60 = v59;

      if (v60)
      {
        v61 = *(*(v58 + 56) + 8 * v112);

        v62 = v114;
        v63 = *(v114 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient);
        v64 = v113;
        *(v114 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient) = v113;
        v65 = v64;

        v66 = *(v62 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice);
        *(v62 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice) = v61;
        v67 = v61;

        v68 = (v62 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_address);
        v69 = *(v62 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_address + 8);
        v70 = *(&v115 + 1);
        *v68 = v115;
        v68[1] = v70;

        v71 = sub_251FF6DB8();
        if (v71)
        {
          v72 = v71;
          v73 = sub_252003E60();

          sub_2520040E0();
          v74 = sub_251FF6DB8();
          if (v74)
          {
            v75 = v74;
            *&v115 = v67;
            v76 = sub_252003E60();

            sub_252003FE0();
            v77 = sub_251FF6DB8();
            if (v77)
            {
              v78 = v77;
              v79 = sub_252003E60();

              sub_252003FF0();
              sub_251FD67B8(&qword_27F4C71C0, &qword_27F4C6E48, &qword_252007E90);
              sub_252004460();
              v80 = sub_251FF6DB8();
              if (v80)
              {
                v81 = v80;
                v113 = v65;
                v82 = sub_252003E60();

                sub_2520040B0();
                v83 = sub_251FF6DB8();
                if (v83)
                {
                  v84 = v83;

                  sub_252003E30();

                  sub_252004280();

                  sub_251FD67B8(&qword_27F4C71C8, &qword_27F4C7198, &qword_252008960);
                  sub_251FD67B8(&qword_27F4C71D0, &qword_27F4C7190, &unk_252008950);
                  v85 = v119;
                  sub_252004460();
                  sub_251FD67B8(&qword_27F4C71D8, &qword_27F4C71A0, &qword_252008968);
                  v86 = v120;
                  v87 = v124;
                  sub_252004560();
                  (*(v122 + 8))(v85, v87);
                  sub_251FD67B8(&qword_27F4C71E0, &qword_27F4C71A8, &qword_252008970);
                  v88 = v125;
                  v89 = sub_252004520();
                  (*(v123 + 8))(v86, v88);
                  *&v143 = v89;
                  sub_251FD6770(0, &qword_27F4C6928, 0x277D85C78);
                  v90 = sub_252004940();
                  *&v141 = v90;
                  v91 = sub_252004900();
                  v129 = *(*(v91 - 8) + 56);
                  v92 = v136;
                  v129(v136, 1, 1, v91);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71E8, &unk_252008990);
                  sub_251FD67B8(&qword_27F4C71F0, &qword_27F4C71E8, &unk_252008990);
                  sub_251FD3B60();
                  v93 = v130;
                  sub_252004540();
                  sub_251FC6470(v92, &qword_27F4C6900, &qword_2520073C0);

                  v94 = v137;
                  sub_252004910();
                  v95 = sub_252004940();
                  *&v143 = v95;
                  v129(v92, 1, 1, v91);
                  sub_251FD67B8(&qword_27F4C71F8, &qword_27F4C71B0, &qword_252008978);
                  v96 = v132;
                  v97 = v133;
                  sub_252004550();
                  sub_251FC6470(v92, &qword_27F4C6900, &qword_2520073C0);

                  (*(v138 + 8))(v94, v116);
                  (*(v131 + 8))(v93, v96);
                  swift_allocObject();
                  v98 = v114;
                  swift_unknownObjectWeakInit();
                  sub_251FD67B8(&qword_27F4C7200, &qword_27F4C71B8, &unk_252008980);
                  v99 = v135;
                  sub_252004580();

                  (*(v134 + 8))(v97, v99);
                  v100 = (*((*MEMORY[0x277D85000] & *v98) + 0x100))(&v143);
                  sub_252004480();

                  v100(&v143, 0);
                  v101 = type metadata accessor for HearingAidSettingsViewController();
                  v139.receiver = v98;
                  v139.super_class = v101;
                  objc_msgSendSuper2(&v139, sel_viewDidLoad);

                  return;
                }

                goto LABEL_41;
              }

LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              return;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
    }

    v47 = v1;
  }

  else
  {
  }

LABEL_29:
  v102 = sub_251FDFB88();
  (*(v2 + 16))(v6, v102, v47);
  v103 = sub_2520043B0();
  v104 = sub_2520048B0();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v143 = v106;
    *v105 = 136315650;
    *(v105 + 4) = sub_251FC55E0(0x4C64694477656976, 0xED0000292864616FLL, &v143);
    *(v105 + 12) = 2048;
    *(v105 + 14) = 214;
    *(v105 + 22) = 2080;
    sub_252003F10();
    v107 = sub_252003EF0();
    sub_252003EE0();

    sub_252003EC0();
    v108 = sub_252004610();
    v110 = v109;

    v111 = sub_251FC55E0(v108, v110, &v143);

    *(v105 + 24) = v111;
    _os_log_impl(&dword_251FB5000, v103, v104, "%s: %ld Dependencies not meet! %s", v105, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253097030](v106, -1, -1);
    MEMORY[0x253097030](v105, -1, -1);
  }

  (*(v2 + 8))(v6, v47);
}

uint64_t sub_251FFA6D8()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v70 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v70 - v14;
  v16 = sub_251FF6DB8();
  if (!v16)
  {
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    v60 = v3;
    v61 = sub_2520047A0();
    v62 = sub_2520046B0();
    [v1 setValue:v61 forKey:v62];

    v63 = v60;
    v64 = sub_251FDFB88();
    (*(v60 + 16))(v8, v64, v2);
    v65 = sub_2520043B0();
    v66 = sub_2520048B0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v63;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v80[0] = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_251FC55E0(0x6569666963657073, 0xEC00000029287372, v80);
      *(v68 + 12) = 2048;
      *(v68 + 14) = 249;
      _os_log_impl(&dword_251FB5000, v65, v66, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty conroller!", v68, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x253097030](v69, -1, -1);
      MEMORY[0x253097030](v68, -1, -1);

      (*(v67 + 8))(v8, v2);
    }

    else
    {

      (*(v63 + 8))(v8, v2);
    }

    return 0;
  }

  v17 = sub_251FDFB88();
  (*(v3 + 16))(v15, v17, v2);
  v18 = sub_2520043B0();
  v19 = sub_2520048C0();
  v20 = os_log_type_enabled(v18, v19);
  v73 = v2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v80[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_251FC55E0(0x6569666963657073, 0xEC00000029287372, v80);
    *(v21 + 12) = 2048;
    *(v21 + 14) = 253;
    _os_log_impl(&dword_251FB5000, v18, v19, "%s: %ld Updated UI", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v23 = v22;
    v2 = v73;
    MEMORY[0x253097030](v23, -1, -1);
    MEMORY[0x253097030](v21, -1, -1);
  }

  v74 = *(v3 + 8);
  v75 = v3 + 8;
  v24 = v74(v15, v2);
  v76 = v79;
  v25 = MEMORY[0x277D85000];
  v79[0] = (*((*MEMORY[0x277D85000] & *v1) + 0x148))(v24);
  v79[1] = (*((*v25 & *v1) + 0x110))();
  v79[2] = (*((*v25 & *v1) + 0x130))();
  v79[3] = (*((*v25 & *v1) + 0x108))();
  result = (*((*v25 & *v1) + 0x150))();
  v27 = 0;
  v79[4] = result;
  v28 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice;
  v77 = 0x800000025200F160;
  v29 = MEMORY[0x277D84F90];
  *&v30 = 136315138;
  v72 = v30;
LABEL_5:
  v71 = v29;
  if (v27 <= 5)
  {
    v31 = 5;
  }

  else
  {
    v31 = v27;
  }

  v32 = v27;
  while (v31 != v32)
  {
    v33 = v76[v32];
    v34 = *(v1 + v28);
    if (v34)
    {
      v35 = v76[v32];

      v36 = v34;
      v37 = sub_251FEAFA4();

      if (v37)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = v76[v32];
    }

    sub_2520043A0();
    v39 = sub_2520043B0();
    v40 = sub_2520048B0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v78 = v42;
      *v41 = v72;
      *(v41 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v78);
      _os_log_impl(&dword_251FB5000, v39, v40, "%s: connected device !", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x253097030](v42, -1, -1);
      v43 = v41;
      v2 = v73;
      MEMORY[0x253097030](v43, -1, -1);
    }

    result = v74(v12, v2);
    v44 = *(v1 + v28);
    if (!v44)
    {
      goto LABEL_49;
    }

    v37 = v44;
LABEL_20:
    v45 = sub_252003E60();

    v46 = sub_2520040D0();
    if (v46 == 1)
    {
      goto LABEL_34;
    }

    if (v33 >> 62)
    {
      result = sub_252004B20();
      if (!result)
      {
        goto LABEL_34;
      }
    }

    else
    {
      result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_34;
      }
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x253096650](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v47 = *(v33 + 32);
    }

    v48 = v47;
    v49 = [v47 identifier];

    if (!v49)
    {
LABEL_34:
      v29 = v71;
      result = swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v29;
      if ((result & 1) == 0)
      {
        result = sub_251FFBC6C(0, *(v29 + 16) + 1, 1);
        v29 = v80[0];
      }

      v55 = *(v29 + 16);
      v54 = *(v29 + 24);
      if (v55 >= v54 >> 1)
      {
        result = sub_251FFBC6C((v54 > 1), v55 + 1, 1);
        v29 = v80[0];
      }

      v27 = v32 + 1;
      *(v29 + 16) = v55 + 1;
      *(v29 + 8 * v55 + 32) = v33;
      if (v32 == 4)
      {
        goto LABEL_41;
      }

      goto LABEL_5;
    }

    v50 = sub_2520046E0();
    v52 = v51;

    if (v50 == 0xD000000000000018 && v77 == v52)
    {
    }

    else
    {
      v53 = sub_252004B90();

      if ((v53 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    ++v32;

    if (v32 == 5)
    {
      v29 = v71;
LABEL_41:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69D0, &qword_252007408);
      swift_arrayDestroy();
      v56 = sub_251FD1C74(v29);

      sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
      v57 = sub_2520047A0();
      v58 = sub_2520046B0();
      [v1 setValue:v57 forKey:v58];

      v59 = sub_251FD1A78(v56);

      return v59;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

id sub_251FFB090(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HearingAidSettingsViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  return [v1 reloadSpecifiers];
}

void *sub_251FFB154()
{
  result = sub_251FF6DB8();
  if (result)
  {
    v1 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v2 = sub_252003E60();

    sub_2520040D0();
    return sub_252004970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FFB324()
{
  v1 = v0;
  v2 = sub_251FF6DB8();
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *&v0[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v2;
  type metadata accessor for HearingAssistFlowController();
  v8 = HearingAssistFlowController.__allocating_init(withDevice:serviceClient:flow:)(v4, v3, 1);
  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = (*((*MEMORY[0x277D85000] & *v8) + 0x88))();
    [v6 presentViewController:v7 animated:1 completion:0];
  }
}

unint64_t sub_251FFB484(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AC8, &qword_252007F60);
    v2 = sub_252004B50();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_251FC63B0(&v25, v27);
        sub_251FC63B0(v27, v28);
        sub_251FC63B0(v28, &v26);
        result = sub_251FD4318(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_251FC63B0(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_251FC63B0(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_251FFB748(uint64_t a1, void (*a2)(void))
{
  result = sub_251FF6DB8();
  if (result)
  {
    v4 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v5 = sub_252003E60();

    a2();
    return sub_252004970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_251FFB7E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  result = sub_251FF6DB8();
  if (result)
  {
    v7 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v8 = sub_252003E60();

    a4();
    v9 = sub_252004970();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FFB8B0(void *a1, void (*a2)(uint64_t))
{
  v4 = sub_251FF6DB8();
  if (v4)
  {
    v5 = v4;
    v7 = sub_252003E60();

    if ([a1 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    a2(v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_251FFB954(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v6 = a3;
  v11 = a1;
  v7 = sub_251FF6DB8();
  if (v7)
  {
    v8 = v7;
    v9 = sub_252003E60();

    if ([v6 BOOLValue])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    a4(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_251FFB9FC(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HearingAidSettingsViewController();
  v3 = objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  return (*((*MEMORY[0x277D85000] & *v1) + 0x1B0))(v3);
}

void sub_251FFBB30()
{
  sub_251FF6DB8();
  v0 = objc_allocWithZone(sub_252003D10());
  v1 = sub_252003D00();
  sub_252003CE0();
}

id HearingAidSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingAidSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_251FFBC6C(void *a1, int64_t a2, char a3)
{
  result = sub_251FFBC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251FFBC8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69C8, &qword_252007400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69D0, &qword_252007408);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_251FFBDC0()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient) = 0;
  v1 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_address);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_listeners) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___hearingOptionsControlCenterSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___adjustMediaAssistSection) = 0;
  sub_252004B10();
  __break(1u);
}

uint64_t sub_251FFBE94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_252004890();
}

uint64_t sub_251FFBED0()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FFBF08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_251FF6DB8();

    if (v2)
    {
      v3 = sub_252003E60();

      sub_252004080();
      sub_251FE2F84();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    sub_252004970();
  }
}

void sub_251FFBFB0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_251FF6DB8();

    if (v4)
    {
      v5 = sub_252003E60();

      if ([a1 respondsToSelector_])
      {
        [a1 BOOLValue];
        sub_252004090();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_251FFC068(void *a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7228, &qword_252008A58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  *(inited + 32) = 0x6E6F687064616568;
  *(inited + 40) = 0xEF65636976654465;
  *(inited + 48) = sub_251FF6DB8();
  sub_251FFC444(inited);
  swift_setDeallocating();
  sub_251FC6470(inited + 32, &qword_27F4C7230, &unk_252008A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA8, &unk_2520077D0);
  v5 = sub_252004600();

  [a1 setUserInfo_];
}

void sub_251FFC17C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_251FF6DB8();
    if (v2)
    {
      v3 = *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient];
      if (v3)
      {
        v4 = v2;
        type metadata accessor for HearingAssistFlowController();
        v5 = v3;
        v6 = sub_251FC1CE0();
        v7 = HearingAssistFlowController.__allocating_init(withDevice:serviceClient:flow:)(v4, v5, v6);
        v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x88))();
        [v1 presentViewController:v8 animated:1 completion:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_251FFC284(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for AnyHearingFeatureContentProvider();
  v7 = sub_251FF6DB8();
  v8 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v7);
  v9 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2520073B0;
  strcpy((inited + 32), "marketingName");
  v13 = MEMORY[0x277D837D0];
  *(inited + 46) = -4864;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = 0x6F69737265567766;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 120) = v13;
  strcpy((inited + 128), "versionNumber");
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 142) = -4864;
  *(inited + 144) = v6;

  sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  v14 = sub_252004600();

  [a1 setUserInfo_];
}

unint64_t sub_251FFC444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7238, &qword_252008A70);
    v3 = sub_252004B50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_251FD4318(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_251FFC544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7220, &qword_252008A50);
    v3 = sub_252004B50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_251FD4318(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_251FFC640(const char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v29 - v5;
  v7 = sub_252003B10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2520043D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_251FDFB88();
  (*(v14 + 16))(v18, v19, v13);
  v20 = sub_2520043B0();
  v21 = sub_2520048C0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a1;
    v24 = v22;
    *v22 = 0;
    _os_log_impl(&dword_251FB5000, v20, v21, v23, v22, 2u);
    MEMORY[0x253097030](v24, -1, -1);
  }

  (*(v14 + 8))(v18, v13);
  sub_252003B00();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_251FC6470(v6, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v8 + 32))(v12, v6, v7);
  v26 = [objc_opt_self() sharedApplication];
  v27 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FD6138(&qword_27F4C6A60);
  v28 = sub_252004600();

  [v26 openURL:v27 options:v28 completionHandler:0];

  return (*(v8 + 8))(v12, v7);
}

id sub_251FFCED0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7248, &qword_252008B10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16[-v6];
  v8 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider;
  v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75A30]) initWithFrame_];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
    sub_2520042B0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_251FD67B8(&qword_27F4C7260, &qword_27F4C7248, &qword_252008B10);
    sub_252004580();

    (*(v3 + 8))(v7, v2);
    v12 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))(v16);
    sub_252004480();

    v12(v16, 0);
    v13 = *(v0 + v8);
    *(v1 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

uint64_t sub_251FFD144(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_251FFD158(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FFCED0();
  return sub_251FFD1A0;
}

void sub_251FFD1A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider) = v2;
}

id sub_251FFD1B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAxis_];
  [v0 setSpacing_];
  return v0;
}

void sub_251FFD2D0(void *a1)
{
  v3 = sub_2520043D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E50, &qword_252007E98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v76 - v13;
  if (!a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ([a1 userInfo])
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v86 = v84;
  v87 = v85;
  if (!*(&v85 + 1))
  {
    goto LABEL_19;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v15 = v83;
  v16 = sub_2520046B0();
  v82 = v15;
  v17 = [v15 objectForKey_];

  if (v17)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v86 = v84;
  v87 = v85;
  if (!*(&v85 + 1))
  {

LABEL_19:
    sub_251FD74F0(&v86);
    goto LABEL_20;
  }

  sub_252003EC0();
  if (swift_dynamicCast())
  {
    v18 = v1;
    v19 = v83;
    v20 = sub_251FEAFA4();
    if (v20)
    {
      v81 = v19;
      v21 = *(v18 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice);
      *(v18 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice) = v20;
      v80 = v20;

      v22 = sub_251FFD2C4();
      if (v22)
      {
        v23 = v22;
        v24 = sub_252003E60();

        sub_252003FB0();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_251FD67B8(&qword_27F4C7280, &qword_27F4C6E50, &qword_252007E98);
        sub_252004580();

        (*(v10 + 8))(v14, v9);
        v25 = MEMORY[0x277D85000];
        v26 = (*((*MEMORY[0x277D85000] & *v18) + 0x98))(&v86);
        sub_252004480();

        v26(&v86, 0);
        v27 = *(v18 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView);
        v28 = [v27 arrangedSubviews];
        sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
        v29 = sub_2520047B0();

        if (v29 >> 62)
        {
          v30 = sub_252004B20();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = v81;

        if (v30)
        {

          return;
        }

        v37 = sub_2520027CC();
        v38 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

        v39 = v38;
        [v39 setTranslatesAutoresizingMaskIntoConstraints_];
        [v39 setContentMode_];

        v79 = v39;
        v40 = [v27 addArrangedSubview_];
        v41 = *((*v25 & *v18) + 0x70);
        v42 = (*v25 & *v18) + 112;
        v43 = (v41)(v40);
        v44 = sub_251FFD2C4();
        if (v44)
        {
          v45 = v44;
          v46 = sub_252003E60();

          sub_252003F70();
          v48 = v47;

          LODWORD(v49) = v48;
          [v43 setValue_];

          v50 = v41();
          [v27 addArrangedSubview_];

          v51 = sub_2520027CC();
          v52 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

          v53 = v52;
          [v53 setContentMode_];
          [v53 setTranslatesAutoresizingMaskIntoConstraints_];

          [v27 addArrangedSubview_];
          v54 = [v18 contentView];
          [v54 addSubview_];

          v78 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_252007390;
          v77 = v41;
          v56 = [v27 leadingAnchor];
          v57 = [v18 contentView];
          v58 = [v57 leadingAnchor];
          v76 = v42;
          v59 = v58;

          v60 = [v56 constraintEqualToAnchor:v59 constant:10.0];
          *(v55 + 32) = v60;
          v61 = [v27 trailingAnchor];
          v62 = [v18 contentView];
          v63 = [v62 trailingAnchor];

          v64 = [v61 constraintEqualToAnchor:v63 constant:-10.0];
          *(v55 + 40) = v64;
          v65 = [v27 topAnchor];
          v66 = [v18 contentView];
          v67 = [v66 topAnchor];

          v68 = [v65 constraintEqualToAnchor:v67 constant:10.0];
          *(v55 + 48) = v68;
          v69 = [v27 bottomAnchor];
          v70 = [v18 contentView];
          v71 = [v70 bottomAnchor];

          v72 = [v69 constraintEqualToAnchor:v71 constant:-10.0];
          *(v55 + 56) = v72;
          sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
          v73 = sub_2520047A0();

          [v78 activateConstraints_];

          v74 = v77();
          v75 = sub_2520046B0();
          [v74 setAccessibilityIdentifier_];

          return;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_20:
  v32 = sub_251FDFB88();
  (*(v4 + 16))(v8, v32, v3);
  v33 = sub_2520043B0();
  v34 = sub_2520048B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v86 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_251FC55E0(0xD00000000000001ALL, 0x800000025200F500, &v86);
    *(v35 + 12) = 2048;
    *(v35 + 14) = 67;
    _os_log_impl(&dword_251FB5000, v33, v34, "%s: %ld Depedencies not meet, bailing out of HearingAidTuningAmplificationSliderCell refresh", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x253097030](v36, -1, -1);
    MEMORY[0x253097030](v35, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
}

uint64_t sub_251FFDF44()
{
  v1 = sub_2520046A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0;
  sub_252004620();
  type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v7 = sub_251FEAB30(v6);
  (*(v2 + 8))(v6, v1);
  return v7;
}

id sub_251FFE100()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  v2 = [v1 accessibilityTraits];

  return v2;
}

id sub_251FFE17C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v5 = a1;
  v6 = v4();
  v7 = [v6 *a3];

  if (v7)
  {
    sub_2520046E0();

    v7 = sub_2520046B0();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_251FFE258(SEL *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  v4 = [v3 *a1];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2520046E0();

  return v5;
}

void sub_251FFE324(SEL *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v4 = v3();
  [v4 *a1];

  v5 = v3();
  [v5 sendActionsForControlEvents_];
}

void sub_251FFE3E0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v7 = a1;
  v5 = v4();
  [v5 *a3];

  v6 = v4();
  [v6 sendActionsForControlEvents_];
}

double sub_251FFE52C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  [v1 accessibilityActivationPoint];
  v3 = v2;

  return v3;
}

uint64_t sub_251FFE6A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252007360;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  *(v1 + 56) = sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
  *(v1 + 32) = v2;
  return v1;
}

id sub_251FFE750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider] = 0;
  v8 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAxis_];
  [v9 setSpacing_];
  *&v4[v8] = v9;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice] = 0;
  if (a3)
  {
    v10 = sub_2520046B0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_251FFE8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider] = 0;
  v6 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAxis_];
  [v7 setSpacing_];
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice] = 0;
  if (a3)
  {
    v8 = sub_2520046B0();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v8);

  return v9;
}

id sub_251FFE9FC(void *a1)
{
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider] = 0;
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAxis_];
  [v4 setSpacing_];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_251FFEBAC(unsigned __int8 a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10[14] = 2;
    }

    else
    {
      v10[15] = 3;
    }
  }

  else if (a1)
  {
    v10[13] = 1;
  }

  else
  {
    v10[12] = 0;
  }

  sub_252004620();
  v8 = sub_251FEAB30(v7);
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_251FFED88(unsigned __int8 a1)
{
  v2 = sub_2520046A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v7 + 8);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v13[13] = 2;
      sub_252004620();
      v9 = sub_251FEAB30(v6);
      v11 = *v8;
      (*v8)(v6, v2);
      v13[12] = 2;
    }

    else
    {
      v13[15] = 3;
      sub_252004620();
      v9 = sub_251FEAB30(v6);
      v11 = *v8;
      (*v8)(v6, v2);
      v13[14] = 3;
    }

    sub_252004620();
    goto LABEL_9;
  }

  if (a1)
  {
    v13[11] = 1;
    sub_252004620();
    v9 = sub_251FEAB30(v6);
    v11 = *v8;
    (*v8)(v6, v2);
    v13[10] = 1;
    sub_252004620();
LABEL_9:
    sub_251FEAB30(v6);
    v11(v6, v2);
    return v9;
  }

  v13[9] = 0;
  sub_252004620();
  v9 = sub_251FEAC98(v6);
  v10 = *v8;
  (*v8)(v6, v2);
  v13[8] = 0;
  sub_252004620();
  sub_251FEAC98(v6);
  v10(v6, v2);
  return v9;
}

id sub_251FFF0E8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_252004020();
    }

    else
    {
      sub_252003F90();
    }
  }

  else if (a3)
  {
    sub_252004210();
  }

  else
  {
    sub_252004240();
  }

  return [a1 setValue_];
}

uint64_t sub_251FFF15C(void *a1, void *a2, int a3)
{
  v6 = sub_2520043D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251FDFB88();
  (*(v7 + 16))(v11, v12, v6);
  v13 = a1;
  v14 = a2;
  v15 = sub_2520043B0();
  v16 = sub_2520048C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136316674;
    *(v18 + 4) = sub_251FC55E0(0xD00000000000001BLL, 0x800000025200F570, &v29);
    v28 = a3;
    *(v18 + 12) = 2048;
    *(v18 + 14) = 202;
    *(v18 + 22) = 2048;
    sub_252004240();
    *(v18 + 24) = v20;
    *(v18 + 32) = 2048;
    sub_252004210();
    *(v18 + 34) = v21;
    *(v18 + 42) = 2048;
    sub_252004020();
    *(v18 + 44) = v22;
    *(v18 + 52) = 2048;
    sub_252003F90();
    *(v18 + 54) = v23;
    *(v18 + 62) = 2048;
    LOBYTE(a3) = v28;
    [v14 value];
    *(v18 + 64) = v24;
    _os_log_impl(&dword_251FB5000, v15, v16, "%s: %ld  b:%f t:%f ns:%f ov:%f slider:%f", v18, 0x48u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x253097030](v19, -1, -1);
    MEMORY[0x253097030](v18, -1, -1);

    (*(v7 + 8))(v11, v27);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  [v14 value];
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return sub_252004030();
    }

    else
    {
      return sub_252003FA0();
    }
  }

  else if (a3)
  {
    return sub_252004220();
  }

  else
  {
    return sub_252004250();
  }
}

id sub_251FFF418(void *a1, unsigned __int8 a2)
{
  [a1 value];
  v5 = v4;
  v6 = AXFormatFloatWithPercentage();
  if (v6)
  {
    v7 = v6;
    v8 = sub_2520046E0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = v8;
      if (v5 <= 0.5)
      {
        v11 = 0x72656B72614420;
        v12 = 0xE700000000000000;
      }

      else
      {
        v11 = 0x6574686769724220;
        v12 = 0xE900000000000072;
      }
    }

    else
    {
      v16 = v8;
      if (v5 <= 0.5)
      {
        v11 = 0x7466654C20;
        v12 = 0xE500000000000000;
      }

      else
      {
        v11 = 0x746867695220;
        v12 = 0xE600000000000000;
      }
    }

    MEMORY[0x253096310](v11, v12);
    return v16;
  }

  if (a2 != 2)
  {
    sub_252004A70();

    v16 = 0xD000000000000016;
    MEMORY[0x253096310](v8, v10);

    return v16;
  }

  [a1 value];
  result = AXFormatFloatWithPercentage();
  if (result)
  {
    v14 = result;
    v15 = sub_2520046E0();

    return v15;
  }

  return result;
}

unint64_t sub_251FFF5FC(unsigned __int8 a1)
{
  v1 = 0x622E726564696C73;
  v2 = 0xD000000000000015;
  if (a1 != 2)
  {
    v2 = 0x6F2E726564696C73;
  }

  if (a1)
  {
    v1 = 0x742E726564696C73;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_251FFF6A8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2520028FC(*a1);
  *a2 = result;
  return result;
}

id sub_251FFF6E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7248, &qword_252008B10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19[-v6];
  v8 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider;
  v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75A30]) initWithFrame_];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
    sub_2520042B0();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    sub_251FD67B8(&qword_27F4C7260, &qword_27F4C7248, &qword_252008B10);
    v14 = v11;
    sub_252004580();

    (*(v3 + 8))(v7, v2);
    v15 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))(v19);
    sub_252004480();

    v15(v19, 0);
    v16 = *(v1 + v8);
    *(v1 + v8) = v14;
    v10 = v14;

    v9 = 0;
  }

  v17 = v9;
  return v10;
}

void sub_251FFF978(void *a1)
{
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 value];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_251FDFB88();
    (*(v3 + 16))(v7, v10, v2);
    v11 = v9;
    v12 = sub_2520043B0();
    v13 = sub_2520048C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218496;
      v15 = sub_251FFFDDC();
      if (!v15)
      {
LABEL_12:

        __break(1u);
        goto LABEL_13;
      }

      v16 = v15;
      v17 = sub_252003E60();

      sub_252004020();
      v19 = v18;

      *(v14 + 4) = v19;
      *(v14 + 12) = 2048;
      v20 = sub_251FFFDDC();

      if (!v20)
      {
LABEL_13:

        __break(1u);
        goto LABEL_14;
      }

      v21 = sub_252003E60();

      sub_252004240();
      v23 = v22;

      *(v14 + 14) = v23;
      *(v14 + 22) = 2048;
      v24 = sub_251FFFDDC();

      if (!v24)
      {
LABEL_14:
        __break(1u);
        return;
      }

      v25 = sub_252003E60();

      sub_252003F90();
      v27 = v26;

      *(v14 + 24) = v27;
      _os_log_impl(&dword_251FB5000, v12, v13, "Slider value change:  %f %f %f", v14, 0x20u);
      MEMORY[0x253097030](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    (*(v3 + 8))(v7, v2);
    v28 = *(&v11->isa + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType);
    v29 = sub_251FFFDDC();
    if (v29)
    {
      v30 = v29;
      v31 = sub_252003E60();

      sub_251FFF15C(v31, a1, v28);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_251FFFC58(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_251FFFC6C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FFF6E0();
  return sub_251FFFCB4;
}

void sub_251FFFCB4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider) = v2;
}

uint64_t sub_251FFFCD8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_251FFFD28(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void *sub_251FFFDE8(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_2520043D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(v1 + *a1);
  if (!v11 || (v12 = v11, v13 = sub_251FEAFA4(), v12, !v13))
  {
    sub_2520043A0();
    v14 = sub_2520043B0();
    v15 = sub_2520048B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v21);
      _os_log_impl(&dword_251FB5000, v14, v15, "%s: connected device !", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x253097030](v17, -1, -1);
      MEMORY[0x253097030](v16, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v13 = *(v3 + v10);
    v18 = v13;
  }

  return v13;
}

void sub_251FFFFD0(void *a1)
{
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E50, &qword_252007E98);
  v175 = *(v8 - 8);
  v9 = v175[8];
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v167 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v167 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v167 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7298, &unk_252008B18);
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v30 = (&v167 - v29);
  if (!a1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v172 = v13;
  v173 = v30;
  v174 = v28;
  if ([a1 userInfo])
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v183 = 0u;
    v184 = 0u;
  }

  aBlock = v183;
  v178 = v184;
  if (!*(&v184 + 1))
  {
    goto LABEL_27;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v170 = v25;
  v169 = a1;
  v31 = v182;
  v32 = sub_2520046B0();
  v171 = v31;
  v33 = [v31 objectForKey_];

  if (v33)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v183 = 0u;
    v184 = 0u;
  }

  aBlock = v183;
  v178 = v184;
  if (!*(&v184 + 1))
  {

LABEL_27:
    sub_251FD74F0(&aBlock);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  LODWORD(v168) = v182;
  v34 = sub_2520046B0();
  v35 = v171;
  v36 = [v171 objectForKey_];

  if (v36)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v183 = 0u;
    v184 = 0u;
  }

  aBlock = v183;
  v178 = v184;
  if (!*(&v184 + 1))
  {

    goto LABEL_27;
  }

  sub_252003EC0();
  if (swift_dynamicCast())
  {
    v37 = v182;
    v38 = sub_251FEAFA4();
    if (v38)
    {
      v39 = *&v176[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice];
      *&v176[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = v38;
      v40 = v38;

      v41 = sub_251FFFDDC();
      if (v41)
      {
        v42 = v41;
        v43 = sub_252003E60();

        sub_252004260();
        v44 = sub_252003E20();
        v45 = v175[1];
        v45(v24, v8);
        *&aBlock = v44;
        v46 = sub_251FFFDDC();
        if (v46)
        {
          v47 = v46;
          v48 = sub_252003E60();

          sub_252004230();
          v49 = sub_252003E20();
          v45(v21, v8);
          *&v183 = v49;
          v50 = sub_251FFFDDC();
          if (v50)
          {
            v51 = v50;
            v175 = v37;
            v52 = sub_252003E60();

            sub_252004060();
            v53 = sub_252003E20();
            v45(v17, v8);
            v182 = v53;
            v54 = sub_251FFFDDC();
            v55 = v172;
            if (v54)
            {
              v56 = v54;
              v57 = sub_252003E60();

              sub_252003FC0();
              v58 = sub_252003E20();
              v45(v55, v8);
              v181 = v58;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E60, &unk_252007EB0);
              p_aBlock = sub_251FD67B8(&qword_27F4C6E70, &qword_27F4C6E60, &unk_252007EB0);
              v166 = p_aBlock;
              v164[0] = p_aBlock;
              v164[1] = p_aBlock;
              v59 = v173;
              sub_252004470();
              v60 = swift_allocObject();
              v61 = v176;
              swift_unknownObjectWeakInit();
              v62 = swift_allocObject();
              *(v62 + 16) = v60;
              *(v62 + 24) = v40;
              sub_251FD67B8(&qword_27F4C72A8, &qword_27F4C7298, &unk_252008B18);
              v63 = v40;
              v64 = v170;
              sub_252004580();

              (*(v174 + 8))(v59, v64);
              v65 = MEMORY[0x277D85000];
              v66 = (*((*MEMORY[0x277D85000] & *v61) + 0xA8))(&aBlock);
              sub_252004480();

              v66(&aBlock, 0);
              v67 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType;
              *(v61 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType) = v168;
              v68 = [v61 contentView];
              v69 = [v68 subviews];

              sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
              v70 = sub_2520047B0();

              v71 = *((*v65 & *v61) + 0x80);
              v72 = v71();
              *&aBlock = v72;
              MEMORY[0x28223BE20](v72, v73);
              p_aBlock = &aBlock;
              LOBYTE(v68) = sub_2520026A4(sub_252002A70, v164, v70);

              if (v68)
              {

                return;
              }

              v168 = v63;
              v79 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
              [v79 setTranslatesAutoresizingMaskIntoConstraints_];
              v80 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
              v173 = v71;
              v81 = v80;
              [v80 setTranslatesAutoresizingMaskIntoConstraints_];
              v82 = v176;
              sub_251FFED88(v176[v67]);

              v83 = sub_2520046B0();

              v174 = v67;
              [v81 setText_];

              v84 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
              [v84 setTranslatesAutoresizingMaskIntoConstraints_];
              sub_251FFED88(v82[v174]);

              v85 = sub_2520046B0();

              [v84 setText_];

              v172 = v81;
              v86 = v81;
              v87 = v173;
              [v79 addSubview_];
              v170 = v84;
              [v79 addSubview_];
              v88 = [v82 contentView];
              [v88 addSubview_];

              v89 = v82[v174];
              v90 = v87();
              v91 = sub_251FFFDDC();
              if (v91)
              {
                v92 = v91;
                v93 = sub_252003E60();

                sub_251FFF0E8(v90, v93, v89);
                if ([v169 propertyForKey_])
                {
                  sub_252004A00();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v183 = 0u;
                  v184 = 0u;
                }

                v94 = v176;
                aBlock = v183;
                v178 = v184;
                if (*(&v184 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v95 = v182;
                    v96 = v87();
                    v94 = v176;
                    v97 = v96;
                    [v96 setEnabled_];

                    v98 = [v94 contentView];
                    v99 = v98;
                    v100 = 0.5;
                    if (v95)
                    {
                      v100 = 1.0;
                    }

                    [v98 setAlpha_];
                  }
                }

                else
                {
                  sub_251FD74F0(&aBlock);
                }

                v101 = [v94 contentView];
                v102 = v87();
                [v101 addSubview_];

                v169 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
                v103 = swift_allocObject();
                *(v103 + 16) = xmmword_252008AF0;
                v104 = v172;
                v105 = [v172 topAnchor];
                v106 = [v79 topAnchor];
                v107 = [v105 constraintEqualToAnchor_];

                *(v103 + 32) = v107;
                v108 = [v104 leadingAnchor];
                v109 = [v79 &selRef_registerClass_forHeaderFooterViewReuseIdentifier_ + 1];
                v110 = [v108 constraintEqualToAnchor_];

                *(v103 + 40) = v110;
                v111 = [v104 bottomAnchor];

                v112 = [v79 bottomAnchor];
                v113 = [v111 constraintEqualToAnchor_];

                *(v103 + 48) = v113;
                v114 = v170;
                v115 = [v170 topAnchor];
                v116 = [v79 topAnchor];
                v117 = [v115 constraintEqualToAnchor_];

                *(v103 + 56) = v117;
                v118 = [v114 trailingAnchor];
                v119 = [v79 0x2796F39CCLL];
                v120 = [v118 constraintEqualToAnchor_];

                *(v103 + 64) = v120;
                v121 = [v114 bottomAnchor];

                v122 = [v79 bottomAnchor];
                v123 = [v121 constraintEqualToAnchor_];

                *(v103 + 72) = v123;
                v124 = [v79 topAnchor];
                v125 = [v176 contentView];
                v126 = [v125 topAnchor];

                v127 = [v124 constraintEqualToAnchor:v126 constant:10.0];
                *(v103 + 80) = v127;
                v128 = [v79 trailingAnchor];
                v129 = [v176 contentView];
                v130 = [v129 trailingAnchor];

                v131 = [v128 constraintEqualToAnchor:v130 constant:-20.0];
                *(v103 + 88) = v131;
                v132 = [v79 leadingAnchor];
                v133 = [v176 contentView];
                v134 = [v133 leadingAnchor];

                v135 = [v132 constraintEqualToAnchor:v134 constant:20.0];
                *(v103 + 96) = v135;
                v136 = v173();
                v137 = v173;
                v138 = [v136 topAnchor];

                v139 = [v79 bottomAnchor];
                v140 = [v138 constraintEqualToAnchor:v139 constant:10.0];

                *(v103 + 104) = v140;
                v141 = v137();
                v142 = [v141 bottomAnchor];

                v143 = [v176 contentView];
                v144 = [v143 bottomAnchor];

                v145 = [v142 constraintEqualToAnchor:v144 constant:-10.0];
                *(v103 + 112) = v145;
                v146 = v137();
                v147 = [v146 leadingAnchor];

                v148 = [v176 contentView];
                v149 = [v148 leadingAnchor];

                v150 = [v147 constraintEqualToAnchor:v149 constant:20.0];
                *(v103 + 120) = v150;
                v151 = v137();
                v152 = [v151 trailingAnchor];

                v153 = [v176 contentView];
                v154 = [v153 trailingAnchor];

                v155 = [v152 constraintEqualToAnchor:v154 constant:-20.0];
                *(v103 + 128) = v155;
                sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
                v156 = sub_2520047A0();

                [v169 activateConstraints_];

                v157 = v137();
                v158 = v175;
                v159 = v168;
                v160 = sub_2520046B0();

                [v157 setAccessibilityIdentifier_];

                v161 = v137();
                v162 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v179 = sub_252002AD8;
                v180 = v162;
                *&aBlock = MEMORY[0x277D85DD0];
                *(&aBlock + 1) = 1107296256;
                *&v178 = sub_252001570;
                *(&v178 + 1) = &block_descriptor_3;
                v163 = _Block_copy(&aBlock);

                [v161 setAccessibilityValueBlock_];
                _Block_release(v163);

                return;
              }

LABEL_49:
              __break(1u);
              return;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
  }

LABEL_28:
  v74 = sub_251FDFB88();
  (*(v3 + 16))(v7, v74, v2);
  v75 = sub_2520043B0();
  v76 = sub_2520048B0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&aBlock = v78;
    *v77 = 136315394;
    *(v77 + 4) = sub_251FC55E0(0xD00000000000001ALL, 0x800000025200F500, &aBlock);
    *(v77 + 12) = 2048;
    *(v77 + 14) = 305;
    _os_log_impl(&dword_251FB5000, v75, v76, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty!", v77, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x253097030](v78, -1, -1);
    MEMORY[0x253097030](v77, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
}

id sub_252001570(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_252001678(uint64_t (*a1)(void))
{
  v11.receiver = v1;
  v11.super_class = a1();
  objc_msgSendSuper2(&v11, sel_prepareForReuse);
  v2 = [v1 contentView];
  v3 = [v2 subviews];

  sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
  v4 = sub_2520047B0();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252004B20())
  {
    for (j = 0; ; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253096650](j, v4);
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      if (v9 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id sub_252001948()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  v2 = [v1 accessibilityTraits];

  return v2;
}

id sub_2520019C4(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x80);
  v5 = a1;
  v6 = v4();
  v7 = [v6 *a3];

  if (v7)
  {
    sub_2520046E0();

    v7 = sub_2520046B0();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_252001AA0(SEL *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  v4 = [v3 *a1];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2520046E0();

  return v5;
}

void sub_252001B74(SEL *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  v4 = v3();
  [v4 *a1];

  v5 = v3();
  [v5 sendActionsForControlEvents_];
}

void sub_252001C30(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x80);
  v7 = a1;
  v5 = v4();
  [v5 *a3];

  v6 = v4();
  [v6 sendActionsForControlEvents_];
}

double sub_252001D7C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  [v1 accessibilityActivationPoint];
  v3 = v2;

  return v3;
}

uint64_t sub_252001EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252007360;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  *(v1 + 56) = sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
  *(v1 + 32) = v2;
  return v1;
}

id sub_252001FA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_2520046B0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id sub_252002038(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider] = 0;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = 0;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_bluetoothDevice] = 0;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_hms] = 0;
  v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType] = 0;
  if (a3)
  {
    v7 = sub_2520046B0();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for HearingAidTuningValuesSliderCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_252002148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  if (a4)
  {
    v9 = sub_2520046E0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a5;
  return a6(a3, v9, v11, a5);
}

id sub_2520021C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_bluetoothDevice] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_hms] = 0;
  v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType] = 0;
  if (a3)
  {
    v5 = sub_2520046B0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HearingAidTuningValuesSliderCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

uint64_t sub_2520022B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = sub_2520046E0();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

id sub_252002310(void *a1)
{
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider] = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_bluetoothDevice] = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_hms] = 0;
  v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HearingAidTuningValuesSliderCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252002408(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2520024BC()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2520024F4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_251FFD2C4();
    if (v4)
    {
      v5 = v4;
      v6 = sub_252003E60();

      sub_252003F70();
      [v1 value];
      v7 = sub_251FFD2C4();
      if (v7)
      {
        v8 = v7;
        v9 = sub_252003E60();

        [v1 value];
        sub_252003F80();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_2520025C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x70))();
    v3 = sub_251FFD2C4();
    if (v3)
    {
      v4 = v3;
      v5 = sub_252003E60();

      sub_252003F70();
      v7 = v6;

      LODWORD(v8) = v7;
      [v2 setValue_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2520026A4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x253096650](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_252004B20();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_2520027CC()
{
  v0 = [objc_opt_self() configurationWithTextStyle_];
  v1 = sub_2520046B0();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_opt_self() systemGrayColor];
    v4 = [v2 imageWithTintColor:v3 renderingMode:1];

    if (v4)
    {
      return v4;
    }
  }

  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v6 init];
}

unint64_t sub_2520028FC(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_25200290C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252002954()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_252002994()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_251FEAFA4();
    if (v5)
    {
      v6 = v5;
      v7 = *(v4 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType);
      v8 = (*((*MEMORY[0x277D85000] & *v4) + 0x80))();
      v9 = sub_252003E60();
      sub_251FFF0E8(v8, v9, v7);
    }
  }
}

uint64_t sub_252002A70(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
  return sub_252004980() & 1;
}

id sub_252002AD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType);
  v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x80))();
  v4 = sub_251FFF418(v3, v2);

  return v4;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252002BD8()
{
  result = qword_27F4C72C8;
  if (!qword_27F4C72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C72C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingAidTuningValuesSliderCell.SliderType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingAidTuningValuesSliderCell.SliderType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_252002DA0()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4C9348 = result;
  return result;
}

uint64_t sub_252002E68()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94A8);
  __swift_project_value_buffer(v0, qword_27F4C94A8);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252002F58()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94C0);
  __swift_project_value_buffer(v0, qword_27F4C94C0);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003048()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94D8);
  __swift_project_value_buffer(v0, qword_27F4C94D8);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003138()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94F0);
  __swift_project_value_buffer(v0, qword_27F4C94F0);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003228()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9508);
  __swift_project_value_buffer(v0, qword_27F4C9508);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003318()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9520);
  __swift_project_value_buffer(v0, qword_27F4C9520);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003408()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9538);
  __swift_project_value_buffer(v0, qword_27F4C9538);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_2520034F8()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9550);
  __swift_project_value_buffer(v0, qword_27F4C9550);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003648()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9580);
  __swift_project_value_buffer(v0, qword_27F4C9580);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003738()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9598);
  __swift_project_value_buffer(v0, qword_27F4C9598);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003850(uint64_t a1, uint64_t *a2)
{
  v3 = sub_252004380();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v4 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003918(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_252004380();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_252003990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_252004380();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}
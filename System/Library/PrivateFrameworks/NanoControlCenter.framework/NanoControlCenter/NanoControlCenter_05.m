void sub_25AF83AE4()
{
  v1 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD000000000000010, 0x800000025B0191E0, &v19);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  if (*(*(v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel) + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasLoadedAllControls) == 1)
  {
    v7 = sub_25AFEC930();
    if (qword_27FA23760 != -1)
    {
      swift_once();
    }

    v8 = qword_27FA30B38;
    v9 = *(qword_27FA30B38 + 16);
    if (v9)
    {
      v10 = sub_25AF1595C(v9, 0);
      v11 = sub_25AF16A64(&v19, (v10 + 4), v9, v8);

      sub_25AF18700();
      if (v11 != v9)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v19 = v7;
    sub_25AF36720(v10);
    v15 = v19;
    if (*(*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel) + 48))
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_25AFEC4BC();
    }

    v17 = sub_25AF29DB8(v15, v16);

    sub_25AF78774(v17);
  }

  else
  {
    oslog = sub_25B0044B4();
    v12 = sub_25B005C94();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_25AF8E7DC(0xD000000000000010, 0x800000025B0191E0, &v19);
      _os_log_impl(&dword_25AF0B000, oslog, v12, "%s controls not yet loaded. Not suggesting buttons.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x25F85EC30](v14, -1, -1);
      MEMORY[0x25F85EC30](v13, -1, -1);
    }
  }
}

void *GlanceModel.throttle(_:)(void *a1)
{
  v2 = a1;
  v27[0] = a1;
  memset(&v27[1], 0, 24);
  v28 = 0;
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_throttledButtonIDs;
  swift_beginAccess();
  v25 = v1;
  v4 = *(v1 + v3);
  sub_25B006294();
  MEMORY[0x25F85E0A0](0);
  MEMORY[0x25F85E0A0](v2);
  v5 = sub_25B0062D4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v25 + v3);
    *(v25 + v3) = 0x8000000000000000;
    sub_25AF92F6C(v27, v7, isUniquelyReferenced_nonNull_native, v23);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(v25 + v3) = v26;
    goto LABEL_9;
  }

  v8 = ~v6;
  while (1)
  {
    v10 = *(v4 + 48) + 40 * v7;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v16 = *v10;
    if (v15 <= 0x3F)
    {
      break;
    }

    v9 = *(v10 + 8);
    sub_25AF181DC(v16, v11, *(v10 + 16), *(v10 + 24), *(v10 + 32));
    sub_25AF18128(v12, v9, v13, v14, v15);
    sub_25AF18128(v2, 0, 0, 0, 0);
LABEL_4:
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_25AF18128(v16, v11, *(v10 + 16), *(v10 + 24), *(v10 + 32));
  sub_25AF18128(v2, 0, 0, 0, 0);
  if (v12 != v2)
  {
    goto LABEL_4;
  }

  v17 = *(v4 + 48) + 40 * v7;
  v2 = *v17;
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  v21 = *(v17 + 32);
  sub_25AF181DC(*v17, v18, v19, v20, v21);
LABEL_9:
  swift_endAccess();
  return sub_25AF18128(v2, v18, v19, v20, v21);
}

void *GlanceModel.unthrottle(_:)(uint64_t a1)
{
  v4[0] = a1;
  memset(&v4[1], 0, 24);
  v5 = 0;
  swift_beginAccess();
  sub_25AF99908(v4, v2);
  swift_endAccess();
  return sub_25AF231D0(v2[0], v2[1], v2[2], v2[3], v3);
}

unint64_t sub_25AF84418()
{
  v0 = sub_25AF6C4BC(qword_286C4C128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25610);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_25AF1626C(0x69676E615220494ELL, 0xEA0000000000676ELL, 51, isUniquelyReferenced_nonNull_native);
  off_27FA25240 = v0;
  return result;
}

uint64_t static GlanceModel.buttonNames.getter()
{
  if (qword_27FA23748 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25AF84510()
{
  v0 = sub_25AF18C1C(&unk_286C4BE60);
  v1 = sub_25AF71978(v0);

  v2 = sub_25AF9B0A0(v1);

  qword_27FA30B28 = v2;
  return result;
}

uint64_t sub_25AF8457C()
{
  v0 = sub_25AF18D64(&unk_286C4BEF8);
  result = swift_arrayDestroy();
  qword_27FA30B30 = v0;
  return result;
}

uint64_t sub_25AF845C8()
{
  if (qword_27FA23758 != -1)
  {
    swift_once();
  }

  v1 = sub_25AF71CA0(v0);

  v2 = sub_25AF9B0A0(v1);

  qword_27FA30B38 = v2;
  return result;
}

uint64_t sub_25AF84664()
{
  v0 = sub_25AF6BDA4(&unk_286C4BE10);
  result = sub_25AF2602C(&unk_286C4BE30, &unk_27FA255B0);
  qword_27FA30B40 = v0;
  return result;
}

__n128 sub_25AF846B4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 32);
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  if (qword_27FA23788 != -1)
  {
    swift_once();
  }

  if (v5 >= 0x40)
  {
LABEL_7:
    sub_25AFA0400(&v136);
  }

  else
  {
    v6 = qword_27FA30B60;
    switch(v4)
    {
      case 0:
        swift_getKeyPath();
        *&v136 = v2;
        sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
        v123 = v6;
        sub_25B004234();

        v22 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage);
        v44 = objc_opt_self();
        v121 = [v44 systemYellowColor];
        v20 = [v44 systemBlackColor];
        swift_getKeyPath();
        *&v136 = v2;
        sub_25B004234();

        v26 = 0uLL;
        if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryState) == 2)
        {
          v45 = [v44 systemGreenColor];
          v26 = 0uLL;
          v17 = v45;
          v8 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v8 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
        }

        v18 = 0;
        v19 = 0;
        v27 = -64;
        v21 = v121;
        v9 = v123;
        goto LABEL_94;
      case 1:
        v136 = 1uLL;
        v137 = 0uLL;
        LOBYTE(v138) = 0;
        v122 = qword_27FA30B60;
        v38 = v2;
        v39 = sub_25AF730A0(&v136, 0);
        sub_25AF18128(1, 0, 0, 0, 0);
        swift_getKeyPath();
        *&v136 = v39;
        sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
        sub_25B004234();

        v22 = *(v39 + 96);
        v40 = *(v39 + 104);

        if (v40)
        {
          v109 = 0;
          v111 = v40;
          v32 = 0;
          v27 = 0x80;
        }

        else
        {
          v22 = 0xD000000000000021;
          v27 = 64;
          v32 = 0xE800000000000000;
          v109 = 0x72616C756C6C6543;
          v111 = 0x800000025B0186E0;
        }

        v117 = objc_opt_self();
        v120 = [v117 systemGreenColor];
        if (qword_27FA23770 != -1)
        {
          swift_once();
        }

        v18 = qword_27FA30B48;
        swift_getKeyPath();
        *&v136 = v38;
        sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
        v92 = v18;
        sub_25B004234();

        if (*(v38 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__cellularThermalTrap))
        {
          v93 = &selRef_redColor;
        }

        else
        {
          v93 = &selRef_blackColor;
        }

        v94 = [v117 *v93];
        v19 = v94;
        if (v40)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v26 = 0uLL;
          v20 = v18;
LABEL_85:
          v21 = v120;
          v9 = v122;
          v8 = v111;
        }

        else
        {
          v114 = v94;

          v31 = 0;
          v115 = 0;
          v116 = 0;
          v118 = 0;
          v113 = xmmword_25B00E8A0;
          v33 = v110;
          v34 = v111;
LABEL_93:
          v11 = v34;
          v10 = v22;
          *&v136 = v33;
          *(&v136 + 1) = v32;

          MEMORY[0x25F85D7B0](7877184, 0xE300000000000000);

          v12 = 0;
          v13 = 0;
          v17 = 0;
          v8 = *(&v136 + 1);
          v22 = v136;
          v27 = v31 & 1;
          v20 = v18;
          v21 = v120;
          v9 = v122;
          v14 = v115;
          v15 = v116;
          v16 = v118;
          v19 = v114;
          v26 = v113;
        }

LABEL_94:
        *&v125 = v22;
        *(&v125 + 1) = v8;
        v126 = v26;
        *&v127 = v10;
        *(&v127 + 1) = v11;
        v128.n128_u8[0] = v27;
        v128.n128_u64[1] = v9;
        *&v129 = v20;
        *(&v129 + 1) = v21;
        *&v130 = v19;
        *(&v130 + 1) = v18;
        v131 = 0uLL;
        *&v132 = v17;
        *(&v132 + 1) = v16;
        *&v133 = v14;
        *(&v133 + 1) = v15;
        *&v134 = v13;
        v135 = 0uLL;
        *(&v134 + 1) = v12;
        nullsub_1(&v125);
        v144 = v133;
        v145 = v134;
        v146 = v135;
        v140 = v129;
        v141 = v130;
        v142 = v131;
        v143 = v132;
        v136 = v125;
        v137 = v126;
        v138 = v127;
        v139 = v128;
        break;
      case 2:
        v53 = objc_opt_self();
        v122 = v6;
        v118 = 0;
        v120 = [v53 systemBlueColor];
        v31 = 0;
        v115 = 0;
        v116 = 0;
        v18 = 0;
        v114 = 0;
        v113 = xmmword_25B00E8A0;
        v32 = 0xE500000000000000;
        v33 = 0x69462D6957;
        v34 = 0xE400000000000000;
        v22 = 1768319351;
        goto LABEL_93;
      case 3:
        v33 = 0x656E616C70726941;
        v52 = objc_opt_self();
        v122 = v6;
        v118 = 0;
        v120 = [v52 systemOrangeColor];
        v31 = 0;
        v115 = 0;
        v116 = 0;
        v18 = 0;
        v114 = 0;
        v113 = xmmword_25B00E8D0;
        v22 = 0x656E616C70726961;
        v32 = 0xEC00000065646F4DLL;
        v34 = 0xE800000000000000;
        goto LABEL_93;
      case 4:
        v116 = 0xE90000000000006CLL;
        v66 = qword_27FA30B60;
        v115 = 0x6C69662E6C6C6562;
        v67 = sub_25AFE6BAC(0x6C69662E6C6C6562, 0xE90000000000006CLL, 0);
        v122 = v66;
        if (v67)
        {
          if (qword_27FA23780 != -1)
          {
            v107 = v67;
            swift_once();
            v67 = v107;
          }

          v68 = v67;
          v118 = [v67 imageWithTintColor_];
        }

        else
        {
          v118 = 0;
        }

        v120 = [objc_opt_self() systemPinkColor];
        v31 = 0;
        v18 = 0;
        v114 = 0;
        v32 = 0xEA00000000006564;
        v113 = xmmword_25B00E8A0;
        v33 = 0x6F4D746E656C6953;
        v34 = 0xEF6C6C69662E6873;
        v22 = 0x616C732E6C6C6562;
        goto LABEL_93;
      case 5:
      case 17:
      case 50:
        goto LABEL_7;
      case 6:
        v56 = 0xEA00000000006E6FLL;
        swift_getKeyPath();
        *&v136 = v2;
        sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
        v122 = v6;
        v57 = v2;
        sub_25B004234();

        v58 = (v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__phoneSymbolName);
        swift_beginAccess();
        v59 = *v58;
        v60 = v58[1];
        v61 = *v58 == 0x672E656E6F687069 && v60 == 0xEB00000000316E65;
        if (v61 || (sub_25B006174() & 1) != 0)
        {
          v62 = 0x74747542656D6F48;
        }

        else
        {
          v62 = 0x444965636146;
          v56 = 0xE600000000000000;
          if (v59 != 0x672E656E6F687069 || v60 != 0xEB00000000326E65)
          {
            v102 = sub_25B006174();
            v103 = (v102 & 1) == 0;
            v62 = (v102 & 1) != 0 ? 0x444965636146 : 0x4963696D616E7944;
            if (v103)
            {
              v56 = 0xED0000646E616C73;
            }
          }
        }

        MEMORY[0x25F85D7B0](v62, v56);

        v32 = 0xE900000000000065;
        *(&v136 + 1) = 0xE000000000000000;
        sub_25B005F24();
        swift_getKeyPath();
        *&v136 = v57;
        sub_25B004234();

        v64 = *v58;
        v63 = v58[1];
        v33 = 0x6E6F6850676E6950;

        *(&v136 + 1) = v63;
        MEMORY[0x25F85D7B0](0xD00000000000001ALL, 0x800000025B0193B0);
        v22 = v64;
        v65 = [objc_opt_self() systemBlueColor];
        v34 = v63;
        v118 = 0;
        v120 = v65;
        v31 = 0;
        v115 = 0;
        v116 = 0;
        v18 = 0;
        v114 = 0;
        v113 = xmmword_25B00E8A0;
        goto LABEL_93;
      case 7:
        v22 = 0xD000000000000012;
        v49 = qword_27FA30B60;
        v116 = 0x800000025B019660;
        v50 = sub_25AFE6BAC(0xD000000000000013, 0x800000025B019660, 0);
        v122 = v49;
        if (v50)
        {
          if (qword_27FA23780 != -1)
          {
            v106 = v50;
            swift_once();
            v50 = v106;
          }

          v51 = v50;
          v118 = [v50 imageWithTintColor_];
        }

        else
        {
          v118 = 0;
        }

        v96 = [objc_opt_self() systemBlueColor];
        v34 = 0x800000025B019680;
        v120 = v96;
        v31 = 0;
        v18 = 0;
        v114 = 0;
        v115 = 0xD000000000000013;
        v32 = 0xEA00000000007468;
        v113 = xmmword_25B00E8A0;
        v33 = 0x67696C6873616C46;
        goto LABEL_93;
      case 8:
        v80 = objc_opt_self();
        v122 = v6;
        v81 = [v80 systemOrangeColor];
        v34 = 0x800000025B019640;
        v118 = 0;
        v120 = v81;
        v31 = 0;
        v115 = 0;
        v116 = 0;
        v18 = 0;
        v114 = 0;
        v113 = xmmword_25B00E8C0;
        v22 = 0xD000000000000011;
        v32 = 0xEB0000000065646FLL;
        v33 = 0x4D72657461656854;
        goto LABEL_93;
      case 9:
        v54 = objc_opt_self();
        v122 = v6;
        v55 = [v54 systemMintColor];
        v34 = 0xE90000000000006CLL;
        v118 = 0;
        v120 = v55;
        v31 = 0;
        v115 = 0;
        v116 = 0;
        v18 = 0;
        v114 = 0;
        v32 = 0xE90000000000006BLL;
        v113 = xmmword_25B00E8B0;
        v33 = 0x636F4C7265746157;
        v22 = 0x6C69662E706F7264;
        goto LABEL_93;
      case 10:
        v77 = qword_27FA23770;
        v124 = qword_27FA30B60;
        if (v77 != -1)
        {
          swift_once();
        }

        v13 = qword_27FA30B48;
        v78 = objc_opt_self();
        v79 = v13;
        v12 = [v78 systemBlueColor];
        v10 = 0;
        v11 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v26 = 0uLL;
        v27 = 64;
        v8 = 0xE400000000000000;
        v22 = 1801678700;
        v9 = v124;
        goto LABEL_94;
      case 11:
        v30 = objc_opt_self();
        v122 = v6;
        v118 = 0;
        v120 = [v30 systemBlueColor];
        v31 = 0;
        v115 = 0;
        v116 = 0;
        v18 = 0;
        v114 = 0;
        v113 = xmmword_25B00E8A0;
        v32 = 0xE700000000000000;
        v33 = 0x79616C50726941;
        v34 = 0xEC0000006F696475;
        v22 = 0x6179616C70726961;
        goto LABEL_93;
      case 12:
        v9 = qword_27FA30B60;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v26 = 0uLL;
        v27 = 64;
        v8 = 0xEE007261652E6469;
        v22 = 0x61676E6972616568;
        goto LABEL_94;
      case 13:
        v23 = objc_opt_self();
        v24 = [v23 blackColor];
        v25 = v23;
        v9 = v24;
        v21 = [v25 systemGreenColor];
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v26 = 0uLL;
        v27 = 64;
        v8 = 0xED0000687461702ELL;
        v28 = 1702257015;
        goto LABEL_49;
      case 14:
        v73 = objc_opt_self();
        v74 = [v73 blackColor];
        v75 = v73;
        v9 = v74;
        v21 = [v75 systemRedColor];
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v26 = 0uLL;
        v27 = 64;
        v8 = 0xED0000656C637269;
        v22 = 0x632E64726F636572;
        goto LABEL_94;
      case 15:
        v35 = qword_27FA30B60;
        v36 = sub_25AFE6BAC(0x73616C732E657965, 0xE900000000000068, 0);
        if (v36)
        {
          if (qword_27FA23780 != -1)
          {
            v104 = v36;
            swift_once();
            v36 = v104;
          }

          v37 = v36;
          v119 = [v36 imageWithTintColor_];
        }

        else
        {
          v119 = 0;
        }

        v90 = objc_opt_self();
        v91 = [v90 blackColor];

        v9 = v91;
        v21 = [v90 systemRedColor];
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v26 = 0uLL;
        v27 = 64;
        v8 = 0xE300000000000000;
        v22 = 6650213;
        v15 = 0xE900000000000068;
        v16 = v119;
        v14 = 0x73616C732E657965;
        goto LABEL_94;
      case 16:
        v46 = objc_opt_self();
        v122 = [v46 blackColor];
        v115 = 0xD000000000000021;
        v116 = 0x800000025B019590;
        v47 = sub_25AFE6BAC(0xD000000000000021, 0x800000025B019590, 0);
        if (v47)
        {
          if (qword_27FA23780 != -1)
          {
            v105 = v47;
            swift_once();
            v47 = v105;
          }

          v48 = v47;
          v118 = [v47 imageWithTintColor_];
        }

        else
        {
          v118 = 0;
        }

        v95 = [v46 ncc_walkieTalkieAvailableColor];
        v34 = 0x800000025B0195C0;
        v120 = v95;
        v31 = 0;
        v18 = 0;
        v114 = 0;
        v113 = xmmword_25B00E8A0;
        v22 = 0xD00000000000003BLL;
        v32 = 0xED000065696B6C61;
        v33 = 0x542D65696B6C6157;
        goto LABEL_93;
      case 18:
        v69 = objc_opt_self();
        v70 = v6;
        v71 = v69;
        v9 = v70;
        v72 = [v71 systemRedColor];
        v8 = 0x800000025B019570;
        v21 = v72;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        goto LABEL_52;
      case 19:
        v9 = [objc_opt_self() blackColor];
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v26 = 0uLL;
        v27 = 64;
        v8 = 0xE800000000000000;
        v22 = 0x6C6C69662E746E61;
        goto LABEL_94;
      case 20:
        v41 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_focusModel);
        swift_getKeyPath();
        *&v136 = v41;
        sub_25AFA048C(&qword_27FA256E0, type metadata accessor for GlanceFocusModel);
        v122 = v6;
        sub_25B004234();

        v22 = *(v41 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName);
        v42 = *(v41 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName + 8);
        if (v22 == 0x6C69662E6E6F6F6DLL && v42 == 0xE90000000000006CLL)
        {
          v31 = 0;
        }

        else
        {
          v31 = sub_25B006174() ^ 1;
        }

        swift_getKeyPath();
        *&v136 = v41;
        v112 = v42;

        sub_25B004234();

        v86 = OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusReduceInterruptions;
        if (*(v41 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusReduceInterruptions))
        {
          v87 = [objc_opt_self() purpleColor];
          if (v87)
          {
            v88 = v87;

            v122 = v88;
          }
        }

        swift_getKeyPath();
        *&v136 = v41;
        sub_25B004234();

        if (*(v41 + v86) == 1)
        {
          v120 = [objc_opt_self() whiteColor];
        }

        else
        {
          swift_getKeyPath();
          *&v136 = v41;
          sub_25B004234();

          v120 = *(v41 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor);
          v89 = v120;
        }

        v115 = 0;
        v116 = 0;
        v118 = 0;
        v18 = 0;
        v114 = 0;
        v113 = xmmword_25B00E8A0;
        v32 = 0xEC00000062727574;
        v33 = 0x736944746F4E6F44;
        v34 = v112;
        goto LABEL_93;
      case 21:
        v9 = qword_27FA30B60;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v26 = 0uLL;
        v27 = 64;
        v8 = 0xEF657A69732E7461;
        v28 = 1954047348;
LABEL_49:
        v22 = v28 | 0x6D726F6600000000;
        goto LABEL_94;
      case 22:
        v22 = 0xD000000000000012;
        v76 = qword_27FA30B60;
        v8 = 0x800000025B019530;
        v9 = v76;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        goto LABEL_64;
      case 23:
        v29 = qword_27FA30B60;
        v8 = 0x800000025B019600;
        v9 = v29;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
LABEL_52:
        v22 = 0xD000000000000016;
        goto LABEL_64;
      case 24:
        v7 = qword_27FA30B60;
        v8 = 0x800000025B019620;
        v9 = v7;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0xD000000000000017;
        goto LABEL_64;
      case 25:
        v84 = qword_27FA30B60;
        v8 = 0x800000025B0183C0;
        v9 = v84;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0xD000000000000013;
        goto LABEL_64;
      case 51:
        v85 = qword_27FA30B60;
        v8 = 0x800000025B019500;
        v9 = v85;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0xD000000000000027;
LABEL_64:
        v26 = 0uLL;
        v27 = 64;
        goto LABEL_94;
      case 100:
        v111 = 0x800000025B019550;
        v82 = objc_opt_self();
        v122 = v6;
        v120 = [v82 ncc_schoolModeColor];
        if (qword_27FA23778 != -1)
        {
          swift_once();
        }

        v22 = 0xD000000000000012;
        v18 = qword_27FA30B50;
        v83 = qword_27FA30B50;
        v19 = [v82 blackColor];
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v20 = 0;
        v26 = 0uLL;
        v27 = 64;
        goto LABEL_85;
      default:
        type metadata accessor for LegacyButtonIdentifier(0);
        *&v136 = v4;
        v108 = v6;
        sub_25B0061E4();
        __break(1u);
        JUMPOUT(0x25AF85F40);
    }
  }

  v97 = v145;
  *(a2 + 128) = v144;
  *(a2 + 144) = v97;
  *(a2 + 160) = v146;
  v98 = v141;
  *(a2 + 64) = v140;
  *(a2 + 80) = v98;
  v99 = v143;
  *(a2 + 96) = v142;
  *(a2 + 112) = v99;
  v100 = v137;
  *a2 = v136;
  *(a2 + 16) = v100;
  result = v139;
  *(a2 + 32) = v138;
  *(a2 + 48) = result;
  return result;
}

uint64_t GlanceModel.cellularDataIndicator.getter()
{
  v3[0] = 1;
  memset(&v3[1], 0, 24);
  v4 = 0;
  v0 = sub_25AF730A0(v3, 0);
  sub_25AF18128(1, 0, 0, 0, 0);
  swift_getKeyPath();
  v3[0] = v0;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v1 = *(v0 + 96);

  return v1;
}

void GlanceModel.airplaneButtonState.setter(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  sub_25AF752F4(3, a1 & 1);
  if (a1)
  {
    swift_getKeyPath();
    v12 = v1;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    if ((*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousAirplaneButtonState) & 1) == 0)
    {
      if (qword_27FA23800 != -1)
      {
        swift_once();
      }

      v5 = sub_25B0044C4();
      __swift_project_value_buffer(v5, qword_27FA30C28);
      v6 = sub_25B0044B4();
      v7 = sub_25B005CD4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v12 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B0186C0, &v12);
        _os_log_impl(&dword_25AF0B000, v6, v7, "%s Enabling Airplane Mode, so disabling the Ping button", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x25F85EC30](v9, -1, -1);
        MEMORY[0x25F85EC30](v8, -1, -1);
      }

      if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__pingEnabled))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v12 = v2;
        sub_25B004224();
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__pingEnabled) = 0;
      }
    }
  }

  if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousAirplaneButtonState) == v4)
  {
    *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousAirplaneButtonState) = v4;
  }

  else
  {
    v11 = swift_getKeyPath();
    MEMORY[0x28223BE20](v11);
    v12 = v2;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

void (*GlanceModel.airplaneButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 3;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(3, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF86660;
}

void *(*GlanceModel.cellularButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 1;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(1, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF867E0;
}

uint64_t GlanceModel.cellularDataIndicator.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = 1;
  memset(&v19[1], 0, 24);
  v20 = 0;
  v6 = sub_25AF730A0(v19, 0);
  sub_25AF18128(1, 0, 0, 0, 0);
  swift_getKeyPath();
  v19[0] = v6;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v7 = *(v6 + 73);

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0044C4();
  __swift_project_value_buffer(v8, qword_27FA30C28);

  v9 = sub_25B0044B4();
  v10 = sub_25B005C94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_25AF8E7DC(0xD000000000000015, 0x800000025B018710, v19);
    *(v11 + 12) = 2080;
    if (a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0x3E6C696E3CLL;
    }

    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_25AF8E7DC(v13, v14, v19);

    *(v11 + 14) = v15;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v7;
    _os_log_impl(&dword_25AF0B000, v9, v10, "%s cellular data indicator: %s cellular connected?: %{BOOL}d", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v12, -1, -1);
    MEMORY[0x25F85EC30](v11, -1, -1);
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  if ((v7 & 1) == 0)
  {

LABEL_15:
    a1 = 0;
    a2 = 0;
    v17 = 0x800000025B0186E0;
    v16 = 0xD000000000000021;
    goto LABEL_16;
  }

  v16 = 0;
  v17 = 0;
LABEL_16:
  sub_25AF86CD4(v3, a1, a2, v16, v17);
}

uint64_t sub_25AF86CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = swift_getKeyPath();
  v11[1] = a2;
  v11[2] = a3;
  v12[0] = v11;
  v10[0] = swift_getKeyPath();
  v10[1] = a4;
  v10[2] = a5;
  v12[1] = v10;

  sub_25AF754BC(1, 2, v12);
}

uint64_t (*GlanceModel.cellularDataIndicator.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v7[0] = 1;
  memset(&v7[1], 0, 24);
  v8 = 0;
  v3 = sub_25AF730A0(v7, 0);
  sub_25AF18128(1, 0, 0, 0, 0);
  swift_getKeyPath();
  a1[2] = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v5 = *(v3 + 96);
  v4 = *(v3 + 104);

  *a1 = v5;
  a1[1] = v4;
  return sub_25AF86EB4;
}

uint64_t sub_25AF86EB4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return GlanceModel.cellularDataIndicator.setter(*a1, v2);
  }

  GlanceModel.cellularDataIndicator.setter(v3, v2);
}

void *(*GlanceModel.flashlightButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 7;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(7, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF87080;
}

void *(*GlanceModel.muteButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 4;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(4, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF87208;
}

void *(*GlanceModel.pingButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 6;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(6, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF87390;
}

void *(*GlanceModel.schoolModeButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 100;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(0x64, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF87518;
}

BOOL GlanceModel.schoolModeButtonNotInUse.getter()
{
  v3[0] = 100;
  memset(&v3[1], 0, 24);
  v4 = 0;
  v0 = sub_25AF730A0(v3, 0);
  sub_25AF18128(0x64, 0, 0, 0, 0);
  swift_getKeyPath();
  v3[0] = v0;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v1 = *(v0 + 73);

  return (v1 & 1) == 0;
}

uint64_t GlanceModel.schoolModeButtonNotInUse.setter(char a1)
{
  KeyPath = swift_getKeyPath();
  v4 = a1 ^ 1;
  p_KeyPath = &KeyPath;
  sub_25AF759BC(0x64, 2, &p_KeyPath);
}

uint64_t sub_25AF87790(char *a1)
{
  v1 = *a1;
  KeyPath = swift_getKeyPath();
  v4 = (v1 & 1) == 0;
  p_KeyPath = &KeyPath;
  sub_25AF759BC(0x64, 2, &p_KeyPath);
}

uint64_t sub_25AF877F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  *a2 = *(v3 + 73);
  return result;
}

uint64_t (*GlanceModel.schoolModeButtonNotInUse.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v6[0] = 100;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(0x64, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 73);

  *(a1 + 9) = (v4 & 1) == 0;
  return sub_25AF879D4;
}

uint64_t sub_25AF879D4(uint64_t a1)
{
  v2 = (*(a1 + 9) & 1) == 0;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = v2;
  *(a1 + 16) = a1;
  sub_25AF759BC(0x64, 2, (a1 + 16));
}

void *(*GlanceModel.screenRecordingButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 14;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(0xE, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF87BA0;
}

void *(*GlanceModel.sensitiveUIButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 15;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(0xF, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF87D28;
}

void *(*GlanceModel.theaterModeButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 8;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(8, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF87EB0;
}

void *(*GlanceModel.walkieTalkieButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 16;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(0x10, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF88038;
}

void *(*GlanceModel.waterLockButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 9;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(9, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF881C0;
}

uint64_t sub_25AF8820C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = a4();

  return v7 & 1;
}

uint64_t sub_25AF882D0(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  sub_25AF752F4(a5, a3);
}

void *(*GlanceModel.wiFiButtonState.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[0] = 2;
  memset(&v6[1], 0, 24);
  v7 = 0;
  v3 = sub_25AF730A0(v6, 0);
  sub_25AF18128(2, 0, 0, 0, 0);
  swift_getKeyPath();
  *a1 = v3;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 74);

  *(a1 + 16) = v4;
  return sub_25AF884CC;
}

uint64_t GlanceModel.volume.getter()
{
  v2[0] = 25;
  memset(&v2[1], 0, 24);
  v3 = 0;
  v0 = sub_25AF730A0(v2, 0);
  sub_25AF18128(0x19, 0, 0, 0, 0);
  swift_getKeyPath();
  v2[0] = v0;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();
}

uint64_t GlanceModel.volume.setter(double a1)
{
  KeyPath = swift_getKeyPath();
  v2 = a1;
  v5 = v2;
  v6 = 0;
  p_KeyPath = &KeyPath;
  sub_25AF75D34(0x19, 2, &p_KeyPath, &unk_27FA255F0);
}

uint64_t sub_25AF8881C(double *a1)
{
  v1 = *a1;
  KeyPath = swift_getKeyPath();
  v2 = v1;
  v5 = v2;
  v6 = 0;
  p_KeyPath = &KeyPath;
  sub_25AF75D34(0x19, 2, &p_KeyPath, &unk_27FA255F0);
}

uint64_t sub_25AF8889C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v5 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent + 4);
  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent);
  *(a2 + 4) = v5;
  return result;
}

void (*GlanceModel.volume.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v10[0] = 25;
  memset(&v10[1], 0, 24);
  v11 = 0;
  v5 = sub_25AF730A0(v10, 0);
  sub_25AF18128(0x19, 0, 0, 0, 0);
  swift_getKeyPath();
  *v4 = v5;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v6 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent);
  v7 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent + 4);

  v8 = v6;
  if (v7)
  {
    v8 = 0.0;
  }

  *(v4 + 16) = v8;
  return sub_25AF88AF4;
}

void sub_25AF88AF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  *v1 = swift_getKeyPath();
  *(v1 + 2) = v2;
  *(v1 + 12) = 0;
  *(v1 + 3) = v1;
  sub_25AF75D34(0x19, 2, v1 + 3, &unk_27FA255F0);

  free(v1);
}

unint64_t GlanceModel.volumeRouteButtonSymbolName.getter()
{
  v4[0] = 25;
  memset(&v4[1], 0, 24);
  v5 = 0;
  v0 = sub_25AF730A0(v4, 0);
  sub_25AF18128(0x19, 0, 0, 0, 0);
  swift_getKeyPath();
  v4[0] = v0;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t GlanceModel.volumeRouteButtonSymbolName.setter(uint64_t a1, uint64_t a2)
{
  v5[0] = swift_getKeyPath();
  v5[1] = a1;
  v5[2] = a2;
  v6 = v5;
  sub_25AF75D34(0x19, 2, &v6, &qword_27FA242A0);
}

uint64_t sub_25AF88EE4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = swift_getKeyPath();
  v4[1] = v2;
  v4[2] = v1;
  v5 = v4;

  sub_25AF75D34(0x19, 2, &v5, &qword_27FA242A0);
}

void (*GlanceModel.volumeRouteButtonSymbolName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v11[0] = 25;
  memset(&v11[1], 0, 24);
  v12 = 0;
  v5 = sub_25AF730A0(v11, 0);
  sub_25AF18128(0x19, 0, 0, 0, 0);
  swift_getKeyPath();
  *v4 = v5;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v7 = *(v5 + 80);
  v6 = *(v5 + 88);

  v8 = 0x800000025B0183C0;
  v9 = 0xD000000000000013;
  if (v6)
  {
    v9 = v7;
    v8 = v6;
  }

  v4[3] = v9;
  v4[4] = v8;
  return sub_25AF890CC;
}

void sub_25AF890CC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  *v3 = swift_getKeyPath();
  v3[1] = v4;
  v3[2] = v5;
  v3[5] = v3;
  if (a2)
  {

    sub_25AF75D34(0x19, 2, v3 + 5, &qword_27FA242A0);
  }

  else
  {
    sub_25AF75D34(0x19, 2, v3 + 5, &qword_27FA242A0);
  }

  free(v3);
}

uint64_t sub_25AF89344(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_25B005B34();
  *(v4 + 40) = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF893E4, v6, v5);
}

uint64_t sub_25AF893E4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_25AF894A0;
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);

  return GlanceModel.performAppearanceTransition(_:animated:)(v6, v5);
}

uint64_t sub_25AF894A0(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 48);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_25AF895FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 104) = a5;
  *(v5 + 48) = a4;
  sub_25B005B34();
  *(v5 + 56) = sub_25B005B24();
  v7 = sub_25B005AE4();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x2822009F8](sub_25AF89698, v7, v6);
}

uint64_t sub_25AF89698()
{
  v11 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  v0[10] = __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD000000000000029, 0x800000025B0185E0, &v10);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  v6 = v0[6];
  swift_getKeyPath();
  v0[5] = v6;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v7 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    GlanceModel.toggleEditing()();
  }

  _s17NanoControlCenter11GlanceModelC34updateHearingDevicesButtonPresenceyyF_0();
  GlanceModel.updateLockButtonPresence()();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_25AF898FC;

  return sub_25AF1BD34();
}

uint64_t sub_25AF898FC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_25AF89A1C, v3, v2);
}

uint64_t sub_25AF89A1C()
{
  v14 = v0;
  if (sub_25B005C14())
  {

    v1 = sub_25B0044B4();
    v2 = sub_25B005CD4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v13 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_25AF8E7DC(0xD000000000000029, 0x800000025B0185E0, &v13);
      _os_log_impl(&dword_25AF0B000, v1, v2, "%s cancelled before reading layout. Exiting early.", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
      MEMORY[0x25F85EC30](v4, -1, -1);
      MEMORY[0x25F85EC30](v3, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_25B0044B4();
    v8 = sub_25B005C94();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_25AF8E7DC(0xD000000000000029, 0x800000025B0185E0, &v13);
      _os_log_impl(&dword_25AF0B000, v7, v8, "%s reading layout", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x25F85EC30](v10, -1, -1);
      MEMORY[0x25F85EC30](v9, -1, -1);
    }

    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *v11 = v0;
    v11[1] = sub_25AF89CA4;
    v12 = *(v0 + 104);

    return sub_25AFEF164(v12);
  }
}

uint64_t sub_25AF89CA4(char a1)
{
  v2 = *v1;
  *(*v1 + 105) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_25AF89DCC, v4, v3);
}

uint64_t sub_25AF89DCC()
{
  v14 = v0;

  v1 = sub_25B0044B4();
  v2 = sub_25B005C94();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 105);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_25AF8E7DC(0xD000000000000029, 0x800000025B0185E0, &v13);
    *(v4 + 12) = 1024;
    *(v4 + 14) = v3;
    _os_log_impl(&dword_25AF0B000, v1, v2, "%s success: %{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  if (*(v0 + 105) != 1)
  {
    v6 = sub_25B0044B4();
    v7 = sub_25B005C94();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25AF8E7DC(0xD000000000000029, 0x800000025B0185E0, &v13);
      v10 = "%s reading layout reported failure. Exiting early.";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_12;
  }

  if (sub_25B005C14())
  {
    v6 = sub_25B0044B4();
    v7 = sub_25B005CD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25AF8E7DC(0xD000000000000029, 0x800000025B0185E0, &v13);
      v10 = "%s cancelled after reading layout. Exiting without suggesting buttons.";
LABEL_9:
      _os_log_impl(&dword_25AF0B000, v6, v7, v10, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x25F85EC30](v9, -1, -1);
      MEMORY[0x25F85EC30](v8, -1, -1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  sub_25AF83AE4();
LABEL_12:
  v11 = *(v0 + 8);

  return v11();
}

Swift::Void __swiftcall GlanceModel.updateAnnounceMessagesButtonPresence(_:)(Swift::Bool a1)
{
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD000000000000028, 0x800000025B018730, &v11);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  if (a1)
  {
    v7 = sub_25B0044B4();
    v8 = sub_25B005CD4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_25AF8E7DC(0xD000000000000028, 0x800000025B018730, &v11);
      _os_log_impl(&dword_25AF0B000, v7, v8, "%s adding displayed Announce Messages button, if not previously displayed", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x25F85EC30](v10, -1, -1);
      MEMORY[0x25F85EC30](v9, -1, -1);
    }

    v11 = 0x12uLL;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_25AFEFFF0(&v11, 2);
    sub_25AF18128(v11, *(&v11 + 1), v12, v13, v14);
  }
}

void sub_25AF8A47C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

Swift::Void __swiftcall GlanceModel.updateAnnounceMessagesButtonEnabledState(_:)(Swift::Bool a1)
{
  KeyPath = swift_getKeyPath();
  v3 = a1;
  p_KeyPath = &KeyPath;
  sub_25AF759BC(0x12, 2, &p_KeyPath);
}

uint64_t sub_25AF8A5B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  *a2 = *(v3 + 72);
  return result;
}

void sub_25AF8A81C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_25AF8A8E8(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2 > 0xFD)
  {
    return 0x6E6F442F74696445;
  }

  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v15[0] = *a1;
      v15[1] = v4;
      v15[2] = v7;
      v15[3] = v6;
      v16 = v2;
      sub_25AF181DC(v5, v4, v7, v6, v2);
      v9 = sub_25AF730A0(v15, a2 & 1);
      swift_getKeyPath();
      v15[0] = v9;
      sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
      sub_25B004234();
      sub_25AF231D0(v5, v4, v7, v6, v2);

      v10 = *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 48);

      return v10;
    }

    else
    {
      return 0x676E6964616F4CLL;
    }
  }

  else
  {
    if (qword_27FA23748 != -1)
    {
      swift_once();
    }

    v11 = off_27FA25240;
    if (*(off_27FA25240 + 2) && (v12 = sub_25AF8F278(v5), (v13 & 1) != 0))
    {
      v14 = *(v11[7] + 16 * v12);

      sub_25AF231D0(v5, v4, v7, v6, v2);
      return v14;
    }

    else
    {
      sub_25AF231D0(v5, v4, v7, v6, v2);
      return 0;
    }
  }
}

uint64_t sub_25AF8AB08@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  LODWORD(v54) = a2;
  v7 = sub_25B004094();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B004204();
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = sub_25B005904();
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v24 = *(a1 + 32);
  if (v24 > 0xFD)
  {
    swift_getKeyPath();
    v58[0] = v4;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    v25 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    sub_25AFD8A90(*(v4 + v25), a3);
LABEL_15:
    v46 = type metadata accessor for ButtonAXString();
    swift_storeEnumTagMultiPayload();
    return (*(*(v46 - 8) + 56))(a3, 0, 1, v46);
  }

  v53 = a3;
  v26 = *a1;
  if (!(v24 >> 6))
  {
    return sub_25AFD6F64(*a1, v53);
  }

  v28 = *(a1 + 8);
  v27 = *(a1 + 16);
  v29 = *(a1 + 24);
  if (v24 >> 6 != 1)
  {
    v42 = v21;
    v54 = v20;
    v50 = v28;
    v51 = v27;
    v52 = v29;
    sub_25AF181DC(v26, v28, v27, v29, v24);
    sub_25B0058F4();
    v49 = v26;
    if (qword_27FA23728 != -1)
    {
      swift_once();
    }

    v43 = qword_27FA30B00;
    sub_25B0041F4();
    v48 = v42;
    (*(v42 + 16))(v18, v23, v54);
    v44 = v57;
    (*(v57 + 16))(v12, v15, v10);
    v45 = [v43 bundleURL];
    sub_25B004124();

    (*(v55 + 104))(v9, *MEMORY[0x277CC9118], v56);
    a3 = v53;
    sub_25B0040C4();
    sub_25AF231D0(v49, v50, v51, v52, v24);
    (*(v44 + 8))(v15, v10);
    (*(v48 + 8))(v23, v54);
    goto LABEL_15;
  }

  v58[0] = *a1;
  v58[1] = v28;
  v58[2] = v27;
  v58[3] = v29;
  v59 = v24;
  v30 = v29;
  v31 = v27;
  v32 = v28;

  v33 = v26;
  v34 = sub_25AF730A0(v58, v54 & 1);
  swift_getKeyPath();
  v58[0] = v34;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v36 = *(v34 + 96);
  v35 = *(v34 + 104);

  sub_25AF231D0(v26, v32, v31, v30, v24);
  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = 0xE000000000000000;
  if (v35)
  {
    v38 = v35;
  }

  v39 = v53;
  *v53 = v37;
  v39[1] = v38;
  v40 = type metadata accessor for ButtonAXString();
  swift_storeEnumTagMultiPayload();
  return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
}

void *sub_25AF8B0FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v77 = a3;
  v68 = sub_25B004094();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25B004204();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - v10;
  v73 = sub_25B005904();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25790);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v63 - v15;
  v17 = *(a1 + 8);
  v75 = *a1;
  v76 = v17;
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = *(a1 + 32);
  swift_getKeyPath();
  v79 = v4;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v21 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  if (v4[v21] == 1)
  {
    if ((a2 & 1) == 0 && v20 <= 0xFD)
    {
      v23 = v75;
      v22 = v76;
      v79 = v75;
      v80 = v76;
      v81 = v19;
      v82 = v18;
      v83 = v20;
      sub_25AF181DC(v75, v76, v19, v18, v20);
      v24 = sub_25AFEC930();
      v25 = sub_25AF63D44(&v79, v24);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        if (qword_27FA23728 != -1)
        {
          swift_once();
        }

        sub_25B004014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25770);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_25B00CD00;
        v38 = MEMORY[0x277D83B88];
        v39 = MEMORY[0x277D83C10];
        *(v37 + 56) = MEMORY[0x277D83B88];
        *(v37 + 64) = v39;
        *(v37 + 32) = v25 / 2 + 1;
        *(v37 + 96) = v38;
        *(v37 + 104) = v39;
        *(v37 + 72) = v25 % 2 + 1;
        v40 = sub_25B005944();
        v42 = v41;
        sub_25AF231D0(v23, v22, v19, v18, v20);

        v28 = v77;
        *v77 = v40;
        v28[1] = v42;
        goto LABEL_16;
      }

      sub_25AF231D0(v23, v22, v19, v18, v20);
    }

    v28 = v77;
    *v77 = 0;
    v28[1] = 0xE000000000000000;
LABEL_16:
    v43 = type metadata accessor for ButtonAXString();
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return (*(*(v43 - 8) + 56))(v28, 0, 1, v43);
  }

  if (v20 > 0xFD)
  {
    goto LABEL_12;
  }

  if (!(v20 >> 6))
  {
    v44 = v75;
    v79 = v75;
    v80 = v76;
    v81 = v19;
    v82 = v18;
    v83 = v20;
    v45 = sub_25AF7D778(&v79, a2 & 1);
    if (v44)
    {
      v46 = 0.0;
    }

    else
    {
      swift_getKeyPath();
      v79 = v4;
      sub_25B004234();

      v46 = *&v4[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage];
    }

    v54 = v75;
    sub_25AFD8E8C(v75, v45 & 1, v46, v75 != 0, v77);
    v49 = v54;
    v50 = v76;
    v51 = v19;
    v52 = v18;
    return sub_25AF231D0(v49, v50, v51, v52, v20);
  }

  if (v20 >> 6 != 1)
  {
LABEL_12:
    v35 = type metadata accessor for ButtonAXString();
    return (*(*(v35 - 8) + 56))(v77, 1, 1, v35);
  }

  v79 = v75;
  v80 = v76;
  v29 = v19;
  v81 = v19;
  v82 = v18;
  v30 = v18;
  v83 = v20;
  sub_25AF181DC(v75, v76, v19, v18, v20);
  v31 = sub_25AF730A0(&v79, a2 & 1);
  swift_getKeyPath();
  v78 = v31;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v32 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  sub_25AF25FC4(v31 + v32, &v79, &qword_27FA25780);
  if (v82)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25788);
    v33 = sub_25B0043A4();
    v34 = swift_dynamicCast();
    (*(*(v33 - 8) + 56))(v16, v34 ^ 1u, 1, v33);
  }

  else
  {
    sub_25AF2602C(&v79, &qword_27FA25780);
    v33 = sub_25B0043A4();
    (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  }

  sub_25B0043A4();
  v47 = (*(*(v33 - 8) + 48))(v16, 1, v33);
  sub_25AF2602C(v16, &unk_27FA25790);
  if (!v47)
  {
    swift_getKeyPath();
    v79 = v31;
    sub_25B004234();

    v53 = *(v31 + 74) == 1;
    v63 = v31;
    if (v53)
    {
      v55 = v67;
      sub_25B0058F4();
      if (qword_27FA23728 == -1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55 = v67;
      sub_25B0058F4();
      if (qword_27FA23728 == -1)
      {
        goto LABEL_31;
      }
    }

    swift_once();
LABEL_31:
    v56 = qword_27FA30B00;
    v57 = v72;
    sub_25B0041F4();
    v58 = v70;
    (*(v70 + 16))(v64, v55, v73);
    v59 = v71;
    (*(v71 + 16))(v65, v57, v74);
    v60 = [v56 bundleURL];
    v61 = v69;
    sub_25B004124();

    (*(v66 + 104))(v61, *MEMORY[0x277CC9118], v68);
    v62 = v55;
    v28 = v77;
    sub_25B0040C4();

    sub_25AF231D0(v75, v76, v29, v30, v20);
    (*(v59 + 8))(v72, v74);
    (*(v58 + 8))(v62, v73);
    v43 = type metadata accessor for ButtonAXString();
    goto LABEL_17;
  }

  v48 = type metadata accessor for ButtonAXString();
  (*(*(v48 - 8) + 56))(v77, 1, 1, v48);

  v49 = v75;
  v50 = v76;
  v51 = v19;
  v52 = v30;
  return sub_25AF231D0(v49, v50, v51, v52, v20);
}

uint64_t sub_25AF8BC7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25708);
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x28223BE20](v9);
  v105 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25710);
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x28223BE20](v11);
  v99 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25718);
  v96 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v100 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25720);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v85 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25728);
  MEMORY[0x28223BE20](v25 - 8);
  v102 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v101 = &v85 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25730);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v35.n128_f64[0] = MEMORY[0x28223BE20](v31);
  v36 = *(a1 + 32);
  if (v36 <= 0xFD)
  {
    v90 = v24;
    v87 = v21;
    v88 = v13;
    v91 = ObjectType;
    v94 = &v85 - v33;
    v92 = v34;
    v89 = v30;
    v95 = a3;
    v93 = v32;
    v38 = *(a1 + 8);
    v40 = *(a1 + 16);
    v41 = *(a1 + 24);
    *&v113 = *a1;
    v39 = v113;
    *(&v113 + 1) = v38;
    *&v114 = v40;
    *(&v114 + 1) = v41;
    v115 = v36;
    swift_getKeyPath();
    v112 = v4;
    v106 = v39;
    v107 = v38;
    v108 = v40;
    v109 = v41;
    sub_25AF181DC(v39, v38, v40, v41, v36);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    v42 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    if (*(v4 + v42) != 1 || (a2 & 1) != 0)
    {
      sub_25AF231D0(v106, v107, v108, v109, v36);
      v37 = 1;
      a3 = v95;
    }

    else
    {
      v43 = swift_allocObject();
      *(v43 + 16) = v4;
      v44 = v114;
      *(v43 + 24) = v113;
      *(v43 + 40) = v44;
      *(v43 + 56) = v115;
      MEMORY[0x28223BE20](v43);
      *(&v85 - 4) = v4;
      *(&v85 - 3) = &v113;
      *(&v85 - 16) = 0;
      v45 = v91;
      *(&v85 - 1) = v91;
      sub_25AF1D7EC(v106, v107, v108, v109, v36);
      v46 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25738);
      sub_25AFA0778();
      sub_25B0054C4();
      v47 = sub_25AFEC930();
      v48 = sub_25AF63D44(&v113, v47);
      v50 = v49;

      if (v50)
      {
        v51 = 1;
        v52 = v101;
      }

      else
      {
        v53 = *(sub_25AFEC930() + 16);

        v86 = v46;
        if (v48 == v53 - 1)
        {
          v54 = 1;
          v55 = v88;
          v56 = v87;
          v57 = v90;
          v58 = v96;
        }

        else
        {
          v59 = swift_allocObject();
          *(v59 + 16) = v46;
          *(v59 + 24) = v48;
          v60 = v114;
          *(v59 + 32) = v113;
          *(v59 + 48) = v60;
          *(v59 + 64) = v115;
          MEMORY[0x28223BE20](v59);
          *(&v85 - 2) = v45;
          sub_25AF1D7EC(v106, v107, v108, v109, v36);
          v61 = v46;
          v62 = v100;
          sub_25B0054C4();
          v58 = v96;
          v57 = v90;
          v63 = v62;
          v55 = v88;
          (*(v96 + 32))(v90, v63, v88);
          v54 = 0;
          v56 = v87;
        }

        v64 = 1;
        v96 = *(v58 + 56);
        (v96)(v57, v54, 1, v55);
        sub_25AFEC930();

        if (v48)
        {
          v65 = swift_allocObject();
          v88 = &v85;
          v66 = v86;
          *(v65 + 16) = v86;
          *(v65 + 24) = v48;
          v67 = v114;
          *(v65 + 32) = v113;
          *(v65 + 48) = v67;
          *(v65 + 64) = v115;
          MEMORY[0x28223BE20](v65);
          *(&v85 - 2) = v45;
          sub_25AF1D7EC(v106, v107, v108, v109, v36);
          v68 = v66;
          v69 = v100;
          sub_25B0054C4();
          (*(v58 + 32))(v56, v69, v55);
          v64 = 0;
        }

        (v96)(v56, v64, 1, v55);
        v70 = v90;
        v71 = v97;
        sub_25AF25FC4(v90, v97, &qword_27FA25720);
        v72 = v98;
        sub_25AF25FC4(v56, v98, &qword_27FA25720);
        v73 = v99;
        sub_25AF25FC4(v71, v99, &qword_27FA25720);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25760);
        sub_25AF25FC4(v72, v73 + *(v74 + 48), &qword_27FA25720);
        sub_25AF2602C(v56, &qword_27FA25720);
        sub_25AF2602C(v70, &qword_27FA25720);
        sub_25AF2602C(v72, &qword_27FA25720);
        sub_25AF2602C(v71, &qword_27FA25720);
        v52 = v101;
        sub_25AF25B0C(v73, v101, &qword_27FA25710);
        v51 = 0;
      }

      (*(v103 + 56))(v52, v51, 1, v104);
      v75 = v89;
      v76 = *(v89 + 16);
      v77 = v92;
      v78 = v94;
      v79 = v93;
      v76(v92, v94, v93);
      v80 = v102;
      sub_25AF25FC4(v52, v102, &qword_27FA25728);
      v81 = v105;
      v76(v105, v77, v79);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25758);
      sub_25AF25FC4(v80, v81 + *(v82 + 48), &qword_27FA25728);
      sub_25AF231D0(v106, v107, v108, v109, v36);
      sub_25AF2602C(v52, &qword_27FA25728);
      v83 = *(v75 + 8);
      v83(v78, v79);
      sub_25AF2602C(v80, &qword_27FA25728);
      v83(v77, v79);
      a3 = v95;
      sub_25AF25B0C(v81, v95, &qword_27FA25708);
      v37 = 0;
    }
  }

  else
  {
    v37 = 1;
  }

  return (*(v110 + 56))(a3, v37, 1, v111, v35);
}

uint64_t sub_25AF8C7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5 - 8];
  sub_25B005B34();
  sub_25B005B24();
  v7 = MEMORY[0x277D85700];
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
  v9 = sub_25B005B64();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);

  sub_25AF196CC(a2, v15);
  v10 = sub_25B005B24();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  v12 = *(a2 + 16);
  *(v11 + 40) = *a2;
  *(v11 + 56) = v12;
  *(v11 + 72) = *(a2 + 32);
  sub_25AF6C7F8(0, 0, v6, &unk_25B00F368, v11);
}

double sub_25AF8C970@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v46 = a3;
  v47 = a1;
  v49 = a4;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_25B0040A4();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25768);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = (&v42 - v18);
  sub_25B005B34();
  v48 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v53 = v5;
  *(&v53 + 1) = v6;
  *&v54 = v7;
  *(&v54 + 1) = v8;
  v55 = v9;
  sub_25AF196CC(a2, &v50);
  sub_25AF8AB08(&v53, v46 & 1, v19);
  sub_25AF231D0(v5, v6, v7, v8, v9);
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  sub_25B004014();
  sub_25AF25FC4(v19, v16, &qword_27FA25768);
  v20 = type metadata accessor for ButtonAXString();
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) == 1)
  {

    v50 = 0u;
    v51 = 0u;
    v52 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25750);
    sub_25AF3135C();
    sub_25B004C74();
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v16;
    v22 = v16[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25770);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25B00A900;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_25AFA0878();
    *(v23 + 32) = v21;
    *(v23 + 40) = v22;
    v24 = sub_25B005944();
    v26 = v25;

    *&v50 = v24;
    *(&v50 + 1) = v26;
    *&v51 = 0;
    *(&v51 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v52) = 0;

    sub_25B004C74();
    v50 = v53;
    v51 = v54;
    v52 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25750);
    sub_25AF3135C();
    sub_25B004C74();
  }

  else
  {
    v28 = v43;
    v27 = v44;
    v29 = v45;
    (*(v44 + 32))(v43, v16, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25770);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_25B00A900;
    (*(v27 + 16))(v42, v28, v29);
    v31 = sub_25B005964();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_25AFA0878();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    v34 = sub_25B005944();
    v36 = v35;

    *&v50 = v34;
    *(&v50 + 1) = v36;
    *&v51 = 0;
    *(&v51 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v52) = 1;

    sub_25B004C74();
    v50 = v53;
    v51 = v54;
    v52 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25750);
    sub_25AF3135C();
    sub_25B004C74();

    (*(v27 + 8))(v28, v29);
  }

  sub_25AF2602C(v19, &qword_27FA25768);

  result = *&v53;
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v41 = v49;
  *v49 = v53;
  v41[1] = v38;
  *(v41 + 32) = v39;
  *(v41 + 33) = v40;
  return result;
}

void *sub_25AF8CF98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *a3;
  v13 = *(a3 + 16);
  v5 = *(a3 + 32);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_25AFEC930();
  sub_25AF64304(a2, &v17);
  result = sub_25AF18128(v17, *(&v17 + 1), v18, *(&v18 + 1), v19);
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v16;
  v9 = *(v16 + 2);
  if (v9 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_25AF196CC(a3, &v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 >= *(v16 + 3) >> 1)
  {
    v8 = sub_25AFCD450(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v16);
    v16 = v8;
  }

  v17 = v12;
  v18 = v13;
  v19 = v5;
  sub_25AF67DC0(v7, v7, 1uLL, &v17);
  sub_25AF1C414(a3);
  v11 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v11;
  v15 = *(a3 + 32);
  sub_25AFECC84(v14, v8);
}

uint64_t sub_25AF8D144@<X0>(uint64_t a1@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B004BC4();
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA30B00;
  v3 = sub_25B005094();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

void *sub_25AF8D29C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *a3;
  v13 = *(a3 + 16);
  v5 = *(a3 + 32);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_25AFEC930();
  sub_25AF64304(a2, &v17);
  result = sub_25AF18128(v17, *(&v17 + 1), v18, *(&v18 + 1), v19);
  v7 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v16;
  v9 = *(v16 + 2);
  if (v9 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_25AF196CC(a3, &v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 >= *(v16 + 3) >> 1)
  {
    v8 = sub_25AFCD450(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v16);
    v16 = v8;
  }

  v17 = v12;
  v18 = v13;
  v19 = v5;
  sub_25AF67DC0(v7, v7, 1uLL, &v17);
  sub_25AF1C414(a3);
  v11 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v11;
  v15 = *(a3 + 32);
  sub_25AFECC84(v14, v8);
}

uint64_t sub_25AF8D448@<X0>(uint64_t a1@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B004BC4();
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA30B00;
  v3 = sub_25B005094();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_25AF8D5A0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_25B0043A4();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v19 = *(a1 + 24);
  v12 = *(a1 + 32);
  swift_getKeyPath();
  v25[0] = v3;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v13 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  if (*(v3 + v13) == 1)
  {
    return *MEMORY[0x277D76548];
  }

  if (v12 > 0xFD)
  {
    return *MEMORY[0x277D765C8];
  }

  if (!(v12 >> 6))
  {
    if ((v9 > 0x17 || ((1 << v9) & 0x95E39E) == 0) && v9 != 100)
    {
      return *MEMORY[0x277D76548];
    }

    return *MEMORY[0x277D765C8];
  }

  if (v12 >> 6 != 1)
  {
    return *MEMORY[0x277D76548];
  }

  *&v21 = v9;
  *(&v21 + 1) = v10;
  v22 = v11;
  v23 = v19;
  v24 = v12;
  sub_25AF181DC(v9, v10, v11, v19, v12);
  v15 = sub_25AF730A0(&v21, a2 & 1);
  swift_getKeyPath();
  v20 = v15;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v16 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  sub_25AF25FC4(v15 + v16, &v21, &qword_27FA25780);

  if (!v23)
  {
    sub_25AF2602C(&v21, &qword_27FA25780);
LABEL_14:
    v17 = *MEMORY[0x277D76548];
    sub_25AF231D0(v9, v10, v11, v19, v12);
    return v17;
  }

  sub_25AF25F40(&v21, v25);
  sub_25AFA09E4(v25, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25788);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    goto LABEL_14;
  }

  (*(v18 + 8))(v8, v6);
  v17 = *MEMORY[0x277D765C8];
  sub_25AF231D0(v9, v10, v11, v19, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return v17;
}

id sub_25AF8D964(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_25AF8D9A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25AF8DA58()
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004224();
}

uint64_t sub_25AF8DB28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  *a2 = *(v3 + 74);
  return result;
}

uint64_t sub_25AF8DBF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_25AF8DCBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_25AF8DD04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted);
  return result;
}

uint64_t sub_25AF8DDDC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9[0] = v3;
  sub_25AFA048C(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v4 = v3[6];
  v9[0] = v3[5];
  v9[1] = v4;
  v6 = v3[8];
  v10 = v3[7];
  v5 = v10;
  v11 = v6;
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return sub_25AF25FC4(v9, &v8, &qword_27FA249F0);
}

uint64_t sub_25AF8DEB0(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_25AF25FC4(v5, &v4, &qword_27FA249F0);
  return sub_25AFBF5B0(v5);
}

uint64_t sub_25AF8DF0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA256E0, type metadata accessor for GlanceFocusModel);
  sub_25B004234();

  v4 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName);
  a2[1] = v4;
}

uint64_t sub_25AF8DFDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id sub_25AF8E024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA256E0, type metadata accessor for GlanceFocusModel);
  sub_25B004234();

  v4 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor);
  *a2 = v4;

  return v4;
}

void sub_25AF8E0E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25AFEB338(v1);
}

uint64_t sub_25AF8E114@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA256E0, type metadata accessor for GlanceFocusModel);
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusState);
  return result;
}

uint64_t sub_25AF8E1EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA256E0, type metadata accessor for GlanceFocusModel);
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusReduceInterruptions);
  return result;
}

uint64_t sub_25AF8E310(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25AF19A24;

  return v6();
}

uint64_t sub_25AF8E3F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25AF18ADC;

  return v7();
}

uint64_t sub_25AF8E4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_25AF25FC4(a3, v23 - v10, &unk_27FA24790);
  v12 = sub_25B005B64();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25AF2602C(v11, &unk_27FA24790);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_25B005B54();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_25B005AE4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_25B005984() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_25AF2602C(a3, &unk_27FA24790);

    return v21;
  }

LABEL_8:
  sub_25AF2602C(a3, &unk_27FA24790);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_25AF8E7DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25AF8E8A8(v11, 0, 0, 1, a1, a2);
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
    sub_25AF38988(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25AF8E8A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25AF8E9B4(a5, a6);
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
    result = sub_25B005F74();
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

uint64_t sub_25AF8E9B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_25AF8EA00(a1, a2);
  sub_25AF8EB30(&unk_286C4BC40);
  return v3;
}

uint64_t sub_25AF8EA00(uint64_t a1, unint64_t a2)
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

  v6 = sub_25AF8EC1C(v5, 0);
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

  result = sub_25B005F74();
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
        v10 = sub_25B0059D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25AF8EC1C(v10, 0);
        result = sub_25B005F14();
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

uint64_t sub_25AF8EB30(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25AF8EC90(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25AF8EC1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25AF8EC90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256D0);
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

unint64_t sub_25AF8EE80(uint64_t a1, uint64_t a2)
{
  sub_25B006294();
  sub_25B005994();
  v4 = sub_25B0062D4();

  return sub_25AF8F2E4(a1, a2, v4);
}

unint64_t sub_25AF8EEF8(uint64_t a1)
{
  sub_25B006294();
  if (*(a1 + 32))
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005DF4();
  }

  sub_25B005994();
  v2 = sub_25B0062D4();

  return sub_25AF8F39C(a1, v2);
}

unint64_t sub_25AF8EFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B006294();
  sub_25B005DF4();
  sub_25B005994();
  v6 = sub_25B0062D4();

  return sub_25AF8F5A0(a1, a2, a3, v6);
}

unint64_t sub_25AF8F064(uint64_t a1)
{
  sub_25B006294();
  v2 = *a1;
  v3 = *(a1 + 32);
  if (!(v3 >> 6))
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v2);
    goto LABEL_11;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v3 >> 6 == 1)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v4);
    if (v5)
    {
      sub_25B0062B4();
LABEL_8:
      sub_25B005994();
      goto LABEL_11;
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](2);
    if (v3)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
      goto LABEL_8;
    }

    MEMORY[0x25F85E0A0](0);
    sub_25B005DF4();
    sub_25B005994();
  }

LABEL_11:
  v6 = sub_25B0062D4();

  return sub_25AF8F6F4(a1, v6);
}

unint64_t sub_25AF8F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25B006294();
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](a2);
  sub_25B0062B4();
  if (a4)
  {
    sub_25B005994();
  }

  v8 = sub_25B0062D4();

  return sub_25AF8FCE4(a1, a2, a3, a4, v8);
}

unint64_t sub_25AF8F278(uint64_t a1)
{
  sub_25B006294();
  MEMORY[0x25F85E0A0](a1);
  v2 = sub_25B0062D4();

  return sub_25AF8FE58(a1, v2);
}

unint64_t sub_25AF8F2E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25B006174())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25AF8F39C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v24 = ~v4;
    v7 = *(a1 + 8);
    v22 = *(a1 + 16);
    v23 = *a1;
    v20 = *(a1 + 24);
    v21 = v2 + 64;
    v8 = *(a1 + 32);
    do
    {
      v9 = *(v6 + 48) + 40 * v5;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (*(v9 + 32))
      {
        if (v8)
        {
          v14 = v11 == v23 && v10 == v7;
          if (v14 || (sub_25B006174() & 1) != 0)
          {
            v15 = v12 == v22 && v13 == v20;
            if (v15 || (sub_25B006174() & 1) != 0)
            {
              return v5;
            }
          }
        }
      }

      else if ((v8 & 1) == 0)
      {
        sub_25AF18BD4(0, &qword_27FA27200);
        v16 = v11;

        if (sub_25B005DE4())
        {
          if (v10 == v7 && v12 == v22)
          {
            sub_25AF1818C(v11, v7, v22, v13, 0);
            return v5;
          }

          v18 = sub_25B006174();
          sub_25AF1818C(v11, v10, v12, v13, 0);
          v3 = v21;
          if (v18)
          {
            return v5;
          }
        }

        else
        {
          sub_25AF1818C(v11, v10, v12, v13, 0);
          v3 = v21;
        }
      }

      v5 = (v5 + 1) & v24;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25AF8F5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    sub_25AF18BD4(0, &qword_27FA27200);
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *v9;

      if (sub_25B005DE4())
      {
        if (v10 == a2 && v11 == a3)
        {

          return v6;
        }

        v14 = sub_25B006174();

        if (v14)
        {
          return v6;
        }
      }

      else
      {
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_25AF8F6F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v28 = ~v3;
    v7 = *a1;
    v6 = *(a1 + 8);
    v8 = *(a1 + 32);
    v27 = v8 & 0xC0;
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v31 = v10;
    v32 = v9;
    v33 = v6;
    while (1)
    {
      v11 = *(v30 + 48) + 40 * v4;
      v13 = *v11;
      v12 = *(v11 + 8);
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = *(v11 + 32);
      v35[0] = *v11;
      v35[1] = v12;
      v35[2] = v15;
      v35[3] = v14;
      v36 = v16;
      v37 = v7;
      v38 = v6;
      v39 = v10;
      v40 = v9;
      v41 = v8;
      if (!(v16 >> 6))
      {
        if (v8 < 0x40)
        {
          sub_25AF196CC(a1, v34);
          sub_25AF2602C(v35, &unk_27FA25590);
          v9 = v32;
          if (v13 == v7)
          {
            return v4;
          }

          goto LABEL_4;
        }

        sub_25AF196CC(a1, v34);
LABEL_34:
        sub_25AF2602C(v35, &unk_27FA25590);
        goto LABEL_35;
      }

      if (v16 >> 6 != 1)
      {
        break;
      }

      if (v27 != 64)
      {
        goto LABEL_33;
      }

      sub_25AF18BD4(0, &qword_27FA27200);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      sub_25AF196CC(a1, v34);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      sub_25AF196CC(a1, v34);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      if ((sub_25B005DE4() & 1) == 0 || v12 != v33)
      {
        sub_25AF2602C(v35, &unk_27FA25590);
        sub_25AF18128(v13, v12, v15, v14, v16);
        sub_25AF1C414(a1);
        v21 = v13;
        v22 = v12;
        goto LABEL_31;
      }

      if (v14)
      {
        if (!v32)
        {
          sub_25AF2602C(v35, &unk_27FA25590);
          sub_25AF18128(v13, v33, v15, v14, v16);
          sub_25AF1C414(a1);
          v21 = v13;
          v22 = v33;
LABEL_31:
          sub_25AF18128(v21, v22, v15, v14, v16);
LABEL_35:
          v9 = v32;
          goto LABEL_4;
        }

        if (v15 == v31 && v14 == v32)
        {
          sub_25AF2602C(v35, &unk_27FA25590);
          sub_25AF18128(v13, v33, v31, v32, v16);
          sub_25AF1C414(a1);
          sub_25AF18128(v13, v33, v31, v32, v16);
          return v4;
        }

        v17 = sub_25B006174();
        sub_25AF2602C(v35, &unk_27FA25590);
        sub_25AF18128(v13, v33, v15, v14, v16);
        sub_25AF1C414(a1);
        sub_25AF18128(v13, v33, v15, v14, v16);
        goto LABEL_43;
      }

      sub_25AF2602C(v35, &unk_27FA25590);
      sub_25AF18128(v13, v33, v15, 0, v16);
      sub_25AF1C414(a1);
      sub_25AF18128(v13, v33, v15, 0, v16);
      v9 = v32;
      if (!v32)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v28;
      v10 = v31;
      v6 = v33;
      if (((*(v29 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    if (v27 != 128)
    {
      goto LABEL_33;
    }

    if (v16)
    {
      if ((v8 & 1) == 0 || (v13 == v7 ? (v18 = v12 == v6) : (v18 = 0), !v18 && (v19 = sub_25B006174(), v9 = v32, (v19 & 1) == 0)))
      {
LABEL_33:
        sub_25AF196CC(a1, v34);
        sub_25AF181DC(v13, v12, v15, v14, v16);
        goto LABEL_34;
      }

      if (v15 == v10 && v14 == v9)
      {
        v25 = a1;
        v26 = v9;
        sub_25AF196CC(v25, v34);
        sub_25AF181DC(v13, v12, v10, v26, v16);
LABEL_52:
        sub_25AF2602C(v35, &unk_27FA25590);
        return v4;
      }

      v17 = sub_25B006174();
      sub_25AF196CC(a1, v34);
      sub_25AF181DC(v13, v12, v15, v14, v16);
    }

    else
    {
      if (v8)
      {
        goto LABEL_33;
      }

      sub_25AF18BD4(0, &qword_27FA27200);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      sub_25AF196CC(a1, v34);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      if ((sub_25B005DE4() & 1) == 0)
      {
        sub_25AF18128(v13, v12, v15, v14, v16);
        goto LABEL_34;
      }

      if (v12 == v33 && v15 == v31)
      {
        sub_25AF18128(v13, v33, v31, v14, v16);
        goto LABEL_52;
      }

      v17 = sub_25B006174();
      sub_25AF18128(v13, v12, v15, v14, v16);
    }

    sub_25AF2602C(v35, &unk_27FA25590);
LABEL_43:
    v9 = v32;
    if (v17)
    {
      return v4;
    }

    goto LABEL_4;
  }

  return v4;
}

unint64_t sub_25AF8FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v8 = ~v6;
  sub_25AF18BD4(0, &qword_27FA27200);
  while (1)
  {
    v9 = *(v5 + 48) + 32 * v7;
    v11 = *v9;
    v10 = *(v9 + 8);
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);

    v14 = v11;
    if ((sub_25B005DE4() & 1) != 0 && v10 == a2)
    {
      if (!v12)
      {

        if (!a4)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      if (a4)
      {
        break;
      }
    }

LABEL_14:

LABEL_15:
    v7 = (v7 + 1) & v8;
    if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  if (v13 != a3 || v12 != a4)
  {
    v16 = sub_25B006174();

    if (v16)
    {
      return v7;
    }

    goto LABEL_15;
  }

LABEL_21:

  return v7;
}

unint64_t sub_25AF8FE58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_25AF8FEC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25B006294();
  sub_25B005994();
  v8 = sub_25B0062D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25B006174() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25AF92B20(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25AF90014(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_25B005EB4();

    if (v9)
    {

      sub_25AF18BD4(0, &qword_27FA23A78);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_25B005EA4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_25AF9177C(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_25AF91BCC();
    }

    v18 = v8;
    sub_25AF92A9C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_25AF18BD4(0, &qword_27FA23A78);
  v11 = sub_25B005DD4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_25AF92CA0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_25B005DE4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_25AF9024C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25B006294();
  MEMORY[0x25F85E0A0](a2);
  v6 = sub_25B0062D4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25AF92E10(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25AF90344(uint64_t a1, uint64_t a2)
{
  v37 = *v2;
  sub_25B006294();
  v39 = *(a2 + 8);
  v40 = *a2;
  v5 = *(a2 + 24);
  v38 = *(a2 + 16);
  v6 = *(a2 + 32);
  v32 = v2;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v39);
      if (!v5)
      {
        sub_25B0062B4();
        goto LABEL_10;
      }

      sub_25B0062B4();
    }

    else
    {
      MEMORY[0x25F85E0A0](2);
      if (v6)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25B005DF4();
      }
    }

    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v40);
  }

LABEL_10:
  v7 = sub_25B0062D4();
  v8 = -1 << *(v37 + 32);
  v9 = v7 & ~v8;
  v33 = a1;
  if (((*(v37 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_56:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = *v32;
    sub_25AF196CC(a2, v42);
    sub_25AF92F6C(a2, v9, isUniquelyReferenced_nonNull_native, v23);
    *v32 = v41[0];
    v24 = *(a2 + 16);
    *v33 = *a2;
    *(v33 + 16) = v24;
    *(v33 + 32) = *(a2 + 32);
    return 1;
  }

  v34 = v6 >> 6;
  v36 = v5;
  v35 = ~v8;
  while (1)
  {
    v10 = *(v37 + 48) + 40 * v9;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v42[0] = *v10;
    v42[1] = v11;
    v42[2] = v13;
    v42[3] = v14;
    v43 = v15;
    v44 = v40;
    v45 = v39;
    v46 = v38;
    v47 = v36;
    v48 = v6;
    if (!(v15 >> 6))
    {
      if (v6 < 0x40)
      {
        sub_25AF196CC(a2, v41);
        sub_25AF2602C(v42, &unk_27FA25590);
        if (v12 == v40)
        {
          goto LABEL_61;
        }

        goto LABEL_14;
      }

      sub_25AF196CC(a2, v41);
      goto LABEL_13;
    }

    if (v15 >> 6 != 1)
    {
      if (v34 != 2)
      {
        goto LABEL_12;
      }

      if ((v15 & 1) == 0)
      {
        if (v6)
        {
          goto LABEL_12;
        }

        sub_25AF18BD4(0, &qword_27FA27200);
        sub_25AF196CC(a2, v41);
        sub_25AF181DC(v12, v11, v13, v14, v15);
        sub_25AF196CC(a2, v41);
        sub_25AF181DC(v12, v11, v13, v14, v15);
        if ((sub_25B005DE4() & 1) == 0)
        {
          sub_25AF1C414(a2);
          sub_25AF18128(v12, v11, v13, v14, v15);
          goto LABEL_13;
        }

        if (v11 == v39 && v13 == v38)
        {
          sub_25AF1C414(a2);
          sub_25AF18128(v12, v39, v38, v14, v15);
          sub_25AF2602C(v42, &unk_27FA25590);
          goto LABEL_61;
        }

        v19 = sub_25B006174();
        sub_25AF1C414(a2);
        sub_25AF18128(v12, v11, v13, v14, v15);
        goto LABEL_50;
      }

      if (v6)
      {
        v17 = v12 == v40 && v11 == v39;
        if (v17 || (sub_25B006174() & 1) != 0)
        {
          if (v13 == v38 && v14 == v36)
          {
            sub_25AF181DC(v12, v11, v38, v36, v15);
            sub_25AF2602C(v42, &unk_27FA25590);
            goto LABEL_62;
          }

          v19 = sub_25B006174();
          sub_25AF196CC(a2, v41);
          sub_25AF181DC(v12, v11, v13, v14, v15);
LABEL_50:
          sub_25AF2602C(v42, &unk_27FA25590);
          if (v19)
          {
            goto LABEL_61;
          }

          goto LABEL_14;
        }
      }

LABEL_12:
      sub_25AF196CC(a2, v41);
      sub_25AF181DC(v12, v11, v13, v14, v15);
LABEL_13:
      sub_25AF2602C(v42, &unk_27FA25590);
      goto LABEL_14;
    }

    if (v34 != 1)
    {
      goto LABEL_12;
    }

    sub_25AF18BD4(0, &qword_27FA27200);
    sub_25AF196CC(a2, v41);
    sub_25AF181DC(v12, v11, v13, v14, v15);
    sub_25AF196CC(a2, v41);
    sub_25AF181DC(v12, v11, v13, v14, v15);
    sub_25AF196CC(a2, v41);
    sub_25AF181DC(v12, v11, v13, v14, v15);
    if ((sub_25B005DE4() & 1) == 0 || v11 != v39)
    {
      sub_25AF2602C(v42, &unk_27FA25590);
      sub_25AF1C414(a2);
      sub_25AF18128(v12, v11, v13, v14, v15);
      sub_25AF1C414(a2);
      v20 = v12;
      v21 = v11;
LABEL_44:
      sub_25AF18128(v20, v21, v13, v14, v15);
      goto LABEL_14;
    }

    if (v14)
    {
      break;
    }

    sub_25AF2602C(v42, &unk_27FA25590);
    sub_25AF1C414(a2);
    sub_25AF18128(v12, v39, v13, 0, v15);
    sub_25AF1C414(a2);
    sub_25AF18128(v12, v39, v13, 0, v15);
    if (!v36)
    {
      goto LABEL_61;
    }

LABEL_14:
    v9 = (v9 + 1) & v35;
    if (((*(v37 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  if (!v36)
  {
    sub_25AF2602C(v42, &unk_27FA25590);
    sub_25AF1C414(a2);
    sub_25AF18128(v12, v39, v13, v14, v15);
    sub_25AF1C414(a2);
    v20 = v12;
    v21 = v39;
    goto LABEL_44;
  }

  if (v13 != v38 || v14 != v36)
  {
    v16 = sub_25B006174();
    sub_25AF2602C(v42, &unk_27FA25590);
    sub_25AF1C414(a2);
    sub_25AF18128(v12, v39, v13, v14, v15);
    sub_25AF1C414(a2);
    sub_25AF18128(v12, v39, v13, v14, v15);
    if (v16)
    {
      goto LABEL_61;
    }

    goto LABEL_14;
  }

  sub_25AF2602C(v42, &unk_27FA25590);
  sub_25AF1C414(a2);
  sub_25AF18128(v12, v39, v38, v36, v15);
  sub_25AF1C414(a2);
  sub_25AF18128(v12, v39, v38, v36, v15);
LABEL_61:
  sub_25AF1C414(a2);
LABEL_62:
  v26 = *(v37 + 48) + 40 * v9;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  *v33 = *v26;
  *(v33 + 8) = v28;
  *(v33 + 16) = v29;
  *(v33 + 24) = v30;
  v31 = *(v26 + 32);
  *(v33 + 32) = v31;
  sub_25AF181DC(v27, v28, v29, v30, v31);
  return 0;
}

uint64_t sub_25AF90B14(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_25B006284();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25AF93788(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25AF90BF4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_25B006294();
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](a3);
  v32 = a4;
  v33 = a5;
  sub_25B0062B4();
  if (a5)
  {
    sub_25B005994();
  }

  v11 = sub_25B0062D4();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v30;
    v24 = a2;

    sub_25AF938A8(v24, a3, v32, v33, v13, isUniquelyReferenced_nonNull_native);
    *v30 = v34;
    *a1 = v24;
    a1[1] = a3;
    a1[2] = v32;
    a1[3] = v33;
    return 1;
  }

  v14 = ~v12;
  sub_25AF18BD4(0, &qword_27FA27200);
  while (1)
  {
    v15 = *(v10 + 48) + 32 * v13;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);

    v20 = v17;
    if ((sub_25B005DE4() & 1) == 0 || v16 != a3)
    {
      goto LABEL_16;
    }

    if (!v19)
    {
      if (!v33)
      {
        break;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (!v33)
    {
      goto LABEL_16;
    }

    if (v18 == v32 && v19 == v33)
    {
      break;
    }

    v22 = sub_25B006174();

    if (v22)
    {

      goto LABEL_20;
    }

LABEL_17:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  a2 = v20;
LABEL_20:

  v26 = *(v10 + 48) + 32 * v13;
  v27 = *v26;
  v28 = *(v26 + 24);
  *a1 = *v26;
  *(a1 + 1) = *(v26 + 8);
  a1[3] = v28;

  v29 = v27;
  return 0;
}

uint64_t sub_25AF90E78(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25B006294();
  MEMORY[0x25F85E0A0](a2);
  v6 = sub_25B0062D4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25AF93B0C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25AF90F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *(a2 + 8);
  v48 = *a2;
  v6 = *(a2 + 24);
  v46 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *v3;
  sub_25B006294();
  v45 = v7;
  v35 = v3;
  v36 = a1;
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v47);
      if (!v6)
      {
        sub_25B0062B4();
        goto LABEL_11;
      }

      sub_25B0062B4();
    }

    else
    {
      MEMORY[0x25F85E0A0](2);
      if ((v7 & 1) == 0)
      {
        MEMORY[0x25F85E0A0](0);
        sub_25B005DF4();
        sub_25B005994();
        goto LABEL_11;
      }

      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v48);
  }

LABEL_11:
  v9 = sub_25B0062D4();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v44 = v8 + 56;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = *v35;
    sub_25AF9F820(a2, v50);
    sub_25AF93C58(a2, v11, isUniquelyReferenced_nonNull_native);
    *v35 = v49[0];
    v27 = *(a2 + 16);
    *v36 = *a2;
    *(v36 + 16) = v27;
    *(v36 + 32) = *(a2 + 32);
    return 1;
  }

  v43 = ~v10;
  v42 = v8;
  while (1)
  {
    v12 = *(v8 + 48) + 40 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v50[0] = *v12;
    v50[1] = v14;
    v50[2] = v16;
    v50[3] = v15;
    v51 = v17;
    v52 = v48;
    v53 = v47;
    v54 = v46;
    v55 = v6;
    v56 = v45;
    if (!(v17 >> 6))
    {
      if (*(a2 + 32) <= 0x3Fu)
      {
        v19 = *a2;
        sub_25AF2602C(v50, &unk_27FA25590);
        if (v13 == v19)
        {
          goto LABEL_61;
        }

        goto LABEL_15;
      }

      sub_25AF9F820(a2, v49);
LABEL_14:
      sub_25AF2602C(v50, &unk_27FA25590);
      goto LABEL_15;
    }

    if (v17 >> 6 == 1)
    {
      break;
    }

    if ((*(a2 + 32) & 0xC0) != 0x80)
    {
LABEL_13:
      sub_25AF9F820(a2, v49);
      sub_25AF181DC(v13, v14, v16, v15, v17);
      goto LABEL_14;
    }

    v20 = *(a2 + 8);
    v21 = *(a2 + 16);
    if (v17)
    {
      if ((*(a2 + 32) & 1) == 0 || ((v22 = *(a2 + 24), v13 != *a2) || v14 != v20) && (v40 = *(a2 + 16), v23 = *(a2 + 24), v24 = sub_25B006174(), v22 = v23, v21 = v40, (v24 & 1) == 0))
      {
LABEL_42:
        sub_25AF9F820(a2, v49);
        sub_25AF181DC(v13, v14, v16, v15, v17);
        goto LABEL_43;
      }

      if (v16 == v21 && v15 == v22)
      {
        sub_25AF18244(v13, v14, v16, v15, 1);
        sub_25AF2602C(v50, &unk_27FA25590);
LABEL_58:
        v8 = v42;
        goto LABEL_61;
      }

      v25 = sub_25B006174();
      sub_25AF9F820(a2, v49);
      sub_25AF181DC(v13, v14, v16, v15, v17);
    }

    else
    {
      if (*(a2 + 32))
      {
        goto LABEL_42;
      }

      v41 = *(a2 + 16);
      sub_25AF18BD4(0, &qword_27FA27200);
      sub_25AF181DC(v13, v14, v16, v15, v17);
      sub_25AF9F820(a2, v49);
      sub_25AF181DC(v13, v14, v16, v15, v17);
      if ((sub_25B005DE4() & 1) == 0)
      {
        sub_25AF18128(v13, v14, v16, v15, v17);
LABEL_43:
        sub_25AF2602C(v50, &unk_27FA25590);
LABEL_44:
        v8 = v42;
        goto LABEL_15;
      }

      if (v14 == v20 && v16 == v41)
      {
        sub_25AF18128(v13, v14, v16, v15, v17);
        sub_25AF2602C(v50, &unk_27FA25590);
        sub_25AF9F87C(a2);
        goto LABEL_58;
      }

      v25 = sub_25B006174();
      sub_25AF18128(v13, v14, v16, v15, v17);
    }

    sub_25AF2602C(v50, &unk_27FA25590);
    v8 = v42;
    if (v25)
    {
      goto LABEL_60;
    }

LABEL_15:
    v11 = (v11 + 1) & v43;
    if (((*(v44 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  if ((*(a2 + 32) & 0xC0) != 0x40)
  {
    goto LABEL_13;
  }

  v37 = *(a2 + 16);
  v38 = *(a2 + 24);
  v39 = *(a2 + 8);
  sub_25AF18BD4(0, &qword_27FA27200);
  sub_25AF181DC(v13, v14, v16, v15, v17);
  sub_25AF9F820(a2, v49);
  sub_25AF181DC(v13, v14, v16, v15, v17);
  sub_25AF9F820(a2, v49);
  sub_25AF181DC(v13, v14, v16, v15, v17);
  if ((sub_25B005DE4() & 1) == 0)
  {
    sub_25AF2602C(v50, &unk_27FA25590);
    sub_25AF18128(v13, v14, v16, v15, v17);
    sub_25AF9F87C(a2);
    sub_25AF18128(v13, v14, v16, v15, v17);
    goto LABEL_44;
  }

  v8 = v42;
  if (v14 != v39)
  {
    goto LABEL_45;
  }

  if (!v15)
  {
    sub_25AF2602C(v50, &unk_27FA25590);
    sub_25AF18128(v13, v14, v16, 0, v17);
    sub_25AF9F87C(a2);
    sub_25AF18128(v13, v14, v16, 0, v17);
    if (!v38)
    {
      goto LABEL_60;
    }

    goto LABEL_15;
  }

  if (!v38)
  {
LABEL_45:
    sub_25AF2602C(v50, &unk_27FA25590);
    sub_25AF18128(v13, v14, v16, v15, v17);
    sub_25AF9F87C(a2);
    sub_25AF18128(v13, v14, v16, v15, v17);
    goto LABEL_15;
  }

  if (v16 != v37 || v15 != v38)
  {
    v18 = sub_25B006174();
    sub_25AF2602C(v50, &unk_27FA25590);
    sub_25AF18128(v13, v14, v16, v15, v17);
    sub_25AF9F87C(a2);
    sub_25AF18128(v13, v14, v16, v15, v17);
    if (v18)
    {
      goto LABEL_60;
    }

    goto LABEL_15;
  }

  sub_25AF2602C(v50, &unk_27FA25590);
  sub_25AF18128(v13, v14, v16, v15, v17);
  sub_25AF9F87C(a2);
  sub_25AF18128(v13, v14, v16, v15, v17);
LABEL_60:
  sub_25AF9F87C(a2);
LABEL_61:
  v29 = *(v8 + 48) + 40 * v11;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v33 = *(v29 + 24);
  *v36 = *v29;
  *(v36 + 8) = v31;
  *(v36 + 16) = v32;
  *(v36 + 24) = v33;
  v34 = *(v29 + 32);
  *(v36 + 32) = v34;
  sub_25AF181DC(v30, v31, v32, v33, v34);
  return 0;
}

uint64_t sub_25AF9177C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23A90);
    v2 = sub_25B005EF4();
    v14 = v2;
    sub_25B005E94();
    if (sub_25B005EC4())
    {
      sub_25AF18BD4(0, &qword_27FA23A78);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_25AF91BCC();
        }

        v2 = v14;
        result = sub_25B005DD4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_25B005EC4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25AF9196C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE8);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25B006294();
      sub_25B005994();
      result = sub_25B0062D4();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25AF91BCC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23A90);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_25B005DD4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25AF91DF4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AF8);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_25B006294();
      MEMORY[0x25F85E0A0](v16);
      result = sub_25B0062D4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25AF92044()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25630);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_25B006284();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25AF92268()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255C8);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v0;
    v32 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_25B006294();
      sub_25B005DF4();
      v33 = v19;
      MEMORY[0x25F85E0A0](v19);
      if (v21)
      {
        sub_25B0062B4();
        v22 = v20;
        sub_25B005994();
      }

      else
      {
        v22 = v20;
        sub_25B0062B4();
      }

      result = sub_25B0062D4();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v33;
      v13[2] = v22;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v32;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero(v6, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    v1 = v31;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25AF9251C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA256C0);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_25B006294();
      MEMORY[0x25F85E0A0](v16);
      result = sub_25B0062D4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25AF9276C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_25B005EE4();
  v6 = result;
  if (*(v4 + 16))
  {
    v31 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v7 >= v12)
          {
            break;
          }

          v18 = v8[v7];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v11 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v4 + 32);
        if (v30 >= 64)
        {
          bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v30;
        }

        v3 = v2;
        *(v4 + 16) = 0;
        goto LABEL_38;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = *(v4 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 24);
      v32 = *(v19 + 16);
      v33 = *(v19 + 8);
      v22 = *(v19 + 32);
      sub_25B006294();
      if (!(v22 >> 6))
      {
        MEMORY[0x25F85E0A0](0);
        MEMORY[0x25F85E0A0](v20);
        goto LABEL_24;
      }

      if (v22 >> 6 != 1)
      {
        break;
      }

      MEMORY[0x25F85E0A0](1);
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v33);
      if (v21)
      {
        sub_25B0062B4();
LABEL_23:
        sub_25B005994();
        goto LABEL_24;
      }

      sub_25B0062B4();
LABEL_24:
      result = sub_25B0062D4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v33;
      *(v15 + 16) = v32;
      *(v15 + 24) = v21;
      *(v15 + 32) = v22;
      ++*(v6 + 16);
      v4 = v31;
    }

    MEMORY[0x25F85E0A0](2);
    if (v22)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }

    goto LABEL_23;
  }

LABEL_38:

  *v3 = v6;
  return result;
}

unint64_t sub_25AF92A9C(uint64_t a1, uint64_t a2)
{
  sub_25B005DD4();
  result = sub_25B005E84();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25AF92B20(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25AF9196C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25AF9446C();
      goto LABEL_16;
    }

    sub_25AF94DA8();
  }

  v10 = *v4;
  sub_25B006294();
  sub_25B005994();
  result = sub_25B0062D4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25B006174();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25B0061F4();
  __break(1u);
  return result;
}

void sub_25AF92CA0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25AF91BCC();
  }

  else
  {
    if (v7 > v6)
    {
      sub_25AF945C8();
      goto LABEL_12;
    }

    sub_25AF94FE0();
  }

  v8 = *v3;
  v9 = sub_25B005DD4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_25AF18BD4(0, &qword_27FA23A78);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_25B005DE4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25B0061F4();
  __break(1u);
}

void sub_25AF92E10(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25AF91DF4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_25AF94718();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25AF951F4();
  }

  v8 = *v3;
  sub_25B006294();
  MEMORY[0x25F85E0A0](a1);
  v9 = sub_25B0062D4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for LegacyButtonIdentifier(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25B0061F4();
  __break(1u);
}

uint64_t sub_25AF92F6C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = result;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_65;
  }

  if (a3)
  {
    sub_25AF9276C(v10 + 1, &unk_27FA27220);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_25AF94C48(&unk_27FA27220);
      goto LABEL_65;
    }

    sub_25AF95414();
  }

  v12 = *v4;
  sub_25B006294();
  v6 = *(v9 + 8);
  v5 = *(v9 + 24);
  v39 = *(v9 + 16);
  v40 = *v9;
  v41 = *(v9 + 32);
  v36 = v41 >> 6;
  if (!(v41 >> 6))
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v40);
    goto LABEL_17;
  }

  if (v41 >> 6 != 1)
  {
    MEMORY[0x25F85E0A0](2);
    if (v41)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }

    goto LABEL_16;
  }

  MEMORY[0x25F85E0A0](1);
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](v6);
  if (v5)
  {
    sub_25B0062B4();
LABEL_16:
    sub_25B005994();
    goto LABEL_17;
  }

  sub_25B0062B4();
LABEL_17:
  result = sub_25B0062D4();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v38 = v5;
    v37 = ~v13;
    do
    {
      v14 = *(v12 + 48) + 40 * a2;
      v7 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      LODWORD(v5) = *(v14 + 32);
      v43[0] = *v14;
      v43[1] = v15;
      v43[2] = v17;
      v43[3] = v16;
      v44 = v5;
      v45 = v40;
      v46 = v6;
      v47 = v39;
      v48 = v38;
      v49 = v41;
      if (v5 >> 6)
      {
        if (v5 >> 6 == 1)
        {
          if (v36 != 1)
          {
            goto LABEL_19;
          }

          sub_25AF18BD4(0, &qword_27FA27200);
          sub_25AF196CC(v9, v42);
          sub_25AF181DC(v7, v15, v17, v16, v5);
          sub_25AF196CC(v9, v42);
          sub_25AF181DC(v7, v15, v17, v16, v5);
          sub_25AF196CC(v9, v42);
          sub_25AF181DC(v7, v15, v17, v16, v5);
          if ((sub_25B005DE4() & 1) == 0 || v15 != v6)
          {
            sub_25AF2602C(v43, &unk_27FA25590);
            sub_25AF1C414(v9);
            sub_25AF18128(v7, v15, v17, v16, v5);
            sub_25AF1C414(v9);
            v22 = v7;
            v23 = v15;
LABEL_52:
            result = sub_25AF18128(v22, v23, v17, v16, v5);
            goto LABEL_21;
          }

          a3 = v39;
          if (v16)
          {
            a4 = v38;
            if (!v38)
            {
              sub_25AF2602C(v43, &unk_27FA25590);
              sub_25AF1C414(v9);
              sub_25AF18128(v7, v6, v17, v16, v5);
              sub_25AF1C414(v9);
              v22 = v7;
              v23 = v6;
              goto LABEL_52;
            }

            if (v17 == v39 && v16 == v38)
            {
              goto LABEL_69;
            }

            v18 = sub_25B006174();
            sub_25AF2602C(v43, &unk_27FA25590);
            sub_25AF1C414(v9);
            sub_25AF18128(v7, v6, v17, v16, v5);
            sub_25AF1C414(v9);
            result = sub_25AF18128(v7, v6, v17, v16, v5);
            if (v18)
            {
              goto LABEL_73;
            }
          }

          else
          {
            sub_25AF2602C(v43, &unk_27FA25590);
            sub_25AF1C414(v9);
            sub_25AF18128(v7, v6, v17, 0, v5);
            sub_25AF1C414(v9);
            result = sub_25AF18128(v7, v6, v17, 0, v5);
            if (!v38)
            {
              goto LABEL_73;
            }
          }
        }

        else
        {
          if (v36 != 2)
          {
            goto LABEL_19;
          }

          if (v5)
          {
            if ((v41 & 1) == 0 || (v7 == v40 ? (v19 = v15 == v6) : (v19 = 0), !v19 && (sub_25B006174() & 1) == 0))
            {
LABEL_19:
              sub_25AF196CC(v9, v42);
              sub_25AF181DC(v7, v15, v17, v16, v5);
LABEL_20:
              result = sub_25AF2602C(v43, &unk_27FA25590);
              goto LABEL_21;
            }

            if (v17 == v39 && v16 == v38)
            {
              sub_25AF196CC(v9, v42);
              sub_25AF181DC(v7, v15, v39, v38, v5);
              goto LABEL_72;
            }

            v21 = sub_25B006174();
            sub_25AF196CC(v9, v42);
            sub_25AF181DC(v7, v15, v17, v16, v5);
            result = sub_25AF2602C(v43, &unk_27FA25590);
            if (v21)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v41)
            {
              goto LABEL_19;
            }

            sub_25AF18BD4(0, &qword_27FA27200);
            sub_25AF196CC(v9, v42);
            sub_25AF181DC(v7, v15, v17, v16, v5);
            sub_25AF196CC(v9, v42);
            sub_25AF181DC(v7, v15, v17, v16, v5);
            if ((sub_25B005DE4() & 1) == 0)
            {
              sub_25AF1C414(v9);
              sub_25AF18128(v7, v15, v17, v16, v5);
              goto LABEL_20;
            }

            if (v15 == v6 && v17 == v39)
            {
              sub_25AF1C414(v9);
              sub_25AF18128(v7, v6, v39, v16, v5);
LABEL_72:
              sub_25AF2602C(v43, &unk_27FA25590);
LABEL_73:
              result = sub_25B0061F4();
              __break(1u);
              return result;
            }

            v25 = sub_25B006174();
            sub_25AF1C414(v9);
            sub_25AF18128(v7, v15, v17, v16, v5);
            result = sub_25AF2602C(v43, &unk_27FA25590);
            if (v25)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else
      {
        if (v41 >= 0x40)
        {
          sub_25AF196CC(v9, v42);
          goto LABEL_20;
        }

        sub_25AF196CC(v9, v42);
        result = sub_25AF2602C(v43, &unk_27FA25590);
        if (v7 == v40)
        {
          goto LABEL_73;
        }
      }

LABEL_21:
      a2 = (a2 + 1) & v37;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_65:
  v26 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = *(v26 + 48) + 40 * a2;
  v28 = *v9;
  v29 = *(v9 + 16);
  *(v27 + 32) = *(v9 + 32);
  *v27 = v28;
  *(v27 + 16) = v29;
  v30 = *(v26 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_69:
    v33 = a3;
    v34 = a4;
    sub_25AF2602C(v43, &unk_27FA25590);
    sub_25AF1C414(v9);
    sub_25AF18128(v7, v6, v33, v34, v5);
    sub_25AF1C414(v9);
    sub_25AF18128(v7, v6, v33, v34, v5);
    goto LABEL_73;
  }

  *(v26 + 16) = v32;
  return result;
}

uint64_t sub_25AF93788(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25AF92044();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25AF94858();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25AF95754();
  }

  v8 = *v3;
  result = sub_25B006284();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25B0061F4();
  __break(1u);
  return result;
}

void sub_25AF938A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 <= v10 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_25AF92268();
    }

    else
    {
      if (v11 > v10)
      {
        sub_25AF94998();
        goto LABEL_27;
      }

      sub_25AF95944();
    }

    v12 = *v6;
    sub_25B006294();
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](a2);
    sub_25B0062B4();
    if (a4)
    {
      sub_25B005994();
    }

    v13 = sub_25B0062D4();
    v14 = -1 << *(v12 + 32);
    a5 = v13 & ~v14;
    if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v15 = ~v14;
      sub_25AF18BD4(0, &qword_27FA27200);
      while (1)
      {
        v16 = *(v12 + 48) + 32 * a5;
        v18 = *v16;
        v17 = *(v16 + 8);
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);

        v7 = v18;
        if ((sub_25B005DE4() & 1) == 0 || v17 != a2)
        {
          break;
        }

        if (!v19)
        {

          if (!a4)
          {
            goto LABEL_31;
          }

          goto LABEL_13;
        }

        if (!a4)
        {
          break;
        }

        if (v20 == a3 && v19 == a4)
        {
          goto LABEL_30;
        }

        v22 = sub_25B006174();

        if (v22)
        {
          goto LABEL_32;
        }

LABEL_14:
        a5 = (a5 + 1) & v15;
        if (((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_13:

      goto LABEL_14;
    }
  }

LABEL_27:
  v23 = *v28;
  *(*v28 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v24 = (*(v23 + 48) + 32 * a5);
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_30:

LABEL_31:

LABEL_32:
    sub_25B0061F4();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }
}

uint64_t sub_25AF93B0C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25AF9251C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25AF94B08();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25AF95BD8();
  }

  v8 = *v3;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v4);
  result = sub_25B0062D4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25B0061F4();
  __break(1u);
  return result;
}

uint64_t sub_25AF93C58(uint64_t result, unint64_t a2, char a3)
{
  v10 = result;
  v47 = *(result + 16);
  v48 = *result;
  v11 = *(result + 32);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_67;
  }

  if (a3)
  {
    v14 = v42;
    sub_25AF9276C(v12 + 1, &qword_27FA25648);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_25AF94C48(&qword_27FA25648);
      goto LABEL_67;
    }

    v14 = v42;
    sub_25AF95DF8();
  }

  v15 = *v14;
  sub_25B006294();
  v16 = *v10;
  v5 = *(v10 + 32);
  v44 = v11;
  v43 = v15;
  if (!(v5 >> 6))
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v16);
    goto LABEL_18;
  }

  v17 = *(v10 + 8);
  v4 = *(v10 + 16);
  v18 = *(v10 + 24);
  if (v5 >> 6 == 1)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v17);
    if (!v18)
    {
      sub_25B0062B4();
      goto LABEL_17;
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](2);
    if (v5)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }
  }

  sub_25B005994();
LABEL_17:
  v11 = v44;
  v15 = v43;
LABEL_18:
  result = sub_25B0062D4();
  v19 = -1 << *(v15 + 32);
  a2 = result & ~v19;
  v46 = v15 + 56;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v45 = ~v19;
    while (1)
    {
      v21 = *(v15 + 48) + 40 * a2;
      v4 = *v21;
      v6 = *(v21 + 8);
      v8 = *(v21 + 16);
      v5 = *(v21 + 24);
      v7 = *(v21 + 32);
      v50[0] = *v21;
      v50[1] = v6;
      v50[2] = v8;
      v50[3] = v5;
      v51 = v7;
      v52 = v48;
      v53 = v47;
      v54 = v11;
      if (!(v7 >> 6))
      {
        break;
      }

      if (v7 >> 6 == 1)
      {
        if ((*(v10 + 32) & 0xC0) != 0x40)
        {
          goto LABEL_48;
        }

        v40 = *(v10 + 16);
        v41 = *(v10 + 24);
        v22 = *(v10 + 8);
        sub_25AF18BD4(0, &qword_27FA27200);
        sub_25AF181DC(v4, v6, v8, v5, v7);
        sub_25AF9F820(v10, v49);
        sub_25AF181DC(v4, v6, v8, v5, v7);
        sub_25AF9F820(v10, v49);
        sub_25AF181DC(v4, v6, v8, v5, v7);
        if ((sub_25B005DE4() & 1) == 0 || v6 != v22)
        {
          sub_25AF2602C(v50, &unk_27FA25590);
          sub_25AF18128(v4, v6, v8, v5, v7);
          sub_25AF9F87C(v10);
          result = sub_25AF18128(v4, v6, v8, v5, v7);
          goto LABEL_54;
        }

        v11 = v44;
        v15 = v43;
        if (v5)
        {
          if (v41)
          {
            if (v8 == v40 && v5 == v41)
            {
              goto LABEL_71;
            }

            v23 = sub_25B006174();
            sub_25AF2602C(v50, &unk_27FA25590);
            sub_25AF18128(v4, v6, v8, v5, v7);
            sub_25AF9F87C(v10);
            result = sub_25AF18128(v4, v6, v8, v5, v7);
            if (v23)
            {
              goto LABEL_75;
            }
          }

          else
          {
            sub_25AF2602C(v50, &unk_27FA25590);
            sub_25AF18128(v4, v6, v8, v5, v7);
            sub_25AF9F87C(v10);
            result = sub_25AF18128(v4, v6, v8, v5, v7);
          }
        }

        else
        {
          sub_25AF2602C(v50, &unk_27FA25590);
          sub_25AF18128(v4, v6, v8, 0, v7);
          sub_25AF9F87C(v10);
          result = sub_25AF18128(v4, v6, v8, 0, v7);
          if (!v41)
          {
            goto LABEL_75;
          }
        }
      }

      else
      {
        if ((*(v10 + 32) & 0xC0) != 0x80)
        {
LABEL_48:
          sub_25AF9F820(v10, v49);
          sub_25AF181DC(v4, v6, v8, v5, v7);
LABEL_49:
          result = sub_25AF2602C(v50, &unk_27FA25590);
          goto LABEL_21;
        }

        v24 = *(v10 + 8);
        v25 = *(v10 + 16);
        if (v7)
        {
          if ((*(v10 + 32) & 1) == 0 || ((v26 = *(v10 + 24), v4 == *v10) ? (v27 = v6 == v24) : (v27 = 0), !v27 && (v28 = *(v10 + 24), v29 = sub_25B006174(), v26 = v28, (v29 & 1) == 0)))
          {
LABEL_52:
            sub_25AF9F820(v10, v49);
            sub_25AF181DC(v4, v6, v8, v5, v7);
            goto LABEL_53;
          }

          if (v8 == v25 && v5 == v26)
          {
            sub_25AF9F820(v10, v49);
            sub_25AF181DC(v4, v6, v8, v5, v7);
            goto LABEL_74;
          }

          v31 = sub_25B006174();
          sub_25AF9F820(v10, v49);
          sub_25AF181DC(v4, v6, v8, v5, v7);
        }

        else
        {
          if (*(v10 + 32))
          {
            goto LABEL_52;
          }

          sub_25AF18BD4(0, &qword_27FA27200);
          sub_25AF181DC(v4, v6, v8, v5, v7);
          sub_25AF9F820(v10, v49);
          sub_25AF181DC(v4, v6, v8, v5, v7);
          if ((sub_25B005DE4() & 1) == 0)
          {
            sub_25AF18128(v4, v6, v8, v5, v7);
LABEL_53:
            result = sub_25AF2602C(v50, &unk_27FA25590);
LABEL_54:
            v11 = v44;
            v15 = v43;
            goto LABEL_21;
          }

          if (v6 == v24 && v8 == v25)
          {
            sub_25AF18128(v4, v6, v8, v5, v7);
LABEL_74:
            sub_25AF2602C(v50, &unk_27FA25590);
LABEL_75:
            result = sub_25B0061F4();
            __break(1u);
            return result;
          }

          v31 = sub_25B006174();
          sub_25AF18128(v4, v6, v8, v5, v7);
        }

        result = sub_25AF2602C(v50, &unk_27FA25590);
        v11 = v44;
        v15 = v43;
        if (v31)
        {
          goto LABEL_75;
        }
      }

LABEL_21:
      a2 = (a2 + 1) & v45;
      if (((*(v46 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (*(v10 + 32) <= 0x3Fu)
    {
      v20 = *v10;
      result = sub_25AF2602C(v50, &unk_27FA25590);
      if (v4 == v20)
      {
        goto LABEL_75;
      }

      goto LABEL_21;
    }

    sub_25AF9F820(v10, v49);
    goto LABEL_49;
  }

LABEL_67:
  v33 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v34 = *(v33 + 48) + 40 * a2;
  v35 = *v10;
  v36 = *(v10 + 16);
  *(v34 + 32) = *(v10 + 32);
  *v34 = v35;
  *(v34 + 16) = v36;
  v37 = *(v33 + 16);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
LABEL_71:
    sub_25AF2602C(v50, &unk_27FA25590);
    sub_25AF18128(v4, v6, v8, v5, v7);
    sub_25AF9F87C(v10);
    sub_25AF18128(v4, v6, v8, v5, v7);
    goto LABEL_75;
  }

  *(v33 + 16) = v39;
  return result;
}

void *sub_25AF9446C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE8);
  v2 = *v0;
  v3 = sub_25B005ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_25AF945C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23A90);
  v2 = *v0;
  v3 = sub_25B005ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_25AF94718()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AF8);
  v2 = *v0;
  v3 = sub_25B005ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25AF94858()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25630);
  v2 = *v0;
  v3 = sub_25B005ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_25AF94998()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255C8);
  v2 = *v0;
  v3 = sub_25B005ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 8);
        *v21 = *v18;
        *(v21 + 8) = v22;
        *(v21 + 24) = v20;

        result = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_25AF94B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA256C0);
  v2 = *v0;
  v3 = sub_25B005ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25AF94C48(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_25B005ED4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = 40 * (v15 | (v9 << 6));
        v19 = *(v3 + 48) + v18;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v5 + 48) + v18;
        v25 = *(v19 + 32);
        *v24 = *v19;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        *(v24 + 32) = v25;
        result = sub_25AF181DC(v20, v21, v22, v23, v25);
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_25AF94DA8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE8);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_25B006294();

      sub_25B005994();
      result = sub_25B0062D4();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25AF94FE0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23A90);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_25B005DD4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25AF951F4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AF8);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_25B006294();
      MEMORY[0x25F85E0A0](v15);
      result = sub_25B0062D4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25AF95414()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA27220);
  result = sub_25B005EE4();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_36:
    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
    v18 = *v17;
    v19 = *(v17 + 24);
    v30 = *(v17 + 8);
    v31 = *(v17 + 16);
    v20 = *(v17 + 32);
    sub_25B006294();
    if (!(v20 >> 6))
    {
      MEMORY[0x25F85E0A0](0);
      MEMORY[0x25F85E0A0](v18);
      goto LABEL_24;
    }

    if (v20 >> 6 != 1)
    {
      MEMORY[0x25F85E0A0](2);
      if (v20)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25AF181DC(v18, v30, v31, v19, v20);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25AF181DC(v18, v30, v31, v19, v20);
        sub_25B005DF4();
      }

      goto LABEL_23;
    }

    MEMORY[0x25F85E0A0](1);

    v21 = v18;
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v30);
    if (v19)
    {
      sub_25B0062B4();
LABEL_23:
      sub_25B005994();
      goto LABEL_24;
    }

    sub_25B0062B4();
LABEL_24:
    result = sub_25B0062D4();
    v22 = -1 << *(v4 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v24);
        if (v28 != -1)
        {
          v12 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

    v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 40 * v12;
    *v13 = v18;
    *(v13 + 8) = v30;
    *(v13 + 16) = v31;
    *(v13 + 24) = v19;
    *(v13 + 32) = v20;
    ++*(v4 + 16);
    v2 = v29;
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_36;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25AF95754()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25630);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_25B006284();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25AF95944()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255C8);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v31 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 32 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      sub_25B006294();

      v32 = v18;
      sub_25B005DF4();
      v33 = v19;
      MEMORY[0x25F85E0A0](v19);
      if (v21)
      {
        sub_25B0062B4();
        v22 = v20;
        sub_25B005994();
      }

      else
      {
        v22 = v20;
        sub_25B0062B4();
      }

      result = sub_25B0062D4();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v32;
      v13[1] = v33;
      v13[2] = v22;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v31;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v30;
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25AF95BD8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA256C0);
  result = sub_25B005EE4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_25B006294();
      MEMORY[0x25F85E0A0](v15);
      result = sub_25B0062D4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25AF95DF8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25648);
  result = sub_25B005EE4();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_36:
    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
    v18 = *v17;
    v19 = *(v17 + 24);
    v30 = *(v17 + 8);
    v31 = *(v17 + 16);
    v20 = *(v17 + 32);
    sub_25B006294();
    if (!(v20 >> 6))
    {
      MEMORY[0x25F85E0A0](0);
      MEMORY[0x25F85E0A0](v18);
      goto LABEL_24;
    }

    if (v20 >> 6 != 1)
    {
      MEMORY[0x25F85E0A0](2);
      if (v20)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25AF18244(v18, v30, v31, v19, 1);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25AF18244(v18, v30, v31, v19, 0);
        sub_25B005DF4();
      }

      goto LABEL_23;
    }

    MEMORY[0x25F85E0A0](1);

    v21 = v18;
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v30);
    if (v19)
    {
      sub_25B0062B4();
LABEL_23:
      sub_25B005994();
      goto LABEL_24;
    }

    sub_25B0062B4();
LABEL_24:
    result = sub_25B0062D4();
    v22 = -1 << *(v4 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v24);
        if (v28 != -1)
        {
          v12 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

    v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 40 * v12;
    *v13 = v18;
    *(v13 + 8) = v30;
    *(v13 + 16) = v31;
    *(v13 + 24) = v19;
    *(v13 + 32) = v20;
    ++*(v4 + 16);
    v2 = v29;
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_36;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25AF9615C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25110);
  v42 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v41 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v43 = (v12 - 1) & v12;
LABEL_15:
      v23 = *(v5 + 56);
      v24 = 40 * (v20 | (v8 << 6));
      v25 = *(v5 + 48) + v24;
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 32);
      v30 = v23 + v24;
      v31 = *v30;
      v47 = *(v30 + 8);
      v48 = *(v25 + 24);
      v45 = *(v30 + 24);
      v46 = *(v30 + 16);
      v44 = *(v30 + 32);
      if ((v42 & 1) == 0)
      {
        sub_25AF18244(v27, v26, v28, v48, v29);
        sub_25AF1988C(v31, v47, v46, v45, v44);
      }

      sub_25B006294();
      if (v29)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25B005DF4();
      }

      sub_25B005994();
      result = sub_25B0062D4();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v16 = v31;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 40 * v15;
      v18 = *(v7 + 48) + v17;
      *v18 = v27;
      *(v18 + 8) = v26;
      *(v18 + 16) = v28;
      *(v18 + 24) = v48;
      *(v18 + 32) = v29;
      v19 = *(v7 + 56) + v17;
      *v19 = v16;
      *(v19 + 8) = v47;
      *(v19 + 16) = v46;
      *(v19 + 24) = v45;
      *(v19 + 32) = v44;
      ++*(v7 + 16);
      v5 = v41;
      v12 = v43;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v42)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25AF964C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25700);
  v36 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v21 + v20);
      if ((v36 & 1) == 0)
      {
        v26 = v24;
      }

      sub_25B006294();
      sub_25B005DF4();
      sub_25B005994();
      result = sub_25B0062D4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v25;
      *(*(v7 + 56) + v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25AF96790(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA250F8);
  v34 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25B006294();
      sub_25B005994();
      result = sub_25B0062D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25AF96A38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25650);
  v37 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v37 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_43;
        }

        v35 = 1 << *(v5 + 32);
        v3 = v2;
        if (v35 >= 64)
        {
          bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v35;
        }

        *(v5 + 16) = 0;
        goto LABEL_42;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v41 = *(v23 + 8);
      v25 = *(v23 + 24);
      v40 = *(v23 + 16);
      v26 = *(v23 + 32);
      v27 = (v22 + 2 * v21);
      v38 = v27[1];
      v39 = *v27;
      if ((v37 & 1) == 0)
      {
        sub_25AF181DC(v24, v41, v40, v25, v26);
      }

      sub_25B006294();
      if (!(v26 >> 6))
      {
        MEMORY[0x25F85E0A0](0);
        MEMORY[0x25F85E0A0](v24);
        goto LABEL_26;
      }

      if (v26 >> 6 != 1)
      {
        break;
      }

      MEMORY[0x25F85E0A0](1);
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v41);
      if (v25)
      {
        sub_25B0062B4();
LABEL_25:
        sub_25B005994();
        goto LABEL_26;
      }

      sub_25B0062B4();
LABEL_26:
      result = sub_25B0062D4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v24;
      *(v16 + 8) = v41;
      *(v16 + 16) = v40;
      *(v16 + 24) = v25;
      *(v16 + 32) = v26;
      v17 = (*(v7 + 56) + 2 * v15);
      *v17 = v39;
      v17[1] = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    MEMORY[0x25F85E0A0](2);
    if (v26)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }

    goto LABEL_25;
  }

LABEL_42:

LABEL_43:
  *v3 = v7;
  return result;
}

uint64_t sub_25AF96DD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255C0);
  v38 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v38 & 1) == 0)
        {

          v3 = v36;
          goto LABEL_43;
        }

        v35 = 1 << *(v5 + 32);
        v3 = v36;
        if (v35 >= 64)
        {
          bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v35;
        }

        *(v5 + 16) = 0;
        goto LABEL_42;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v40 = *(v23 + 8);
      v25 = *(v23 + 24);
      v39 = *(v23 + 16);
      v26 = *(v23 + 32);
      v27 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_25AF181DC(v24, v40, v39, v25, *(v23 + 32));
      }

      sub_25B006294();
      if (!(v26 >> 6))
      {
        MEMORY[0x25F85E0A0](0);
        MEMORY[0x25F85E0A0](v24);
        goto LABEL_26;
      }

      if (v26 >> 6 != 1)
      {
        break;
      }

      MEMORY[0x25F85E0A0](1);
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v40);
      if (v25)
      {
        sub_25B0062B4();
LABEL_25:
        sub_25B005994();
        goto LABEL_26;
      }

      sub_25B0062B4();
LABEL_26:
      result = sub_25B0062D4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v27;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 40 * v15;
      *v17 = v24;
      *(v17 + 8) = v40;
      *(v17 + 16) = v39;
      *(v17 + 24) = v25;
      *(v17 + 32) = v26;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v37;
    }

    MEMORY[0x25F85E0A0](2);
    if (v26)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }

    goto LABEL_25;
  }

LABEL_42:

LABEL_43:
  *v3 = v7;
  return result;
}
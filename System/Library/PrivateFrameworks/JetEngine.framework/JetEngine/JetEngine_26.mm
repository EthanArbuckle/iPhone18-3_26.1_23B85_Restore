int64_t AppleServicesLocalizer.relativeDate(_:using:)(uint64_t a1, unsigned __int8 *a2)
{
  v126 = a1;
  v4 = type metadata accessor for LocalizerFormattingKey();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v128 = &v111[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = sub_1AB45FB14();
  v118 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v117 = &v111[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_1AB45F4D4();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v8 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = sub_1AB45F9B4();
  v127 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v10 = &v111[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = *a2;
  v11 = v2[22];
  v12 = v2[23];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 19, v11);
  (*(v12 + 8))(v11, v12);
  v124 = v2;
  v116 = OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  sub_1AB45FA84();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438898);
  v13 = sub_1AB45FB04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AB4DE180;
  v18 = v17 + v16;
  v19 = *MEMORY[0x1E6969A68];
  v119 = v14;
  v20 = *(v14 + 104);
  v20(v18, v19, v13);
  LODWORD(v115) = *MEMORY[0x1E6969A78];
  (v20)(v18 + v15);
  v114 = *MEMORY[0x1E6969A10];
  (v20)(v18 + 2 * v15);
  v113 = *MEMORY[0x1E6969A48];
  (v20)(v18 + 3 * v15);
  v112 = *MEMORY[0x1E6969A58];
  (v20)(v18 + 4 * v15);
  v21 = *MEMORY[0x1E6969A88];
  v20(v18 + 5 * v15, v21, v13);
  v20(v18 + 6 * v15, *MEMORY[0x1E6969A98], v13);
  sub_1AB1914D8(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v120 = v10;
  v22 = v117;
  sub_1AB45FAD4();

  (*(v118 + 8))(v22, v125);
  v125 = v8;
  v23 = sub_1AB45F4A4();
  if ((v24 & 1) == 0)
  {
    v25 = v23;
    if (v23 > 0)
    {
      v26 = v128;
LABEL_19:
      v20(v26, v19, v13);
      v36 = 0;
      goto LABEL_20;
    }
  }

  v27 = sub_1AB45F4B4();
  v26 = v128;
  if ((v28 & 1) == 0)
  {
    v25 = v27;
    if (v27 > 0)
    {
      v19 = v115;
      goto LABEL_19;
    }
  }

  v29 = sub_1AB45F474();
  if ((v30 & 1) == 0)
  {
    v25 = v29;
    if (v29 > 0)
    {
      v19 = v114;
      goto LABEL_19;
    }
  }

  v31 = sub_1AB45F484();
  if ((v32 & 1) == 0)
  {
    v25 = v31;
    if (v31 > 0)
    {
      v19 = v113;
      goto LABEL_19;
    }
  }

  v33 = sub_1AB45F494();
  if ((v34 & 1) == 0)
  {
    v25 = v33;
    if (v33 > 0)
    {
      v19 = v112;
      goto LABEL_19;
    }
  }

  v19 = v21;
  v35 = sub_1AB45F4C4();
  v25 = 0;
  v36 = 1;
  if ((v37 & 1) == 0 && v35 >= 1)
  {
    v25 = v35;
    goto LABEL_19;
  }

LABEL_20:
  (*(v119 + 56))(v26, v36, 1, v13);
  v38 = v124;
  v39 = v124[12];
  v40 = v124[13];
  __swift_project_boxed_opaque_existential_1Tm(v124 + 9, v39);
  v41 = (*(v40 + 8))(v26, v39, v40);
  v43 = v41;
  v44 = v42;
  p_info = (_TtC9JetEngine22_DispatchQueueExecutor + 32);
  if (v36)
  {
    *&v131 = 10794;
    *(&v131 + 1) = 0xE200000000000000;
    MEMORY[0x1AC59BA20](v41, v42);
    MEMORY[0x1AC59BA20](10794, 0xE200000000000000);
    v46 = v131;
    LOBYTE(v131) = v129;
    v47 = sub_1AB2044F8(v43, v44, 0, v46, *(&v131 + 1), &v131);
    v49 = v48;

    goto LABEL_38;
  }

  *&v131 = 10794;
  *(&v131 + 1) = 0xE200000000000000;
  MEMORY[0x1AC59BA20](v41, v42);
  MEMORY[0x1AC59BA20](10794, 0xE200000000000000);
  v119 = *(&v131 + 1);
  v50 = v131;
  v51 = sub_1AB20B934(v25, v116 + v38);
  if (v51 == 5)
  {
    goto LABEL_26;
  }

  v52 = v51;
  v53 = sub_1AB460514();
  v54 = JEPluralCategoryPluralFormKeyFromBaseKey(v52, v53);

  v55 = sub_1AB460544();
  v57 = v56;

  LOBYTE(v131) = v129;
  if ((sub_1AB203C1C(v55, v57, &v131) & 1) == 0)
  {

    p_info = _TtC9JetEngine22_DispatchQueueExecutor.info;
LABEL_26:

    v57 = v44;
    goto LABEL_27;
  }

  v43 = v55;
  p_info = (_TtC9JetEngine22_DispatchQueueExecutor + 32);
LABEL_27:
  v58 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  if (*(v58 + 16))
  {
    sub_1AB014DB4(0x746E756F63, 0xE500000000000000);
    if (v59)
    {
      v118 = v50;
      if (p_info[479] != -1)
      {
        swift_once();
      }

      v60 = qword_1EB4347E8;
      v117 = unk_1EB4347F0;
      v116 = __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v61 = swift_allocObject();
      v115 = xmmword_1AB4D4720;
      *(v61 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v62 = swift_allocObject();
      *(v62 + 16) = v115;
      *(&v132 + 1) = MEMORY[0x1E69E6158];
      *&v131 = 0xD000000000000044;
      *(&v131 + 1) = 0x80000001AB503970;
      *(v62 + 48) = 0u;
      *(v62 + 32) = 0u;
      sub_1AB0169C4(&v131, v62 + 32);
      *(v62 + 64) = 0;
      *(v61 + 32) = v62;
      Logger.warning(_:)(v61, v60, v117);

      p_info = _TtC9JetEngine22_DispatchQueueExecutor.info;
      v50 = v118;
    }

    if (*(v58 + 16))
    {
      sub_1AB014DB4(0x7265626D756ELL, 0xE600000000000000);
      if (v63)
      {
        v118 = v50;
        if (p_info[479] != -1)
        {
          swift_once();
        }

        v64 = qword_1EB4347E8;
        v117 = unk_1EB4347F0;
        v116 = __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v65 = swift_allocObject();
        v115 = xmmword_1AB4D4720;
        *(v65 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v66 = swift_allocObject();
        *(v66 + 16) = v115;
        *(&v132 + 1) = MEMORY[0x1E69E6158];
        *&v131 = 0xD000000000000045;
        *(&v131 + 1) = 0x80000001AB503920;
        *(v66 + 48) = 0u;
        *(v66 + 32) = 0u;
        sub_1AB0169C4(&v131, v66 + 32);
        *(v66 + 64) = 0;
        *(v65 + 32) = v66;
        Logger.warning(_:)(v65, v64, v117);

        v50 = v118;
      }
    }
  }

  v67 = AppleServicesLocalizer.formattedCount(_:)(v25);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v58;
  sub_1AB1D5C74(v67._countAndFlagsBits, v67._object, 0x746E756F63, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v69 = v131;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v69;
  sub_1AB1D5C74(v67._countAndFlagsBits, v67._object, 0x7265626D756ELL, 0xE600000000000000, v70);
  v71 = v131;
  LOBYTE(v131) = v129;
  v47 = sub_1AB2044F8(v43, v57, v71, v50, v119, &v131);
  v49 = v72;

  p_info = _TtC9JetEngine22_DispatchQueueExecutor.info;

LABEL_38:

  v73 = v121;
  if (p_info[479] != -1)
  {
    swift_once();
  }

  v75 = qword_1EB4347E8;
  v74 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1AB4D9850;
  v137 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v77);
  v136 = MEMORY[0x1E69E6158];
  v134 = 0xD000000000000016;
  v135 = 0x80000001AB503A80;
  sub_1AB014A58(&v134, v130, &unk_1EB437E60);
  v131 = 0u;
  v132 = 0u;
  sub_1AB0169C4(v130, &v131);
  v133 = 0;
  v78 = v137;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v78 = sub_1AB0168A8(0, *(v78 + 2) + 1, 1, v78);
  }

  v80 = *(v78 + 2);
  v79 = *(v78 + 3);
  if (v80 >= v79 >> 1)
  {
    v78 = sub_1AB0168A8((v79 > 1), v80 + 1, 1, v78);
  }

  *(v78 + 2) = v80 + 1;
  v81 = &v78[40 * v80];
  v82 = v131;
  v83 = v132;
  v81[64] = v133;
  *(v81 + 2) = v82;
  *(v81 + 3) = v83;
  v137 = v78;
  sub_1AB014AC0(&v134, &unk_1EB437E60);
  v84._countAndFlagsBits = 44;
  v84._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v84);
  *(v76 + 32) = v137;
  v137 = sub_1AB0168A8(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v85._countAndFlagsBits = 0x22203A65746164;
  v85._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v85);
  v136 = v73;
  v86 = __swift_allocate_boxed_opaque_existential_0(&v134);
  (*(v127 + 16))(v86, v126, v73);
  sub_1AB014A58(&v134, v130, &unk_1EB437E60);
  v131 = 0u;
  v132 = 0u;
  sub_1AB0169C4(v130, &v131);
  v133 = 0;
  v87 = v137;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v87 = sub_1AB0168A8(0, *(v87 + 2) + 1, 1, v87);
  }

  v89 = *(v87 + 2);
  v88 = *(v87 + 3);
  if (v89 >= v88 >> 1)
  {
    v87 = sub_1AB0168A8((v88 > 1), v89 + 1, 1, v87);
  }

  *(v87 + 2) = v89 + 1;
  v90 = &v87[40 * v89];
  v91 = v131;
  v92 = v132;
  v90[64] = v133;
  *(v90 + 2) = v91;
  *(v90 + 3) = v92;
  v137 = v87;
  sub_1AB014AC0(&v134, &unk_1EB437E60);
  v93._countAndFlagsBits = 11298;
  v93._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v93);
  *(v76 + 40) = v137;
  v137 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v94._object = 0x80000001AB5038A0;
  v94._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v94);
  v136 = &type metadata for LocalizerLookupStrategy;
  LOBYTE(v134) = v129;
  sub_1AB014A58(&v134, v130, &unk_1EB437E60);
  v131 = 0u;
  v132 = 0u;
  sub_1AB0169C4(v130, &v131);
  v133 = 0;
  v95 = v137;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v95 = sub_1AB0168A8(0, *(v95 + 2) + 1, 1, v95);
  }

  v97 = *(v95 + 2);
  v96 = *(v95 + 3);
  if (v97 >= v96 >> 1)
  {
    v95 = sub_1AB0168A8((v96 > 1), v97 + 1, 1, v95);
  }

  *(v95 + 2) = v97 + 1;
  v98 = &v95[40 * v97];
  v99 = v131;
  v100 = v132;
  v98[64] = v133;
  *(v98 + 2) = v99;
  *(v98 + 3) = v100;
  v137 = v95;
  sub_1AB014AC0(&v134, &unk_1EB437E60);
  v101._countAndFlagsBits = 44;
  v101._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v101);
  *(v76 + 48) = v137;
  v137 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v102._countAndFlagsBits = 0x203A746C75736572;
  v102._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v102);
  v136 = MEMORY[0x1E69E6158];
  v134 = v47;
  v135 = v49;
  sub_1AB014A58(&v134, v130, &unk_1EB437E60);
  v131 = 0u;
  v132 = 0u;
  sub_1AB0169C4(v130, &v131);
  v133 = 2;
  v103 = v137;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v103 = sub_1AB0168A8(0, *(v103 + 2) + 1, 1, v103);
  }

  v105 = *(v103 + 2);
  v104 = *(v103 + 3);
  if (v105 >= v104 >> 1)
  {
    v103 = sub_1AB0168A8((v104 > 1), v105 + 1, 1, v103);
  }

  *(v103 + 2) = v105 + 1;
  v106 = &v103[40 * v105];
  v107 = v131;
  v108 = v132;
  v106[64] = v133;
  *(v106 + 2) = v107;
  *(v106 + 3) = v108;
  v137 = v103;
  sub_1AB014AC0(&v134, &unk_1EB437E60);
  v109._countAndFlagsBits = 34;
  v109._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v109);
  *(v76 + 56) = v137;
  Logger.debug(_:)(v76, v75, v74);

  sub_1AB20D53C(v128);
  (*(v122 + 8))(v125, v123);
  (*(v127 + 8))(v120, v73);
  return v47;
}

uint64_t sub_1AB20B004(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *(v3 + 208);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v8 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v8[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v8 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  strcpy(v19, "screamerMode");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  Preferences.subscript.getter(v19, ObjectType, MEMORY[0x1E69E6370], v7, &v20);

  if (v20 != 2 && (v20 & 1) != 0)
  {
    v19[0] = 10794;
    v19[1] = 0xE200000000000000;
    MEMORY[0x1AC59BA20](a1, a2);
    MEMORY[0x1AC59BA20](10794, 0xE200000000000000);
    return v19[0];
  }

LABEL_10:
  if (v6 <= 1)
  {
    if (v6)
    {
      return sub_1AB20B594(a1, a2);
    }

    v15 = *(v3 + 216);
    if (!v15)
    {
      v15 = 3;
    }

    LOBYTE(v19[0]) = v15;
    return sub_1AB20B004(a1, a2, v19);
  }

  else
  {
    if (v6 == 2)
    {
LABEL_14:
      v13 = *(v3 + 136);
      v14 = *(v3 + 144);
      __swift_project_boxed_opaque_existential_1Tm((v3 + 112), v13);
      return (*(v14 + 16))(a1, a2, v13, v14);
    }

    if (v6 == 3)
    {
      result = sub_1AB20B594(a1, a2);
      if (v12)
      {
        return result;
      }

      goto LABEL_14;
    }

    v16 = *(v3 + 136);
    v17 = *(v3 + 144);
    __swift_project_boxed_opaque_existential_1Tm((v3 + 112), v16);
    result = (*(v17 + 16))(a1, a2, v16, v17);
    if (!v18)
    {
      return sub_1AB20B594(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1AB20B238(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v26 = a2;
  v27 = a3;
  sub_1AB0273A8();
  if (sub_1AB461474())
  {
    if (qword_1EB435CD0 != -1)
    {
LABEL_20:
      swift_once();
    }

    v6 = qword_1EB46C2E0;

    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v6;
    a1 = 0;
    sub_1AB20CD94(v7, sub_1AB20C3D0, 0, isUniquelyReferenced_nonNull_native, &v26);

    v9 = v26;
    v10 = v26 + 64;
    v11 = 1 << *(v26 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v26 + 64);
    v14 = (v11 + 63) >> 6;

    v25 = v9;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v4;
        v17 = v15;
LABEL_15:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = (*(v25 + 48) + ((v17 << 10) | (16 * v18)));
        v20 = *v19;
        v21 = v19[1];
        v26 = v16;
        v27 = v3;

        MEMORY[0x1AC59BA20](v20, v21);
        MEMORY[0x1AC59BA20](8995, 0xE200000000000000);
        a1 = 0xE200000000000000;
        v4 = sub_1AB461434();
        v23 = v22;

        v3 = v23;
        if (!v13)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v17 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v16 = v4;
        v15 = v17;
        goto LABEL_15;
      }
    }

    v26 = v4;
    v27 = v3;
    v4 = sub_1AB461434();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1AB20B594(uint64_t a1, uint64_t a2)
{
  v5 = v2[26];
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v6 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v6 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_13:
    v10 = v2[7];
    v11 = v2[8];
    __swift_project_boxed_opaque_existential_1Tm(v2 + 4, v10);
    return (*(v11 + 16))(a1, a2, v10, v11);
  }

  ObjectType = swift_getObjectType();
  *&v23 = 0xD000000000000011;
  *(&v23 + 1) = 0x80000001AB5037F0;
  Preferences.subscript.getter(&v23, ObjectType, MEMORY[0x1E69E6370], v5, v22);

  if (LOBYTE(v22[0]) == 2 || (v22[0] & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1AB014A58((v2 + 33), &v23, &qword_1EB438888);
  if (*(&v24 + 1))
  {
    sub_1AB0149B0(&v23, v22);
    os_unfair_lock_lock(v6 + 5);
    v9 = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (v9 == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }

    v21[0] = 0x65676175676E616CLL;
    v21[1] = 0xE800000000000000;
    Preferences.subscript.getter(v21, ObjectType, MEMORY[0x1E69E6158], v5, &v23);

    v17 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      v18 = v23;
LABEL_21:
      v19 = __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
      v23 = *v19;
      v24 = *(v19 + 1);
      v25 = v19[4];
      v20 = sub_1AB2C22A4(a1, a2, v18, v17);

      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      return v20;
    }

LABEL_20:
    v18 = v2[2];
    v17 = v2[3];

    goto LABEL_21;
  }

  sub_1AB014AC0(&v23, &qword_1EB438888);
  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB4347E8;
  v14 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D4720;
  *(&v24 + 1) = MEMORY[0x1E69E6158];
  *&v23 = 0xD000000000000026;
  *(&v23 + 1) = 0x80000001AB503D60;
  *(v16 + 48) = 0u;
  *(v16 + 32) = 0u;
  sub_1AB0169C4(&v23, v16 + 32);
  *(v16 + 64) = 0;
  *(v15 + 32) = v16;
  Logger.error(_:)(v15, v13, v14);

  return 0;
}

uint64_t sub_1AB20B934(uint64_t a1, uint64_t a2)
{
  sub_1AB014A58(v2 + 224, &v14, &qword_1EB438880);
  v5 = v15;
  if (v15)
  {
    v6 = v16;
    __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
    v7 = (*(v6 + 16))(a1, a2, v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    if ((v9 & 1) == 0)
    {
      return v7;
    }
  }

  else
  {
    sub_1AB014AC0(&v14, &qword_1EB438880);
  }

  if (!a1)
  {
    return 0;
  }

  *&v14 = a1;
  v11 = sub_1AB461C44();
  v13 = sub_1AB2CA5C4(v11, v12);

  return v13;
}

char *AppleServicesLocalizer.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));

  swift_unknownObjectRelease();
  sub_1AB014AC0((v0 + 224), &qword_1EB438880);
  sub_1AB014AC0((v0 + 264), &qword_1EB438888);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  v1 = *(v0 + 43);

  v2 = *(v0 + 46);

  v3 = *(v0 + 49);

  v4 = *(v0 + 52);

  v5 = OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  v6 = sub_1AB45FAA4();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t AppleServicesLocalizer.__deallocating_deinit()
{
  AppleServicesLocalizer.deinit();

  return swift_deallocClassInstance();
}

id sub_1AB20BEDC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v9[4] = &off_1F1FFD7A8;
  v9[5] = a2;
  v9[3] = a1;
  v9[0] = v3;
  v4 = type metadata accessor for JSLocalizerObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB0CDB28(v9, v5 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v6;
}

uint64_t sub_1AB20BF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1AB0B20F4;

  return sub_1AB20C5A8(a2, a3);
}

uint64_t sub_1AB20C034@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale;
  v5 = sub_1AB45FAA4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1AB20C0D8()
{
  if (sub_1AB460784())
  {
    v0 = sub_1AB460794() ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_1AB20C180(NSNumber a1, Swift::Int_optional a2, Swift::Int_optional a3, JetEngine::LocalizerContext a4)
{
  a2.is_nil &= 1u;
  a3.is_nil &= 1u;
  return AppleServicesLocalizer.decimal(forNumber:minimumFractionDigits:maximumFractionDigits:in:)(a1, a2, a3, a4)._countAndFlagsBits;
}

uint64_t sub_1AB20C1AC(NSNumber a1, Swift::Int_optional a2, Swift::Int_optional a3, JetEngine::LocalizerContext a4)
{
  a2.is_nil &= 1u;
  a3.is_nil &= 1u;
  return AppleServicesLocalizer.percentage(forNumber:minimumFractionDigits:maximumFractionDigits:in:)(a1, a2, a3, a4)._countAndFlagsBits;
}

uint64_t sub_1AB20C2B4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *v2;
  v10[3] = a1;
  v10[4] = &off_1F1FFD7A8;
  v10[0] = v4;
  v5 = type metadata accessor for JSLocalizerObject();
  v6 = objc_allocWithZone(v5);
  sub_1AB0CDB28(v10, v6 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v9.receiver = v6;
  v9.super_class = v5;

  v7 = objc_msgSendSuper2(&v9, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  a2[3] = v5;
  a2[4] = &off_1F2014558;
  *a2 = v7;
  return result;
}

uint64_t sub_1AB20C374()
{
  v0 = sub_1AB0B22E0(&unk_1F1FF3818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438890);
  result = swift_arrayDestroy();
  qword_1EB46C2E0 = v0;
  return result;
}

uint64_t sub_1AB20C3D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

void *sub_1AB20C418@<X0>(void *(*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AB20C45C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 528) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AB0A7964, 0, 0);
  }
}

uint64_t sub_1AB20C5A8(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB20C5CC, 0, 0);
}

uint64_t sub_1AB20C5CC()
{
  v1 = *(v0 + 368);
  sub_1AB01494C(*(v0 + 360), v0 + 240);
  sub_1AB01494C(v1, v0 + 280);
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  sub_1AB01494C(v0 + 240, v0 + 16);
  sub_1AB01494C(v0 + 280, v0 + 56);
  *(v0 + 120) = &type metadata for DefaultLocalizerFormattingStringsDataSource;
  *(v0 + 128) = &off_1F1FF9890;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4DE160;
  *(inited + 32) = [objc_opt_self() mainBundle];
  *(v0 + 160) = &type metadata for LocalizedStringsTableCollection;
  *(v0 + 168) = &protocol witness table for LocalizedStringsTableCollection;
  LocalizedStringsTableCollection.init(bundles:)(inited);
  if (qword_1ED4CFF00 != -1)
  {
    swift_once();
  }

  v5 = xmmword_1ED4CFF08;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);
  *(v0 + 176) = v5;
  *(v0 + 192) = 3;
  sub_1AB014AC0(v0 + 200, &qword_1EB438880);
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_1AB20C7C8;

  return static AppleServicesLocalizer.load(using:)(v0 + 16);
}

uint64_t sub_1AB20C7C8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 392) = v1;

  sub_1AB20C930(v4 + 16);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB20C918, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1AB20C960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB2020EC(a1, v4, v1 + 24, v1 + 64);
}

uint64_t sub_1AB20CA1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB399910(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB20CAF8(uint64_t a1)
{
  v4 = *(v1 + 136);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB2026E4(a1, v1 + 16, v1 + 56, v1 + 96, v4);
}

uint64_t sub_1AB20CBB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB399910(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB20CC94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void *sub_1AB20CD50@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1AB20CD94(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_1AB014DB4(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_1AB1D89D4();
      }
    }

    else
    {
      sub_1AB1D3074(v31, v46 & 1);
      v33 = sub_1AB014DB4(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1AB0309A4();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t _s9JetEngine22AppleServicesLocalizerC8fileSize8forBytesSSSd_tF_0(double a1)
{
  v3 = *&a1;
  v4 = objc_opt_self();
  if ((v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 9.22337204e18)
  {
    v5 = [v4 stringFromByteCount:a1 countStyle:0];
    v3 = sub_1AB460544();
    v1 = v6;

    if (qword_1ED4CFEF8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_5:
  v7 = qword_1EB4347E8;
  v8 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4190;
  v43 = sub_1AB0168A8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69E6158];
  v40 = -2.31584178e77;
  v41 = 0x80000001AB503C00;
  sub_1AB014A58(&v40, v36, &unk_1EB437E60);
  v37 = 0u;
  v38 = 0u;
  sub_1AB0169C4(v36, &v37);
  v39 = 0;
  v12 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = v37;
  v17 = v38;
  v15[64] = v39;
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  v43 = v12;
  sub_1AB014AC0(&v40, &unk_1EB437E60);
  v18._countAndFlagsBits = 44;
  v18._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v9 + 32) = v43;
  v43 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v19._countAndFlagsBits = 0x203A7365747962;
  v19._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v42 = MEMORY[0x1E69E63B0];
  v40 = a1;
  sub_1AB014A58(&v40, v36, &unk_1EB437E60);
  v37 = 0u;
  v38 = 0u;
  sub_1AB0169C4(v36, &v37);
  v39 = 0;
  v20 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[40 * v22];
  v24 = v37;
  v25 = v38;
  v23[64] = v39;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  v43 = v20;
  sub_1AB014AC0(&v40, &unk_1EB437E60);
  v26._countAndFlagsBits = 44;
  v26._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v9 + 40) = v43;
  v43 = sub_1AB0168A8(0, 11, 0, MEMORY[0x1E69E7CC0]);
  v27._countAndFlagsBits = 0x203A746C75736572;
  v27._object = 0xE900000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  v42 = v11;
  v40 = *&v3;
  v41 = v1;
  sub_1AB014A58(&v40, v36, &unk_1EB437E60);
  v37 = 0u;
  v38 = 0u;

  sub_1AB0169C4(v36, &v37);
  v39 = 2;
  v28 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
    v43 = v28;
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v31 = &v28[40 * v30];
  v32 = v37;
  v33 = v38;
  v31[64] = v39;
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  v43 = v28;
  sub_1AB014AC0(&v40, &unk_1EB437E60);
  v34._countAndFlagsBits = 34;
  v34._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  *(v9 + 48) = v43;
  Logger.debug(_:)(v9, v7, v8);

  return v3;
}

uint64_t sub_1AB20D53C(uint64_t a1)
{
  v2 = type metadata accessor for LocalizerFormattingKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AppleServicesLocalizer()
{
  result = qword_1ED4CFEE8;
  if (!qword_1ED4CFEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB20D604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB20D64C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB20D6D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t IntentOutcome.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  v9 = 1;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    (*(v8 + 32))(a2, v5, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, v7);
}

uint64_t static IntentOutcome<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v30 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IntentOutcome();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v26 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v26 - v14;
  v17 = *(v16 + 48);
  v29 = v9;
  v18 = *(v9 + 16);
  v18(&v26 - v14, v30, v8, v13);
  (v18)(&v15[v17], a2, v8);
  v30 = v6;
  v19 = *(v6 + 48);
  if (v19(v15, 1, a3) == 1)
  {
    v20 = 1;
    if (v19(&v15[v17], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v18)(v31, v15, v8);
    if (v19(&v15[v17], 1, a3) != 1)
    {
      v21 = v30;
      v22 = v27;
      (*(v30 + 32))(v27, &v15[v17], a3);
      v23 = v31;
      v20 = sub_1AB460504();
      v24 = *(v21 + 8);
      v24(v22, a3);
      v24(v23, a3);
LABEL_8:
      v12 = v29;
      goto LABEL_9;
    }

    (*(v30 + 8))(v31, a3);
  }

  v20 = 0;
  v8 = TupleTypeMetadata2;
LABEL_9:
  (*(v12 + 8))(v15, v8);
  return v20 & 1;
}

uint64_t sub_1AB20DBFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PreferenceKey.init(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D47F0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v10 = sub_1AB460484();
  v12 = v11;

  *a4 = v10;
  a4[1] = v12;
  return result;
}

uint64_t PreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static PreferenceKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t sub_1AB20DF1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  MEMORY[0x1AC59D3F0](v2);
  return sub_1AB462104();
}

uint64_t sub_1AB20DF78()
{
  v1 = v0[1];
  MEMORY[0x1AC59D3F0](*v0);
  return MEMORY[0x1AC59D3F0](v1);
}

uint64_t sub_1AB20DFB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  MEMORY[0x1AC59D3F0](v2);
  return sub_1AB462104();
}

unint64_t sub_1AB20E050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AB03BD38(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v4 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v4);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AB03BD38((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 16 * v6;
      *(v7 + 32) = 60;
      *(v7 + 40) = 0xE100000000000000;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB04E498();
  v8 = sub_1AB460484();
  v10 = v9;

  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v8, v10);

  return 0xD000000000000026;
}

unint64_t sub_1AB20E214()
{
  result = qword_1EB438928[0];
  if (!qword_1EB438928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB438928);
  }

  return result;
}

uint64_t PreferenceMigrator.renaming<A>(_:to:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *v3;
  v14 = *a1;
  v15 = v5;
  v18[0] = v6;
  v18[1] = v7;
  sub_1AB3B4684(&v14, v18, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1AB2B0EC4(0, v8[2] + 1, 1, v8);
    *a3 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1AB2B0EC4((v10 > 1), v11 + 1, 1, v8);
    *a3 = v8;
  }

  v14 = v19[0];
  v15 = v19[1];
  v16 = v19[2];
  v17 = v19[3];
  v12 = type metadata accessor for RenamePreferenceMigrationRule();
  sub_1AB0BC01C(v11, &v14, a3, v12, &off_1F2014098);
  *a3 = v8;
}

uint64_t PreferenceMigrator.mapping<A, B>(_:to:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = *v5;
  v16 = *a1;
  v17 = v7;
  v21[0] = v8;
  v21[1] = v9;
  sub_1AB188870(&v16, v21, a3, a4, v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1AB2B0EC4(0, v10[2] + 1, 1, v10);
    *a5 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1AB2B0EC4((v12 > 1), v13 + 1, 1, v10);
    *a5 = v10;
  }

  v16 = v22[0];
  v17 = v22[1];
  v18 = v22[2];
  v19 = v23;
  v20 = v24;
  v14 = type metadata accessor for MapPreferenceMigrationRule();
  sub_1AB0BC01C(v13, &v16, a5, v14, &off_1F1FF8130);
  *a5 = v10;
}

uint64_t PreferenceMigrator.removing(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  sub_1AB01494C(a1, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1AB2B0EC4(0, v4[2] + 1, 1, v4);
    *a2 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB2B0EC4((v6 > 1), v7 + 1, 1, v4);
    *a2 = v4;
  }

  v10 = &type metadata for RemovePreferenceMigrationRule;
  v11 = &off_1F2012678;
  *&v9 = swift_allocObject();
  sub_1AB20EB44(v12, v9 + 16);
  v4[2] = v7 + 1;
  sub_1AB0149B0(&v9, &v4[5 * v7 + 4]);
  *a2 = v4;
  return sub_1AB20EBA0(v12);
}

uint64_t PreferenceMigrator.setting<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a1;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SetPreferenceMigrationRule();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v25 - v16);
  v18 = *a2;
  v19 = a2[1];
  v20 = *v25;
  v27[0] = v18;
  v27[1] = v19;
  (*(v7 + 16))(v9, v26, a3, v15);
  sub_1AB18A2D4(v27, v9, a3, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1AB2B0EC4(0, v20[2] + 1, 1, v20);
    *a4 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1AB2B0EC4((v22 > 1), v23 + 1, 1, v20);
    *a4 = v20;
  }

  (*(v11 + 16))(v13, v17, v10);
  sub_1AB0BC01C(v23, v13, a4, v10, &off_1F1FF8230);
  *a4 = v20;
  return (*(v11 + 8))(v17, v10);
}

uint64_t PreferenceMigrator.run(from:to:toleratingErrors:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v29 = a4;
  v7 = v6;
  v9 = result;
  v10 = *v5;
  if (a5)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1AB01494C(v12, v26);
        v15 = v27;
        v14 = v28;
        __swift_project_boxed_opaque_existential_1Tm(v26, v27);
        (*(v14 + 8))(v9, a2, a3, v29, v15, v14);
        if (v7)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1AB2B0EE8(0, v13[2] + 1, 1, v13);
          }

          v17 = v13[2];
          v16 = v13[3];
          if (v17 >= v16 >> 1)
          {
            v13 = sub_1AB2B0EE8((v16 > 1), v17 + 1, 1, v13);
          }

          v13[2] = v17 + 1;
          v13[v17 + 4] = v7;
          v7 = 0;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
        }

        v12 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    if (v13[2])
    {
      sub_1AB1BA4A4();
      swift_allocError();
      v23 = v22;
      if (!v13[2])
      {
        sub_1AB40BED8("JetEngine/CompoundError.swift", 0x1DuLL, 2, 0x15uLL);
      }

      *v23 = v13;
      return swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    v24 = *(v10 + 16);
    if (v24)
    {
      v18 = 0;
      v19 = v10 + 32;
      while (v18 < *(v10 + 16))
      {
        sub_1AB01494C(v19, v26);
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_1Tm(v26, v27);
        (*(v21 + 8))(v9, a2, a3, v29, v20, v21);
        if (v6)
        {
          return __swift_destroy_boxed_opaque_existential_1Tm(v26);
        }

        ++v18;
        result = __swift_destroy_boxed_opaque_existential_1Tm(v26);
        v19 += 40;
        if (v24 == v18)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AB20EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AB20ECF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1AB20ED60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AB20EDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1AB20EE40@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AB0D893C();
  *a1 = result;
  return result;
}

BOOL sub_1AB20EEA8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AB0D893C();
  *a1 = result;
  return result;
}

uint64_t sub_1AB20EED8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB0C9098();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AB20EF08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB20EF5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static StaticIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a2;
  v31 = a5;
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AB461354();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v26 - v9;
  v10 = type metadata accessor for StaticIntent();
  v11 = sub_1AB461354();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(v10 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  (*(a4 + 40))(v33, v30, a4, v17);
  v32 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v22 = v31;
    v21(v14, 0, 1, v10);
    (*(v15 + 32))(v19, v14, v10);
    v23 = v29;
    static Continuous._unwrapOnlyElement<A>(of:)(v19, AssociatedTypeWitness, a1, v29);
    (*(v15 + 8))(v19, v10);
    v24 = *(AssociatedTypeWitness - 8);
    if ((*(v24 + 48))(v23, 1, AssociatedTypeWitness) == 1)
    {
      (*(v26 + 8))(v23, v27);
      return (*(v24 + 56))(v22, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      (*(v24 + 32))(v22, v23, AssociatedTypeWitness);
      return (*(v24 + 56))(v22, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    v21(v14, 1, 1, v10);
    (*(v12 + 8))(v14, v11);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v31, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t StaticIntent<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v44 = a4;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v39 - v9;
  type metadata accessor for StaticIntent.CodingKeys();
  swift_getWitnessTable();
  v10 = sub_1AB461B04();
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v39 - v11;
  v12 = type metadata accessor for Result();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v42 = type metadata accessor for StaticIntent();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v39 - v22;
  v48 = a3;
  v49 = a2;
  v53 = a2;
  v54 = a3;
  v55 = v6;
  Result.init(trying:)(sub_1AB20FA6C, v21);
  v23 = *(v13 + 16);
  v23(v18, v21, v12);
  v52 = v18;
  v57 = v12;
  v24 = v50;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

  v39 = v6;
  v23(v15, v52, v57);
  v25 = v47;
  (*(v47 + 32))(v51, v15, v10);
  if ((sub_1AB461AF4() & 1) == 0)
  {
    (*(v25 + 8))(v51, v10);
    v6 = v39;
LABEL_6:
    __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
    sub_1AB462204();
    if (v24)
    {
      v30 = *(v13 + 8);
      v31 = v57;
      v30(v21, v57);
      v30(v52, v31);
      return __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    __swift_project_boxed_opaque_existential_1Tm(v56, v56[3]);
    v32 = v46;
    v33 = v49;
    sub_1AB461DF4();
    v35 = *(v13 + 8);
    v36 = v57;
    v35(v21, v57);
    v37 = v40;
    (*(v43 + 32))(v40, v32, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
LABEL_11:
    v35(v52, v36);
    (*(v41 + 32))(v44, v37, v42);
    return __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v26 = v45;
  v27 = v49;
  sub_1AB461AC4();
  if (!v24)
  {
    (*(v25 + 8))(v51, v10);
    v35 = *(v13 + 8);
    v38 = v26;
    v36 = v57;
    v35(v21, v57);
    v37 = v40;
    (*(v43 + 32))(v40, v38, v27);
    v6 = v39;
    goto LABEL_11;
  }

  (*(v25 + 8))(v51, v10);
  v28 = *(v13 + 8);
  v29 = v57;
  v28(v21, v57);
  v6 = v39;
  v28(v52, v29);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1AB20F9D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  type metadata accessor for StaticIntent.CodingKeys();
  swift_getWitnessTable();
  return sub_1AB462224();
}

uint64_t StaticIntent<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a3;
  type metadata accessor for StaticIntent.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1AB461C14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462274();
  sub_1AB461BF4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t StaticIntent<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v27 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = *v14;
  sub_1AB01EC0C(v16, v28);
  v17 = v29;
  if (v29)
  {
    v25 = v13;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v19 = *(v18 + 16);
    v20 = v18;
    v5 = v4;
    v21 = v19(0x6174616424, 0xE500000000000000, v17, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    if (v21)
    {
      v22.n128_f64[0] = JSONObject.subscript.getter(0x6174616424, 0xE500000000000000, v28);
      v31 = v15;
      v23 = *(a3 + 8);
      v10 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AB18977C(v28);
  }

  sub_1AB0B9254(a1, v28);
  v31 = v15;
  v23 = *(a3 + 8);
LABEL_6:
  v23(v28, &v31, a2, a3, v22);
  result = sub_1AB066D84(a1);
  if (!v5)
  {
    return (*(v26 + 32))(v27, v10, a2);
  }

  return result;
}

uint64_t StaticIntent<>.jsRepresentation(in:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E6158];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AB461C64();
  swift_allocObject();
  v8 = sub_1AB460964();
  v9 = *(TupleTypeMetadata2 + 48);
  *v10 = 0x6174616424;
  *(v10 + 1) = 0xE500000000000000;
  (*(*(v5 - 8) + 16))(&v10[v9], v3, v5);
  sub_1AB460A64();
  v11 = sub_1AB06D700(v8, v6, v5, MEMORY[0x1E69E6168]);

  a2[3] = sub_1AB4603C4();
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = v11;
  return result;
}

id StaticIntent<>.makeValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    v8 = (*(a3 + 24))(a1, *(a2 + 16), a3);
    v9 = sub_1AB460514();
    [v7 setValue:v8 forProperty:v9];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB210114(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t JetPackPath.string.getter()
{
  if (!*(*v0 + 16))
  {
    return 46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB04E498();
  v1 = sub_1AB460484();

  return v1;
}

JetEngine::JetPackPath sub_1AB210278()
{
  v0._countAndFlagsBits = 0x736A2E707061;
  v0._object = 0xE600000000000000;
  return JetPackPath.init(_:)(v0);
}

JetEngine::JetPackPath __swiftcall JetPackPath.appending(_:)(JetEngine::JetPackPath a1)
{
  v3 = v1;
  v4 = *a1.components._rawValue;
  v6 = *v2;

  result.components._rawValue = sub_1AB164C18(v4);
  *v3 = v6;
  return result;
}

uint64_t JetPackPath.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1AC59D3F0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      sub_1AB460684();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t JetPackPath.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1AB460684();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1AB462104();
}

uint64_t sub_1AB21041C()
{
  v1 = *v0;
  result = MEMORY[0x1AC59D3F0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      sub_1AB460684();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AB210498()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1AB460684();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1AB462104();
}

id static PipelinePhase<>.fetchJetpack(artifactStoreURL:urlSession:urlEncoder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v19 = a3;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658);
  swift_allocObject();
  v12 = sub_1AB03356C();
  type metadata accessor for RemoteJetpackFetcher();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v19;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 4;
  *(v13 + 56) = 1;
  *(v13 + 64) = v12;
  (*(v8 + 32))(v13 + OBJC_IVAR____TtC9JetEngine20RemoteJetpackFetcher_artifactStoreURL, v11, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AB21146C;
  *(v14 + 24) = v13;
  *a4 = sub_1AB2114E8;
  a4[1] = v14;
  v15 = a2;
  v16 = v19;

  return v16;
}

void *sub_1AB210710(uint64_t a1)
{
  v2 = v1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v71);
  v72 = (&v62 - v4);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820);
  MEMORY[0x1EEE9AC00](v65);
  v66 = (&v62 - v5);
  v6 = sub_1AB45F9E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45F764();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v62 - v14;
  if (qword_1ED4D1D90 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED4D1D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v16 = swift_allocObject();
  v64 = xmmword_1AB4D4720;
  *(v16 + 16) = xmmword_1AB4D4720;
  v84 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v17._object = 0x80000001AB504000;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v81 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
  v19 = *(v11 + 16);
  v68 = v11 + 16;
  v67 = v19;
  v19(boxed_opaque_existential_0, a1, v10);
  sub_1AB014A58(v80, v83, &unk_1EB437E60);
  v76 = 0u;
  v77 = 0u;
  sub_1AB0169C4(v83, &v76);
  v78[0] = 0;
  v20 = v84;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v10;
  v73 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[40 * v23];
  v25 = v76;
  v26 = v77;
  v24[64] = v78[0];
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v84 = v20;
  sub_1AB014AC0(v80, &unk_1EB437E60);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v16 + 32) = v84;
  v28 = sub_1AB461094();
  if (os_log_type_enabled(v15, v28))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v63 = v15;
    v29 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v29 + 5);
    v31 = v6;
    v32 = a1;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v33 = swift_allocObject();
    *(v33 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v76 = v16;
    *(&v76 + 1) = sub_1AB01A8D8;
    *&v77 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v34 = sub_1AB460484();
    v36 = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v37 = swift_allocObject();
    *(v37 + 16) = v64;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1AB016854();
    *(v37 + 32) = v34;
    *(v37 + 40) = v36;
    sub_1AB45FF14();

    v6 = v31;
  }

  else
  {
    v32 = a1;
  }

  sub_1AB45F9D4();
  sub_1AB45F9C4();
  (*(v7 + 8))(v9, v6);
  sub_1AB45F664();

  v38 = *(v2 + 16);
  v39 = *(v2 + 24);
  v40 = *(v2 + 32);
  v41 = *(v2 + 40);
  v42 = *(v2 + 48);
  v43 = *(v2 + 56);
  LODWORD(v84) = *(v2 + 57);
  *(&v84 + 3) = *(v2 + 60);
  v63 = *(v2 + 64);
  *&v64 = sub_1AB29D8B8(v32, v39, v41, v42, v43 & 1);
  v81 = &type metadata for SyncTaskScheduler;
  v82 = &protocol witness table for SyncTaskScheduler;
  v44 = v66;
  *v66 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AE0);
  v45 = swift_allocObject();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v45[2] = v46;
  sub_1AB017FB8(v44, v45 + *(*v45 + 96), &unk_1EB437820);
  v47 = swift_allocObject();
  v47[2] = sub_1AB2111E0;
  v47[3] = 0;
  v47[4] = v45;
  *&v76 = sub_1AB19E748;
  *(&v76 + 1) = v47;
  *&v77 = sub_1AB19E754;
  *(&v77 + 1) = v45;
  sub_1AB01494C(v80, v78);
  v79 = 0;
  swift_retain_n();

  sub_1AB1949F0(&v76);

  sub_1AB014AC0(&v76, &qword_1EB439E20);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  v83[0] = v40;
  v48 = swift_allocObject();
  *(v48 + 16) = v38;
  *(v48 + 24) = v39;
  *(v48 + 32) = v40;
  *(v48 + 40) = v41;
  *(v48 + 48) = v42;
  *(v48 + 56) = v43;
  *(v48 + 57) = v84;
  *(v48 + 60) = *(&v84 + 3);
  *(v48 + 64) = v63;
  v49 = v38;
  v50 = v39;
  sub_1AB014A58(v83, &v76, &qword_1EB437668);

  sub_1AB3B53F0(sub_1AB193998, v48);

  v51 = v70;
  v52 = v75;
  v53 = v74;
  v67(v70, v75, v74);
  v54 = v73;
  v55 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v56 = swift_allocObject();
  (*(v54 + 32))(v56 + v55, v51, v53);
  v81 = &type metadata for SyncTaskScheduler;
  v82 = &protocol witness table for SyncTaskScheduler;
  v57 = v72;
  *v72 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v58 = swift_allocObject();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v58[2] = v59;
  sub_1AB017FB8(v57, v58 + *(*v58 + 96), &unk_1EB4377C0);
  v60 = swift_allocObject();
  v60[2] = sub_1AB2118F4;
  v60[3] = v56;
  v60[4] = v58;
  *&v76 = sub_1AB211970;
  *(&v76 + 1) = v60;
  *&v77 = sub_1AB21197C;
  *(&v77 + 1) = v58;
  sub_1AB01494C(v80, v78);
  v79 = 0;
  swift_retain_n();

  sub_1AB09CF00(&v76);

  sub_1AB014AC0(&v76, &unk_1EB439880);
  (*(v54 + 8))(v52, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  return v58;
}

uint64_t sub_1AB2111E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB45F0A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return sub_1AB45F094();
}

uint64_t sub_1AB21128C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [*a1 data];
  v7 = sub_1AB45F854();
  v9 = v8;

  sub_1AB45F864();
  result = sub_1AB017254(v7, v9);
  if (!v3)
  {
    v11 = sub_1AB45F764();
    return (*(*(v11 - 8) + 16))(a3, a2, v11);
  }

  return result;
}

uint64_t sub_1AB21135C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC9JetEngine20RemoteJetpackFetcher_artifactStoreURL;
  v4 = sub_1AB45F764();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteJetpackFetcher()
{
  result = qword_1EB4350C0;
  if (!qword_1EB4350C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1AB211470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a1 + 88))();
  v5 = sub_1AB211594(a2, a3);

  return v5;
}

uint64_t sub_1AB2114F8()
{
  result = sub_1AB45F764();
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

void *sub_1AB211594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v15 = &type metadata for SyncTaskScheduler;
  v16 = &protocol witness table for SyncTaskScheduler;
  *(v11 - v5) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v7[2] = v8;
  sub_1AB017FB8(v6, v7 + *(*v7 + 96), &unk_1EB4377C0);
  sub_1AB01494C(v14, v13);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  sub_1AB0149B0(v13, (v9 + 5));
  v11[0] = sub_1AB2117BC;
  v11[1] = v9;
  v11[2] = sub_1AB2117CC;
  v11[3] = v7;
  sub_1AB01494C(v14, v12);
  v12[40] = 0;
  swift_retain_n();

  sub_1AB194D18(v11);

  sub_1AB014AC0(v11, &unk_1EB439840);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v7;
}

uint64_t sub_1AB2117D4(uint64_t *a1, void (*a2)(uint64_t *, double))
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  a2(&v11, v6);
  sub_1AB432294(v8);
  return (*(v5 + 8))(v8, v4);
}

void static AutomationSemantics.dismissButton()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF3928;
  a1[1] = v1;
}

void static AutomationSemantics.searchField()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF3958;
  a1[1] = v1;
}

void static AutomationSemantics.backButton()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF3988;
  a1[1] = v1;
}

void static AutomationSemantics.editButton()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF39B8;
  a1[1] = v1;
}

double sub_1AB2119FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  sub_1AB01522C(a1, v10);
  AutomationAttribute.init(key:value:)(25705, 0xE200000000000000, v10, (inited + 32));
  sub_1AB01522C(a2, v10);
  AutomationAttribute.init(key:value:)(0x6449746E65726170, 0xE800000000000000, v10, (inited + 64));
  v10[0] = a3;
  *&v10[1] = MEMORY[0x1E69E7CC0];
  sub_1AB05ED60(inited);
  result = v10[0];
  *a4 = *v10;
  return result;
}

void static AutomationSemantics.primaryActionButton()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF3A48;
  a1[1] = v1;
}

void static AutomationSemantics.filterButton()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF3A78;
  a1[1] = v1;
}

uint64_t sub_1AB211B0C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1AB248C34(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t JSStack.CallingConvention.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t JSStack.Configuration.addingDependency(_:withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AB2207C4(v4, a4);
  sub_1AB01494C(a1, v9);

  return sub_1AB1CE0BC(v9, a2, a3);
}

uint64_t JSStack.Configuration.addingBagDependency(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1AB2207C4(v2, a2);
  v5[3] = &type metadata for Bag;
  v5[4] = &protocol witness table for Bag;
  v5[0] = v3;
  swift_unknownObjectRetain();
  return sub_1AB1CE0BC(v5, 6775138, 0xE300000000000000);
}

uint64_t JSStack.Configuration.addingNetDependency(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB2207C4(v2, a2);
  v5[3] = &type metadata for Net;
  v5[4] = &protocol witness table for Net;
  v5[0] = swift_allocObject();
  sub_1AB0936D0(a1, v5[0] + 16);
  return sub_1AB1CE0BC(v5, 7628142, 0xE300000000000000);
}

void JSStack.Configuration.withVirtualMachine(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB2207C4(v2, a2);

  objc_storeStrong((a2 + 88), a1);
}

uint64_t JSStack.Configuration.withConvention(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_1AB2207C4(v2, a2);
  *(a2 + 104) = v4;
  return result;
}

uint64_t JSStack.Configuration.withSentryConfiguration(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB2207C4(v2, a2);

  return sub_1AB2207FC(a1, a2 + 112);
}

uint64_t JSStack.Configuration.withContextName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB2207C4(v3, a3);

  *(a3 + 240) = a1;
  *(a3 + 248) = a2;
  return result;
}

uint64_t JSStack.Configuration.withQualityOfService(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AB2207C4(v2, a2);
  *(a2 + 224) = a1;
  *(a2 + 232) = 0;
  return result;
}

_OWORD *JSStack.Configuration.withCache(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB2207C4(v2, a2);
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v10 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a2 + 40);
  return sub_1AB014B78(&v9, (a2 + 40));
}

uint64_t JSStack.Configuration.withLazyDependencies(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB2207C4(v2, a2);

  *(a2 + 80) = a1;
  return result;
}

uint64_t JSStack.StandardGlobalConfiguration.unstable_requestFixUpBlock.getter()
{
  v1 = *(v0 + 8);
  sub_1AB04B604(v1);
  return v1;
}

uint64_t sub_1AB212114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AB144A38;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1AB04B604(v3);
}

uint64_t sub_1AB212194(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AB14586C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 8);
  sub_1AB04B604(v3);
  result = sub_1AB0177B8(v7);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t JSStack.StandardGlobalConfiguration.unstable_requestFixUpBlock.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1AB0177B8(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void (*JSStack.StandardGlobalConfiguration.unstable_requestFixUpBlock.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 8);
  v4[3] = v5;
  v6 = *(v1 + 16);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;
  sub_1AB04B604(v5);
  return sub_1AB2122F0;
}

void sub_1AB2122F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {
    sub_1AB04B604(**a1);
    sub_1AB0177B8(v5);
    *(v6 + 8) = v4;
    *(v6 + 16) = v3;
    sub_1AB0177B8(*v2);
  }

  else
  {
    sub_1AB0177B8((*a1)[3]);
    *(v6 + 8) = v4;
    *(v6 + 16) = v3;
  }

  free(v2);
}

void sub_1AB212394(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB019150((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB46C108 = v2;
}

uint64_t sub_1AB21247C(uint64_t a1)
{
  v6 = &type metadata for OSLogger;
  v7 = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  *&v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A58);
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  result = sub_1AB0149B0(&v5, v2 + 16);
  qword_1EB46C2E8 = v2;
  return result;
}

uint64_t sub_1AB2125B8()
{
  v0 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v0, qword_1EB435470);
  __swift_project_value_buffer(v0, qword_1EB435470);
  return sub_1AB45FFB4();
}

uint64_t JSStack.__allocating_init(with:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB200878;

  return JSStack.init(with:)(a1);
}

uint64_t JSStack.init(with:)(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v2[38] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB212720, 0, 0);
}

void sub_1AB212720()
{
  v83 = v0;
  v1 = *(v0 + 296);
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  v2 = (v1 + 200);
  v3 = objc_opt_self();
  v4 = sub_1AB460514();
  LODWORD(v3) = [v3 BOOLForEntitlement_];

  if (v3)
  {
    v5 = *(v0 + 288);
    sub_1AB0C3EF0();
    swift_allocError();
    v82 = 1;
    LOBYTE(v81) = 1;
    *v6 = 0xD00000000000005ELL;
    *(v6 + 8) = 0x80000001AB504060;
    *(v6 + 16) = 0;
    *(v6 + 24) = 1;
    *(v6 + 32) = 0;
    *(v6 + 40) = 1;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0;
    swift_willThrow();
    sub_1AB220890(v5);
    sub_1AB0177B8(*v2);
    swift_deallocPartialClassInstance();
LABEL_33:
    v75 = *(v0 + 8);

    v75();
    return;
  }

  v7 = *(v0 + 288);
  v8 = *(v0 + 296);
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 40) = MEMORY[0x1E69E7CC0];
  sub_1AB014A58(v7 + 112, v8 + 48, &qword_1EB4389B0);
  type metadata accessor for RunLoopWorkerThread();
  v10 = swift_allocObject();
  v10[5] = 0;
  v10[6] = 0;
  v10[2] = 0xD00000000000001BLL;
  v10[3] = 0x80000001AB504040;
  v10[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v10[7] = v9;
  *(v8 + 24) = v10;
  v11 = *(v7 + 224);
  v12 = *(v7 + 232);

  sub_1AB048280(v11, v12);

  v13 = *(v7 + 88);
  v15 = *(v7 + 240);
  v14 = *(v7 + 248);
  v79 = v8;
  v16 = *(v8 + 24);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v14;
  v17[4] = v13;
  v18 = *(v16 + 32);
  swift_bridgeObjectRetain_n();
  v80 = v13;

  [v18 lock];
  v19 = CFRunLoopGetCurrent();
  v20 = *(v16 + 40);
  v21 = &unk_1E794B000;
  if (v19)
  {
    v22 = v19;
    if (v20)
    {
      type metadata accessor for CFRunLoop(0);
      sub_1AB049958(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
      v23 = v20;
      v21 = &unk_1E794B000;
      v24 = sub_1AB45FC14();

      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      [v18 v21[457]];
      sub_1AB04C638(v80, &v81);

      v25 = v81;
      goto LABEL_12;
    }
  }

  else if (!v20)
  {
    goto LABEL_8;
  }

LABEL_10:
  [v18 v21[457]];
  v26 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389B8);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = sub_1AB04C628;
  v28[4] = v17;
  v28[5] = v26;

  v29 = v26;
  sub_1AB0484A4(sub_1AB04C5AC, v28);

  sub_1AB461254();
  os_unfair_lock_lock((v27 + 24));
  v30 = *(v27 + 16);
  v25 = v30;
  os_unfair_lock_unlock((v27 + 24));
  if (!v30)
  {

    __break(1u);
    goto LABEL_41;
  }

LABEL_12:
  v31 = *(v0 + 288);
  v32 = *(v0 + 296);
  *(v32 + 32) = v25;
  sub_1AB0165C4(v31 + 40, v32 + 168);
  v33 = *(v31 + 80);
  v34 = type metadata accessor for JSLazyProvider();
  v35 = objc_allocWithZone(v34);
  swift_unknownObjectWeakInit();
  *&v35[OBJC_IVAR____TtC9JetEngine14JSLazyProvider_lazyDependencies] = v33;
  swift_unknownObjectWeakAssign();
  *(v0 + 272) = v35;
  *(v0 + 280) = v34;

  *(v32 + 16) = objc_msgSendSuper2((v0 + 272), sel_init);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v36 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v36[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v36 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_21:
    *(*(v0 + 296) + 160) = 0;
    goto LABEL_23;
  }

  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB435998)
  {
    goto LABEL_21;
  }

  v38 = *(v0 + 288);
  v39 = *(v0 + 296);
  type metadata accessor for TracingSupport();
  v40 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389C8);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v40 + 16) = v41;
  *(v39 + 160) = v40;
  v42 = *(v32 + 32);
  sub_1AB01494C(v38, v0 + 16);

  v43 = v42;
  sub_1AB049B10(v43, v0 + 16);

  sub_1AB014AC0(v0 + 16, &qword_1EB4389D0);
LABEL_23:
  v44 = *(v0 + 296);
  v45 = *(v0 + 304);
  v46 = *(v0 + 288);
  v47 = sub_1AB1BF140(&unk_1F1FF3AA8);
  swift_arrayDestroy();

  v49 = sub_1AB211B0C(v48, v47);
  v50 = *(v79 + 24);
  sub_1AB2207C4(v46, v0 + 16);
  v51 = swift_allocObject();
  v52 = *(v0 + 224);
  *(v51 + 216) = *(v0 + 208);
  *(v51 + 232) = v52;
  v53 = *(v0 + 256);
  *(v51 + 248) = *(v0 + 240);
  *(v51 + 264) = v53;
  v54 = *(v0 + 160);
  *(v51 + 152) = *(v0 + 144);
  *(v51 + 168) = v54;
  v55 = *(v0 + 192);
  *(v51 + 184) = *(v0 + 176);
  *(v51 + 200) = v55;
  v56 = *(v0 + 96);
  *(v51 + 88) = *(v0 + 80);
  *(v51 + 104) = v56;
  v57 = *(v0 + 128);
  *(v51 + 120) = *(v0 + 112);
  *(v51 + 136) = v57;
  v58 = *(v0 + 32);
  *(v51 + 24) = *(v0 + 16);
  *(v51 + 40) = v58;
  v59 = *(v0 + 64);
  *(v51 + 56) = *(v0 + 48);
  *(v51 + 16) = v44;
  *(v51 + 72) = v59;
  *(v51 + 280) = v49;
  *(v51 + 288) = v45;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1AB22086C;
  *(v60 + 24) = v51;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1AB0522F4;
  *(v61 + 24) = v60;
  v62 = *(v50 + 32);
  swift_retain_n();

  [v62 lock];
  v63 = CFRunLoopGetCurrent();
  v64 = *(v50 + 40);
  if (!v63)
  {
    if (v64)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v65 = v63;
  if (!v64)
  {

    goto LABEL_30;
  }

  type metadata accessor for CFRunLoop(0);
  sub_1AB049958(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
  v66 = v64;
  v67 = sub_1AB45FC14();

  if (v67)
  {
LABEL_28:
    [v62 unlock];
    sub_1AB0522F4();

    goto LABEL_37;
  }

LABEL_30:

  [v62 unlock];
  v68 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389C0);
  v69 = swift_allocObject();
  *(v69 + 28) = 0;
  *(v69 + 16) = 0;
  *(v69 + 24) = -1;
  v70 = swift_allocObject();
  v70[2] = v69;
  v70[3] = sub_1AB052258;
  v70[4] = v61;
  v70[5] = v68;

  v71 = v68;
  sub_1AB0484A4(sub_1AB0521C0, v70);

  sub_1AB461254();
  os_unfair_lock_lock((v69 + 28));
  v72 = *(v69 + 16);
  v73 = *(v69 + 24);
  sub_1AB053C7C(v72, *(v69 + 24));
  os_unfair_lock_unlock((v69 + 28));
  if (v73 == 255)
  {
LABEL_41:
    __break(1u);
    return;
  }

  if (v73)
  {
    v74 = *(v0 + 288);
    swift_willThrow();

    sub_1AB44411C();
    swift_willThrow();

    sub_1AB220890(v74);

    goto LABEL_33;
  }

  sub_1AB052240(v72, v73);
LABEL_37:
  v76 = *(v0 + 288);

  sub_1AB220890(v76);
  v77 = *(v0 + 8);
  v78 = *(v0 + 296);

  v77(v78);
}

void sub_1AB213194(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 32);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 1;
  *&v253 = sub_1AB2241D4;
  *(&v253 + 1) = v9;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v252 = sub_1AB0C16BC;
  *(&v252 + 1) = &block_descriptor_433;
  v10 = _Block_copy(&aBlock);

  [v7 setExceptionHandler_];
  _Block_release(v10);
  v241 = [v7 globalObject];
  if (!v241)
  {
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v238 = a3;
  v245 = v3;
  v231 = a1;
  v4 = *(a1 + 16);
  v233 = objc_opt_self();
  v229 = v4;
  v240 = v7;
  v11 = [v233 valueWithObject:v4 inContext:v7];
  if (!v11)
  {
    goto LABEL_221;
  }

  v12 = v11;
  v13 = sub_1AB460514();
  [v241 setValue:v12 forProperty:v13];

  v14 = sub_1AB215270();
  i = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v239 = v14;

  v20 = 0;
  if (!v18)
  {
LABEL_7:
    if (v19 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        v18 = 0;
        *&v249 = 0;
        v247 = 0u;
        v248 = 0u;
        v246 = 0u;
        goto LABEL_15;
      }

      v18 = *(i + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  while (1)
  {
    v21 = v20;
LABEL_14:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v21 << 6);
    v26 = (*(v239 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    sub_1AB01494C(*(v239 + 56) + 40 * v25, &v256);
    *&v246 = v28;
    *(&v246 + 1) = v27;
    sub_1AB0149B0(&v256, &v247);

    v23 = v21;
LABEL_15:
    aBlock = v246;
    v252 = v247;
    v253 = v248;
    *&v254 = v249;
    if (!*(&v246 + 1))
    {
      break;
    }

    sub_1AB0149B0(&v252, &v246);
    v30 = *(&v247 + 1);
    v29 = v248;
    __swift_project_boxed_opaque_existential_1Tm(&v246, *(&v247 + 1));
    v31 = (*(v29 + 16))(v240, v30, v29);
    if (v245)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v246);
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *(v51 + 24) = 0;
      *&v253 = sub_1AB2241D4;
      *(&v253 + 1) = v51;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v52 = &block_descriptor_505;
      goto LABEL_39;
    }

    v245 = 0;
    v12 = v31;
    v32 = sub_1AB460514();

    [v241 setValue:v12 forProperty:v32];

    __swift_destroy_boxed_opaque_existential_1Tm(&v246);
    v20 = v23;
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  v12 = v239;

  v4 = a2;
  if (*(a2 + 104))
  {

    v33 = *(a2 + 72);
    v4 = v33 + 64;
    v34 = 1 << *(v33 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v33 + 64);
    v37 = (v34 + 63) >> 6;
    v243 = *(a2 + 72);

    v38 = 0;
    if (!v36)
    {
LABEL_25:
      if (v37 <= v38 + 1)
      {
        v40 = v38 + 1;
      }

      else
      {
        v40 = v37;
      }

      v41 = v40 - 1;
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v37)
        {
          v36 = 0;
          *&v249 = 0;
          v247 = 0u;
          v248 = 0u;
          v246 = 0u;
          goto LABEL_33;
        }

        v36 = *(v4 + 8 * v39);
        ++v38;
        if (v36)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    while (1)
    {
      v39 = v38;
LABEL_32:
      v42 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v43 = v42 | (v39 << 6);
      v44 = (*(v243 + 48) + 16 * v43);
      v45 = *v44;
      v12 = v44[1];
      sub_1AB01494C(*(v243 + 56) + 40 * v43, &v256);
      *&v246 = v45;
      *(&v246 + 1) = v12;
      sub_1AB0149B0(&v256, &v247);

      v41 = v39;
LABEL_33:
      aBlock = v246;
      v252 = v247;
      v253 = v248;
      *&v254 = v249;
      if (!*(&v246 + 1))
      {
        break;
      }

      sub_1AB0149B0(&v252, &v246);
      v46 = *(&v247 + 1);
      v47 = v248;
      __swift_project_boxed_opaque_existential_1Tm(&v246, *(&v247 + 1));
      v48 = (*(v47 + 16))(v240, v46, v47);
      if (v245)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v246);
        v117 = swift_allocObject();
        swift_weakInit();
        v118 = swift_allocObject();
        *(v118 + 16) = v117;
        *(v118 + 24) = 0;
        *&v253 = sub_1AB2241D4;
        *(&v253 + 1) = v118;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v52 = &block_descriptor_465;
        goto LABEL_39;
      }

      v245 = 0;
      v12 = v48;
      v49 = sub_1AB460514();

      [v241 setValue:v12 forProperty:v49];

      __swift_destroy_boxed_opaque_existential_1Tm(&v246);
      v38 = v41;
      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v244 = *(a2 + 80);
    if (*(v244 + 16))
    {
      sub_1AB40E830("JetEngine/JSStack.swift", 0x17uLL, 2, 0x268uLL);
    }

    v104 = v244 + 64;
    v105 = 1 << *(v244 + 32);
    v106 = -1;
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    v107 = v106 & *(v244 + 64);
    v108 = (v105 + 63) >> 6;

    v109 = 0;
    for (i = v231; v107; v104 = v244 + 64)
    {
      v110 = v109;
LABEL_100:
      v111 = *(*(v244 + 56) + ((v110 << 10) | (16 * __clz(__rbit64(v107)))));

      v111(&aBlock, v112);
      v113 = *(&v252 + 1);
      v114 = v253;
      __swift_project_boxed_opaque_existential_1Tm(&aBlock, *(&v252 + 1));
      v115 = (*(v114 + 16))(v240, v113, v114);
      if (v245)
      {
        goto LABEL_173;
      }

      v245 = 0;
      v107 &= v107 - 1;
      v12 = v115;
      v116 = sub_1AB460514();

      [v241 setValue:v12 forProperty:v116];

      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      v109 = v110;
      i = v231;
    }

    while (1)
    {
      v110 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      if (v110 >= v108)
      {

        v128 = *(a2 + 24);
        v129 = *(a2 + 32);
        __swift_project_boxed_opaque_existential_1Tm(a2, v128);
        v4 = v240;
        v130 = sub_1AB0531A0(v240, v128, v129);
        if (v245)
        {

          v131 = swift_allocObject();
          swift_weakInit();
          v132 = swift_allocObject();
          *(v132 + 16) = v131;
          *(v132 + 24) = 0;
          *&v253 = sub_1AB2241D4;
          *(&v253 + 1) = v132;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v133 = &block_descriptor_449;
          goto LABEL_158;
        }

LABEL_165:
        sub_1AB01494C(a2, &v256);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F40);
        if (swift_dynamicCast())
        {
          v253 = v248;
          v254 = v249;
          v255 = v250;
          aBlock = v246;
          v252 = v247;
          sub_1AB0165C4(&v253 + 8, &v246);
          swift_beginAccess();
          v12 = *(i + 40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(i + 40) = v12;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_167;
          }

          goto LABEL_216;
        }

        v250 = 0;
        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        sub_1AB014AC0(&v246, &qword_1EB438A50);
LABEL_171:
        v177 = swift_allocObject();
        swift_weakInit();
        v178 = swift_allocObject();
        *(v178 + 16) = v177;
        *(v178 + 24) = 0;
        *&v253 = sub_1AB2241D4;
        *(&v253 + 1) = v178;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v52 = &block_descriptor_457;
LABEL_39:
        *&v252 = sub_1AB0C16BC;
        *(&v252 + 1) = v52;
        v53 = _Block_copy(&aBlock);

        [v240 setExceptionHandler_];
LABEL_40:
        _Block_release(v53);
        return;
      }

      v107 = *(v104 + 8 * v110);
      ++v109;
      if (v107)
      {
        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    v12 = sub_1AB05303C(0, *(v12 + 16) + 1, 1, v12);
    *(i + 40) = v12;
LABEL_167:
    v176 = *(v12 + 16);
    v175 = *(v12 + 24);
    if (v176 >= v175 >> 1)
    {
      v12 = sub_1AB05303C((v175 > 1), v176 + 1, 1, v12);
    }

    *(v12 + 16) = v176 + 1;
    sub_1AB014B78(&v246, (v12 + 32 * v176 + 32));
    *(i + 40) = v12;
    swift_endAccess();

    sub_1AB05314C(&aBlock);
    goto LABEL_171;
  }

  v237 = [v233 valueWithNewObjectInContext_];
  if (!v237)
  {
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  v54 = 1 << *(v239 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v239 + 64);
  v57 = (v54 + 63) >> 6;
  p_aBlock = &aBlock;

  v59 = 0;
  if (!v56)
  {
LABEL_46:
    if (v57 <= v59 + 1)
    {
      v61 = v59 + 1;
    }

    else
    {
      v61 = v57;
    }

    v62 = v61 - 1;
    while (1)
    {
      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v60 >= v57)
      {
        v56 = 0;
        *&v249 = 0;
        v247 = 0u;
        v248 = 0u;
        v246 = 0u;
        goto LABEL_54;
      }

      v56 = *(i + 8 * v60);
      ++v59;
      if (v56)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_173:

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v179 = swift_allocObject();
    swift_weakInit();
    v180 = swift_allocObject();
    *(v180 + 16) = v179;
    *(v180 + 24) = 0;
    *&v253 = sub_1AB2241D4;
    *(&v253 + 1) = v180;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v52 = &block_descriptor_441;
    goto LABEL_39;
  }

  while (1)
  {
    v60 = v59;
LABEL_53:
    v63 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v64 = v63 | (v60 << 6);
    v65 = (*(v239 + 48) + 16 * v64);
    v67 = *v65;
    v66 = v65[1];
    sub_1AB01494C(*(v239 + 56) + 40 * v64, &v256);
    *&v246 = v67;
    *(&v246 + 1) = v66;
    sub_1AB0149B0(&v256, &v247);

    v62 = v60;
LABEL_54:
    aBlock = v246;
    v252 = v247;
    v253 = v248;
    *&v254 = v249;
    v12 = *(&v246 + 1);
    if (!*(&v246 + 1))
    {
      break;
    }

    v68 = sub_1AB460514();
    v69 = [v241 valueForProperty_];

    if (!v69)
    {
      __break(1u);
LABEL_218:
      swift_once();
      goto LABEL_175;
    }

    v70 = v69;
    v71 = sub_1AB460514();

    [v237 setValue:v70 forProperty:v71];

    __swift_destroy_boxed_opaque_existential_1Tm(&v252);
    v59 = v62;
    if (!v56)
    {
      goto LABEL_46;
    }
  }

  v72 = *(a2 + 72);
  v75 = *(v72 + 64);
  v74 = v72 + 64;
  v73 = v75;
  v76 = 1 << *(*(a2 + 72) + 32);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & v73;
  v79 = (v76 + 63) >> 6;
  v242 = v238 + 56;
  v236 = *(a2 + 72);

  v4 = 0;
  while (1)
  {
    if (v78)
    {
      v80 = v4;
LABEL_75:
      v83 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v84 = v83 | (v80 << 6);
      v85 = (*(v236 + 48) + 16 * v84);
      v87 = *v85;
      v86 = v85[1];
      sub_1AB01494C(*(v236 + 56) + 40 * v84, &v256);
      *&aBlock = v87;
      *(&aBlock + 1) = v86;
      sub_1AB0149B0(&v256, &v252);
    }

    else
    {
      v81 = v79 <= (v4 + 1) ? v4 + 1 : v79;
      v82 = (v81 - 1);
      while (1)
      {
        v80 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_203;
        }

        if (v80 >= v79)
        {
          break;
        }

        v78 = *(v74 + 8 * v80);
        ++v4;
        if (v78)
        {
          v4 = v80;
          goto LABEL_75;
        }
      }

      v78 = 0;
      *&v254 = 0;
      v252 = 0u;
      v253 = 0u;
      v4 = v82;
      aBlock = 0u;
    }

    v246 = aBlock;
    v247 = v252;
    v248 = v253;
    *&v249 = v254;
    v88 = *(&aBlock + 1);
    if (!*(&aBlock + 1))
    {
      break;
    }

    v89 = v246;
    sub_1AB0149B0(&v247, &v256);
    v90 = *(&v257 + 1);
    i = v258;
    __swift_project_boxed_opaque_existential_1Tm(&v256, *(&v257 + 1));
    v91 = (*(i + 16))(v240, v90, i);
    if (v245)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v256);
      v126 = swift_allocObject();
      swift_weakInit();
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = 0;
      *&v253 = sub_1AB2241D4;
      *(&v253 + 1) = v127;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v52 = &block_descriptor_497;
      goto LABEL_39;
    }

    v245 = 0;
    v92 = v91;
    v93 = sub_1AB460514();
    [v237 setValue:v92 forProperty:v93];

    if (*(v238 + 16) && (sub_1AB4620A4(), sub_1AB460684(), v94 = sub_1AB462104(), v95 = -1 << *(v238 + 32), v96 = v94 & ~v95, ((*(v242 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) != 0))
    {
      v97 = ~v95;
      while (1)
      {
        v98 = (*(v238 + 48) + 16 * v96);
        v99 = *v98 == v89 && v98[1] == v88;
        if (v99 || (sub_1AB461DA4() & 1) != 0)
        {
          break;
        }

        v96 = (v96 + 1) & v97;
        if (((*(v242 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      v100 = sub_1AB460514();
      v101 = [v237 valueForProperty_];

      if (!v101)
      {
        goto LABEL_222;
      }

      v102 = v101;
      v103 = sub_1AB460514();

      [v241 setValue:v102 forProperty:v103];
    }

    else
    {
LABEL_63:
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v256);
  }

  v119 = *(a2 + 80);
  v12 = *(v119 + 16);
  v226 = v119;
  if (v12)
  {
    v120 = sub_1AB1AFEFC(v12, 0);
    v121 = sub_1AB1B1168(&aBlock, v120 + 4, v12, v119);
    i = v252;

    sub_1AB0309A4();
    v122 = v238;
    if (v121 != v12)
    {
      goto LABEL_215;
    }

    v123 = &unk_1E794B000;
    v124 = &unk_1E794B000;
    v125 = v120;
    goto LABEL_112;
  }

LABEL_111:
  v125 = MEMORY[0x1E69E7CC0];
  v122 = v238;
  v123 = &unk_1E794B000;
  v124 = &unk_1E794B000;
LABEL_112:
  v234 = v125 + 4;
  v235 = v125;
  p_aBlock = v125[2];
  if (!p_aBlock)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_135;
  }

  v134 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v135 = v134;
    while (1)
    {
      if (v135 >= v125[2])
      {
        goto LABEL_212;
      }

      v134 = (v135 + 1);
      if (*(v122 + 16))
      {
        break;
      }

LABEL_116:
      v135 = v134;
      if (v134 == p_aBlock)
      {
        goto LABEL_135;
      }
    }

    v136 = &v234[2 * v135];
    v138 = *v136;
    v137 = v136[1];
    sub_1AB4620A4();

    sub_1AB460684();
    v139 = sub_1AB462104();
    v140 = -1 << *(v122 + 32);
    v12 = v139 & ~v140;
    if (((*(v242 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_115:

      v124 = &unk_1E794B000;
      v125 = v235;
      goto LABEL_116;
    }

    i = ~v140;
    while (1)
    {
      v141 = (*(v122 + 48) + 16 * v12);
      v142 = *v141 == v138 && v141[1] == v137;
      if (v142 || (sub_1AB461DA4() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & i;
      if (((*(v242 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    v143 = swift_isUniquelyReferenced_nonNull_native();
    *&v246 = v4;
    if ((v143 & 1) == 0)
    {
      v12 = &v246;
      sub_1AB03BD38(0, *(v4 + 16) + 1, 1);
      v4 = v246;
    }

    i = *(v4 + 16);
    v144 = *(v4 + 24);
    if (i >= v144 >> 1)
    {
      v12 = &v246;
      sub_1AB03BD38((v144 > 1), i + 1, 1);
      v4 = v246;
    }

    *(v4 + 16) = i + 1;
    v145 = (v4 + 16 * i);
    *(v145 + 4) = v138;
    *(v145 + 5) = v137;
    v123 = &unk_1E794B000;
    v124 = &unk_1E794B000;
    v125 = v235;
  }

  while (v134 != p_aBlock);
LABEL_135:
  *&aBlock = v4;
  v228 = v4;

  v146 = v240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  v147 = [v233 v124[383]];
  swift_unknownObjectRelease();
  if (!v147)
  {
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  v4 = "v24@?0@JSContext8@JSValue16";
  v148 = v147;
  v149 = sub_1AB460514();
  [v241 setValue:v148 forProperty:v149];

  *&aBlock = v235;

  v150 = [v233 valueWithObject:sub_1AB461F94() inContext:v146];
  swift_unknownObjectRelease();
  v232 = v146;

  if (!v150)
  {
    goto LABEL_227;
  }

  v12 = v150;
  v151 = sub_1AB460514();
  [v237 setValue:v12 forProperty:v151];

  if (p_aBlock)
  {
    v4 = 0;
    i = -1;
    v69 = v235;
    while (v4 < v69[2])
    {
      v152 = &v234[2 * v4];
      v154 = *v152;
      v153 = v152[1];

      v155 = [v233 v123[432]];
      if (!v155)
      {
        __break(1u);
        goto LABEL_220;
      }

      v12 = v155;
      v156 = sub_1AB460514();
      [v237 setValue:v12 forProperty:v156];

      if (*(v122 + 16) && (sub_1AB4620A4(), sub_1AB460684(), v157 = sub_1AB462104(), v158 = -1 << *(v122 + 32), v12 = v157 & ~v158, ((*(v242 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v159 = ~v158;
        while (1)
        {
          v160 = (*(v122 + 48) + 16 * v12);
          v161 = *v160 == v154 && v160[1] == v153;
          if (v161 || (sub_1AB461DA4() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v159;
          if (((*(v242 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_139;
          }
        }

        v162 = sub_1AB460514();
        v163 = [v237 valueForProperty_];

        if (!v163)
        {
          goto LABEL_223;
        }

        v12 = v163;
        v164 = sub_1AB460514();

        [v241 setValue:v12 forProperty:v164];
      }

      else
      {
LABEL_139:
      }

      ++v4;
      v69 = v235;
      if (v4 == p_aBlock)
      {
        goto LABEL_156;
      }
    }

    goto LABEL_213;
  }

  v69 = v235;
LABEL_156:
  v165 = *(a2 + 24);
  v166 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1Tm(a2, v165);
  v4 = v232;
  v167 = sub_1AB0531A0(v232, v165, v166);
  if (v245)
  {

    v168 = swift_allocObject();
    swift_weakInit();
    v169 = swift_allocObject();
    *(v169 + 16) = v168;
    *(v169 + 24) = 0;
    *&v253 = sub_1AB2241D4;
    *(&v253 + 1) = v169;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v133 = &block_descriptor_473;
    goto LABEL_158;
  }

  if (!*(v226 + 16))
  {
LABEL_204:

    v210 = sub_1AB460514();
    v211 = [v241 valueForProperty_];

    if (v211)
    {
      *(&v252 + 1) = &type metadata for JSStrongReference;
      *&v253 = &protocol witness table for JSStrongReference;
      *&aBlock = v211;
      v4 = &aBlock;
      JSCallable.init(_:)(&aBlock, &v256);
      if (!*(&v257 + 1))
      {
        sub_1AB014AC0(&v256, &qword_1EB438A30);
        sub_1AB0C3EF0();
        swift_allocError();
        LOBYTE(aBlock) = 1;
        *v220 = 0xD00000000000001FLL;
        *(v220 + 8) = 0x80000001AB504B80;
        *(v220 + 16) = 0;
        *(v220 + 24) = 1;
        *(v220 + 32) = 0;
        *(v220 + 40) = 1;
        *(v220 + 48) = 0u;
        *(v220 + 64) = 0u;
        *(v220 + 80) = 0u;
        *(v220 + 96) = 0;
        swift_willThrow();

        v221 = swift_allocObject();
        swift_weakInit();
        v222 = swift_allocObject();
        *(v222 + 16) = v221;
        *(v222 + 24) = 0;
        *&v253 = sub_1AB2241D4;
        *(&v253 + 1) = v222;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v252 = sub_1AB0C16BC;
        *(&v252 + 1) = &block_descriptor_481;
        v53 = _Block_copy(&aBlock);

        [v232 setExceptionHandler_];
        goto LABEL_40;
      }

      v246 = v256;
      v247 = v257;
      *&v248 = v258;
      v212 = sub_1AB460514();
      v213 = [v241 valueForProperty_];

      i = v231;
      if (v213)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
        v214 = swift_allocObject();
        *(v214 + 16) = xmmword_1AB4D4720;
        *(v214 + 56) = sub_1AB016760(0, &qword_1ED4D1B98);
        *(v214 + 32) = v237;
        v215 = v237;
        v216.super.isa = JSCallable.call(withArguments:)(v214).super.isa;
        v4 = v232;
        if (!v217)
        {
          isa = v216.super.isa;

          v224 = isa;
          v225 = sub_1AB460514();
          [v213 setValue:v224 forProperty:v225];

          sub_1AB087F9C(&v246);
          goto LABEL_165;
        }

        sub_1AB087F9C(&v246);

        v218 = swift_allocObject();
        swift_weakInit();
        v219 = swift_allocObject();
        *(v219 + 16) = v218;
        *(v219 + 24) = 0;
        *&v253 = sub_1AB2241D4;
        *(&v253 + 1) = v219;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v133 = &block_descriptor_489;
LABEL_158:
        *&v252 = sub_1AB0C16BC;
        *(&v252 + 1) = v133;
        v53 = _Block_copy(&aBlock);

        [v4 setExceptionHandler_];
        goto LABEL_40;
      }

LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    goto LABEL_229;
  }

  v170 = [v232 globalObject];
  if (!v170)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v171 = v170;
  v172 = sub_1AB460514();
  v173 = [v171 valueForProperty_];

  if (!v173)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v12 = [v173 toBool];
  if (v12)
  {
    goto LABEL_204;
  }

  v68 = 0;
  if (qword_1EB435CE0 != -1)
  {
    goto LABEL_218;
  }

LABEL_175:
  v4 = qword_1EB46C2E8;
  os_unfair_lock_lock((qword_1EB46C2E8 + 56));
  sub_1AB21BB14((v4 + 16));
  if (!v68)
  {
    v181 = 0;
    os_unfair_lock_unlock((v4 + 56));
    if (!p_aBlock)
    {
      goto LABEL_204;
    }

    i = 0;
    v227 = OBJC_IVAR____TtC9JetEngine14JSLazyProvider_lazyDependencies;
    v4 = v229;
    while (2)
    {
      if (i >= v69[2])
      {
        goto LABEL_214;
      }

      v182 = &v234[2 * i];
      v183 = *v182;
      v184 = v182[1];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v186 = Strong;
        v187 = *(v4 + v227);
        v188 = *(v187 + 16);

        if (v188)
        {
          v189 = sub_1AB014DB4(v183, v184);
          if (v190)
          {
            v191 = *(*(v187 + 56) + 16 * v189);

            v191(&aBlock);
            v192 = *(&v252 + 1);
            v193 = v253;
            __swift_project_boxed_opaque_existential_1Tm(&aBlock, *(&v252 + 1));
            v194 = (*(v193 + 16))(v186, v192, v193);
            v207 = 0;
            v208 = v194;

            __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
            v209 = v208;
            v69 = v235;
LABEL_188:
            v195 = v209;
            v196 = sub_1AB460514();
            [v237 setValue:v195 forProperty:v196];

            if (*(v238 + 16))
            {
              sub_1AB4620A4();
              sub_1AB460684();
              v197 = sub_1AB462104();
              v198 = -1 << *(v238 + 32);
              v199 = v197 & ~v198;
              if ((*(v242 + ((v199 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v199))
              {
                v200 = ~v198;
                v181 = v207;
                while (1)
                {
                  v201 = (*(v238 + 48) + 16 * v199);
                  v202 = *v201 == v183 && v201[1] == v184;
                  if (v202 || (sub_1AB461DA4() & 1) != 0)
                  {
                    break;
                  }

                  v199 = (v199 + 1) & v200;
                  if (((*(v242 + ((v199 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v199) & 1) == 0)
                  {
                    goto LABEL_201;
                  }
                }

                v4 = v207;
                v203 = sub_1AB460514();
                v204 = [v237 valueForProperty_];

                if (!v204)
                {
                  goto LABEL_228;
                }

                v205 = v204;
                v206 = sub_1AB460514();

                [v241 setValue:v205 forProperty:v206];

                v181 = v207;
              }

              else
              {
                v181 = v207;
LABEL_201:
              }
            }

            else
            {

              v181 = v207;
            }

            ++i;
            v12 = v228;
            v4 = v229;
            if (i == p_aBlock)
            {
              goto LABEL_204;
            }

            continue;
          }
        }
      }

      else
      {
      }

      break;
    }

    v4 = v233;

    sub_1AB428538("JetEngine/JSLazyProvider.swift", 30, 2, 62, v183, v184);

    v69 = v235;
    v207 = v181;
    v209 = [v233 valueWithNewObjectInContext_];
    if (!v209)
    {
      goto LABEL_225;
    }

    goto LABEL_188;
  }

LABEL_233:
  os_unfair_lock_unlock((v4 + 56));
  __break(1u);
}

unint64_t sub_1AB215270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4DE180;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001AB5049C0;
  *(inited + 72) = &type metadata for JSCalculatedValue;
  *(inited + 80) = &protocol witness table for JSCalculatedValue;
  *(inited + 48) = sub_1AB21D568;
  *(inited + 56) = 0;
  strcpy((inited + 88), "exportService");
  *(inited + 102) = -4864;
  *(inited + 128) = &type metadata for JSCalculatedValue;
  *(inited + 136) = &protocol witness table for JSCalculatedValue;
  *(inited + 104) = sub_1AB21D5B8;
  *(inited + 112) = 0;
  strcpy((inited + 144), "cryptography");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v1 = type metadata accessor for JSCryptoObject();
  v2 = [objc_allocWithZone(v1) init];
  *(inited + 184) = v1;
  *(inited + 192) = &off_1F20187F8;
  *(inited + 160) = v2;
  *(inited + 200) = 1953722216;
  *(inited + 208) = 0xE400000000000000;
  v3 = type metadata accessor for JSHostObject();
  v4 = [objc_allocWithZone(v3) init];
  *(inited + 240) = v3;
  *(inited + 248) = &off_1F2019460;
  *(inited + 216) = v4;
  *(inited + 256) = 0x796669746F6ELL;
  *(inited + 264) = 0xE600000000000000;
  v5 = type metadata accessor for JSNotifyObject();
  v6 = [objc_allocWithZone(v5) init];
  *(inited + 296) = v5;
  *(inited + 304) = &off_1F2014808;
  *(inited + 272) = v6;
  *(inited + 312) = 0x7473696C70;
  *(inited + 320) = 0xE500000000000000;
  v7 = type metadata accessor for JSPlistObject();
  v8 = [objc_allocWithZone(v7) init];
  *(inited + 352) = v7;
  *(inited + 360) = &off_1F1FFCD10;
  *(inited + 328) = v8;
  *(inited + 368) = 0x6D6F646E6172;
  *(inited + 376) = 0xE600000000000000;
  v9 = type metadata accessor for JSRandomObject();
  v10 = [objc_allocWithZone(v9) init];
  *(inited + 408) = v9;
  *(inited + 416) = &off_1F200C840;
  *(inited + 384) = v10;
  v11 = sub_1AB1DA9BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438158);
  swift_arrayDestroy();
  v22 = type metadata accessor for JSPlatformUnavailableObject();
  v23 = &off_1F20116A0;
  *&v21 = [objc_allocWithZone(v22) init];
  sub_1AB0149B0(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v11;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  sub_1AB220210(*v16, 0x6D726F6674616C70, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v19;
}

uint64_t static JSStack.makeConfiguration(asPartOf:virtualMachine:configuration:customPrerequisites:qualityOfService:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a3 + 1);
  LOBYTE(v12) = *a3;
  BYTE1(v12) = v9;
  v13 = *(a3 + 8);
  v10 = sub_1AB0456A0(a1, &v12);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v12 = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB0472B0(*(a1 + 16), &v12);
  swift_task_localValuePop();
  static JSStack.makeConfiguration(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:)(v10, a4, &v12, a2, a5);
  sub_1AB014AC0(&v12, &qword_1EB4389B0);
}

id static JSStack.makeConfiguration(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1AB2158F0(a1, v33);
  if (!v5)
  {
    v12 = sub_1AB2210E0(a1);
    v13 = sub_1AB221758(a1);
    v14 = sub_1AB050708(a1);
    sub_1AB01494C(v33, v19);
    v26 = MEMORY[0x1E69E7CD0];
    memset(v28, 0, sizeof(v28));
    v29 = 0;
    v30 = 1;
    sub_1AB01494C(v19, v20);
    v23 = v12;
    v24 = sub_1AB0AC3E0(MEMORY[0x1E69E7CC0]);
    result = [objc_allocWithZone(MEMORY[0x1E696EB60]) init];
    if (result)
    {
      v15 = result;
      v25 = result;
      v27 = 0;
      v31 = 0x747865746E6F63;
      v32 = 0xE700000000000000;
      v16 = type metadata accessor for NoOpIntentCache();
      v17 = swift_allocObject();
      v22 = v16;
      v21 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v29 = a2;
      v30 = 0;
      v18 = a4;

      v25 = v18;
      sub_1AB2207C4(v20, v19);

      v19[12] = v13;
      sub_1AB220890(v20);
      sub_1AB2207C4(v19, v20);
      sub_1AB2207FC(a3, v28);
      sub_1AB220890(v19);
      sub_1AB2207C4(v20, a5);

      *(a5 + 80) = v14;
      return sub_1AB220890(v20);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AB2158F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1AB054B5C(v4, &v19);
      *&v16[9] = *(v20 + 9);
      v15 = v19;
      *v16 = v20[0];
      if (BYTE8(v20[1]))
      {
        sub_1AB0508F0(&v15);
      }

      else
      {
        sub_1AB0149B0(&v15, v17);
        sub_1AB0149B0(v17, v18);
        sub_1AB0149B0(v18, &v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1AB2B101C(0, v5[2] + 1, 1, v5);
        }

        v7 = v5[2];
        v6 = v5[3];
        if (v7 >= v6 >> 1)
        {
          v5 = sub_1AB2B101C((v6 > 1), v7 + 1, 1, v5);
        }

        v5[2] = v7 + 1;
        sub_1AB0149B0(&v15, &v5[5 * v7 + 4]);
      }

      v4 += 48;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v8 = v5[2];
  if (v8 == 1)
  {
    sub_1AB01494C((v5 + 4), a2);
  }

  else
  {

    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    *&v15 = v8;
    v10 = sub_1AB461C44();
    v12 = v11;

    *&v19 = v10;
    *(&v19 + 1) = v12;
    MEMORY[0x1AC59BA20](0xD00000000000002DLL, 0x80000001AB504940);

    MEMORY[0x1AC59BA20](0xD00000000000004BLL, 0x80000001AB504970);

    v13 = v19;
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(v19) = 1;
    LOBYTE(v15) = 1;
    *v14 = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 25) = v19;
    *(v14 + 28) = *(&v19 + 3);
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    *(v14 + 41) = v15;
    *(v14 + 44) = *(&v15 + 3);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0;
    return swift_willThrow();
  }
}

id sub_1AB215B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v10[4] = sub_1AB088B60;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1AB054BC4;
  v10[3] = &block_descriptor_384;
  v7 = _Block_copy(v10);

  result = [objc_opt_self() valueWithObject:v7 inContext:a1];
  if (result)
  {
    v9 = result;
    _Block_release(v7);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JSStack.__allocating_init(prerequisites:sentryConfiguration:virtualMachine:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  JSStack.init(prerequisites:sentryConfiguration:virtualMachine:)(a1, a2, a3);
  return v6;
}

uint64_t JSStack.__allocating_init(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  sub_1AB2228A4(a1, a2, a3, a4);
  v9 = v8;

  return v9;
}

uint64_t JSStack.init(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AB2228A4(a1, a2, a3, a4);
  v6 = v5;

  return v6;
}

uint64_t JSStack.__allocating_init(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_allocObject();
  sub_1AB047C28(a1, a2, a3, a4, a5);
  v11 = v10;

  return v11;
}

uint64_t JSStack.init(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1AB047C28(a1, a2, a3, a4, a5);
  v7 = v6;

  return v7;
}

uint64_t JSStack.deinit()
{
  v1 = v0;
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v2 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v2[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v1 + 160))
  {
    v4 = *(v1 + 32);

    v5 = v4;
    sub_1AB216048(v5);
  }

LABEL_9:
  v6 = *(v1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v6;

  sub_1AB0484A4(nullsub_1, v7);

  sub_1AB44411C();

  sub_1AB014AC0(v1 + 48, &qword_1EB4389B0);

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 168);
  sub_1AB0177B8(*(v1 + 200));
  return v1;
}

char *sub_1AB216048(void *a1)
{
  v2 = v1;
  if (qword_1EB4358A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB4358A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v47 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x80000001AB504470;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = [a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AB460544();
    v11 = v10;

    v12 = MEMORY[0x1E69E6158];
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v45[2] = 0;
  }

  v45[0] = v9;
  v45[1] = v11;
  v46 = v12;
  sub_1AB014A58(v45, v41, &unk_1EB437E60);
  v42 = 0u;
  v43 = 0u;
  sub_1AB0169C4(v41, &v42);
  v44 = 0;
  v13 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v42;
  v18 = v43;
  v16[64] = v44;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v47 = v13;
  sub_1AB014AC0(v45, &unk_1EB437E60);
  v19._countAndFlagsBits = 0xD00000000000002BLL;
  v19._object = 0x80000001AB5044A0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v20 = *(v2 + 16);
  os_unfair_lock_lock(v20 + 5);
  os_unfair_lock_opaque = v20[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v20 + 5);
  v46 = MEMORY[0x1E69E72F0];
  LODWORD(v45[0]) = os_unfair_lock_opaque;
  sub_1AB014A58(v45, v41, &unk_1EB437E60);
  v42 = 0u;
  v43 = 0u;
  sub_1AB0169C4(v41, &v42);
  v44 = 0;
  v22 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
    v47 = v22;
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[40 * v24];
  v26 = v42;
  v27 = v43;
  v25[64] = v44;
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  v47 = v22;
  sub_1AB014AC0(v45, &unk_1EB437E60);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  *(v5 + 32) = v47;
  v29 = sub_1AB461094();
  if (os_log_type_enabled(v4, v29))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v30 = MEMORY[0x1E69E6158];
    v31 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v31[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v31 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v33 = swift_allocObject();
    *(v33 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v42 = v5;
    *(&v42 + 1) = sub_1AB0223E4;
    *&v43 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v34 = sub_1AB460484();
    v36 = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1AB4D4720;
    *(v37 + 56) = v30;
    *(v37 + 64) = sub_1AB016854();
    *(v37 + 32) = v34;
    *(v37 + 40) = v36;
    sub_1AB45FF14();
  }

  os_unfair_lock_lock(v20 + 5);
  v38 = v20[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v20 + 5);
  if (v38)
  {
    os_unfair_lock_lock(v20 + 5);
    v39 = v20[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v20 + 5);
    notify_cancel(v39);
    os_unfair_lock_lock(v20 + 5);
    v20[4]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v20 + 5);
  }

  return sub_1AB220930(0xD000000000000014, 0x80000001AB5044D0, a1);
}

uint64_t JSStack.__deallocating_deinit()
{
  JSStack.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB2165B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 200);
  v5 = *(v3 + 208);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AB2235D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AB04B604(v4);
}

uint64_t sub_1AB21664C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AB223598;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 200);
  *(v7 + 200) = v6;
  *(v7 + 208) = v5;
  sub_1AB04B604(v3);
  return sub_1AB0177B8(v8);
}

uint64_t JSStack.exceptionObserver.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  sub_1AB04B604(v1);
  return v1;
}

uint64_t JSStack.exceptionObserver.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 200);
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return sub_1AB0177B8(v5);
}

void sub_1AB216800(void *a1, int a2)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_1AB4601B4();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601F4();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    JSError.init(_:)(a1, &v38);
    sub_1AB016760(0, &qword_1ED4D2060);
    v30 = sub_1AB461124();
    v11 = swift_allocObject();
    v12 = v40;
    *(v11 + 72) = v41;
    v13 = v43;
    *(v11 + 88) = v42;
    *(v11 + 104) = v13;
    v14 = v39;
    *(v11 + 24) = v38;
    *(v11 + 40) = v14;
    *(v11 + 16) = v3;
    *(v11 + 120) = v44;
    *(v11 + 56) = v12;
    v37[4] = sub_1AB223F78;
    v37[5] = v11;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 1107296256;
    v37[2] = sub_1AB01D528;
    v37[3] = &block_descriptor_312;
    v15 = _Block_copy(v37);

    sub_1AB2236F0(&v38, v36);
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1AB049958(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
    v16 = v34;
    sub_1AB4614E4();
    v17 = v30;
    MEMORY[0x1AC59C480](0, v10, v7, v15);
    _Block_release(v15);

    (*(v33 + 8))(v7, v16);
    (*(v31 + 8))(v10, v32);

    if (v35)
    {
      sub_1AB0C3EF0();
      v18 = swift_allocError();
      v20 = v39;
      v19 = v40;
      *v21 = v38;
      *(v21 + 16) = v20;
      *(v21 + 32) = v19;
      v23 = v42;
      v22 = v43;
      v24 = v41;
      *(v21 + 96) = v44;
      *(v21 + 64) = v23;
      *(v21 + 80) = v22;
      *(v21 + 48) = v24;
      sub_1AB2236F0(&v38, v36);
      if (qword_1EB432A60 != -1)
      {
        swift_once();
      }

      sub_1AB216D98(v18, qword_1EB46BDE0, *algn_1EB46BDE8, qword_1EB46BDF0);
      sub_1AB1A9E68(&v38);
    }

    else
    {
      v25 = swift_allocObject();
      v26 = v40;
      *(v25 + 72) = v41;
      v27 = v43;
      *(v25 + 88) = v42;
      *(v25 + 104) = v27;
      v28 = v39;
      *(v25 + 24) = v38;
      *(v25 + 40) = v28;
      *(v25 + 16) = v3;
      *(v25 + 120) = v44;
      *(v25 + 56) = v26;

      sub_1AB2236F0(&v38, v36);
      sub_1AB0484A4(sub_1AB223FEC, v25);
      sub_1AB1A9E68(&v38);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB216C94(uint64_t a1, uint64_t a2)
{
  sub_1AB460BA4();
  sub_1AB460B94();
  sub_1AB460AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v4 = *(a1 + 200);
  if (v4)
  {
    v5 = *(a2 + 80);
    v9[4] = *(a2 + 64);
    v9[5] = v5;
    v10 = *(a2 + 96);
    v6 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v6;
    v7 = *(a2 + 48);
    v9[2] = *(a2 + 32);
    v9[3] = v7;

    v4(a1, v9);
    sub_1AB0177B8(v4);
  }
}

void sub_1AB216D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AB014A58(v4 + 48, &v43, &qword_1EB4389B0);
  v9 = v44;
  sub_1AB014AC0(&v43, &qword_1EB4389B0);
  if (v9)
  {
    v42 = a1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (!swift_dynamicCast())
    {
      v15 = a1;
      sub_1AB238F00(a1, &v43);
      sub_1AB21B6E0(&v43, a2, a3, a4);
      sub_1AB22369C(&v43);
      return;
    }

    v32 = v39;
    v33 = v40;
    v34 = v41;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v11 = v40;
    if (v40)
    {
      v12 = sub_1AB460514();
      v13 = [v40 valueForProperty_];

      if (!v13)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      if ([v13 isBoolean])
      {
        v14 = [v13 toBool];

        if (v14)
        {
LABEL_15:
          sub_1AB1A9E68(&v28);
          return;
        }
      }

      else
      {
      }
    }

    v25 = v32;
    v26 = v33;
    v27 = v34;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    sub_1AB2236F0(&v28, &v43);
    sub_1AB238C48(&v21, &v43);
    sub_1AB21B6E0(&v43, a2, a3, a4);
    sub_1AB22369C(&v43);
    if (!v11)
    {
      goto LABEL_15;
    }

    v16 = v11;
    v17 = [v16 context];
    v18 = [objc_opt_self() valueWithBool:1 inContext:v17];

    if (v18)
    {
      v19 = v18;
      v20 = sub_1AB460514();
      [v16 setValue:v19 forProperty:v20];

      sub_1AB1A9E68(&v28);
      return;
    }

    goto LABEL_17;
  }
}

void sub_1AB217280(uint64_t a1, uint64_t a2)
{
  sub_1AB0C3EF0();
  v3 = swift_allocError();
  v5 = *(a2 + 16);
  v4 = *(a2 + 32);
  *v6 = *a2;
  *(v6 + 16) = v5;
  *(v6 + 32) = v4;
  v8 = *(a2 + 64);
  v7 = *(a2 + 80);
  v9 = *(a2 + 48);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 64) = v8;
  *(v6 + 80) = v7;
  *(v6 + 48) = v9;
  sub_1AB2236F0(a2, v10);
  if (qword_1EB432A60 != -1)
  {
    swift_once();
  }

  sub_1AB216D98(v3, qword_1EB46BDE0, *algn_1EB46BDE8, qword_1EB46BDF0);
}

char *JSStack.withUnsafeContext<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Promise();
  v4 = Promise.__allocating_init()();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = sub_1AB222E20;
  v7[4] = v5;

  sub_1AB0484A4(sub_1AB0545C8, v7);

  return v4;
}

void sub_1AB217478(uint64_t a1, uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v4);
  v3 = v4;
  sub_1AB08BBE8(v4);
}

uint64_t sub_1AB217598(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7(v4);
  Promise.resolve(_:)(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_1AB2176D4(void *a1)
{
  JSRemoteInspectorSetLogToSystemConsole();
  [a1 setInspectable_];
  v2 = CFRunLoopGetCurrent();
  [a1 _setDebuggerRunLoop_];
}

uint64_t JSStack.evaluate(script:against:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for JSSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1AB053F94(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSSource);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1AB053FFC(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for JSSource);
  *(v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389D8);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = 0;
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = sub_1AB222E2C;
  v12[4] = v8;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_1AB222ED8;
  v14[4] = v12;
  v15 = a2;

  sub_1AB0484A4(sub_1AB0545C8, v14);

  return v9;
}

uint64_t JSStack.notify(withName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = 0;
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = sub_1AB222EE4;
  v8[4] = v4;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = sub_1AB222F00;
  v10[4] = v8;

  sub_1AB0484A4(sub_1AB0545C8, v10);

  return v5;
}

{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB21D1CC, 0, 0);
}

void sub_1AB217B60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 globalObject];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1AB460514();
    v9 = [v7 valueForProperty_];

    if (v9)
    {

      v10 = [v9 toObject];
      if (v10)
      {
        sub_1AB461494();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16[0] = v14;
      v16[1] = v15;
      if (*(&v15 + 1))
      {
        type metadata accessor for JSNotifyObject();
        if (swift_dynamicCast())
        {
          *&v16[0] = a2;
          *(&v16[0] + 1) = a3;

          v11 = sub_1AB461F94();
          v12 = [objc_opt_self() valueWithObject:v11 inContext:a1];
          swift_unknownObjectRelease();
          if (v12)
          {
            sub_1AB3C1D64(v12);

            return;
          }

          goto LABEL_14;
        }
      }

      else
      {
        sub_1AB014AC0(v16, &unk_1EB437E60);
      }

      sub_1AB0C3EF0();
      swift_allocError();
      LOBYTE(v17) = 1;
      *v13 = 0xD000000000000025;
      *(v13 + 8) = 0x80000001AB504440;
      *(v13 + 16) = 0;
      *(v13 + 24) = 1;
      *(v13 + 32) = 0;
      *(v13 + 40) = 1;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0;
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1AB217D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = [a1 globalObject];
  if (!v12)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  v14 = sub_1AB460514();
  v15 = [v13 valueForProperty_];

  if (!v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = sub_1AB460514();
  v17 = [v15 valueForProperty_];

  if (!v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ([v17 isObject] && (objc_msgSend(v17, sel_isNull) & 1) == 0)
  {
    v26 = sub_1AB460514();
    v27 = [v17 valueForProperty_];

    if (v27)
    {
      v53 = sub_1AB016760(0, &unk_1ED4D1030);
      v52[0] = a1;
      v28 = type metadata accessor for JSConditionalReference();
      v29 = swift_allocObject();
      sub_1AB0165C4(v52, v51);
      v30 = sub_1AB016760(0, &qword_1ED4D1B98);
      v31 = a1;
      if (swift_dynamicCast())
      {

        sub_1AB40EE18("JetEngine/JSConditionalReference.swift", 0x26uLL, 2, 0x1AuLL);
      }

      v32 = [objc_opt_self() managedValueWithValue:v27 andOwner:v31];
      if (v32)
      {
        *(v29 + 16) = v32;
        __swift_destroy_boxed_opaque_existential_1Tm(v52);

        v53 = v28;
        v54 = &protocol witness table for JSConditionalReference;
        v52[0] = v29;
        JSCallable.init(_:)(v52, &v55);
        if (*(&v56 + 1))
        {
          v58[0] = v55;
          v58[1] = v56;
          v59 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AB4D4720;
          v34 = a6[3];
          v35 = a6[4];
          __swift_project_boxed_opaque_existential_1Tm(a6, v34);
          v36 = (*(v35 + 16))(v31, v34, v35);
          *(inited + 56) = v30;
          *(inited + 32) = v36;
          v40.super.isa = JSCallable.call(against:withArguments:)(v17, inited).super.isa;
          if (v41.super.isa)
          {
            isa = v41.super.isa;
            sub_1AB087F9C(v58);

            swift_setDeallocating();
            swift_arrayDestroy();
          }

          else
          {
            v42 = v40.super.isa;
            swift_setDeallocating();
            swift_arrayDestroy();
            if ((a7 & 1) != 0 && [(objc_class *)v42 isUndefined])
            {
              sub_1AB08BBE8(v42);

              sub_1AB087F9C(v58);
              return;
            }

            v43 = v42;
            JSPromise.init(_:)(v43);
            v44 = v55;
            if (v55)
            {
              sub_1AB08B57C(a8);

              sub_1AB087F9C(v58);
              return;
            }

            sub_1AB0C3EF0();
            isa = swift_allocError();
            v46 = v45;
            v47 = v43;
            JSError.init(badValue:expected:)(v47, 0x6573696D6F7250, 0xE700000000000000, v46);
            swift_willThrow();

            sub_1AB087F9C(v58);
          }

          goto LABEL_8;
        }

        sub_1AB014AC0(&v55, &qword_1EB438A30);
        v37 = sub_1AB460514();
        v38 = [v17 valueForProperty_];

        if (v38)
        {
          sub_1AB0C3EF0();
          isa = swift_allocError();
          v23 = v39;
          v21 = v38;
          v22 = 0x6E6F6974636E7546;
          v24 = 0xE800000000000000;
          goto LABEL_7;
        }

LABEL_32:
        __break(1u);
        return;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1AB0C3EF0();
  isa = swift_allocError();
  v20 = v19;
  v21 = v17;
  v17 = v21;
  v22 = 0x65636976726553;
  v23 = v20;
  v24 = 0xE700000000000000;
LABEL_7:
  JSError.init(badValue:expected:)(v21, v22, v24, v23);
  swift_willThrow();

LABEL_8:

  v25 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1AB216D98(isa, a9, a10, v25);
  }

  sub_1AB0C5DB0(isa);
}

uint64_t sub_1AB218390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v41 = a4;
  v42 = a6;
  v43 = a1;
  LODWORD(v9) = a5;
  v39 = a3;
  v40 = a8;
  v50 = a2;
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37[-v15];
  if (qword_1EB435468 != -1)
  {
    swift_once();
  }

  v17 = sub_1AB45FFC4();
  __swift_project_value_buffer(v17, qword_1EB435470);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v18 = sub_1AB45FFA4();
  v19 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v20 = swift_slowAlloc();
    v38 = v9;
    v9 = a7;
    v21 = v20;
    *v20 = 0;
    v22 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v19, v22, "jsStackDeserialization", "", v21, 2u);
    v23 = v21;
    a7 = v9;
    LOBYTE(v9) = v38;
    MEMORY[0x1AC59F020](v23, -1, -1);
  }

  (*(v11 + 16))(v13, v16, v10);
  sub_1AB460014();
  swift_allocObject();
  v24 = sub_1AB460004();
  (*(v11 + 8))(v16, v10);
  if (qword_1EB435548 != -1)
  {
    swift_once();
  }

  JESignpostEmitTrace();
  v26 = v41;
  v25 = v42;
  if (v41)
  {
    if (qword_1EB433928 != -1)
    {
      swift_once();
    }

    v46 = xmmword_1EB46C0E0;
    v47 = byte_1EB46C0F0;
    v48 = qword_1EB46C0F8;
    LOBYTE(v49) = byte_1EB46C100;
    static MonotonicTime.now.getter(&v45);
    v44 = v45;
    PageRenderField<>.startTime(for:at:)(v39, v26, &v44);
  }

  if ((v9 & 1) != 0 && [v25 isUndefined])
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v48 = sub_1AB016760(0, &qword_1ED4D1D80);
    *&v46 = v27;
    v28 = v40;
    v40[3] = &type metadata for FoundationValue;
    v28[4] = &off_1F1FFB5A8;
    v29 = swift_allocObject();
    *v28 = v29;
    sub_1AB014B78(&v46, (v29 + 16));
    goto LABEL_20;
  }

  sub_1AB014A58(a7, &v46, &qword_1EB4389E0);
  v30 = v48;
  if (!v48)
  {
    sub_1AB014AC0(&v46, &qword_1EB4389E0);
    goto LABEL_19;
  }

  v31 = v49;
  __swift_project_boxed_opaque_existential_1Tm(&v46, v48);
  (*(v31 + 8))(&v45, v25, v30, v31);
  LOBYTE(v31) = v45;
  __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  if ((v31 & 1) == 0)
  {
LABEL_19:
    sub_1AB0890D8(v25, v40);
    goto LABEL_20;
  }

  if (sub_1AB356FBC() == 6)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(v25, 1313821514, 0xE400000000000000, v32);
    swift_willThrow();
  }

  else
  {
    v34 = sub_1AB1DF338(v25);
    v35 = v40;
    v40[3] = &type metadata for DirectValue;
    v35[4] = &off_1F1FFB710;
    *v35 = v34;
    *(v35 + 8) = v36;
  }

LABEL_20:
  sub_1AB2237FC(v24, v43, v50);
}

void sub_1AB21886C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 16);
  os_unfair_lock_lock(v7 + 4);
  sub_1AB07CD94(&v11);
  os_unfair_lock_unlock(v7 + 4);
  if ((v11 & 1) == 0)
  {
    sub_1AB1DF74C();
    v8 = swift_allocError();
    v10 = v9;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;

    *v10 = sub_1AB1DF66C() & 1;
    sub_1AB0C64B4(v8);
  }
}

void sub_1AB21894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v53 = a8;
  v50 = a6;
  v48 = a5;
  v49 = a4;
  v51 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for JSResponse();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AB45F244();
  v55 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v26 = *(a2 + 16);
  v58[4] = sub_1AB224290;
  v58[5] = a2;
  v54 = a2;
  os_unfair_lock_lock(v26 + 4);
  sub_1AB2242A8(&v59);
  os_unfair_lock_unlock(v26 + 4);
  if ((v59 & 1) == 0)
  {
    sub_1AB014A58(a3, &v59, &qword_1EB438A18);
    if (BYTE8(v59) == 1)
    {
      sub_1AB014AC0(&v59, &qword_1EB438A18);
      v27 = v25;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v27 = v25;
      if (Strong)
      {
        v29 = Strong;
        CFRunLoopTimerInvalidate(Strong);
      }

      sub_1AB07D300(&v59);
    }

    v44 = v17;
    v47 = a12;
    v46 = a11;
    v45 = a9;
    sub_1AB07BCBC(v49, v27);
    v30 = v50;
    if (v50)
    {
      if (qword_1EB433910 != -1)
      {
        swift_once();
      }

      v59 = xmmword_1EB46C090;
      v60 = byte_1EB46C0A0;
      v61 = qword_1EB46C0A8;
      v62 = byte_1EB46C0B0;
      static MonotonicTime.now.getter(&v57);
      v56 = v57;
      PageRenderField<>.endTime(for:at:)(v48, v30, &v56);
    }

    v31 = *(v55 + 16);
    v50 = v25;
    v31(v22, v25, v20);
    v32 = v51;
    v51 = v20;
    sub_1AB014A58(v32, v16, &unk_1EB437770);
    v33 = v53;
    *v19 = v52;
    *(v19 + 1) = v33;
    *(v19 + 2) = v45;
    *(v19 + 3) = a10;
    v34 = v44;
    v31(&v19[v44[5]], v22, v51);
    sub_1AB014A58(v16, &v19[v34[6]], &unk_1EB437770);

    v35 = MEMORY[0x1E69E7CC0];
    *&v59 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    v36 = sub_1AB07CA28(v16, &v59);

    *&v19[v34[7]] = v36;
    JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB5043D0, &v59);
    v37 = v35;
    v38 = v55;
    v39 = sub_1AB01B220(v37);
    v40 = sub_1AB07C9F8(&v59, v39);
    v41 = v51;
    sub_1AB014AC0(v16, &unk_1EB437770);
    v42 = *(v38 + 8);
    v42(v22, v41);
    *&v19[v34[8]] = v40;
    sub_1AB07C18C(v19);
    sub_1AB04A54C(v19, type metadata accessor for JSResponse);
    if (qword_1EB435560 != -1)
    {
      swift_once();
    }

    *&v59 = 0;
    *&v57 = 0;
    *&v56 = 0;
    v58[0] = 0;
    v43 = sub_1AB460514();
    JESignpostArgumentsFromString(v43, &v59, &v57, &v56, v58);

    JESignpostEmitTrace();
    v42(v50, v41);
  }
}

void sub_1AB218ED4(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v11[4] = sub_1AB224290;
  v11[5] = a2;
  os_unfair_lock_lock(v5 + 4);
  sub_1AB2242A8(&v12);
  os_unfair_lock_unlock(v5 + 4);
  if ((v12 & 1) == 0)
  {
    sub_1AB014A58(a3, &v12, &qword_1EB438A18);
    if (v13 == 1)
    {
      sub_1AB014AC0(&v12, &qword_1EB438A18);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        CFRunLoopTimerInvalidate(Strong);
      }

      sub_1AB07D300(&v12);
    }

    sub_1AB0C64B4(a1);
    if (qword_1EB435560 != -1)
    {
      swift_once();
    }

    v12 = 0;
    v10 = 0;
    v11[0] = 0;
    v9 = 0;
    v8 = sub_1AB460514();
    JESignpostArgumentsFromString(v8, &v12, v11, &v10, &v9);

    JESignpostEmitTrace();
  }
}

uint64_t JSStack.dispatcher<A, B>(for:asPartOf:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB2190D4, 0, 0);
}

uint64_t sub_1AB2190D4()
{
  v1 = v0[3];
  v2 = v0[2];
  v2[3] = v0[4];
  v2[4] = &protocol witness table for JSStack;
  *v2 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t JSStack.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v8 = sub_1AB461354();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(AssociatedTypeWitness - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0CCE60, 0, 0);
}

uint64_t sub_1AB2192A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21939C()
{
  sub_1AB04A54C(*(v0 + 552), type metadata accessor for PageIntentInstrumentation);
  sub_1AB0C6B34(v0 + 160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2194BC()
{
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 632) = 0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 480);
  v4 = *(v0 + 392);
  v5 = *(v0 + 184);
  v6 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 160), v5);
  v7 = (*(v6 + 32))(v5, v6);
  *(v0 + 640) = sub_1AB21EAD4(0x656D69746E757224, 0xE800000000000000, 0x6863746170736964, 0xE800000000000000, v7, v8, *(v0 + 208), *(v0 + 216), v3, v2, v1, v0 + 272, 0, v4);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x1EEE6DFA0](sub_1AB0CFCB8, 0, 0);
}

uint64_t JSStack.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = v6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  *(v7 + 57) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1AB219634, 0, 0);
}

uint64_t sub_1AB219634()
{
  v1 = *(v0 + 57);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1AB2196F0;
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  return JSStack.dispatch<A>(_:objectGraph:configuration:)(v6, v7, v4, v0 + 16, v5, v3);
}

uint64_t sub_1AB2196F0()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  sub_1AB222F0C(v2 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB21982C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t JSStack.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[68] = v6;
  v7[67] = a6;
  v7[66] = a5;
  v7[65] = a4;
  v7[63] = a2;
  v7[64] = a3;
  v7[62] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[69] = AssociatedTypeWitness;
  v9 = sub_1AB461354();
  v7[70] = v9;
  v7[71] = *(v9 - 8);
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = *(AssociatedTypeWitness - 8);
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2199B0, 0, 0);
}

uint64_t sub_1AB2199B0()
{
  sub_1AB0165C4(*(v0 + 544) + 168, v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436748);
  if (!swift_dynamicCast())
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1AB014AC0(v0 + 56, &qword_1EB4389F0);
    sub_1AB428530("JetEngine/JSStack.swift", 23, 2, 1773);
    return sub_1AB461884();
  }

  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 552);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  sub_1AB0149B0((v0 + 56), v0 + 16);
  static StaticIntent._unwrapData<A>(of:)(v3, v5, v4, v2);
  v6 = *(v1 + 48);
  *(v0 + 616) = v6;
  *(v0 + 624) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2, 1, v3) == 1)
  {
    v7 = *(v0 + 584);
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    v10 = *(v0 + 520);
    v11 = *(v8 + 8);
    *(v0 + 632) = v11;
    *(v0 + 640) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v12 = *(v10 + 40);
    sub_1AB014A58(v10, v0 + 136, &qword_1EB4389F8);
    if (*(v0 + 160))
    {
      sub_1AB0149B0((v0 + 136), v0 + 96);
    }

    else
    {
      sub_1AB45051C(*(v0 + 528), *(v0 + 536), v0 + 96);
      if (*(v0 + 160))
      {
        sub_1AB014AC0(v0 + 136, &qword_1EB4389F8);
      }
    }

    if (*(v0 + 120))
    {
      v19 = 1;
    }

    else
    {
      v19 = v12;
    }

    if ((v19 & 1) == 0)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 536);
      v21 = *(v0 + 528);
      v22 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      v65 = sub_1AB0168A8(0, 143, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0x20746E65746E49;
      v24._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v25 = (*(v20 + 32))(v21, v20);
      v26 = MEMORY[0x1E69E6158];
      *(v0 + 432) = MEMORY[0x1E69E6158];
      *(v0 + 408) = v25;
      *(v0 + 416) = v27;
      sub_1AB014A58(v0 + 408, v0 + 440, &unk_1EB437E60);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1AB0169C4(v0 + 440, v0 + 336);
      *(v0 + 368) = 0;
      v28 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v65 + 2) + 1, 1, v65);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = *(v0 + 336);
      v33 = *(v0 + 352);
      v31[64] = *(v0 + 368);
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      sub_1AB014AC0(v0 + 408, &unk_1EB437E60);
      v34._countAndFlagsBits = 0xD000000000000087;
      v34._object = 0x80000001AB5041A0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *(v23 + 32) = v28;
      v35 = sub_1AB461094();
      if (os_log_type_enabled(v22, v35))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v36 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v36[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v36 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v38 = swift_allocObject();
        *(v38 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *(v0 + 472) = v23;
        *(v0 + 480) = sub_1AB01A8D8;
        *(v0 + 488) = v38;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v39 = sub_1AB460484();
        v41 = v40;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1AB4D4720;
        *(v42 + 56) = v26;
        *(v42 + 64) = sub_1AB016854();
        *(v42 + 32) = v39;
        *(v42 + 40) = v41;
        sub_1AB45FF14();
      }
    }

    sub_1AB014A58(v0 + 96, v0 + 216, &qword_1EB4389F8);
    if (!*(v0 + 240))
    {
      sub_1AB014AC0(v0 + 216, &qword_1EB4389F8);
LABEL_32:
      sub_1AB014A58(v0 + 96, v0 + 296, &qword_1EB4389F8);
      if (*(v0 + 320))
      {
        v43 = *(v0 + 544);
        v61 = *(v0 + 528);
        v62 = *(v0 + 504);
        sub_1AB0149B0((v0 + 296), v0 + 256);
        v44 = *(v0 + 40);
        v45 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v44);
        v46 = swift_task_alloc();
        *(v0 + 664) = v46;
        *(v46 + 16) = v61;
        *(v46 + 32) = v43;
        *(v46 + 40) = v62;
        v63 = (*(v45 + 16) + **(v45 + 16));
        v47 = swift_task_alloc();
        *(v0 + 672) = v47;
        *v47 = v0;
        v47[1] = sub_1AB21A84C;
        v48 = *(v0 + 552);
        v49 = *(v0 + 496);

        return v63(v49, v0 + 256, &unk_1AB4DEB68, v46, v48, v44, v45);
      }

      else
      {
        sub_1AB014AC0(v0 + 296, &qword_1EB4389F8);
        v55 = swift_task_alloc();
        *(v0 + 688) = v55;
        *v55 = v0;
        v55[1] = sub_1AB21AA38;
        v56 = *(v0 + 536);
        v57 = *(v0 + 528);
        v58 = *(v0 + 504);
        v59 = *(v0 + 512);
        v60 = *(v0 + 496);

        return sub_1AB0CCFF4(v60, v58, v59, v57, v56);
      }
    }

    sub_1AB0149B0((v0 + 216), v0 + 176);
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
      goto LABEL_32;
    }

    v50 = *(v0 + 40);
    v51 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v50);
    v64 = (*(v51 + 8) + **(v51 + 8));
    v52 = swift_task_alloc();
    *(v0 + 648) = v52;
    *v52 = v0;
    v52[1] = sub_1AB21A3C8;
    v53 = *(v0 + 576);
    v54 = *(v0 + 552);

    return v64(v53, v0 + 176, v54, v50, v51);
  }

  else
  {
    v14 = *(v0 + 608);
    v15 = *(v0 + 552);
    v16 = *(v0 + 496);
    v17 = *(*(v0 + 592) + 32);
    v17(v14, *(v0 + 584), v15);
    v17(v16, v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1AB21A3C8()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_1AB21AC00;
  }

  else
  {
    v2 = sub_1AB21A4DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB21A4DC()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  if (v1(v2, 1, v3) == 1)
  {
    (*(v0 + 632))(*(v0 + 576), *(v0 + 560));
    sub_1AB014A58(v0 + 96, v0 + 296, &qword_1EB4389F8);
    if (*(v0 + 320))
    {
      v4 = *(v0 + 544);
      v23 = *(v0 + 528);
      v24 = *(v0 + 504);
      sub_1AB0149B0((v0 + 296), v0 + 256);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v5);
      v7 = swift_task_alloc();
      *(v0 + 664) = v7;
      *(v7 + 16) = v23;
      *(v7 + 32) = v4;
      *(v7 + 40) = v24;
      v25 = (*(v6 + 16) + **(v6 + 16));
      v8 = swift_task_alloc();
      *(v0 + 672) = v8;
      *v8 = v0;
      v8[1] = sub_1AB21A84C;
      v9 = *(v0 + 552);
      v10 = *(v0 + 496);

      return v25(v10, v0 + 256, &unk_1AB4DEB68, v7, v9, v5, v6);
    }

    else
    {
      sub_1AB014AC0(v0 + 296, &qword_1EB4389F8);
      v17 = swift_task_alloc();
      *(v0 + 688) = v17;
      *v17 = v0;
      v17[1] = sub_1AB21AA38;
      v18 = *(v0 + 536);
      v19 = *(v0 + 528);
      v20 = *(v0 + 504);
      v21 = *(v0 + 512);
      v22 = *(v0 + 496);

      return sub_1AB0CCFF4(v22, v20, v21, v19, v18);
    }
  }

  else
  {
    v12 = *(v0 + 600);
    v13 = *(v0 + 552);
    v14 = *(v0 + 496);
    v15 = *(*(v0 + 592) + 32);
    v15(v12, *(v0 + 576), v13);
    v15(v14, v12, v13);
    sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1AB21A84C()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1AB21AD80;
  }

  else
  {
    v2 = sub_1AB21A97C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB21A97C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21AA38()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_1AB21ACC4;
  }

  else
  {
    v2 = sub_1AB21AB4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB21AB4C()
{
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21AC00()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21ACC4()
{
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21AD80()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_1AB014AC0(v0 + 96, &qword_1EB4389F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1AB027460;

  return sub_1AB0CCFF4(a1, a3, a4, a5, a6);
}

uint64_t sub_1AB21AF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = type metadata accessor for JSResponse();
    sub_1AB21B1B8(*(a1 + *(v10 + 28)), a3, a4, a5);
  }

  return result;
}

uint64_t sub_1AB21B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v53 = sub_1AB45F9E4();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SentryEvent();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v4;
  sub_1AB014A58(v4 + 48, &v66, &qword_1EB4389B0);
  if (!*(&v67 + 1))
  {
    return sub_1AB014AC0(&v66, &qword_1EB4389B0);
  }

  v76 = v70;
  v77 = v71;
  v78 = v72;
  v73[0] = v66;
  v73[1] = v67;
  v74 = v68;
  v75 = v69;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (a1 + 32);
    v51 = (v8 + 8);
    v50 = xmmword_1AB4D4720;
    do
    {
      v80 = v6;
      v15 = v14[1];
      v16 = v14[3];
      v68 = v14[2];
      v69 = v16;
      v17 = v14[3];
      v70 = v14[4];
      v18 = v14[1];
      v66 = *v14;
      v67 = v18;
      v65[2] = v68;
      v65[3] = v17;
      v65[4] = v14[4];
      v65[0] = v66;
      v65[1] = v15;
      sub_1AB223B3C(&v66, v64);
      sub_1AB239088(v65, v79);
      v19 = v75;
      v59 = *(&v74 + 1);
      v20 = v77;
      v61 = *(&v76 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A20);
      v21 = swift_allocObject();
      v22 = v79[4];
      v23 = v79[6];
      v24 = v79[7];
      v21[7] = v79[5];
      v21[8] = v23;
      v21[9] = v24;
      v25 = v79[0];
      v26 = v79[1];
      v21[1] = v50;
      v21[2] = v25;
      v27 = v79[2];
      v28 = v79[3];
      v21[3] = v26;
      v21[4] = v27;
      v21[5] = v28;
      v21[6] = v22;
      v58 = v19;

      v60 = v20;

      v29 = v52;
      sub_1AB45F9D4();
      v30 = sub_1AB45F9C4();
      v32 = v31;
      (*v51)(v29, v53);
      *&v65[0] = v30;
      *(&v65[0] + 1) = v32;
      v64[0] = 45;
      v64[1] = 0xE100000000000000;
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1AB0273A8();
      sub_1AB461434();

      v33 = sub_1AB4605F4();
      v35 = v34;

      _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
      if (qword_1EB4323F8 != -1)
      {
        swift_once();
      }

      v37 = qword_1EB46BDB8;
      v36 = unk_1EB46BDC0;
      *(v12 + v10[15]) = 1;
      *v12 = v33;
      v12[1] = v35;
      v38 = v58;
      v12[2] = v59;
      v12[3] = v38;
      v39 = (v12 + v10[7]);
      *v39 = 0x697263736176616ALL;
      v39[1] = 0xEA00000000007470;
      v40 = (v12 + v10[8]);
      *v40 = v61;
      v40[1] = v60;
      v41 = (v12 + v10[9]);
      *v41 = 0;
      v41[1] = 0;
      v42 = (v12 + v10[10]);
      *v42 = 0;
      v42[1] = 0;
      *(v12 + v10[11]) = 0;
      *(v12 + v10[12]) = v21;
      v43 = qword_1EB46BDC8;
      v44 = unk_1EB46BDD0;
      v45 = (v12 + v10[13]);
      v46 = v55;
      *v45 = v54;
      v45[1] = v46;
      v45[2] = v56;
      v47 = (v12 + v10[14]);
      *v47 = v37;
      v47[1] = v36;
      v47[2] = v43;
      v47[3] = v44;

      v48 = v80;
      sub_1AB21BC40();
      v6 = v48;
      sub_1AB04A54C(v12, type metadata accessor for SentryEvent);
      if (v48)
      {
        break;
      }

      v14 += 5;
      --v13;
    }

    while (v13);
  }

  return sub_1AB2237A8(v73);
}

uint64_t sub_1AB21B654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AB216D98(a1, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1AB21B6E0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v58 = a3;
  v8 = sub_1AB45F9E4();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SentryEvent();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AB014A58(v4 + 48, &v63, &qword_1EB4389B0);
  if (!*(&v64 + 1))
  {
    return sub_1AB014AC0(&v63, &qword_1EB4389B0);
  }

  v53 = a4;
  v54 = v4;
  v55 = v5;
  v70[5] = v68;
  v70[6] = v69;
  v70[3] = v66;
  v70[4] = v67;
  v70[1] = v64;
  v70[2] = v65;
  v70[0] = v63;
  v14 = v66;
  v46 = v8;
  v47 = *(&v65 + 1);
  v15 = v68;
  v49 = *(&v67 + 1);
  v51 = *(&v68 + 1);
  v16 = *(&v69 + 1);
  v71 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A20);
  v17 = swift_allocObject();
  v18 = a1[4];
  v19 = a1[6];
  v20 = a1[7];
  v17[7] = a1[5];
  v17[8] = v19;
  v17[9] = v20;
  v21 = *a1;
  v22 = a1[1];
  v17[1] = xmmword_1AB4D4720;
  v17[2] = v21;
  v23 = a1[2];
  v24 = a1[3];
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[6] = v18;
  v52 = v16;

  v48 = v14;

  v50 = v15;

  sub_1AB22374C(a1, &v63);
  sub_1AB45F9D4();
  v25 = sub_1AB45F9C4();
  v27 = v26;
  (*(v56 + 8))(v10, v46);
  *&v63 = v25;
  *(&v63 + 1) = v27;
  v61 = 45;
  v62 = 0xE100000000000000;
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1AB0273A8();
  sub_1AB461434();

  v28 = sub_1AB4605F4();
  v30 = v29;

  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  if (qword_1EB4323F8 != -1)
  {
    swift_once();
  }

  *(v13 + v11[15]) = 1;
  v32 = qword_1EB46BDB8;
  v31 = unk_1EB46BDC0;
  *v13 = v28;
  v13[1] = v30;
  v33 = v48;
  v13[2] = v47;
  v13[3] = v33;
  v34 = (v13 + v11[7]);
  *v34 = 0x697263736176616ALL;
  v34[1] = 0xEA00000000007470;
  v35 = (v13 + v11[8]);
  *v35 = v49;
  v35[1] = v50;
  v36 = (v13 + v11[9]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v13 + v11[10]);
  *v37 = v51;
  v37[1] = v71;
  v38 = v53;
  *(v13 + v11[11]) = v52;
  *(v13 + v11[12]) = v17;
  v39 = qword_1EB46BDC8;
  v40 = unk_1EB46BDD0;
  v41 = (v13 + v11[13]);
  v42 = v58;
  *v41 = v57;
  v41[1] = v42;
  v41[2] = v38;
  v43 = (v13 + v11[14]);
  *v43 = v32;
  v43[1] = v31;
  v43[2] = v39;
  v43[3] = v40;

  sub_1AB21BC40();
  sub_1AB04A54C(v13, type metadata accessor for SentryEvent);
  return sub_1AB2237A8(v70);
}

uint64_t sub_1AB21BB14(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v6[3] = MEMORY[0x1E69E6158];
  v6[0] = 0xD0000000000000BCLL;
  v6[1] = 0x80000001AB5047E0;
  *(v4 + 48) = 0u;
  *(v4 + 32) = 0u;
  sub_1AB0169C4(v6, v4 + 32);
  *(v4 + 64) = 0;
  *(v3 + 32) = v4;
  LOBYTE(v6[0]) = 0;
  (*(v2 + 8))(v3, v6, v1, v2);
}

uint64_t sub_1AB21BC40()
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = sub_1AB45F124();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v0 + 48, &v26, &qword_1EB4389B0);
  if (!*(&v27 + 1))
  {
    return sub_1AB014AC0(&v26, &qword_1EB4389B0);
  }

  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v6 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v6 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_14:
    v9 = [objc_opt_self() diagnosticsSubmissionAllowed];
    goto LABEL_15;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434630 != -1)
  {
    swift_once();
  }

  v9 = sub_1AB026D00(qword_1EB434638, unk_1EB434640);
  if (v9 == 2)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v9)
  {
    goto LABEL_19;
  }

  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB435998 == 1)
  {
LABEL_19:
    sub_1AB45F194();
    swift_allocObject();
    sub_1AB45F184();
    (*(v3 + 104))(v5, *MEMORY[0x1E6967FA8], v2);
    sub_1AB45F144();
    v10 = type metadata accessor for SentryEvent();
    sub_1AB049958(&qword_1EB432B00, type metadata accessor for SentryEvent);
    v11 = sub_1AB45F174();
    if (!v1)
    {
      v13 = v11;
      v14 = v12;
      v15 = objc_opt_self();
      v16 = sub_1AB45F834();
      *&v26 = 0;
      v17 = [v15 JSONObjectWithData:v16 options:0 error:&v26];

      if (v17)
      {
        v18 = v26;
        sub_1AB461494();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
        if (swift_dynamicCast())
        {
          sub_1AB017254(v13, v14);

          v19 = v25[1];
          v20 = *(&v34 + 1);
          v21 = v35;
          __swift_project_boxed_opaque_existential_1Tm(&v33, *(&v34 + 1));
          *&v26 = v19;
          *(&v26 + 1) = MEMORY[0x1E69E7CC0];
          (*(v21 + 8))(&v26, *(&v36 + 1), v37, v20, v21);
          sub_1AB2237A8(&v33);
        }

        sub_1AB163664();
        swift_allocError();
        v23 = MEMORY[0x1E69E7CC0];
        *v24 = v10;
        v24[1] = v23;
        v24[2] = 0;
        v24[3] = 0;
      }

      else
      {
        v22 = v26;
        sub_1AB45F594();
      }

      swift_willThrow();
      sub_1AB017254(v13, v14);
    }
  }

  return sub_1AB2237A8(&v33);
}

uint64_t sub_1AB21C14C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return JSStack.dispatcher<A, B>(for:asPartOf:)(a1);
}

uint64_t sub_1AB21C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027554;

  return JSStack.dispatch<A>(_:objectGraph:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB21C2B4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027554;

  return JSStack.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB21C390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027554;

  return JSStack.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB21C490(uint64_t a1, uint64_t a2)
{
  v3[20] = a1;
  v3[21] = a2;
  type metadata accessor for JSResponse();
  v4 = swift_task_alloc();
  v5 = *v2;
  v3[22] = v4;
  v3[23] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AB21C524, 0, 0);
}

uint64_t sub_1AB21C524()
{
  *(v0 + 192) = JSStack.performRequest(_:)(*(v0 + 168));

  return MEMORY[0x1EEE6DFA0](sub_1AB21C594, 0, 0);
}

uint64_t sub_1AB21C594()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB21C660;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB0CFD84(v3);
  sub_1AB014AC0(v3, &unk_1EB4397D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB21C660()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB21C7E0, 0, 0);
  }

  else
  {
    v4 = *(v1 + 176);
    v5 = *(v1 + 160);

    sub_1AB053FFC(v4, v5, type metadata accessor for JSResponse);

    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1AB21C7E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t JSStack.performRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  type metadata accessor for JSResponse();
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB21C8E4, 0, 0);
}

uint64_t sub_1AB21C8E4()
{
  *(v0 + 192) = JSStack.performRequest(_:)(*(v0 + 168));

  return MEMORY[0x1EEE6DFA0](sub_1AB21C950, 0, 0);
}

uint64_t sub_1AB21C950()
{
  v1 = v0 + 2;
  v2 = v0[23];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB21CA18;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB0CFD84(v3);
  sub_1AB014AC0(v3, &unk_1EB4397D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB21CA18()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB21CB94, 0, 0);
  }

  else
  {
    sub_1AB053FFC(*(v1 + 184), *(v1 + 160), type metadata accessor for JSResponse);

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1AB21CB94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t JSStack.withUnsafeContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB21CC28, 0, 0);
}

uint64_t sub_1AB21CC28()
{
  v0[7] = JSStack.withUnsafeContext<A>(_:)(v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_1AB21CD14;
  v4 = v0[2];

  return Future.result.getter(v4, v2, WitnessTable);
}

uint64_t sub_1AB21CD14()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AB21CE8C;
  }

  else
  {
    v2 = sub_1AB21CE28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB21CE28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21CE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t JSStack.evaluate(script:against:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB21CF14, 0, 0);
}

uint64_t sub_1AB21CF14()
{
  *(v0 + 192) = JSStack.evaluate(script:against:)(*(v0 + 168), *(v0 + 176));

  return MEMORY[0x1EEE6DFA0](sub_1AB21CF84, 0, 0);
}

uint64_t sub_1AB21CF84()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB21D050;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB053DBC(v2);
  sub_1AB014AC0(v2, &qword_1EB439F20);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB21D050()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB199700, 0, 0);
  }

  else
  {
    v4 = *(v1 + 160);

    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_1AB21D1CC()
{
  v0[23] = JSStack.notify(withName:)(v0[20], v0[21]);

  return MEMORY[0x1EEE6DFA0](sub_1AB21D23C, 0, 0);
}

uint64_t sub_1AB21D23C()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_1AB21D300;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB1946AC(v2);
  sub_1AB014AC0(v2, &unk_1EB4378E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB21D300()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB21D450, 0, 0);
  }

  else
  {

    v3 = *(v1 + 8);

    return v3();
  }
}

uint64_t sub_1AB21D450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB21D4BC(void *a1, void *a2, uint64_t a3, char a4)
{
  [a1 setException_];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AB216800(a2, a4 & 1);
  }

  return result;
}

id sub_1AB21D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = 0;
  v13[4] = a4;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AB054BC4;
  v13[3] = a5;
  v10 = _Block_copy(v13);

  result = [objc_opt_self() valueWithObject:v10 inContext:a1];
  if (result)
  {
    v12 = result;
    _Block_release(v10);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AB21D6FC(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB4358A8 = v2;
}

uint64_t sub_1AB21D7E8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 5);
  if (os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(v1 + 5);
    v3 = v1[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v1 + 5);
    notify_cancel(v3);
    os_unfair_lock_lock(v1 + 5);
    v1[4]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v1 + 5);
  }

  return swift_deallocClassInstance();
}

void sub_1AB21D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      sub_1AB050E30(v8, a4, *(a5 + 16));
    }
  }
}

uint64_t sub_1AB21D930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1AB21D984(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[3];
  v6 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (v8)
  {
    v13[0] = v7;
    v13[1] = v8;
    v9 = a1;
    v10 = sub_1AB461D84();
    sub_1AB0589A8(v13);
  }

  else
  {
    v11 = a1;
    v10 = 0;
  }

  v12 = [objc_opt_self() valueWithObject:v10 inContext:a1];
  swift_unknownObjectRelease();

  if (!v12)
  {
    __break(1u);
  }
}

uint64_t sub_1AB21DA6C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AB234EEC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AB21DAD8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AB21DAD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AB461C24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1AB4609B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1AB21DCA0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AB21DBD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AB21DBD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1AB461DA4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB21DCA0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1AB391760(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1AB21E27C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1AB461DA4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1AB461DA4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AB2AFBEC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1AB2AFBEC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1AB21E27C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB391760(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1AB3916D4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1AB461DA4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1AB21E27C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1AB461DA4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1AB461DA4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1AB21E4A4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1AB21E6F8(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1AB21E668(v11, v6, a2, a1);

    MEMORY[0x1AC59F020](v11, -1, -1);
  }

  return v9;
}

void *sub_1AB21E668(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1AB21E6F8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1AB21E6F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1AB4620A4();

      sub_1AB460684();
      v26 = sub_1AB462104();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1AB461DA4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1AB227E38(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1AB4620A4();

      sub_1AB460684();
      v39 = sub_1AB462104();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1AB461DA4() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB21EAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, char a13, void *a14)
{
  v84 = a8;
  v73 = *&a7;
  v94 = a6;
  v91 = a4;
  v89 = a3;
  v90 = a2;
  v77 = a12;
  v16 = *a14;
  v93 = a14;
  v79 = v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439810);
  MEMORY[0x1EEE9AC00](v78);
  v80 = (&v72 - v17);
  v18 = type metadata accessor for MonotonicTimeReference();
  v19 = v18 - 8;
  v81 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v72 - v25);
  v105[3] = type metadata accessor for JSStack.DecoratedIntent();
  v105[4] = &off_1F1FFF3B8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v105);
  sub_1AB053F94(a9, boxed_opaque_existential_0, type metadata accessor for JSStack.DecoratedIntent);
  *v26 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A08);
  v28 = swift_allocObject();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v28[2] = v30;
  sub_1AB017FB8(v26, v28 + *(*v28 + 96), &unk_1EB4378F0);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v98);
  v31 = *(v19 + 28);
  v92 = v23;
  *&v23[v31] = v98;
  if (qword_1EB435560 != -1)
  {
    swift_once();
  }

  v86 = v28;
  JESignpostEmitTrace();
  if (a11)
  {
    if (qword_1EB433910 != -1)
    {
      swift_once();
    }

    v98 = xmmword_1EB46C090;
    LOBYTE(v99) = byte_1EB46C0A0;
    *(&v99 + 1) = qword_1EB46C0A8;
    LOBYTE(v100) = byte_1EB46C0B0;
    static MonotonicTime.now.getter(&v102);
    v96 = v102;
    PageRenderField<>.startTime(for:at:)(a10, a11, &v96);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389D8);
  v32 = swift_allocObject();
  v95 = a11;
  v33 = v32;
  v76 = v29;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v33 + 16) = v34;
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  *(v33 + 32) = 0;
  v35 = swift_allocObject();
  v88 = a10;
  v36 = v35;
  v37 = v93;
  swift_weakInit();
  sub_1AB01494C(v105, &v98);
  v38 = swift_allocObject();
  v85 = a1;
  *(v38 + 16) = a1;
  v39 = v89;
  *(v38 + 24) = v90;
  *(v38 + 32) = v39;
  *(v38 + 40) = v91;
  sub_1AB0149B0(&v98.tv_sec, v38 + 48);
  v74 = a13 & 1;
  *(v38 + 88) = a13 & 1;
  *(v38 + 96) = v33;
  *(v38 + 104) = a5;
  v40 = v94;
  *(v38 + 112) = v94;
  *(v38 + 120) = v36;
  v41 = v37[3];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_1AB2235FC;
  v43[4] = v38;

  v87 = v41;
  sub_1AB0484A4(sub_1AB0545C8, v43);

  sub_1AB014A58(v77, &v98, &qword_1EB4389E0);
  v44 = swift_allocObject();
  v45 = v99;
  *(v44 + 56) = v98;
  *(v44 + 16) = a5;
  *(v44 + 24) = v40;
  v46 = v95;
  *(v44 + 32) = v88;
  *(v44 + 40) = v46;
  *(v44 + 48) = v74;
  *(v44 + 72) = v45;
  v47 = v79;
  *(v44 + 88) = v100;
  *(v44 + 96) = v47;
  v103 = &type metadata for SyncTaskScheduler;
  v104 = &protocol witness table for SyncTaskScheduler;
  v48 = v80;
  *v80 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A10);
  v49 = swift_allocObject();
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  v49[2] = v50;
  sub_1AB017FB8(v48, v49 + *(*v49 + 96), &unk_1EB439810);
  v51 = swift_allocObject();
  v51[2] = sub_1AB223600;
  v51[3] = v44;
  v51[4] = v49;
  v98.tv_sec = sub_1AB08BEB8;
  v98.tv_nsec = v51;
  *&v99 = sub_1AB0C60AC;
  *(&v99 + 1) = v49;
  sub_1AB01494C(&v102, &v100);
  v101 = 0;
  swift_retain_n();

  sub_1AB053DBC(&v98);

  v80 = v49;

  sub_1AB014AC0(&v98, &qword_1EB439F20);
  __swift_destroy_boxed_opaque_existential_1Tm(&v102);
  v52 = v84;
  v75 = a5;
  if (v84)
  {
    *&v96 = 0;
    v53 = v86;
  }

  else
  {
    v54 = v73;
    v55 = v73;
    v56 = swift_allocObject();
    v53 = v86;
    *(v56 + 2) = v86;
    *(v56 + 3) = a5;
    *(v56 + 4) = v40;
    v56[5] = v54;

    sub_1AB04A1A0(sub_1AB22362C, v56, v55);
  }

  BYTE8(v96) = v52 & 1;
  sub_1AB014A58(&v96, &v98, &qword_1EB438A18);
  v57 = v83;
  sub_1AB053F94(v92, v83, type metadata accessor for MonotonicTimeReference);
  v58 = (*(v81 + 80) + 33) & ~*(v81 + 80);
  v59 = (v82 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  *(v61 + 16) = v53;
  sub_1AB017FB8(&v98, v61 + 24, &qword_1EB438A18);
  sub_1AB053FFC(v57, v61 + v58, type metadata accessor for MonotonicTimeReference);
  v62 = (v61 + v59);
  v63 = v95;
  *v62 = v88;
  v62[1] = v63;
  v64 = (v61 + v60);
  v65 = v90;
  *v64 = v85;
  v64[1] = v65;
  v66 = v91;
  v64[2] = v89;
  v64[3] = v66;
  v67 = (v61 + ((v60 + 39) & 0xFFFFFFFFFFFFFFF8));
  v68 = v75;
  v69 = v94;
  *v67 = v75;
  v67[1] = v69;
  sub_1AB014A58(&v96, v97, &qword_1EB438A18);
  v70 = swift_allocObject();
  v70[2] = v53;
  sub_1AB017FB8(v97, (v70 + 3), &qword_1EB438A18);
  v70[5] = v68;
  v70[6] = v69;
  v103 = type metadata accessor for RunLoopWorkerThread();
  v104 = &protocol witness table for RunLoopWorkerThread;
  *&v102 = v87;
  v98.tv_sec = sub_1AB223618;
  v98.tv_nsec = v61;
  *&v99 = sub_1AB22361C;
  *(&v99 + 1) = v70;
  sub_1AB01494C(&v102, &v100);
  v101 = 0;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  sub_1AB0540CC(&v98);

  sub_1AB014AC0(&v98, &unk_1EB437780);
  __swift_destroy_boxed_opaque_existential_1Tm(&v102);
  sub_1AB0543D8(v53, v68, v69);

  sub_1AB014AC0(&v96, &qword_1EB438A18);
  sub_1AB04A54C(v92, type metadata accessor for MonotonicTimeReference);
  __swift_destroy_boxed_opaque_existential_1Tm(v105);
  return v53;
}

uint64_t sub_1AB21F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, char a13, void *a14)
{
  v82 = a8;
  v71 = *&a7;
  v92 = a6;
  v89 = a4;
  v87 = a3;
  v88 = a2;
  v86 = a1;
  v75 = a12;
  v15 = *a14;
  v91 = a14;
  v77 = v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439810);
  MEMORY[0x1EEE9AC00](v76);
  v78 = (&v70 - v16);
  v17 = type metadata accessor for MonotonicTimeReference();
  v18 = v17 - 8;
  v79 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v103[3] = &type metadata for JSStack.Options;
  v103[4] = &off_1F1FFF398;
  v103[0] = a9;
  *(&v70 - v24) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A08);
  v26 = swift_allocObject();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v26[2] = v28;
  sub_1AB017FB8(v25, v26 + *(*v26 + 96), &unk_1EB4378F0);

  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v96);
  v29 = *(v18 + 28);
  v90 = v22;
  *&v22[v29] = v96;
  if (qword_1EB435560 != -1)
  {
    swift_once();
  }

  v83 = v26;
  JESignpostEmitTrace();
  if (a11)
  {
    if (qword_1EB433910 != -1)
    {
      swift_once();
    }

    v96 = xmmword_1EB46C090;
    LOBYTE(v97) = byte_1EB46C0A0;
    *(&v97 + 1) = qword_1EB46C0A8;
    LOBYTE(v98) = byte_1EB46C0B0;
    static MonotonicTime.now.getter(&v100);
    v94 = v100;
    PageRenderField<>.startTime(for:at:)(a10, a11, &v94);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389D8);
  v30 = swift_allocObject();
  v74 = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v30 + 16) = v31;
  *(v30 + 24) = MEMORY[0x1E69E7CC0];
  *(v30 + 32) = 0;
  v32 = swift_allocObject();
  v85 = a10;
  v33 = v32;
  v34 = v91;
  swift_weakInit();
  sub_1AB01494C(v103, &v96);
  v35 = swift_allocObject();
  v36 = v88;
  *(v35 + 16) = v86;
  *(v35 + 24) = v36;
  v93 = a11;
  v37 = v89;
  *(v35 + 32) = v87;
  *(v35 + 40) = v37;
  sub_1AB0149B0(&v96.tv_sec, v35 + 48);
  v72 = a13 & 1;
  *(v35 + 88) = a13 & 1;
  *(v35 + 96) = v30;
  *(v35 + 104) = a5;
  v38 = v92;
  *(v35 + 112) = v92;
  *(v35 + 120) = v33;
  v39 = v34[3];
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_1AB224284;
  v41[4] = v35;

  v42 = v93;

  v84 = v39;
  sub_1AB0484A4(sub_1AB0545C8, v41);

  sub_1AB014A58(v75, &v96, &qword_1EB4389E0);
  v43 = swift_allocObject();
  v44 = v97;
  *(v43 + 56) = v96;
  *(v43 + 16) = a5;
  *(v43 + 24) = v38;
  *(v43 + 32) = v85;
  *(v43 + 40) = v42;
  *(v43 + 48) = v72;
  *(v43 + 72) = v44;
  v45 = v77;
  *(v43 + 88) = v98;
  *(v43 + 96) = v45;
  v101 = &type metadata for SyncTaskScheduler;
  v102 = &protocol witness table for SyncTaskScheduler;
  v46 = v78;
  *v78 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A10);
  v47 = swift_allocObject();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v47[2] = v48;
  sub_1AB017FB8(v46, v47 + *(*v47 + 96), &unk_1EB439810);
  v49 = swift_allocObject();
  v49[2] = sub_1AB2241D8;
  v49[3] = v43;
  v49[4] = v47;
  v96.tv_sec = sub_1AB224210;
  v96.tv_nsec = v49;
  *&v97 = sub_1AB224288;
  *(&v97 + 1) = v47;
  sub_1AB01494C(&v100, &v98);
  v99 = 0;
  swift_retain_n();

  sub_1AB053DBC(&v96);

  v78 = v47;

  sub_1AB014AC0(&v96, &qword_1EB439F20);
  __swift_destroy_boxed_opaque_existential_1Tm(&v100);
  v50 = v82;
  v73 = a5;
  if (v82)
  {
    *&v94 = 0;
    v51 = v83;
  }

  else
  {
    v52 = v71;
    v53 = v71;
    v54 = swift_allocObject();
    v51 = v83;
    *(v54 + 2) = v83;
    *(v54 + 3) = a5;
    *(v54 + 4) = v38;
    v54[5] = v52;

    sub_1AB04A1A0(sub_1AB2242C0, v54, v53);
  }

  BYTE8(v94) = v50 & 1;
  sub_1AB014A58(&v94, &v96, &qword_1EB438A18);
  v55 = v81;
  sub_1AB053F94(v90, v81, type metadata accessor for MonotonicTimeReference);
  v56 = (*(v79 + 80) + 33) & ~*(v79 + 80);
  v57 = (v80 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  sub_1AB017FB8(&v96, v59 + 24, &qword_1EB438A18);
  sub_1AB053FFC(v55, v59 + v56, type metadata accessor for MonotonicTimeReference);
  v60 = (v59 + v57);
  v61 = v93;
  *v60 = v85;
  v60[1] = v61;
  v62 = (v59 + v58);
  v63 = v88;
  *v62 = v86;
  v62[1] = v63;
  v64 = v89;
  v62[2] = v87;
  v62[3] = v64;
  v65 = (v59 + ((v58 + 39) & 0xFFFFFFFFFFFFFFF8));
  v66 = v73;
  v67 = v92;
  *v65 = v73;
  v65[1] = v67;
  sub_1AB014A58(&v94, v95, &qword_1EB438A18);
  v68 = swift_allocObject();
  v68[2] = v51;
  sub_1AB017FB8(v95, (v68 + 3), &qword_1EB438A18);
  v68[5] = v66;
  v68[6] = v67;
  v101 = type metadata accessor for RunLoopWorkerThread();
  v102 = &protocol witness table for RunLoopWorkerThread;
  *&v100 = v84;
  v96.tv_sec = sub_1AB22428C;
  v96.tv_nsec = v59;
  *&v97 = sub_1AB224280;
  *(&v97 + 1) = v68;
  sub_1AB01494C(&v100, &v98);
  v99 = 0;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  sub_1AB0540CC(&v96);

  sub_1AB014AC0(&v96, &unk_1EB437780);
  __swift_destroy_boxed_opaque_existential_1Tm(&v100);
  sub_1AB0543D8(v51, v66, v67);

  sub_1AB014AC0(&v94, &qword_1EB438A18);
  sub_1AB04A54C(v90, type metadata accessor for MonotonicTimeReference);
  __swift_destroy_boxed_opaque_existential_1Tm(v103);
  return v51;
}

uint64_t sub_1AB220210(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for JSPlatformUnavailableObject();
  v31 = v10;
  v32 = &off_1F20116A0;
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_1AB014DB4(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = v19[7] + 40 * v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      return sub_1AB0149B0(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1AB1D8B4C();
    goto LABEL_7;
  }

  sub_1AB1D3334(v16, a4 & 1);
  v22 = sub_1AB014DB4(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1AB461FC4();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_1AB22063C(v13, a2, a3, *v27, v19);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v30);
}

uint64_t sub_1AB220408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v15 = *a5;
  v17 = sub_1AB014DB4(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = v23[7] + 40 * v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return sub_1AB0149B0(&v34, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1AB1D8B4C();
    goto LABEL_7;
  }

  sub_1AB1D3334(v20, a4 & 1);
  v26 = sub_1AB014DB4(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1AB461FC4();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v29);
  sub_1AB2206EC(v17, a2, a3, v31, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v34);
}

uint64_t sub_1AB22063C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = type metadata accessor for JSPlatformUnavailableObject();
  v17 = &off_1F20116A0;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1AB0149B0(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1AB2206EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1AB0149B0(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1AB2207FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB2208C0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;

      sub_1AB248AF4(&v6, v4);

      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

char *sub_1AB220930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dlopen("/AppleInternal/Library/Frameworks/JetTracingSupport.framework/JetTracingSupport", 4);
  if (!v6)
  {
    if (qword_1EB4358A0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB4358A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v39 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    v12._object = 0x80000001AB504540;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    result = dlerror();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = sub_1AB460704();
    v38 = MEMORY[0x1E69E6158];
    v36 = v13;
    v37 = v14;
    sub_1AB014A58(&v36, v32, &unk_1EB437E60);
    v33 = 0u;
    v34 = 0u;
    sub_1AB0169C4(v32, &v33);
    v35 = 0;
    v15 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
      v39 = v15;
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v33;
    v20 = v34;
    v18[64] = v35;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v39 = v15;
    sub_1AB014AC0(&v36, &unk_1EB437E60);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v11 + 32) = v39;
    *&v33 = v10;
LABEL_21:
    LOBYTE(v36) = 0;
    OSLogger.log(contentsOf:withLevel:)(v11, &v36);
  }

  v7 = v6;
  v8 = sub_1AB460614();
  v31 = dlsym(v7, (v8 + 32));

  if (!v31)
  {
    if (qword_1EB4358A0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EB4358A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v39 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
    v23._countAndFlagsBits = 0x74636E7566206F4ELL;
    v23._object = 0xEC000000206E6F69;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    v38 = MEMORY[0x1E69E6158];
    v36 = a1;
    v37 = a2;
    sub_1AB014A58(&v36, v32, &unk_1EB437E60);
    v33 = 0u;
    v34 = 0u;

    sub_1AB0169C4(v32, &v33);
    v35 = 0;
    v24 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1AB0168A8(0, *(v24 + 2) + 1, 1, v24);
      v39 = v24;
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[40 * v26];
    v28 = v33;
    v29 = v34;
    v27[64] = v35;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    v39 = v24;
    sub_1AB014AC0(&v36, &unk_1EB437E60);
    v30._object = 0x80000001AB504570;
    v30._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v11 + 32) = v39;
    *&v33 = v22;
    goto LABEL_21;
  }

  return v31(a3);
}
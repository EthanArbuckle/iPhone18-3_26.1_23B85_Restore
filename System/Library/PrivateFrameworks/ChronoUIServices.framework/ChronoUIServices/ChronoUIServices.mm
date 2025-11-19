uint64_t sub_1D92903B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3);
    sub_1D9290468(v1);
    os_unfair_lock_unlock(*(v2 + 16));
  }

  return result;
}

uint64_t sub_1D9290468(uint64_t a1)
{
  v71 = sub_1D9327614();
  v2 = *(v71 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = sub_1D9327654();
  v5 = *(v69 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_1D9327774();
  v8 = *(v80 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v80);
  v66 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v57[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD248, &qword_1D93300D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v57[-v17];
  swift_beginAccess();
  v72 = a1;
  v18 = *(a1 + 16);
  v19 = *(v18 + 64);
  v59 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v65 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue;
  v58 = (v20 + 63) >> 6;
  v74 = v8 + 32;
  v75 = v8 + 16;
  v64 = v83;
  v63 = (v2 + 8);
  v62 = (v5 + 8);
  v79 = v8;
  v61 = v8 + 8;
  v60 = v18;

  v24 = 0;
  if (v22)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v25 << 6);
      v30 = v60;
      v32 = v78;
      v31 = v79;
      v33 = v80;
      (*(v79 + 16))(v78, *(v60 + 48) + *(v79 + 72) * v29, v80);
      v34 = *(*(v30 + 56) + 8 * v29);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD250, &qword_1D93300E0);
      v36 = *(v35 + 48);
      v37 = *(v31 + 32);
      v38 = v77;
      v37(v77, v32, v33);
      *&v38[v36] = v34;
      (*(*(v35 - 8) + 56))(v38, 0, 1, v35);

      v27 = v25;
LABEL_13:
      v39 = v73;
      sub_1D9290C44(v77, v73);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD250, &qword_1D93300E0);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {
      }

      v41 = *&v39[*(v40 + 48)];

      v43 = v78;
      v42 = v79;
      v76 = v27;
      v44 = *(v79 + 32);
      v45 = v80;
      v44(v78, v39, v80);
      v46 = v72;
      v47 = *(v72 + v65);
      v48 = v66;
      (*(v42 + 16))(v66, v43, v45);
      v49 = (*(v42 + 80) + 24) & ~*(v42 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v46;
      v44((v50 + v49), v48, v45);
      v83[2] = sub_1D9290DF4;
      v83[3] = v50;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v83[0] = sub_1D9290DB0;
      v83[1] = &block_descriptor_68;
      v51 = _Block_copy(aBlock);
      v52 = v47;

      v53 = v68;
      sub_1D9327634();
      v81 = MEMORY[0x1E69E7CC0];
      sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
      sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0);
      v55 = v70;
      v54 = v71;
      sub_1D93283C4();
      MEMORY[0x1DA72E860](0, v53, v55, v51);
      _Block_release(v51);

      (*v63)(v55, v54);
      (*v62)(v53, v69);
      (*(v79 + 8))(v78, v80);

      v24 = v76;
      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v58 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v58;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v58)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD250, &qword_1D93300E0);
        (*(*(v56 - 8) + 56))(v77, 1, 1, v56);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v59 + 8 * v25);
      ++v24;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9290C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD248, &qword_1D93300D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9290D18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9290D60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9290DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1D9290DF8(uint64_t a1)
{
  v3 = *(sub_1D9327774() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  sub_1D9290E64(v4, a1);
}

void sub_1D9290E64(uint64_t a1, uint64_t a2)
{
  v249 = a1;
  v239 = a2;
  v240 = sub_1D9327774();
  v234 = *(v240 - 8);
  v2 = *(v234 + 64);
  v3 = MEMORY[0x1EEE9AC00](v240);
  v230 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v225 = &v209 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v216 = &v209 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v213 = &v209 - v9;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD220, &qword_1D93300B0);
  v10 = *(*(v217 - 8) + 64);
  MEMORY[0x1EEE9AC00](v217);
  v218 = &v209 - v11;
  v12 = sub_1D9326884();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v215 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v212 = &v209 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v221 = &v209 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD228, &qword_1D93300B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v224 = &v209 - v22;
  v23 = sub_1D9326814();
  v228 = *(v23 - 8);
  v229 = v23;
  v24 = *(v228 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v243 = &v209 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v245 = &v209 - v27;
  v28 = sub_1D9327B64();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x1EEE9AC00](v28);
  v236 = &v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v231 = &v209 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD230, &qword_1D93300C0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = v38;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v209 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v214 = &v209 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v219 = &v209 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v220 = (&v209 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v223 = &v209 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v209 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v263 = 0;
  v222 = v13;
  v54 = *(v13 + 56);
  v244 = &v209 - v55;
  v54();
  v238 = v29;
  v56 = v29[7];
  (v56)(v40, 1, 1, v28);
  v226 = v28;
  isa = v56;
  (v56)(v38, 1, 1, v28);
  v261 = 0;
  v262 = 0;
  v237 = v12;
  v232 = v54;
  v233 = v13 + 56;
  (v54)(v53, 1, 1, v12);
  v260 = 0;
  v247 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
  v57 = v250;
  v58 = *(v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
  v59 = *(v58 + 16);

  v60 = v59;
  v61 = v249;
  os_unfair_lock_lock(v60);
  swift_beginAccess();
  v62 = *(v57 + 16);
  v63 = *(v62 + 16);
  v248 = v53;
  v241 = v40;
  if (!v63)
  {
    goto LABEL_5;
  }

  v64 = sub_1D9293100(v61);
  if ((v65 & 1) == 0)
  {

LABEL_5:
    v82 = 0;
    v246 = 0;
    v83 = 0;
    goto LABEL_6;
  }

  v66 = *(*(v62 + 56) + 8 * v64);

  v67 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v68 = *(v66 + v67);

  v69 = v231;
  sub_1D9327664();

  v70 = v244;
  sub_1D92933A0(v244, &qword_1ECAFD218, &qword_1D932FEE0);
  sub_1D92933A0(v40, &qword_1ECAFD230, &qword_1D93300C0);
  v235 = v238[2];
  v71 = v69;
  v72 = v226;
  v235(v40, v71, v226);
  (isa)(v40, 0, 1, v72);
  v73 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  LODWORD(v227) = *(v66 + v73);
  v74 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  sub_1D9293400(v66 + v74, v70);
  v75 = *(v66 + v67);

  v246 = sub_1D93276C4();

  v76 = *(v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 32);
  __swift_project_boxed_opaque_existential_1((v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
  v77 = v236;
  sub_1D93278D4();
  v78 = v242;
  sub_1D92933A0(v242, &qword_1ECAFD230, &qword_1D93300C0);
  v235(v78, v77, v72);
  (isa)(v78, 0, 1, v72);
  sub_1D9290D18(&qword_1EDE3BC78, 255, MEMORY[0x1E69859A8]);
  v79 = v231;
  LODWORD(v70) = sub_1D9327F44();

  v80 = v238[1];
  v81 = v77;
  v82 = v227;
  v80(v81, v72);
  v80(v79, v72);
  v83 = v70;
  v260 = v70 & 1;
LABEL_6:
  os_unfair_lock_unlock(*(v58 + 16));

  v84 = *(v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader + 8);
  isa = *(v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader);
  v258.isa = isa;
  v259 = v84;
  if (v83)
  {
    v84 = *(v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader + 8);
    v258.isa = *(v250 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
    v259 = v84;
    isa = v258.isa;
    if (!v258.isa)
    {
      v90 = 7104878;

      v263 = 0;
      v255 = 0;
      v256 = 0xE000000000000000;
      sub_1D9328444();
      MEMORY[0x1DA72E570](91, 0xE100000000000000);
      sub_1D9290D18(&qword_1EDE3B278, 255, MEMORY[0x1E6993DC8]);
      v91 = sub_1D9328614();
      MEMORY[0x1DA72E570](v91);

      MEMORY[0x1DA72E570](0xD00000000000003DLL, 0x80000001D9337D00);
      v92 = v238;
      v93 = v238[6];
      v94 = v241;
      v95 = v226;
      if (v93(v241, 1, v226))
      {
        v96 = 0xE300000000000000;
        v97 = 7104878;
      }

      else
      {
        v105 = v231;
        (v92[2])(v231, v94, v95);
        v106 = sub_1D9327B54();
        v107 = v92;
        v96 = v108;
        (v107[1])(v105, v95);
        v97 = v106;
      }

      v109 = v242;
      MEMORY[0x1DA72E570](v97, v96);

      MEMORY[0x1DA72E570](0xD00000000000004CLL, 0x80000001D9337D40);
      if (v93(v109, 1, v95))
      {
        v110 = 0xE300000000000000;
      }

      else
      {
        v111 = v238;
        v112 = v231;
        (v238[2])(v231, v109, v95);
        v90 = sub_1D9327B54();
        v110 = v113;
        (v111[1])(v112, v95);
      }

      MEMORY[0x1DA72E570](v90, v110);

      MEMORY[0x1DA72E570](11817, 0xE200000000000000);
      v114 = v255;
      v115 = v256;
      v261 = v255;
      v262 = v256;
      v116 = sub_1D9326BC4();
      v117 = sub_1D9328214();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v255 = v119;
        *v118 = 136446210;

        v120 = sub_1D9293524(v114, v115, &v255);

        *(v118 + 4) = v120;
        _os_log_impl(&dword_1D928E000, v116, v117, "%{public}s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        MEMORY[0x1DA72F920](v119, -1, -1);
        MEMORY[0x1DA72F920](v118, -1, -1);
      }

      isa = 0;
      v243 = 0;
      goto LABEL_23;
    }
  }

  LODWORD(v227) = v82;
  v211 = v83;
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v86 = *(v84 + 8);
  swift_unknownObjectRetain();
  v235 = v86;
  v236 = ObjectType;
  sub_1D9327784();
  v87 = v223;
  sub_1D9326804();
  sub_1D92934B4(v87, v248);
  sub_1D93277B4();
  sub_1D93277A4();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD238, &unk_1D93300C8);
  sub_1D9290D60(&qword_1EDE3DA58, &qword_1ECAFD238, &unk_1D93300C8);
  v89 = v224;
  sub_1D93267D4();

  v98 = *(v88 - 8);
  (*(v98 + 56))(v89, 0, 1, v88);
  sub_1D9326934();
  v99 = v255;
  (*(v98 + 8))(v89, v88);
  v101 = v249;
  v100 = v250;
  if (v246 && ((v99 ^ sub_1D93277C4()) & 1) == 0 && ((v227 ^ v211) & 1) == 0)
  {
    v102 = v220;
    sub_1D9293400(v244, v220);
    v103 = v222;
    v104 = v237;
    v227 = *(v222 + 48);
    if (v227(v102, 1, v237) == 1)
    {
      sub_1D92933A0(v102, &qword_1ECAFD218, &qword_1D932FEE0);
      v101 = v249;
      goto LABEL_31;
    }

    LODWORD(v224) = v99;
    v122 = v221;
    v210 = *(v103 + 32);
    v210(v221, v102, v104);
    v123 = *(v103 + 16);
    v124 = v219;
    v223 = (v103 + 16);
    v220 = v123;
    (v123)(v219, v122, v104);
    (v232)(v124, 0, 1, v104);
    v125 = v218;
    v126 = *(v217 + 48);
    sub_1D9293400(v124, v218);
    sub_1D9293400(v248, v125 + v126);
    if (v227(v125, 1, v104) == 1)
    {
      sub_1D92933A0(v124, &qword_1ECAFD218, &qword_1D932FEE0);
      v127 = v227(v125 + v126, 1, v104);
      v128 = v245;
      if (v127 == 1)
      {
        sub_1D92933A0(v125, &qword_1ECAFD218, &qword_1D932FEE0);
LABEL_40:
        v156 = v234;
        v157 = v213;
        v158 = v240;
        (*(v234 + 16))(v213, v249, v240);
        v159 = v221;
        v160 = v237;
        (v220)(v215, v221, v237);
        v161 = sub_1D9326BC4();
        v162 = sub_1D9328234();
        if (os_log_type_enabled(v161, v162))
        {
          LODWORD(v250) = v162;
          v163 = swift_slowAlloc();
          v249 = swift_slowAlloc();
          v254[0] = v249;
          *v163 = 136447234;
          v164 = sub_1D9327744();
          v166 = v165;
          (*(v156 + 8))(v157, v158);
          v167 = sub_1D9293524(v164, v166, v254);

          *(v163 + 4) = v167;
          *(v163 + 12) = 2082;
          sub_1D9290D18(&qword_1EDE3DA68, 255, MEMORY[0x1E6969530]);
          v168 = v215;
          v169 = sub_1D9328614();
          v171 = v170;
          v172 = *(v222 + 8);
          v172(v168, v160);
          v173 = sub_1D9293524(v169, v171, v254);

          *(v163 + 14) = v173;
          *(v163 + 22) = 2082;
          v174 = v248;
          swift_beginAccess();
          if (v227(v174, 1, v160))
          {
            v175 = 7104878;
            v176 = 0xE300000000000000;
          }

          else
          {
            v202 = v172;
            v203 = v212;
            (v220)(v212, v174, v160);
            v204 = sub_1D9326834();
            v176 = v205;
            v206 = v203;
            v172 = v202;
            v202(v206, v160);
            v175 = v204;
          }

          v207 = sub_1D9293524(v175, v176, v254);

          *(v163 + 24) = v207;
          *(v163 + 32) = 1026;
          *(v163 + 34) = v211 & 1;
          *(v163 + 38) = 1026;
          *(v163 + 40) = v224;
          _os_log_impl(&dword_1D928E000, v161, v250, "Ignoring reloading contents for key because it's the exact same as we already have loaded: %{public}s (cachedLastModifiedDate: %{public}s, lastModifiedDate: %{public}s, isDataProtected  (isPlaceholder): %{BOOL,public}d, hasError? %{BOOL,public}d)", v163, 0x2Cu);
          v208 = v249;
          swift_arrayDestroy();
          MEMORY[0x1DA72F920](v208, -1, -1);
          MEMORY[0x1DA72F920](v163, -1, -1);
          swift_unknownObjectRelease();

          v172(v221, v160);
          (*(v228 + 8))(v245, v229);
          swift_unknownObjectRelease();
          sub_1D92933A0(v244, &qword_1ECAFD218, &qword_1D932FEE0);
          v178 = v174;
        }

        else
        {
          swift_unknownObjectRelease();

          v177 = *(v222 + 8);
          v177(v215, v160);
          (*(v156 + 8))(v157, v158);
          v177(v159, v160);
          (*(v228 + 8))(v128, v229);
          swift_unknownObjectRelease();
          sub_1D92933A0(v244, &qword_1ECAFD218, &qword_1D932FEE0);
          v178 = v248;
        }

        sub_1D92933A0(v178, &qword_1ECAFD218, &qword_1D932FEE0);
        v109 = v242;
        goto LABEL_34;
      }
    }

    else
    {
      v129 = v214;
      sub_1D9293400(v125, v214);
      if (v227(v125 + v126, 1, v104) != 1)
      {
        v153 = v125 + v126;
        v154 = v129;
        v155 = v212;
        v210(v212, v153, v104);
        sub_1D9290D18(&qword_1EDE3DA70, 255, MEMORY[0x1E6969530]);
        LODWORD(v217) = sub_1D9327F64();
        v130 = *(v222 + 8);
        v130(v155, v104);
        sub_1D92933A0(v219, &qword_1ECAFD218, &qword_1D932FEE0);
        v130(v154, v104);
        sub_1D92933A0(v218, &qword_1ECAFD218, &qword_1D932FEE0);
        v100 = v250;
        v128 = v245;
        if (v217)
        {
          goto LABEL_40;
        }

LABEL_30:
        v130(v221, v237);
        v101 = v249;
        v99 = v224;
        goto LABEL_31;
      }

      sub_1D92933A0(v219, &qword_1ECAFD218, &qword_1D932FEE0);
      (*(v222 + 8))(v129, v104);
    }

    sub_1D92933A0(v125, &qword_1ECAFD220, &qword_1D93300B0);
    v130 = *(v222 + 8);
    v100 = v250;
    goto LABEL_30;
  }

LABEL_31:
  sub_1D9327794();
  v131 = v101;
  v132 = v255;
  sub_1D93277D4();
  __swift_project_boxed_opaque_existential_1(&v255, v257);
  sub_1D9327AA4();
  v243 = 0;
  sub_1D93277E4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v255);

  v263 = v132;
  v136 = v234;
  v137 = v216;
  v138 = v240;
  (*(v234 + 16))(v216, v131, v240);

  v139 = sub_1D9326BC4();
  v140 = sub_1D9328234();

  if (os_log_type_enabled(v139, v140))
  {
    LODWORD(v246) = v140;
    LODWORD(v224) = v99;
    v141 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    v253 = v237;
    *v141 = 136447490;
    v142 = sub_1D9327744();
    v143 = v138;
    v145 = v144;
    (*(v136 + 8))(v137, v143);
    v146 = sub_1D9293524(v142, v145, &v253);

    *(v141 + 4) = v146;
    *(v141 + 12) = 2082;
    v147 = v241;
    swift_beginAccess();
    v148 = v238;
    v149 = v238[6];
    v150 = v226;
    if (v149(v147, 1, v226))
    {
      v151 = 0xE300000000000000;
      v152 = 7104878;
    }

    else
    {
      v179 = v148[2];
      v240 = v139;
      v180 = v231;
      v179(v231, v147, v150);
      v181 = sub_1D9327B54();
      v151 = v182;
      v183 = v180;
      v139 = v240;
      (v148[1])(v183, v150);
      v152 = v181;
    }

    v184 = sub_1D9293524(v152, v151, &v253);

    *(v141 + 14) = v184;
    *(v141 + 22) = 2082;
    v185 = v242;
    swift_beginAccess();
    v186 = v149(v185, 1, v150);
    v187 = 7104878;
    if (v186)
    {
      v188 = 0xE300000000000000;
    }

    else
    {
      v189 = v238;
      v190 = v139;
      v191 = v231;
      (v238[2])(v231, v185, v150);
      v192 = sub_1D9327B54();
      v188 = v193;
      v194 = v191;
      v139 = v190;
      (v189[1])(v194, v150);
      v187 = v192;
    }

    v109 = v185;
    v195 = sub_1D9293524(v187, v188, &v253);

    *(v141 + 24) = v195;
    *(v141 + 32) = 2082;
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(&v255, v257);
    sub_1D9327AC4();
    v196 = sub_1D9326A24();

    v252 = v196;
    sub_1D92C969C();
    v197 = sub_1D9328394();
    v199 = v198;
    __swift_destroy_boxed_opaque_existential_1Tm(&v255);
    v200 = sub_1D9293524(v197, v199, &v253);

    *(v141 + 34) = v200;
    *(v141 + 42) = 1026;
    *(v141 + 44) = v211 & 1;
    *(v141 + 48) = 1026;
    *(v141 + 50) = v224;
    _os_log_impl(&dword_1D928E000, v139, v246, "Content load successful: loading content for key: %{public}s with data protection level of entry [%{public}s] (system protection level: %{public}s), current state: %{public}s, isDataProtected (isPlaceholder): %{BOOL,public}d, hasError? %{BOOL,public}d", v141, 0x36u);
    v201 = v237;
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v201, -1, -1);
    MEMORY[0x1DA72F920](v141, -1, -1);
    swift_unknownObjectRelease();

    (*(v228 + 8))(v245, v229);
LABEL_23:
    v121 = v248;
    v100 = v250;
    goto LABEL_32;
  }

  swift_unknownObjectRelease();

  (*(v136 + 8))(v137, v138);
  (*(v228 + 8))(v245, v229);
  v109 = v242;
  v121 = v248;
LABEL_32:
  v133 = *(v100 + v247);
  v134 = *(v133 + 16);

  os_unfair_lock_lock(v134);
  v135 = v243;
  sub_1D930D6F8(v100, v249, &v258, v239, &v260, v121, &v261, &v263);
  if (!v135)
  {
    os_unfair_lock_unlock(*(v133 + 16));

    swift_unknownObjectRelease();
    sub_1D92933A0(v244, &qword_1ECAFD218, &qword_1D932FEE0);
    sub_1D92933A0(v121, &qword_1ECAFD218, &qword_1D932FEE0);

LABEL_34:
    sub_1D92933A0(v109, &qword_1ECAFD230, &qword_1D93300C0);
    sub_1D92933A0(v241, &qword_1ECAFD230, &qword_1D93300C0);

    return;
  }

  os_unfair_lock_unlock(*(v133 + 16));
  __break(1u);
}

unint64_t sub_1D9293100(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1D9327774();
  sub_1D9293198(&qword_1EDE3BCE0, MEMORY[0x1E6993DC8]);
  v5 = sub_1D9327F14();

  return sub_1D92931E0(a1, v5);
}

uint64_t sub_1D9293198(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D92931E0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1D9327774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1D9293198(&qword_1EDE3BCD8, MEMORY[0x1E6993DC8]);
      v16 = sub_1D9327F64();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1D92933A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D9293400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D92934B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9293524(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D92935F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D92936FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D92935F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D92D8B14(a5, a6);
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
    result = sub_1D9328494();
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

uint64_t sub_1D92936FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_1D9327774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_53Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_53Tm_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D9293AAC(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v67 = &v65 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v69 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF20, &qword_1D932F5A0);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v72 = &v65 - v9;
  v10 = sub_1D93271E4();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  (MEMORY[0x1EEE9AC00])();
  v66 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v68 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF28, &qword_1D932F5A8);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v18 = &v65 - v17;
  v19 = *(*(type metadata accessor for ControlIconView.Mode(0) - 8) + 64);
  v20 = (MEMORY[0x1EEE9AC00])();
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v65 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v65 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF30, &qword_1D932F5B0);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v65 - v31;
  v33 = (&v65 + *(v30 + 56) - v31);
  sub_1D929705C(v75, &v65 - v31, type metadata accessor for ControlIconView.Mode);
  sub_1D929705C(v76, v33, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D929705C(v32, v27, type metadata accessor for ControlIconView.Mode);
      v36 = *v27;
      v35 = v27[1];
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_19:
        sub_1D92933A0(v32, &qword_1ECAFCF30, &qword_1D932F5B0);
        return 0;
      }

      if (v36 == *v33 && v35 == v33[1])
      {
        v49 = v33[1];

        goto LABEL_35;
      }

      v52 = v33[1];
      v53 = sub_1D9328654();

      if (v53)
      {
        goto LABEL_35;
      }

LABEL_30:
      sub_1D929748C(v32, type metadata accessor for ControlIconView.Mode);
      return 0;
    }

    sub_1D929705C(v32, v25, type metadata accessor for ControlIconView.Mode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = *(v15 + 48);
      sub_1D9297374(v25, v18, &qword_1ECAFCBD8, &qword_1D932E920);
      sub_1D9297374(v33, &v18[v42], &qword_1ECAFCBD8, &qword_1D932E920);
      v44 = v70;
      v43 = v71;
      v45 = *(v70 + 48);
      if (v45(v18, 1, v71) == 1)
      {
        if (v45(&v18[v42], 1, v43) == 1)
        {
          sub_1D92933A0(v18, &qword_1ECAFCBD8, &qword_1D932E920);
          goto LABEL_35;
        }

LABEL_28:
        sub_1D92933A0(v18, &qword_1ECAFCF28, &qword_1D932F5A8);
        goto LABEL_30;
      }

      v51 = v68;
      sub_1D92973DC(v18, v68, &qword_1ECAFCBD8, &qword_1D932E920);
      if (v45(&v18[v42], 1, v43) == 1)
      {
        (*(v44 + 8))(v51, v43);
        goto LABEL_28;
      }

      v62 = &v18[v42];
      v63 = v66;
      (*(v44 + 32))(v66, v62, v43);
      sub_1D9297444(&qword_1EDE3BD40, MEMORY[0x1E697CB10]);
      v57 = sub_1D9327F64();
      v64 = *(v44 + 8);
      v64(v63, v43);
      v64(v51, v43);
      v59 = &qword_1ECAFCBD8;
      v60 = &qword_1D932E920;
      v61 = v18;
LABEL_34:
      sub_1D92933A0(v61, v59, v60);
      if (v57)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    v46 = &qword_1ECAFCBD8;
    v47 = &qword_1D932E920;
    v48 = v25;
LABEL_18:
    sub_1D92933A0(v48, v46, v47);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D929705C(v32, v22, type metadata accessor for ControlIconView.Mode);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v46 = &qword_1ECAFCD48;
      v47 = &qword_1D932EDC8;
      v48 = v22;
      goto LABEL_18;
    }

    v37 = *(v7 + 48);
    v38 = v72;
    sub_1D9297374(v22, v72, &qword_1ECAFCD48, &qword_1D932EDC8);
    sub_1D9297374(v33, v38 + v37, &qword_1ECAFCD48, &qword_1D932EDC8);
    v40 = v73;
    v39 = v74;
    v41 = *(v73 + 48);
    if (v41(v38, 1, v74) == 1)
    {
      if (v41(v38 + v37, 1, v39) == 1)
      {
        sub_1D92933A0(v38, &qword_1ECAFCD48, &qword_1D932EDC8);
        goto LABEL_35;
      }
    }

    else
    {
      v50 = v69;
      sub_1D92973DC(v38, v69, &qword_1ECAFCD48, &qword_1D932EDC8);
      if (v41(v38 + v37, 1, v39) != 1)
      {
        v55 = v38 + v37;
        v56 = v67;
        (*(v40 + 32))(v67, v55, v39);
        sub_1D9290D60(&qword_1ECAFCF38, &qword_1ECAFCD38, &qword_1D932ECB0);
        v57 = sub_1D9327F64();
        v58 = *(v40 + 8);
        v58(v56, v39);
        v58(v50, v39);
        v59 = &qword_1ECAFCD48;
        v60 = &qword_1D932EDC8;
        v61 = v38;
        goto LABEL_34;
      }

      (*(v40 + 8))(v50, v39);
    }

    sub_1D92933A0(v38, &qword_1ECAFCF20, &qword_1D932F5A0);
    goto LABEL_30;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_19;
  }

LABEL_35:
  sub_1D929748C(v32, type metadata accessor for ControlIconView.Mode);
  return 1;
}

uint64_t sub_1D92945A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D92945F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id CHUISLogViewController()
{
  if (CHUISLogViewController_onceToken != -1)
  {
    CHUISLogViewController_cold_1();
  }

  v1 = CHUISLogViewController___logObj;

  return v1;
}

void __CHUISLogViewController_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "ViewController");
  v1 = CHUISLogViewController___logObj;
  CHUISLogViewController___logObj = v0;
}

id CHUISSharedExtensionProvider()
{
  if (CHUISSharedExtensionProvider___once != -1)
  {
    CHUISSharedExtensionProvider_cold_1();
  }

  v1 = CHUISSharedExtensionProvider___instance;

  return v1;
}

void __CHUISSharedExtensionProvider_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E6994398]) initIncludingRelevanceBacked:1];
  v0 = [objc_alloc(MEMORY[0x1E69943D0]) initWithWidgetsPredicate:v3 controlsPredicate:0];
  v1 = [objc_alloc(MEMORY[0x1E69943C0]) initWithOptions:v0];
  v2 = CHUISSharedExtensionProvider___instance;
  CHUISSharedExtensionProvider___instance = v1;
}

id CHUISSceneWorkspace()
{
  if (CHUISSceneWorkspace___once != -1)
  {
    CHUISSceneWorkspace_cold_1();
  }

  v1 = CHUISSceneWorkspace___instance;

  return v1;
}

void __CHUISSceneWorkspace_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"com.apple.chrono"];
  v1 = CHUISSceneWorkspace___instance;
  CHUISSceneWorkspace___instance = v0;
}

void sub_1D9295074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));

  _Unwind_Resume(a1);
}

uint64_t sub_1D92955BC(uint64_t result, uint64_t a2, char a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 24) == *&result && *(v3 + 32) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
    sub_1D93268F4();
    *&result = COERCE_DOUBLE();
    return result;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 24) = *&result;
  *(v3 + 32) = *&a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

void sub_1D929630C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel;
  v5 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);

  sub_1D9326904();

  v6 = *(v5 + 56);

  sub_1D9296448(0, &qword_1EDE3B250, 0x1E6994428);
  v7 = sub_1D9328314();

  if ((v7 & 1) == 0)
  {
    v8 = *&v2[v4];

    sub_1D929C060(a1);

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1D9296448(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_1D9296490(double a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel;
  v4 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);

  sub_1D9326904();

  v5 = *(v4 + 16);

  if (v5 != a1)
  {
    v7 = *&v1[v3];
    if (*(v7 + 16) == a1)
    {
      *(v7 + 16) = a1;
    }

    else
    {
      swift_getKeyPath();
      MEMORY[0x1EEE9AC00]();

      sub_1D93268F4();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D929705C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D92970C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D929712C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9297194(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s16ChronoUIServices15ControlIconViewV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9293AAC(a1, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = type metadata accessor for ControlIconView(0);
  v5 = v4[7];
  v6 = *(a2 + v5);
  if (*(a1 + v5))
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + v5);

    v8 = sub_1D9327364();

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v6)
  {
    goto LABEL_9;
  }

  if (*(a1 + v4[5]) == *(a2 + v4[5]))
  {
    v9 = a1 + v4[8];
    v10 = *v9;
    v11 = *(v9 + 8);
    LOBYTE(v9) = *(v9 + 16);
    v27 = v10;
    v28 = v11;
    v29 = v9;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
    MEMORY[0x1DA72DAB0](&v26);
    v13 = v26;
    v14 = a2 + v4[8];
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v14) = *(v14 + 16);
    v27 = v15;
    v28 = v16;
    v29 = v14;
    MEMORY[0x1DA72DAB0](&v26, v12);
    if (v13 == v26)
    {
      v19 = a1 + v4[9];
      v20 = *v19;
      v21 = *(v19 + 8);
      LOBYTE(v19) = *(v19 + 16);
      v27 = v20;
      v28 = v21;
      v29 = v19;
      MEMORY[0x1DA72DAB0](&v26, v12);
      v22 = v26;
      v23 = a2 + v4[9];
      v24 = *v23;
      v25 = *(v23 + 8);
      LOBYTE(v23) = *(v23 + 16);
      v27 = v24;
      v28 = v25;
      v29 = v23;
      MEMORY[0x1DA72DAB0](&v26, v12);
      v17 = v22 ^ v26 ^ 1;
      return v17 & 1;
    }
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9297374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D92973DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D9297444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D929748C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92974EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__CFString *CHUISWidgetSceneSettingsKeyDescription(uint64_t a1)
{
  if ((a1 - 88889) > 0x1C)
  {
    return @"widget";
  }

  else
  {
    return off_1E8575328[a1 - 88889];
  }
}

id CHUISWidgetSceneSettingsValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((a1 - 88888) <= 0x1D)
  {
    v5 = v3;
  }

  return v4;
}

void sub_1D9297F94()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CHUISSolariumEffectView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];

  [v1 bounds];
  sub_1D92955BC(v3, v4, 0);

  v5 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView];
  [v1 bounds];
  [v5 setFrame_];
}

void sub_1D9298608()
{
  sub_1D9314364(319, &qword_1ECAFC478, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D9326924();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D9298728(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_1D9298774()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_1D9298798()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

Class __getBLSHBacklightFBSceneEnvironmentActionHandlerClass_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!BacklightServicesHostLibraryCore_frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __BacklightServicesHostLibraryCore_block_invoke;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E8575C40;
    v10 = 0;
    BacklightServicesHostLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BacklightServicesHostLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BacklightServicesHostLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"CHUISWidgetHostViewController.m" lineNumber:66 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("BLSHBacklightFBSceneEnvironmentActionHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBLSHBacklightFBSceneEnvironmentActionHandlerClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"CHUISWidgetHostViewController.m" lineNumber:67 description:{@"Unable to find class %s", "BLSHBacklightFBSceneEnvironmentActionHandler"}];

LABEL_10:
    __break(1u);
  }

  getBLSHBacklightFBSceneEnvironmentActionHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id CHUISLogViewControllerTouch()
{
  if (CHUISLogViewControllerTouch_onceToken != -1)
  {
    CHUISLogViewControllerTouch_cold_1();
  }

  v1 = CHUISLogViewControllerTouch___logObj;

  return v1;
}

uint64_t CHUISHasGlobalCaptureEntitlement()
{
  if (CHUISInUnitTests())
  {
    v0 = 1;
  }

  else
  {
    if (CHUISHasGlobalCaptureEntitlement_onceToken != -1)
    {
      CHUISHasGlobalCaptureEntitlement_cold_1();
    }

    v0 = CHUISHasGlobalCaptureEntitlement_hasGlobalCaptureEntitlement;
  }

  return v0 & 1;
}

BOOL CHUISInUnitTests()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"CHS_IN_UNIT_TESTS"];
  v3 = v2 != 0;

  return v3;
}

void __CHUISHasGlobalCaptureEntitlement_block_invoke()
{
  v0 = [MEMORY[0x1E698E740] processHandle];
  CHUISHasGlobalCaptureEntitlement_hasGlobalCaptureEntitlement = [v0 hasEntitlement:@"com.apple.QuartzCore.global-capture"];
}

uint64_t sub_1D92991B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v7 = sub_1D9327034();
  (*(*(v7 - 8) + 16))(a1, v3 + v6, v7);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1D929926C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 64);
  a1[3] = type metadata accessor for SimpleEnvironmentProvider(0);
  a1[4] = sub_1D9299378(&qword_1EDE3DD08, type metadata accessor for SimpleEnvironmentProvider);
  *a1 = v3;
}

void __CHUISLogViewControllerTouch_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "ViewControllerTouch");
  v1 = CHUISLogViewControllerTouch___logObj;
  CHUISLogViewControllerTouch___logObj = v0;
}

uint64_t sub_1D9299378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D92993CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA90, &unk_1ECAFC830, &qword_1D932CC10);
    v2 = v0;
    v1 = sub_1D9326C64();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1D929A344()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2F0, &qword_1D93303F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2E8, &qword_1D9330398);
  sub_1D93145B8();
  sub_1D929AE20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D929A4FC(uint64_t a1)
{
  v65 = a1;
  v1 = sub_1D93279E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D9327034();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v64 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52[-v11];
  v66 = sub_1D9327A04();
  v13 = *(v66 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v66);
  v17 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52[-v18];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v57 = v1;
    v58 = v5;
    v56 = v2;
    v60 = result;
    v21 = *(result + 64);
    v22 = *(v21 + 32);
    v23 = *(v22 + 16);

    os_unfair_lock_lock(v23);
    v24 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
    swift_beginAccess();
    v61 = v7;
    v25 = *(v7 + 16);
    v25(v12, v21 + v24, v6);
    os_unfair_lock_unlock(*(v22 + 16));

    v62 = v12;
    sub_1D93279F4();
    if (qword_1EDE3DAA8 != -1)
    {
      swift_once();
    }

    v26 = sub_1D9326BE4();
    __swift_project_value_buffer(v26, qword_1EDE40178);
    v27 = v13[2];
    v63 = v19;
    v27(v17, v19, v66);
    v28 = v64;
    v59 = v25;
    v25(v64, v65, v6);
    v29 = sub_1D9326BC4();
    v30 = sub_1D9328234();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v58;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v54 = v33;
      v55 = swift_slowAlloc();
      v67 = v55;
      *v33 = 136446210;
      sub_1D93279A4();
      sub_1D93279B4();
      v53 = v30;
      v34 = sub_1D9327994();

      (*(v56 + 8))(v32, v57);
      v58 = MEMORY[0x1DA72E5E0](v34, MEMORY[0x1E69E6158]);
      v35 = v28;
      v37 = v36;

      v38 = v61;
      v64 = *(v61 + 8);
      (v64)(v35, v6);
      v39 = v17;
      v40 = v13[1];
      v40(v39, v66);
      v41 = sub_1D9293524(v58, v37, &v67);

      v42 = v54;
      *(v54 + 1) = v41;
      _os_log_impl(&dword_1D928E000, v29, v53, "ClientEnvironmentProviderFactory systemEnvironmentDidChange, diff old vs new: %{public}s", v42, 0xCu);
      v43 = v55;
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1DA72F920](v43, -1, -1);
      MEMORY[0x1DA72F920](v42, -1, -1);
    }

    else
    {

      v38 = v61;
      v64 = *(v61 + 8);
      (v64)(v28, v6);
      v44 = v17;
      v40 = v13[1];
      v40(v44, v66);
    }

    v45 = v60;
    v46 = *(v60 + 64);
    v47 = v62;
    v59(v62, v65, v6);
    v48 = *(v46 + 32);
    v49 = *(v48 + 16);

    os_unfair_lock_lock(v49);
    v50 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
    swift_beginAccess();
    (*(v38 + 24))(v46 + v50, v47, v6);
    swift_endAccess();
    os_unfair_lock_unlock(*(v48 + 16));

    (v64)(v47, v6);
    v51 = *(*(v45 + 64) + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9326C54();

    return (v40)(v63, v66);
  }

  return result;
}

unint64_t sub_1D929ABFC()
{
  result = qword_1EDE3B2E0;
  if (!qword_1EDE3B2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD300, &qword_1D9330400);
    sub_1D929ACB4();
    sub_1D9290D60(&qword_1EDE3B288, &qword_1ECAFD310, &qword_1D9330440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2E0);
  }

  return result;
}

unint64_t sub_1D929ACB4()
{
  result = qword_1EDE3B2A8;
  if (!qword_1EDE3B2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2F8, &qword_1D93303F8);
    sub_1D929AD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2A8);
  }

  return result;
}

unint64_t sub_1D929AD38()
{
  result = qword_1EDE3B2D0;
  if (!qword_1EDE3B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD338, &qword_1D9330468);
    sub_1D9313FC4(&qword_1EDE3B2B0, MEMORY[0x1E697EAF0]);
    sub_1D9290D60(&qword_1EDE3B290, &qword_1ECAFD340, &qword_1D9330470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2D0);
  }

  return result;
}

unint64_t sub_1D929AE20()
{
  result = qword_1EDE3B260;
  if (!qword_1EDE3B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2E8, &qword_1D9330398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B260);
  }

  return result;
}

uint64_t sub_1D929AE9C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for SolariumEffectView(0);
  v3 = *(v2 - 8);
  v46 = v2;
  v47 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = v5;
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2F0, &qword_1D93303F0);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v12 = sub_1D9326D04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2F8, &qword_1D93303F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v42 - v19;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD300, &qword_1D9330400);
  v21 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v23 = &v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD308, &qword_1D9330408);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v44 = v20;
  v45 = &v42 - v26;
  sub_1D929B608(v20);
  v27 = *v1;
  sub_1D929BACC(v11);
  v28 = *(v13 + 48);
  v29 = v28(v11, 1, v12);
  v50 = v1;
  if (v29 == 1)
  {
    sub_1D9310D80(v16);
    if (v28(v11, 1, v12) != 1)
    {
      sub_1D92933A0(v11, &qword_1ECAFC438, &qword_1D932CA10);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  KeyPath = swift_getKeyPath();
  v31 = &v23[*(v43 + 36)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD310, &qword_1D9330440);
  (*(v13 + 32))(v31 + *(v32 + 28), v16, v12);
  *v31 = KeyPath;
  sub_1D929BDD8(v44, v23);
  swift_getKeyPath();
  v54 = v27;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v33 = *(v27 + 56);
  v34 = v45;
  sub_1D9310F88(v33);

  sub_1D92933A0(v23, &qword_1ECAFD300, &qword_1D9330400);
  v35 = v52;
  v36 = v50;
  sub_1D93111F4(v50, v34);
  v37 = *(v36 + *(v46 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2E8, &qword_1D9330398);
  sub_1D9326CB4();
  v38 = v49;
  sub_1D93144F0(v36, v49);
  v39 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v40 = swift_allocObject();
  sub_1D9314554(v38, v40 + v39);
  sub_1D93145B8();
  sub_1D929AE20();
  sub_1D9327314();

  sub_1D92933A0(v35, &qword_1ECAFD2F0, &qword_1D93303F0);
  return sub_1D92933A0(v34, &qword_1ECAFD308, &qword_1D9330408);
}

uint64_t sub_1D929B46C()
{
  v1 = type metadata accessor for SolariumEffectView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D9326D04();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + *(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D929B608@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD358, &qword_1D93304B0);
  v2 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - v3;
  v33 = sub_1D93275C4();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD338, &qword_1D9330468);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v32 = v1;
  v15 = *v1;
  swift_getKeyPath();
  v37 = v15;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v16 = *(v15 + 48);
  if (v16 == 1)
  {
    swift_getKeyPath();
    v37 = v15;
    sub_1D9326904();

    v17 = *(v15 + 16);
    v18 = *(sub_1D9326E34() + 20);
    v19 = *MEMORY[0x1E697F468];
    v20 = sub_1D9327094();
    (*(*(v20 - 8) + 104))(&v14[v18], v19, v20);
    *v14 = v17;
    *(v14 + 1) = v17;
    sub_1D93275B4();
    sub_1D9327574();
    v21 = *(v4 + 8);
    v22 = v33;
    v21(v8, v33);
    v23 = &v14[*(v11 + 36)];
    sub_1D93275D4();
    v21(v10, v22);
LABEL_5:
    sub_1D92973DC(v14, v34, &qword_1ECAFD338, &qword_1D9330468);
    swift_storeEnumTagMultiPayload();
    sub_1D929AD38();
    sub_1D9327104();
    return sub_1D92933A0(v14, &qword_1ECAFD338, &qword_1D9330468);
  }

  v24 = v4;
  v25 = v33;
  if (!v16)
  {
    swift_getKeyPath();
    v37 = v15;
    sub_1D9326904();

    v26 = *(v15 + 16);
    v27 = *(sub_1D9326E34() + 20);
    v28 = *MEMORY[0x1E697F468];
    v29 = sub_1D9327094();
    (*(*(v29 - 8) + 104))(&v14[v27], v28, v29);
    *v14 = v26;
    *(v14 + 1) = v26;
    sub_1D93114D4(v32, v10);
    v30 = &v14[*(v11 + 36)];
    sub_1D93275D4();
    (*(v24 + 8))(v10, v25);
    goto LABEL_5;
  }

  v37 = *(v15 + 48);
  result = sub_1D9328674();
  __break(1u);
  return result;
}

uint64_t sub_1D929BACC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1D9326D04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v1;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v13 = [*(v1 + 56) filterStyle];
  v14 = 1;
  if (v13 <= 4)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        return (*(v9 + 56))(a1, v14, 1, v8);
      }

      goto LABEL_9;
    }

LABEL_10:
    v16 = MEMORY[0x1E697DBB8];
    goto LABEL_11;
  }

  switch(v13)
  {
    case 5:
      goto LABEL_10;
    case 6:
LABEL_9:
      v16 = MEMORY[0x1E697DBA8];
LABEL_11:
      (*(v9 + 104))(a1, *v16, v8);
      goto LABEL_12;
    case 7:
      swift_getKeyPath();
      v20 = v1;
      sub_1D9326904();

      v15 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
      swift_beginAccess();
      sub_1D92973DC(v2 + v15, v7, &qword_1ECAFC438, &qword_1D932CA10);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_1D92933A0(v7, &qword_1ECAFC438, &qword_1D932CA10);
        v14 = 1;
        return (*(v9 + 56))(a1, v14, 1, v8);
      }

      v18 = *(v9 + 32);
      v18(v12, v7, v8);
      v18(a1, v12, v8);
LABEL_12:
      v14 = 0;
      break;
  }

  return (*(v9 + 56))(a1, v14, 1, v8);
}

uint64_t sub_1D929BDD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2F8, &qword_1D93303F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D929BE48(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SolariumEffectView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1D929BEC8(a1, a2, v6);
}

void sub_1D929BEC8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  [*(v4 + 56) mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1EDE3B248, 0x1E6994328);
  if (swift_dynamicCast())
  {
    if (v3 == 2 || (v3 & 1) == 0)
    {
      v5 = [v7 wantsSubduedGlass];
    }

    else
    {
      v5 = 1;
    }

    [v7 setWantsSubduedGlass_];
    v6 = v7;
    sub_1D929C060(v6);
  }
}

void sub_1D929C060(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  sub_1D9296448(0, &qword_1EDE3B250, 0x1E6994428);
  v5 = v4;
  v6 = sub_1D9328314();

  if (v6)
  {
    v7 = *(v2 + 56);
    *(v2 + 56) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
    sub_1D93268F4();
  }
}

uint64_t sub_1D929C634(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D929C790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  type metadata accessor for ClientEnvironmentProviderFactory();
  v13 = swift_allocObject();
  (*(v6 + 16))(v10, v12, a3);
  v14 = sub_1D929C9B4(v10, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_1D929C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9327034();
  v33 = *(v7 - 8);
  v8 = v33;
  v34 = v7;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = a3;
  v36[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  v13 = *(*(a3 - 8) + 32);
  v32[1] = boxed_opaque_existential_0;
  v13();
  *(a2 + 16) = 0;
  *(a2 + 72) = MEMORY[0x1E69E7CD0];
  sub_1D929CF00(v36, a2 + 24);
  sub_1D9327024();
  v14 = type metadata accessor for SimpleEnvironmentProvider(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v17[2] = sub_1D9326C44();
  v17[3] = 0;
  type metadata accessor for UnfairLock();
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *v22 = 0;
  *(v21 + 16) = v22;
  v17[4] = v21;
  (*(v8 + 32))(v17 + OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues, v11, v7);
  *(a2 + 64) = v17;
  v35 = (*(a4 + 16))(a3, a4);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A0, &qword_1D932FC30);
  sub_1D9290D60(&qword_1EDE3DAA0, &qword_1ECAFD1A0, &qword_1D932FC30);
  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v23 = *(a2 + 64);
  v24 = *(a4 + 8);

  v24(a3, a4);
  v25 = *(v23 + 32);
  v26 = *(v25 + 16);

  os_unfair_lock_lock(v26);
  v27 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v28 = v33;
  v29 = v23 + v27;
  v30 = v34;
  (*(v33 + 24))(v29, v11, v34);
  swift_endAccess();
  os_unfair_lock_unlock(*(v25 + 16));

  (*(v28 + 8))(v11, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return a2;
}

uint64_t sub_1D929CD60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D929CF00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D929D084()
{
  result = sub_1D9327034();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D929D978()
{
  v0 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v0, qword_1EDE40178);
  __swift_project_value_buffer(v0, qword_1EDE40178);
  if (qword_1EDE3DA88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE40170;
  return sub_1D9326BF4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D929DAA0()
{
  sub_1D929DB08();
  result = sub_1D9328364();
  qword_1EDE40170 = result;
  return result;
}

unint64_t sub_1D929DB08()
{
  result = qword_1EDE3DA80;
  if (!qword_1EDE3DA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE3DA80);
  }

  return result;
}

void sub_1D929E208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1D929E468@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D929E490(qword_1EDE3CCC8, a1);
}

uint64_t sub_1D929E490@<X0>(void *a1@<X3>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + *a1);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D929E500@<X0>(void *a1@<X8>)
{
  sub_1D929E550();
  result = sub_1D9327044();
  *a1 = v3;
  return result;
}

unint64_t sub_1D929E550()
{
  result = qword_1EDE3BE00;
  if (!qword_1EDE3BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE00);
  }

  return result;
}

uint64_t sub_1D929E5A4@<X0>(void *a1@<X8>)
{
  if (qword_1EDE3C838 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EDE400F8;
}

uint64_t sub_1D929E614@<X0>(uint64_t a1@<X8>)
{
  v239 = a1;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCD8, &qword_1D932EC68);
  v1 = *(*(v231 - 8) + 64);
  MEMORY[0x1EEE9AC00](v231);
  v220 = &v200 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v219 = &v200 - v5;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF50, &qword_1D932F5C8);
  v6 = *(*(v228 - 8) + 64);
  MEMORY[0x1EEE9AC00](v228);
  v229 = &v200 - v7;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC90, &qword_1D932EC20);
  v8 = *(*(v238 - 8) + 64);
  MEMORY[0x1EEE9AC00](v238);
  v230 = &v200 - v9;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF58, &qword_1D932F5D0);
  v10 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v200 - v11;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCD0, &qword_1D932EC60);
  v12 = *(*(v217 - 8) + 64);
  MEMORY[0x1EEE9AC00](v217);
  v203 = &v200 - v13;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF60, &qword_1D932F5D8);
  v14 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v216 = &v200 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v202 = &v200 - v18;
  v206 = sub_1D9327B74();
  v205 = *(v206 - 8);
  v19 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v212 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCB0, &qword_1D932EC40);
  v21 = *(*(v204 - 8) + 64);
  MEMORY[0x1EEE9AC00](v204);
  v207 = &v200 - v22;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF68, &qword_1D932F5E0);
  v209 = *(v214 - 8);
  v23 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v208 = &v200 - v24;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCA0, &qword_1D932EC30);
  v25 = *(*(v221 - 8) + 64);
  MEMORY[0x1EEE9AC00](v221);
  v215 = &v200 - v26;
  v225 = sub_1D93271E4();
  v226 = *(v225 - 8);
  v27 = *(v226 + 64);
  v28 = MEMORY[0x1EEE9AC00](v225);
  v201 = &v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v218 = &v200 - v30;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC98, &qword_1D932EC28);
  v31 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v222 = &v200 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v200 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v233 = &v200 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v200 = &v200 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v200 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v232 = &v200 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v200 - v48;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC70, &qword_1D932EC00);
  v50 = *(*(v234 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v234);
  v210 = (&v200 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = MEMORY[0x1EEE9AC00](v51);
  v211 = &v200 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = (&v200 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v200 - v58;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF70, &qword_1D932F5E8);
  v60 = *(*(v235 - 8) + 64);
  MEMORY[0x1EEE9AC00](v235);
  v237 = &v200 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF78, &unk_1D932F5F0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v200 - v64;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC68, &qword_1D932EBF8);
  v66 = *(*(v236 - 8) + 64);
  MEMORY[0x1EEE9AC00](v236);
  v68 = &v200 - v67;
  v69 = type metadata accessor for ControlIconView.Mode(0);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = (&v200 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D929705C(v240, v72, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v85 = &qword_1D932EDC8;
      v86 = v219;
      sub_1D9297374(v72, v219, &qword_1ECAFCD48, &qword_1D932EDC8);
      v87 = type metadata accessor for ControlIconView(0);
      v88 = *(v240 + *(v87 + 20));
      v89 = *(v240 + *(v87 + 24));
      v90 = v220;
      sub_1D92973DC(v86, v220, &qword_1ECAFCD48, &qword_1D932EDC8);
      v91 = type metadata accessor for AppIconView(0);
      *(v90 + v91[5]) = v88;
      *(v90 + v91[6]) = v89;
      v92 = v91[7];
      *(v90 + v92) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
      swift_storeEnumTagMultiPayload();
      v93 = (v90 + v91[8]);
      v241 = 0;
      v242 = 0;
      v243 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD58, &qword_1D932EDE8);
      sub_1D93274C4();
      v94 = v245;
      *v93 = v244;
      v93[1] = v94;
      KeyPath = swift_getKeyPath();
      v96 = sub_1D9326CE4();
      v97 = sub_1D9326CE4();
      v98 = v90 + *(v231 + 36);
      *v98 = KeyPath;
      *(v98 + 8) = 0;
      *(v98 + 16) = v96;
      *(v98 + 24) = v97;
      sub_1D92973DC(v90, v229, &qword_1ECAFCCD8, &qword_1D932EC68);
      swift_storeEnumTagMultiPayload();
      sub_1D92A09E8();
      sub_1D92A0A74();
      v99 = v230;
      sub_1D9327104();
      sub_1D92973DC(v99, v237, &qword_1ECAFCC90, &qword_1D932EC20);
      swift_storeEnumTagMultiPayload();
      sub_1D92A0B30();
      sub_1D92A0BBC();
      sub_1D9327104();
      sub_1D92933A0(v99, &qword_1ECAFCC90, &qword_1D932EC20);
      sub_1D92933A0(v90, &qword_1ECAFCCD8, &qword_1D932EC68);
      v100 = v86;
      v101 = &qword_1ECAFCD48;
LABEL_31:
      v151 = v85;
      return sub_1D92933A0(v100, v101, v151);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D92A092C();
    sub_1D9327104();
    v105 = &qword_1ECAFCC68;
    v85 = &qword_1D932EBF8;
    sub_1D92973DC(v68, v237, &qword_1ECAFCC68, &qword_1D932EBF8);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0B30();
    sub_1D92A0BBC();
    sub_1D9327104();
    v100 = v68;
LABEL_30:
    v101 = v105;
    goto LABEL_31;
  }

  if (!EnumCaseMultiPayload)
  {
    v231 = v59;
    v74 = *v72;
    v75 = v72[1];
    sub_1D9327464();
    sub_1D93270D4();
    v76 = sub_1D93270E4();
    (*(*(v76 - 8) + 56))(v49, 0, 1, v76);
    v232 = sub_1D9327474();

    sub_1D92933A0(v49, &qword_1ECAFCE68, &qword_1D932F470);
    v77 = type metadata accessor for ControlIconView(0);
    v78 = v240;
    v79 = *(v240 + v77[5]);
    LODWORD(v233) = *(v240 + v77[6]);
    v80 = (v240 + v77[9]);
    v81 = *v80;
    v82 = v80[1];
    LOBYTE(v80) = *(v80 + 16);
    *&v244 = v81;
    *(&v244 + 1) = v82;
    LOBYTE(v245) = v80;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
    MEMORY[0x1DA72DAB0](&v241, v83);
    v84 = 0;
    if (v241 == 1)
    {
      if (*(v78 + v77[7]))
      {
      }

      else
      {
        v84 = sub_1D92F0C04();
      }
    }

    v240 = v84;
    v138 = sub_1D9326CE4();
    v139 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC80, &qword_1D932EC10) + 36));
    *v139 = v79;
    v140 = type metadata accessor for ImageScaleOverride(0);
    v141 = *(v140 + 20);
    *(v139 + v141) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
    v230 = v79;
    swift_storeEnumTagMultiPayload();
    v142 = *(v140 + 24);
    v143 = v232;

    *(v139 + v142) = sub_1D9326CC4();
    *v57 = v143;
    v57[1] = v138;
    v144 = swift_getKeyPath();
    v145 = sub_1D9326CE4();
    v146 = sub_1D9326CE4();

    v147 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC78, &qword_1D932EC08) + 36);
    *v147 = v144;
    v147[8] = 0;
    *(v147 + 2) = v145;
    *(v147 + 3) = v146;
    v148 = (v57 + *(v234 + 36));
    *v148 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v149 = type metadata accessor for SymbolColorEffect(0);
    v150 = v231;
    *(v148 + v149[5]) = v230;
    *(v148 + v149[6]) = v233;
    *(v148 + v149[7]) = v240;
    v105 = &qword_1ECAFCC70;
    v85 = &qword_1D932EC00;
    sub_1D9297374(v57, v150, &qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92973DC(v150, v65, &qword_1ECAFCC70, &qword_1D932EC00);
    swift_storeEnumTagMultiPayload();
    sub_1D92A092C();
    sub_1D9327104();
    sub_1D92973DC(v68, v237, &qword_1ECAFCC68, &qword_1D932EBF8);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0B30();
    sub_1D92A0BBC();
    sub_1D9327104();
    sub_1D92933A0(v68, &qword_1ECAFCC68, &qword_1D932EBF8);
    v100 = v150;
    goto LABEL_30;
  }

  sub_1D9297374(v72, v233, &qword_1ECAFCBD8, &qword_1D932E920);
  v102 = type metadata accessor for ControlIconView(0);
  v103 = *(v240 + v102[5]);
  if (v103 < 2)
  {
    sub_1D93270D4();
    v106 = 0;
    v104 = v226;
  }

  else
  {
    v104 = v226;
    if (v103 == 3)
    {
      sub_1D93270C4();
    }

    else
    {
      if (v103 != 2)
      {
        v106 = 1;
        goto LABEL_17;
      }

      sub_1D93270B4();
    }

    v106 = 0;
  }

LABEL_17:
  v107 = sub_1D93270E4();
  v108 = *(*(v107 - 8) + 56);
  v108(v45, v106, 1, v107);
  sub_1D9297374(v45, v232, &qword_1ECAFCE68, &qword_1D932F470);
  sub_1D92973DC(v233, v37, &qword_1ECAFCBD8, &qword_1D932E920);
  v109 = v225;
  if ((*(v104 + 48))(v37, 1, v225) == 1)
  {
    sub_1D92933A0(v37, &qword_1ECAFCBD8, &qword_1D932E920);
    if (qword_1ECAFC3D8 != -1)
    {
      swift_once();
    }

    v110 = sub_1D9327474();
    v111 = v240;
    LODWORD(v226) = *(v240 + v102[6]);
    v112 = (v240 + v102[9]);
    v113 = *v112;
    v114 = v112[1];
    LOBYTE(v112) = *(v112 + 16);
    *&v244 = v113;
    *(&v244 + 1) = v114;
    LOBYTE(v245) = v112;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
    MEMORY[0x1DA72DAB0](&v241, v115);
    if (v241 == 1)
    {
      v116 = v102[7];
      v117 = *(v111 + v116);
      if (v117)
      {
        v118 = *(v111 + v116);
      }

      else
      {
        v117 = sub_1D92F0C04();
      }
    }

    else
    {
      v117 = 0;
    }

    v156 = sub_1D9326CE4();
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC80, &qword_1D932EC10);
    v158 = v210;
    v159 = (v210 + *(v157 + 36));
    *v159 = v103;
    v160 = type metadata accessor for ImageScaleOverride(0);
    v161 = *(v160 + 20);
    *(v159 + v161) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
    swift_storeEnumTagMultiPayload();
    v162 = *(v160 + 24);

    *(v159 + v162) = sub_1D9326CC4();
    *v158 = v110;
    v158[1] = v156;
    v163 = swift_getKeyPath();
    v164 = sub_1D9326CE4();
    v165 = sub_1D9326CE4();

    v166 = v158 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC78, &qword_1D932EC08) + 36);
    *v166 = v163;
    v166[8] = 0;
    *(v166 + 2) = v164;
    *(v166 + 3) = v165;
    v167 = (v158 + *(v234 + 36));
    *v167 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v168 = type metadata accessor for SymbolColorEffect(0);
    *(v167 + v168[5]) = v103;
    *(v167 + v168[6]) = v226;
    *(v167 + v168[7]) = v117;
    v169 = v211;
    sub_1D9297374(v158, v211, &qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92973DC(v169, v224, &qword_1ECAFCC70, &qword_1D932EC00);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0850();
    sub_1D92A092C();
    v170 = v222;
    sub_1D9327104();
    sub_1D92933A0(v169, &qword_1ECAFCC70, &qword_1D932EC00);
  }

  else
  {
    v220 = v103;
    v119 = v218;
    (*(v104 + 32))(v218, v37, v109);
    if (sub_1D93271D4())
    {
      (*(v104 + 16))(v201, v119, v109);
      sub_1D92973DC(v232, v200, &qword_1ECAFCE68, &qword_1D932F470);
      v120 = v240;
      if (*(v240 + v102[10]) == 1)
      {
        v121 = (v240 + v102[8]);
        v122 = *v121;
        v123 = v121[1];
        LOBYTE(v121) = *(v121 + 16);
        *&v244 = v122;
        *(&v244 + 1) = v123;
        LOBYTE(v245) = v121;
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
        MEMORY[0x1DA72DAB0](&v241, v124);
      }

      sub_1D92973DC(v120 + v102[11], v202, &qword_1ECAFCBE0, &qword_1D932E928);
      sub_1D9327B94();
      sub_1D9327BA4();
      sub_1D9327BB4();
      sub_1D9327B84();
      LODWORD(v202) = *(v120 + v102[6]);
      v152 = v120 + v102[9];
      v153 = *v152;
      v154 = *(v152 + 8);
      LODWORD(v152) = *(v152 + 16);
      v219 = v153;
      *&v244 = v153;
      *(&v244 + 1) = v154;
      v211 = v154;
      LODWORD(v210) = v152;
      LOBYTE(v245) = v152;
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
      MEMORY[0x1DA72DAB0](&v241);
      v155 = 0;
      if (v241 == 1)
      {
        if (*(v120 + v102[7]))
        {
        }

        else
        {
          v155 = sub_1D92F0C04();
        }
      }

      v201 = v155;
      v171 = sub_1D9326CE4();
      v172 = v205;
      v173 = v207;
      v174 = v212;
      v175 = v206;
      (*(v205 + 16))(v207, v212, v206);
      *(v173 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCC8, &qword_1D932EC58) + 36)) = v171;
      v176 = (v173 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCC0, &qword_1D932EC50) + 36));
      v177 = v220;
      *v176 = v220;
      v178 = type metadata accessor for ImageScaleOverride(0);
      v179 = *(v178 + 20);
      *(v176 + v179) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
      swift_storeEnumTagMultiPayload();
      v180 = *(v178 + 24);
      *(v176 + v180) = sub_1D9326CC4();
      v181 = swift_getKeyPath();
      v182 = sub_1D9326CE4();
      v183 = sub_1D9326CE4();
      (*(v172 + 8))(v174, v175);
      v184 = v173 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCB8, &qword_1D932EC48) + 36);
      *v184 = v181;
      *(v184 + 8) = 0;
      *(v184 + 16) = v182;
      *(v184 + 24) = v183;
      v185 = (v173 + *(v204 + 36));
      *v185 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v186 = type metadata accessor for SymbolColorEffect(0);
      *(v185 + v186[5]) = v177;
      *(v185 + v186[6]) = v202;
      *(v185 + v186[7]) = v201;
      v187 = (v240 + v102[8]);
      v188 = *v187;
      v189 = v187[1];
      LOBYTE(v187) = *(v187 + 16);
      *&v244 = v188;
      *(&v244 + 1) = v189;
      LOBYTE(v245) = v187;
      sub_1D9327524();
      v190 = v241;
      v191 = v242;
      v192 = v243;
      *&v244 = v219;
      *(&v244 + 1) = v211;
      LOBYTE(v245) = v210;
      sub_1D9327524();
      v193 = v208;
      sub_1D92A0568(v190, v191, v192, v241, v242, v243, v208);

      sub_1D92933A0(v173, &qword_1ECAFCCB0, &qword_1D932EC40);
      v194 = v209;
      v195 = v214;
      (*(v209 + 16))(v216, v193, v214);
      swift_storeEnumTagMultiPayload();
      v196 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
      v197 = sub_1D92F8D38();
      *&v244 = v196;
      *(&v244 + 1) = MEMORY[0x1E69E6370];
      *&v245 = v197;
      *(&v245 + 1) = MEMORY[0x1E69E6388];
      swift_getOpaqueTypeConformance2();
      sub_1D92A0794();
      v137 = v215;
      sub_1D9327104();
      (*(v194 + 8))(v193, v195);
      v109 = v225;
      v119 = v218;
    }

    else
    {
      v108(v49, 1, 1, v107);
      v125 = sub_1D93271A4();
      sub_1D92933A0(v49, &qword_1ECAFCE68, &qword_1D932F470);
      v126 = *(v240 + v102[6]);
      v127 = *(type metadata accessor for RasterizedImageView(0) + 32);
      v128 = swift_getKeyPath();
      v129 = v203;
      *&v203[v127] = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
      swift_storeEnumTagMultiPayload();
      v130 = v220;
      *v129 = v125;
      *(v129 + 8) = v130;
      *(v129 + 16) = v126;
      *(v129 + 24) = 0;
      *(v129 + 32) = 0;
      *(v129 + 40) = 1;
      v131 = swift_getKeyPath();
      v132 = sub_1D9326CE4();
      v133 = sub_1D9326CE4();
      v134 = v129 + *(v217 + 36);
      *v134 = v131;
      *(v134 + 8) = 0;
      *(v134 + 16) = v132;
      *(v134 + 24) = v133;
      sub_1D92973DC(v129, v216, &qword_1ECAFCCD0, &qword_1D932EC60);
      swift_storeEnumTagMultiPayload();
      v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
      v136 = sub_1D92F8D38();
      *&v244 = v135;
      *(&v244 + 1) = MEMORY[0x1E69E6370];
      *&v245 = v136;
      *(&v245 + 1) = MEMORY[0x1E69E6388];
      swift_getOpaqueTypeConformance2();
      sub_1D92A0794();
      v137 = v215;
      sub_1D9327104();
      sub_1D92933A0(v129, &qword_1ECAFCCD0, &qword_1D932EC60);
    }

    sub_1D92973DC(v137, v224, &qword_1ECAFCCA0, &qword_1D932EC30);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0850();
    sub_1D92A092C();
    v170 = v222;
    sub_1D9327104();
    sub_1D92933A0(v137, &qword_1ECAFCCA0, &qword_1D932EC30);
    (*(v226 + 8))(v119, v109);
  }

  sub_1D92973DC(v170, v229, &qword_1ECAFCC98, &qword_1D932EC28);
  swift_storeEnumTagMultiPayload();
  sub_1D92A09E8();
  sub_1D92A0A74();
  v198 = v230;
  sub_1D9327104();
  sub_1D92973DC(v198, v237, &qword_1ECAFCC90, &qword_1D932EC20);
  swift_storeEnumTagMultiPayload();
  sub_1D92A0B30();
  sub_1D92A0BBC();
  sub_1D9327104();
  sub_1D92933A0(v198, &qword_1ECAFCC90, &qword_1D932EC20);
  sub_1D92933A0(v170, &qword_1ECAFCC98, &qword_1D932EC28);
  sub_1D92933A0(v232, &qword_1ECAFCE68, &qword_1D932F470);
  v101 = &qword_1ECAFCBD8;
  v151 = &qword_1D932E920;
  v100 = v233;
  return sub_1D92933A0(v100, v101, v151);
}

uint64_t sub_1D92A041C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9326FA4();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A0448(uint64_t *a1)
{
  v1 = *a1;

  return sub_1D9326FB4();
}

uint64_t sub_1D92A047C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D929E614(a2);
  v5 = *(v2 + *(a1 + 20));
  v6 = sub_1D9326CA4();
  v7 = sub_1D9326CA4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD0, &qword_1D932E918);
  v9 = (a2 + *(result + 36));
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;
  return result;
}

uint64_t sub_1D92A0568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v23[1] = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCA8, &qword_1D932EC38);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  sub_1D92973DC(v7, v17, &qword_1ECAFCCB0, &qword_1D932EC40);
  v19 = &v17[*(v14 + 36)];
  *v19 = sub_1D92FAFA4;
  *(v19 + 1) = v18;
  v26 = a1;
  v27 = a2;
  v28 = a3;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  MEMORY[0x1DA72DAB0](&v25, v20);
  v24 = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  sub_1D92F8D38();

  sub_1D9327324();

  return sub_1D92933A0(v17, &qword_1ECAFCCA8, &qword_1D932EC38);
}

unint64_t sub_1D92A0794()
{
  result = qword_1EDE3BEE0;
  if (!qword_1EDE3BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCD0, &qword_1D932EC60);
    sub_1D9297444(qword_1EDE3CE50, type metadata accessor for RasterizedImageView);
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEE0);
  }

  return result;
}

unint64_t sub_1D92A0850()
{
  result = qword_1EDE3BDD0;
  if (!qword_1EDE3BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA0, &qword_1D932EC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
    sub_1D92F8D38();
    swift_getOpaqueTypeConformance2();
    sub_1D92A0794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDD0);
  }

  return result;
}

unint64_t sub_1D92A092C()
{
  result = qword_1EDE3BE30;
  if (!qword_1EDE3BE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92F8B1C();
    sub_1D9297444(qword_1EDE3D0E8, type metadata accessor for SymbolColorEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE30);
  }

  return result;
}

unint64_t sub_1D92A09E8()
{
  result = qword_1EDE3BDB0;
  if (!qword_1EDE3BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC98, &qword_1D932EC28);
    sub_1D92A0850();
    sub_1D92A092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDB0);
  }

  return result;
}

unint64_t sub_1D92A0A74()
{
  result = qword_1EDE3BEF0;
  if (!qword_1EDE3BEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCD8, &qword_1D932EC68);
    sub_1D9297444(&qword_1EDE3DA10, type metadata accessor for AppIconView);
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEF0);
  }

  return result;
}

unint64_t sub_1D92A0B30()
{
  result = qword_1EDE3BDC8;
  if (!qword_1EDE3BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC68, &qword_1D932EBF8);
    sub_1D92A092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDC8);
  }

  return result;
}

unint64_t sub_1D92A0BBC()
{
  result = qword_1EDE3BD98;
  if (!qword_1EDE3BD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC90, &qword_1D932EC20);
    sub_1D92A09E8();
    sub_1D92A0A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BD98);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D92A0C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v41 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB8, &qword_1D932F548);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v35 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEC0, &qword_1D932F550);
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v35 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEC8, &qword_1D932F558);
  v10 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCED0, &qword_1D932F560);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCED8, &qword_1D932F568);
  v20 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v22 = &v35 - v21;
  sub_1D9326CB4();
  if ((v44 & 1) != 0 || (sub_1D9326CB4(), v44 == 1))
  {
    if (a2 == 1)
    {
      sub_1D9326CB4();
      if (v44 == 1)
      {
        v23 = sub_1D9327064();
      }

      else
      {
        v23 = sub_1D9327074();
      }

      v29 = v23;
      v42 = 0;
      v43 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF08, &qword_1D932F598);
      sub_1D93274C4();
      v30 = v44;
      v31 = v45;
      v32 = v46;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
      (*(*(v33 - 8) + 16))(v17, v38, v33);
      v34 = &v17[*(v13 + 36)];
      *v34 = v29;
      *(v34 + 1) = v30;
      v34[16] = v31;
      *(v34 + 3) = v32;
      sub_1D9297374(v17, v19, &qword_1ECAFCED0, &qword_1D932F560);
      sub_1D92973DC(v19, v12, &qword_1ECAFCED0, &qword_1D932F560);
      swift_storeEnumTagMultiPayload();
      sub_1D92A144C();
      sub_1D92A1394();
      sub_1D9327104();
      v24 = v19;
      v25 = &qword_1ECAFCED0;
      v26 = &qword_1D932F560;
    }

    else
    {
      sub_1D92A11FC(v38, v9);
      sub_1D92973DC(v9, v12, &qword_1ECAFCEC0, &qword_1D932F550);
      swift_storeEnumTagMultiPayload();
      sub_1D92A144C();
      sub_1D92A1394();
      sub_1D9327104();
      v24 = v9;
      v25 = &qword_1ECAFCEC0;
      v26 = &qword_1D932F550;
    }

    sub_1D92933A0(v24, v25, v26);
    sub_1D92973DC(v22, v6, &qword_1ECAFCED8, &qword_1D932F568);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
    sub_1D92A1504();
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570);
    sub_1D9327104();
    return sub_1D92933A0(v22, &qword_1ECAFCED8, &qword_1D932F568);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
    (*(*(v27 - 8) + 16))(v6, v38, v27);
    swift_storeEnumTagMultiPayload();
    sub_1D92A1504();
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570);
    return sub_1D9327104();
  }
}

uint64_t sub_1D92A11F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v4 = v2[2];
  return sub_1D92A0C5C(a1, *v2, a2);
}

uint64_t sub_1D92A11FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9327444();
  KeyPath = swift_getKeyPath();
  v6 = sub_1D9326CE4();
  v7 = sub_1D9326CE4();
  v8 = sub_1D93273A4();
  v9 = sub_1D93270A4();
  sub_1D9326CB4();
  if (v16 == 1)
  {
    v10 = sub_1D9327064();
  }

  else
  {
    v10 = sub_1D9327074();
  }

  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEC0, &qword_1D932F550) + 36);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF00, &qword_1D932F590);
  v15 = (v12 + *(result + 36));
  *v15 = v9;
  v15[1] = v11;
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

unint64_t sub_1D92A1394()
{
  result = qword_1EDE3BE48;
  if (!qword_1EDE3BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCEC0, &qword_1D932F550);
    sub_1D92FAE3C();
    sub_1D9290D60(&qword_1EDE3BE18, &qword_1ECAFCF00, &qword_1D932F590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE48);
  }

  return result;
}

unint64_t sub_1D92A144C()
{
  result = qword_1EDE3BEC0;
  if (!qword_1EDE3BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCED0, &qword_1D932F560);
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570);
    sub_1D92FADE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEC0);
  }

  return result;
}

unint64_t sub_1D92A1504()
{
  result = qword_1EDE3BDE8;
  if (!qword_1EDE3BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCED8, &qword_1D932F568);
    sub_1D92A144C();
    sub_1D92A1394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDE8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D92A159C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_1D92A165C(*v2, *(v2 + 8));
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDB0, &qword_1D932F3C0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDB8, &qword_1D932F3C8);
  v11 = (a2 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v7;
  return result;
}

uint64_t sub_1D92A165C(uint64_t a1, char a2)
{
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDC0, &qword_1D932F3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD78, &qword_1D932F328);
  sub_1D9326CB4();
  if (v18)
  {

    if ((a2 & 1) == 0)
    {
      sub_1D9328224();
      v13 = sub_1D93271F4();
      sub_1D9326BB4();

      sub_1D9327024();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v5 + 8))(v8, v4);
      a1 = v17;
    }
  }

  else
  {
    v14 = sub_1D9327234();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    a1 = sub_1D9327254();
    sub_1D92933A0(v12, &qword_1ECAFCDC0, &qword_1D932F3D0);
  }

  sub_1D9326CB4();
  if ((v18 & 1) == 0 && a1)
  {

    sub_1D9327244();
    v15 = sub_1D9327264();

    return v15;
  }

  return a1;
}

uint64_t sub_1D92A1900@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D9327494();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D92A196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D92A19D0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1D92A19D0()
{
  result = qword_1EDE3BD08;
  if (!qword_1EDE3BD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC18, &qword_1D932EA28);
    sub_1D9297444(&qword_1EDE3BD10, MEMORY[0x1E69816E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BD08);
  }

  return result;
}

uint64_t sub_1D92A1A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_1D9327034();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9327494();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2 + *(type metadata accessor for ImageScaleOverride(0) + 20);
  sub_1D92A1DC8(v12);
  sub_1D92A1FA8();
  sub_1D9327044();
  (*(v9 + 8))(v12, v8);
  v19 = *(v14 + 48);
  if (v19(v7, 1, v13) == 1)
  {
    sub_1D92A1FFC(v17);
    if (v19(v7, 1, v13) != 1)
    {
      sub_1D92933A0(v7, &qword_1ECAFCC18, &qword_1D932EA28);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v7, v13);
  }

  KeyPath = swift_getKeyPath();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD90, &qword_1D932F370) + 36));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD98, &qword_1D932F378);
  (*(v14 + 32))(v21 + *(v22 + 28), v17, v13);
  *v21 = KeyPath;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA0, &qword_1D932F380);
  return (*(*(v23 - 8) + 16))(a2, v26, v23);
}

uint64_t sub_1D92A1DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  sub_1D92973DC(v2, &v16 - v11, &qword_1ECAFCDA8, &qword_1D932F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v12, v4);
  }

  v14 = *v12;
  sub_1D9328224();
  v15 = sub_1D93271F4();
  sub_1D9326BB4();

  sub_1D9327024();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D92A1FA8()
{
  result = qword_1EDE3BE08;
  if (!qword_1EDE3BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE08);
  }

  return result;
}

uint64_t sub_1D92A1FFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327494();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for ImageScaleOverride(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD60, &qword_1D932EED8);
  sub_1D9326CB4();
  v9 = v16;
  if (v16)
  {
    v10 = v15;
    if (v15 == 0x6C6C616D73 && v16 == 0xE500000000000000 || (sub_1D9328654() & 1) != 0)
    {

      v11 = MEMORY[0x1E69816C8];
      return (*(v4 + 104))(a1, *v11, v3);
    }

    if (v10 == 0x6D756964656DLL && v9 == 0xE600000000000000 || (sub_1D9328654() & 1) != 0)
    {

      v11 = MEMORY[0x1E69816E0];
      return (*(v4 + 104))(a1, *v11, v3);
    }

    if (v10 == 0x656772616CLL && v9 == 0xE500000000000000 || (sub_1D9328654() & 1) != 0)
    {

      v11 = MEMORY[0x1E69816C0];
      return (*(v4 + 104))(a1, *v11, v3);
    }

    if (v10 == 0xD000000000000014 && 0x80000001D9337340 == v9 || (sub_1D9328654() & 1) != 0)
    {

      v11 = MEMORY[0x1E69816B0];
      return (*(v4 + 104))(a1, *v11, v3);
    }

    if (v10 == 0xD000000000000015 && 0x80000001D9337320 == v9 || (sub_1D9328654() & 1) != 0)
    {

      v11 = MEMORY[0x1E69816B8];
      return (*(v4 + 104))(a1, *v11, v3);
    }

    if (v10 == 0xD000000000000014 && 0x80000001D9337300 == v9)
    {

LABEL_27:
      v11 = MEMORY[0x1E69816A8];
      return (*(v4 + 104))(a1, *v11, v3);
    }

    v13 = sub_1D9328654();

    if (v13)
    {
      goto LABEL_27;
    }
  }

  if (*v1 > 3uLL)
  {
    v14 = MEMORY[0x1E69816E0];
  }

  else
  {
    v14 = qword_1E8575F18[*v1];
  }

  (*(v4 + 104))(v7, *v14, v3);
  return (*(v4 + 32))(a1, v7, v3);
}

uint64_t sub_1D92A2358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD78, &qword_1D932F328);
  sub_1D9326CB4();
  if (v11)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v10;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD80, &qword_1D932F330);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD88, &qword_1D932F338);
  v9 = a2 + *(result + 36);
  *v9 = 0;
  *(v9 + 8) = v6;
  return result;
}

uint64_t ControlIconView.init(systemName:tint:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v9 = type metadata accessor for ControlIconView.Mode(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a1;
  v12[1] = a2;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v30) = a4;
  sub_1D9327544();
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v29 = a4;
  sub_1D9327544();
  v26 = v31;
  v27 = v30;
  v16 = v32;
  v17 = type metadata accessor for ControlIconView(0);
  v18 = v17[7];
  *(a5 + v17[10]) = 1;
  v19 = v17[11];
  v20 = sub_1D9326E44();
  (*(*(v20 - 8) + 56))(a5 + v19, 1, 1, v20);
  v21 = a5 + v17[12];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  sub_1D929705C(v12, a5, type metadata accessor for ControlIconView.Mode);
  *(a5 + v17[5]) = 0;
  *(a5 + v17[6]) = 1;
  *(a5 + v18) = v28;
  v22 = a5 + v17[8];
  *v22 = v13;
  *(v22 + 8) = v14;
  *(v22 + 16) = v15;
  result = sub_1D929748C(v12, type metadata accessor for ControlIconView.Mode);
  v24 = a5 + v17[9];
  v25 = v26;
  *v24 = v27;
  *(v24 + 8) = v25;
  *(v24 + 16) = v16;
  return result;
}

uint64_t sub_1D92A2628@<X0>(void *a1@<X8>)
{
  sub_1D929E550();
  result = sub_1D9327044();
  *a1 = v3;
  return result;
}

uint64_t ControlIconView.controlIconViewStyle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D929705C(v2, a2, type metadata accessor for ControlIconView);
  result = type metadata accessor for ControlIconView(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1D92A26E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for SymbolColorEffect(0) + 28)))
  {
    sub_1D92A1DC8(v7);
    sub_1D92A40DC(v26, 0.4, 0.6);
    result = (*(v4 + 8))(v7, v3);
    v9 = v26[0];
    v10 = v26[1];
    v11 = v26[2];
    v12 = v27;
    v13 = v28;
    v14 = vmulq_f32(v29, vdupq_n_s32(0x3F0CCCCDu));
    v15 = v30 * 0.55;
  }

  else
  {
    sub_1D9327374();
    sub_1D92A1DC8(v7);
    sub_1D93273E4();
    v17 = v16;
    sub_1D93273F4();
    *&v19 = v18 * v17;
    v24 = v19;
    sub_1D9327414();
    *&v21 = v17 * v20;
    v25 = v21;
    sub_1D9327404();
    v23 = v22;

    result = (*(v4 + 8))(v7, v3);
    *&v10 = v24;
    v13 = v17 * v23;
    *(&v10 + 1) = COERCE_UNSIGNED_INT(1.0);
    LODWORD(v11) = 0;
    HIDWORD(v11) = 0;
    *(&v11 + 4) = v25;
    v12 = 1065353216;
    v14 = xmmword_1D932E8E0;
    v9 = xmmword_1D932E8A0;
    v15 = 0.0;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 60) = v14;
  *(a1 + 76) = v15;
  return result;
}

uint64_t sub_1D92A292C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v124 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDC8, &qword_1D932F3D8);
  v3 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v99 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDD0, &qword_1D932F3E0);
  v5 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v99 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDD8, &qword_1D932F3E8);
  v7 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v99 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDE0, &qword_1D932F3F0);
  v9 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v99 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDE8, &qword_1D932F3F8);
  v11 = *(*(v110 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v110);
  v102 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v99 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDF0, &qword_1D932F400);
  v15 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v101 = &v99 - v16;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDF8, &qword_1D932F408);
  v17 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v99 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE00, &qword_1D932F410);
  v19 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v99 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE08, &qword_1D932F418);
  v21 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v23 = &v99 - v22;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE10, &qword_1D932F420);
  v24 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v108 = &v99 - v25;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE18, &qword_1D932F428);
  v26 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v28 = &v99 - v27;
  v115 = sub_1D9327034();
  v29 = *(v115 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v115);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v99 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v99 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE20, &qword_1D932F430);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v99 - v41;
  v43 = type metadata accessor for SymbolColorEffect(0);
  v44 = *(v2 + v43[5]);
  if (v44 > 1)
  {
    if (v44 == 3)
    {
      v75 = v28;
      sub_1D92A1DC8(v38);
      sub_1D92F8514();
      sub_1D9327044();
      v76 = *(v29 + 8);
      v77 = v115;
      v76(v38, v115);
      v78 = v128;
      sub_1D92A1DC8(v36);
      sub_1D92F8568();
      sub_1D9327044();
      v76(v36, v77);
      v79 = v128;
      sub_1D92A1DC8(v33);
      sub_1D92F85BC();
      sub_1D9327044();
      v76(v33, v77);
      v80 = v128;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
      v82 = v105;
      (*(*(v81 - 8) + 16))(v105, v120, v81);
      v83 = (v82 + *(v113 + 36));
      *v83 = v78;
      v83[1] = v79;
      v83[2] = v80;
      sub_1D92973DC(v82, v112, &qword_1ECAFCDC8, &qword_1D932F3D8);
      swift_storeEnumTagMultiPayload();
      sub_1D92FA3D8();
      sub_1D92FA574();
      v84 = v114;
      sub_1D9327104();
      sub_1D92973DC(v84, v118, &qword_1ECAFCDD8, &qword_1D932F3E8);
      swift_storeEnumTagMultiPayload();
      sub_1D92A4318();
      sub_1D92A45C0();
      sub_1D9327104();
      sub_1D92933A0(v84, &qword_1ECAFCDD8, &qword_1D932F3E8);
      sub_1D92973DC(v75, v123, &qword_1ECAFCE18, &qword_1D932F428);
      swift_storeEnumTagMultiPayload();
      sub_1D92A43A4();
      sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
      sub_1D9327104();
      sub_1D92933A0(v75, &qword_1ECAFCE18, &qword_1D932F428);
      v55 = v82;
      v56 = &qword_1ECAFCDC8;
      v57 = &qword_1D932F3D8;
    }

    else
    {
      if (v44 != 2)
      {
        goto LABEL_9;
      }

      sub_1D92A1DC8(v38);
      sub_1D92FA658();
      sub_1D9327044();
      (*(v29 + 8))(v38, v115);
      v52 = v128;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
      (*(*(v53 - 8) + 16))(v42, v120, v53);
      *&v42[*(v39 + 36)] = v52;
      sub_1D92973DC(v42, v23, &qword_1ECAFCE20, &qword_1D932F430);
      swift_storeEnumTagMultiPayload();
      sub_1D92A4234();
      sub_1D92A4430();
      v54 = v108;
      sub_1D9327104();
      sub_1D92973DC(v54, v118, &qword_1ECAFCE10, &qword_1D932F420);
      swift_storeEnumTagMultiPayload();
      sub_1D92A4318();
      sub_1D92A45C0();
      sub_1D9327104();
      sub_1D92933A0(v54, &qword_1ECAFCE10, &qword_1D932F420);
      sub_1D92973DC(v28, v123, &qword_1ECAFCE18, &qword_1D932F428);
      swift_storeEnumTagMultiPayload();
      sub_1D92A43A4();
      sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
      sub_1D9327104();
      sub_1D92933A0(v28, &qword_1ECAFCE18, &qword_1D932F428);
      v55 = v42;
      v56 = &qword_1ECAFCE20;
      v57 = &qword_1D932F430;
    }
  }

  else
  {
    v45 = v43;
    if (v44)
    {
      if (v44 == 1)
      {
        v46 = *(v2 + v43[7]);
        v100 = v28;
        if (v46)
        {
          swift_retain_n();
          v47 = sub_1D9327394();
          sub_1D92A1DC8(v38);
          v109 = sub_1D92F62C8(0.1, v47, v38, v46);

          v48 = *(v29 + 8);
          v49 = v115;
          v48(v38, v115);

          v50 = sub_1D9327394();
          v51 = v2;
          sub_1D92A1DC8(v38);
          sub_1D92F62C8(0.1, v50, v38, v46);

          v48(v38, v49);
        }

        else
        {
          v51 = v2;
          v49 = v115;
          if (*(v2 + v43[6]))
          {
            v109 = sub_1D9327374();
            sub_1D9327374();
          }

          else
          {
            v109 = sub_1D93273B4();
            sub_1D93273B4();
          }
        }

        v85 = sub_1D93273C4();

        if (v46)
        {
          v86 = sub_1D9327394();
          sub_1D92A1DC8(v38);
          sub_1D92F62C8(0.1, v86, v38, v46);

          (*(v29 + 8))(v38, v49);
        }

        else if (*(v51 + v45[6]))
        {
          sub_1D9327374();
        }

        else
        {
          sub_1D93273B4();
        }

        v87 = v120;
        v88 = v104;
        v89 = v103;
        v90 = v102;
        v91 = sub_1D93273C4();

        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
        (*(*(v92 - 8) + 16))(v88, v87, v92);
        v93 = (v88 + *(v89 + 36));
        *v93 = v109;
        v93[1] = v85;
        v93[2] = v91;
        v94 = MEMORY[0x1DA72DBA0](0.5, 1.0, 0.0);
        sub_1D9297374(v88, v90, &qword_1ECAFCDE0, &qword_1D932F3F0);
        v95 = (v90 + *(v110 + 36));
        *v95 = v94;
        v95[1] = v46;
        v96 = v106;
        sub_1D9297374(v90, v106, &qword_1ECAFCDE8, &qword_1D932F3F8);
        sub_1D92973DC(v96, v112, &qword_1ECAFCDE8, &qword_1D932F3F8);
        swift_storeEnumTagMultiPayload();
        sub_1D92FA3D8();
        sub_1D92FA574();

        v97 = v114;
        sub_1D9327104();
        sub_1D92973DC(v97, v118, &qword_1ECAFCDD8, &qword_1D932F3E8);
        swift_storeEnumTagMultiPayload();
        sub_1D92A4318();
        sub_1D92A45C0();
        v98 = v100;
        sub_1D9327104();
        sub_1D92933A0(v97, &qword_1ECAFCDD8, &qword_1D932F3E8);
        sub_1D92973DC(v98, v123, &qword_1ECAFCE18, &qword_1D932F428);
        swift_storeEnumTagMultiPayload();
        sub_1D92A43A4();
        sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
        sub_1D9327104();
        sub_1D92933A0(v98, &qword_1ECAFCE18, &qword_1D932F428);
        v55 = v96;
        v56 = &qword_1ECAFCDE8;
        v57 = &qword_1D932F3F8;
        return sub_1D92933A0(v55, v56, v57);
      }

LABEL_9:
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
      (*(*(v58 - 8) + 16))(v123, v120, v58);
      swift_storeEnumTagMultiPayload();
      sub_1D92A43A4();
      sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
      return sub_1D9327104();
    }

    v100 = v28;
    sub_1D92A3F14(v125);
    sub_1D92A26E4(v126);
    sub_1D92A3CCC(v127);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
    v61 = v101;
    (*(*(v60 - 8) + 16))(v101, v120, v60);
    v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE38, &qword_1D932F448) + 36));
    v63 = v127[3];
    v62[12] = v127[2];
    v62[13] = v63;
    v62[14] = v127[4];
    v64 = v126[4];
    v62[8] = v126[3];
    v62[9] = v64;
    v65 = v127[1];
    v62[10] = v127[0];
    v62[11] = v65;
    v66 = v126[0];
    v62[4] = v125[4];
    v62[5] = v66;
    v67 = v126[2];
    v62[6] = v126[1];
    v62[7] = v67;
    v68 = v125[1];
    *v62 = v125[0];
    v62[1] = v68;
    v69 = v125[3];
    v62[2] = v125[2];
    v62[3] = v69;
    v70 = MEMORY[0x1DA72DBA0](0.2, 1.0, 0.0);
    v71 = *(v2 + v45[7]);
    v72 = (v61 + *(v109 + 36));
    *v72 = v70;
    v72[1] = v71;
    sub_1D92973DC(v61, v23, &qword_1ECAFCDF0, &qword_1D932F400);
    swift_storeEnumTagMultiPayload();
    sub_1D92A4234();
    sub_1D92A4430();

    v73 = v108;
    sub_1D9327104();
    sub_1D92973DC(v73, v118, &qword_1ECAFCE10, &qword_1D932F420);
    swift_storeEnumTagMultiPayload();
    sub_1D92A4318();
    sub_1D92A45C0();
    v74 = v100;
    sub_1D9327104();
    sub_1D92933A0(v73, &qword_1ECAFCE10, &qword_1D932F420);
    sub_1D92973DC(v74, v123, &qword_1ECAFCE18, &qword_1D932F428);
    swift_storeEnumTagMultiPayload();
    sub_1D92A43A4();
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
    sub_1D9327104();
    sub_1D92933A0(v74, &qword_1ECAFCE18, &qword_1D932F428);
    v55 = v61;
    v56 = &qword_1ECAFCDF0;
    v57 = &qword_1D932F400;
  }

  return sub_1D92933A0(v55, v56, v57);
}

uint64_t sub_1D92A3CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for SymbolColorEffect(0) + 28)))
  {
    sub_1D92A1DC8(v7);
    sub_1D92A40DC(v26, 0.4, 0.6);
    result = (*(v4 + 8))(v7, v3);
    v9 = v26[0];
    v10 = v26[1];
    v11 = v26[2];
    v12 = v27;
    v13 = v28;
    v14 = vmulq_f32(v29, vdupq_n_s32(0x3E9AE148u));
    v15 = v30 * 0.3025;
  }

  else
  {
    sub_1D9327374();
    sub_1D92A1DC8(v7);
    sub_1D93273E4();
    v17 = v16;
    sub_1D93273F4();
    *&v19 = v18 * v17;
    v24 = v19;
    sub_1D9327414();
    *&v21 = v17 * v20;
    v25 = v21;
    sub_1D9327404();
    v23 = v22;

    result = (*(v4 + 8))(v7, v3);
    *&v10 = v24;
    v13 = v17 * v23;
    *(&v10 + 1) = COERCE_UNSIGNED_INT(1.0);
    LODWORD(v11) = 0;
    HIDWORD(v11) = 0;
    *(&v11 + 4) = v25;
    v12 = 1065353216;
    v14 = xmmword_1D932E8E0;
    v9 = xmmword_1D932E8A0;
    v15 = 0.0;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 60) = v14;
  *(a1 + 76) = v15;
  return result;
}

double sub_1D92A3F14@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for SymbolColorEffect(0) + 28)))
  {
    sub_1D92A1DC8(v7);
    sub_1D92A40DC(&v16, 0.4, 0.6);
    (*(v4 + 8))(v7, v3);
    v8 = v20;
    v9 = v19;
    v13 = v16;
    v14 = v17;
    v15[0] = *v18;
    *(v15 + 12) = *&v18[12];
  }

  else
  {
    sub_1D93273B4();
    sub_1D92A1DC8(v7);
    sub_1D92A44E8(&v16);
    v13 = v16;
    v14 = v17;
    v15[0] = *v18;
    *(v15 + 12) = *&v18[12];
    v12 = v19;
    v8 = v20;

    (*(v4 + 8))(v7, v3);
    v9 = v12;
  }

  v10 = v14;
  *a1 = v13;
  *(a1 + 16) = v10;
  *(a1 + 32) = v15[0];
  result = *(v15 + 12);
  *(a1 + 44) = *(v15 + 12);
  *(a1 + 60) = v9;
  *(a1 + 76) = v8;
  return result;
}

void sub_1D92A40DC(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  sub_1D93273E4();
  v11 = (v8 * 0.0721) + ((*v6.i32 * 0.2125) + (*v7.i32 * 0.7154));
  v12 = 1.0;
  if (((1.0 - v13) + (v13 * v11)) <= a3)
  {
    sub_1D92A44E8(v25);
    v20 = v25[0];
    v18 = v25[1];
    v24 = v26;
    v19 = v27;
    v22 = v28;
    v23 = v29;
    v12 = v30;
  }

  else
  {
    v14 = 1.0 / v11;
    *v9.i8 = vmul_n_f32(0x3F3724743E59999ALL, v14);
    *&v20 = vmul_n_f32(*v9.i8, *v6.i32);
    v15 = v14 * 0.0721;
    *&v16 = *v6.i32 * v15;
    *v10.i32 = -a2;
    v6.i32[1] = v7.i32[0];
    v17 = vextq_s8(vextq_s8(v10, v10, 4uLL), v9, 0xCuLL);
    v17.f32[3] = v15;
    v18 = vmulq_f32(vzip1q_s32(v6, vdupq_lane_s32(*v6.i8, 1)), v17);
    *&v7.i32[1] = v8;
    v19 = vmulq_f32(vzip1q_s32(v7, vdupq_lane_s32(*v7.i8, 1)), v17);
    *(&v20 + 1) = v16;
    v21 = -(a2 * v8);
    LODWORD(v22) = 0;
    *(&v22 + 1) = 0;
    *(&v22 + 1) = v21;
    v23 = 0;
    v24 = 0;
  }

  *a1 = v20;
  *(a1 + 16) = v18;
  *(a1 + 32) = v24;
  *(a1 + 36) = v19;
  *(a1 + 52) = v22;
  *(a1 + 68) = v23;
  *(a1 + 76) = v12;
}

unint64_t sub_1D92A4234()
{
  result = qword_1EDE3BEB8;
  if (!qword_1EDE3BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE20, &qword_1D932F430);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438);
    sub_1D9290D60(&qword_1EDE3BD68, &qword_1ECAFCE30, &qword_1D932F440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEB8);
  }

  return result;
}

unint64_t sub_1D92A4318()
{
  result = qword_1EDE3BDE0;
  if (!qword_1EDE3BDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE10, &qword_1D932F420);
    sub_1D92A4234();
    sub_1D92A4430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDE0);
  }

  return result;
}

unint64_t sub_1D92A43A4()
{
  result = qword_1EDE3BDB8;
  if (!qword_1EDE3BDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE18, &qword_1D932F428);
    sub_1D92A4318();
    sub_1D92A45C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDB8);
  }

  return result;
}

unint64_t sub_1D92A4430()
{
  result = qword_1EDE3BE70;
  if (!qword_1EDE3BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDF0, &qword_1D932F400);
    sub_1D92FA2F4();
    sub_1D9290D60(&qword_1EDE3BDF8, &qword_1ECAFCE48, &qword_1D932F458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE70);
  }

  return result;
}

float sub_1D92A44E8@<S0>(uint64_t a1@<X8>)
{
  sub_1D93273E4();
  v3 = v2;
  v4 = 1.0 - v2;
  sub_1D93273F4();
  v6 = v5 * v3;
  sub_1D9327414();
  v8 = v3 * v7;
  sub_1D9327404();
  *a1 = v4;
  result = v3 * v9;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = v6;
  *(a1 + 20) = 0;
  *(a1 + 24) = v4;
  *(a1 + 28) = 0;
  *(a1 + 36) = v8;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4;
  *(a1 + 52) = 0;
  *(a1 + 56) = result;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = v4;
  *(a1 + 76) = v3;
  return result;
}

unint64_t sub_1D92A45C0()
{
  result = qword_1EDE3BDD8;
  if (!qword_1EDE3BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDD8, &qword_1D932F3E8);
    sub_1D92FA3D8();
    sub_1D92FA574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDD8);
  }

  return result;
}

uint64_t sub_1D92A464C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D92A466C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_1D92A46A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_1D92A4748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WidgetInstanceConfiguration() + 36));
  *a2 = v3;

  return v3;
}

void sub_1D92A4790(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WidgetInstanceConfiguration.tintParameters.setter(v1);
}

id sub_1D92A47C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WidgetInstanceConfiguration() + 60));
  *a2 = v3;

  return v3;
}

id sub_1D92A480C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + *(type metadata accessor for WidgetInstanceConfiguration() + 60)) backgroundViewPolicy];
  *a2 = result;
  return result;
}

uint64_t sub_1D92A4854(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[15]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC448, &qword_1D932CA18);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[20];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D92A4994(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC448, &qword_1D932CA18);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[20];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D92A4AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D92A4B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LaunchType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D92A4C48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D92993CC();
  *a2 = result;
  return result;
}

uint64_t sub_1D92A4C74(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

uint64_t sub_1D92A4CC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9326FC4();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A4CEC(uint64_t *a1)
{
  v1 = *a1;

  return sub_1D9326FD4();
}

uint64_t sub_1D92A4D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9326FE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D92A4D88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9327004();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A4DE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A4E38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A4E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A4EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A5030()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5068()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A50EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D92A51F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D92A52BC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D92A5328(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A53E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A5494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9327A94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A5540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9327A94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D92A55E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 font];
  *a2 = result;
  return result;
}

id sub_1D92A5634@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 style];
  *a2 = result;
  return result;
}

uint64_t sub_1D92A5684()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A56BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A56F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D92993CC();
  *a2 = result;
  return result;
}

uint64_t sub_1D92A5720(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

id sub_1D92A5764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_1D92A57C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D92D3840();
  *a2 = result;
  return result;
}

uint64_t sub_1D92A57EC(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher);
  *(*a2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher) = *a1;
}

uint64_t sub_1D92A585C(uint64_t a1, uint64_t *a2)
{
  sub_1D92973DC(a1, v5, &qword_1ECAFC858, &unk_1D932FC60);
  v3 = *a2;
  return sub_1D92D3B80(v5);
}

uint64_t sub_1D92A58B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1D92A5908(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_1D92D490C(v5);
}

uint64_t sub_1D92A5964()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D92A59AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A5A70()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5AA8()
{
  v1 = sub_1D9327034();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D92A5B6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5BA4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5BF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9327A94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A5C9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9327A94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A5D40()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D92A5D88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5DFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return sub_1D92E90F4(v5);
}

uint64_t sub_1D92A5E5C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5E94()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1D92A5F20(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1D92A5F2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D92E8CF0();
  *a2 = result;
  return result;
}

void sub_1D92A5F58(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D92E8D50(v2);
}

double sub_1D92A5F94@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1D92E9074(v8);
  v4 = v8[1];
  v5 = v9;
  v6 = v10;
  *a2 = v8[0];
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  result = *&v11;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1D92A6000@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D92EAC8C();
  *a2 = result;
  return result;
}

uint64_t sub_1D92A6060()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A61F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlIconView.Mode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D92A632C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ControlIconView.Mode(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D92A6460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D92A659C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D92A6708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D92A683C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D92A6960(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1D92A6A28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A6AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D92A6BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_1D92A6C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D92A6D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D92A6E04()
{
  v1 = type metadata accessor for AppIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D9327034();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v5 + *(v1 + 32);
  v12 = *(v11 + 16);
  if (v12 != 1)
  {
  }

  v13 = *(v11 + 24);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D92A6FC0()
{
  v1 = type metadata accessor for AppIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*(v1 - 8) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = v4 + v6;
  v13 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D9327034();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
  }

  else
  {
    v15 = *(v9 + v13);
  }

  v16 = v12 & ~v6;
  v17 = v9 + *(v1 + 32);
  v18 = *(v17 + 16);
  if (v18 != 1)
  {
  }

  v19 = *(v17 + 24);

  v20 = type metadata accessor for AppIconImageCache.CacheKey(0);
  if (!(*(*(v20 - 8) + 48))(v0 + v16, 1, v20))
  {
    (*(v11 + 8))(v0 + v16, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v16 + v7, v2 | v6 | 7);
}

uint64_t sub_1D92A724C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A7284()
{
  v1 = *(type metadata accessor for AppIconImageCache.CacheKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1D92A7468()
{
  type metadata accessor for RasterizedImageView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  sub_1D9297444(qword_1EDE3CE50, type metadata accessor for RasterizedImageView);
  sub_1D92FA89C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D92A7520()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1D92A7570@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visibility];
  *a2 = result;
  return result;
}

id sub_1D92A75B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configuration];
  *a2 = result;
  return result;
}

id sub_1D92A7608@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_1D92A7658()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D92A76A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A76D8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D92A7710()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A7750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D92A77D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D92A7914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D92A7A7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D92A7AC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D92A7B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  return sub_1D9293400(v3 + v4, a2);
}

uint64_t sub_1D92A7B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D92A7BC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D92A7C14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D92A7C74()
{
  v1 = sub_1D9327774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D92A7D48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A7DE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2C0, &qword_1D9330378);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A7EA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2C0, &qword_1D9330378);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A7F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 68);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D92A809C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D92A81D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A8228()
{
  v1 = sub_1D9326884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D92A8310(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[7];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1D92A84A0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D92A8624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D92A86EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A87A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__CFString *NSStringFromCHUISWidgetEntryContentType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_1E85752E8[a1];
  }
}

void sub_1D92A9640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id CHUISWatchComplicationsWidgetSceneSettingsValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((a1 - 89888) <= 4)
  {
    v5 = v3;
  }

  return v4;
}

void sub_1D92AD0B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D92AD270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v23 = v21;

  _Unwind_Resume(a1);
}

void sub_1D92AF2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D92B151C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHUISWidgetHostCancelTouchesAssertion;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id CHUISLogKeybag()
{
  if (CHUISLogKeybag_onceToken != -1)
  {
    CHUISLogKeybag_cold_1();
  }

  v1 = CHUISLogKeybag___logObj;

  return v1;
}

void __CHUISLogKeybag_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "Keybag");
  v1 = CHUISLogKeybag___logObj;
  CHUISLogKeybag___logObj = v0;
}

id CHUISSerializeNSUserActivity(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  [v3 setNeedsSave:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CHUISSerializeNSUserActivity_block_invoke;
  v6[3] = &unk_1E85756C8;
  v6[4] = &v13;
  v6[5] = &v7;
  [v3 _createUserActivityDataWithOptions:0 completionHandler:v6];
  if (a2)
  {
    *a2 = v8[5];
  }

  v4 = v14[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void sub_1D92B1AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CHUISSerializeNSUserActivity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1D92B30B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void CHUISSetDefaultRendererBundleID(void *a1)
{
  v2 = a1;
  v1 = v2;
  BSDispatchMain();
}

id CHUISSharedExtensionProviderWithRemote()
{
  if (CHUISSharedExtensionProviderWithRemote___once[0] != -1)
  {
    CHUISSharedExtensionProviderWithRemote_cold_1();
  }

  v1 = CHUISSharedExtensionProviderWithRemote___instance;

  return v1;
}

void sub_1D92B4524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D92B4770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CHUISWidgetHostViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHUISWidgetPresentationMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E8575C78[a1 - 1];
  }
}

void sub_1D92B7518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19, id a20)
{
  objc_destroyWeak(v20 + 6);
  objc_destroyWeak(v20 + 5);
  objc_destroyWeak(v20 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a20);

  _Unwind_Resume(a1);
}

void sub_1D92B7848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1D92B9CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  _Block_object_dispose((v28 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D92BB8AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));

  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D92BE564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D92BFB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1D92C13A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHUISWidgetVisibility(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Not Visible";
  }

  else
  {
    return off_1E8575C90[a1 - 1];
  }
}

void __CHUISSharedExtensionProviderWithRemote_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E6994398]) initIncludingRelevanceBacked:1];
  [v3 setRemoteWidgetInclusions:2];
  v0 = [objc_alloc(MEMORY[0x1E69943D0]) initWithWidgetsPredicate:v3 controlsPredicate:0];
  v1 = [objc_alloc(MEMORY[0x1E69943C0]) initWithOptions:v0];
  v2 = CHUISSharedExtensionProviderWithRemote___instance;
  CHUISSharedExtensionProviderWithRemote___instance = v1;
}

uint64_t __BacklightServicesHostLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BacklightServicesHostLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1D92C195C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t ColorScheme.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9326D04();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v9 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v9 = MEMORY[0x1E697DBA8];
LABEL_5:
    v10 = *v9;
    v11 = *(v6 + 104);
    v15 = v6;
    v11(v8, v10, v4);
    (*(v15 + 32))(a2, v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  v13 = *(v6 + 56);

  return v13(a2, 1, 1, v4);
}

{
  v4 = sub_1D9326D04();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v9 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v9 = MEMORY[0x1E697DBA8];
LABEL_5:
    v10 = *v9;
    v11 = *(v6 + 104);
    v15 = v6;
    v11(v8, v10, v4);
    (*(v15 + 32))(a2, v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  v13 = *(v6 + 56);

  return v13(a2, 1, 1, v4);
}

uint64_t default argument 1 of ControlSession.init(sessionKey:controlsClient:configuration:keybagStateProvider:)@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1D929CF00(&qword_1EDE400D0, v2);
}

uint64_t sub_1D92C1C54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D92C1C74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D92C1CC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D92C1CE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

BOOL sub_1D92C1DA8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D92C1DEC()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t sub_1D92C1E34()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t sub_1D92C1EC0(unint64_t *a1, void (*a2)(uint64_t))
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

void *WidgetInstanceConfiguring.description.getter(uint64_t a1, uint64_t a2)
{
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v4 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v5 = *(a2 + 184);
  v6 = 0xE000000000000000;
  if (v5(a1, a2))
  {
    sub_1D9328444();

    v7 = v5(a1, a2);
    v8 = (v7 & 1) == 0;
    if (v7)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v8)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v9, v10);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v11 = 0xD000000000000015;
    v6 = 0x80000001D9336110;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1DA72E570](v11, v6);

  v12 = *(a2 + 160);
  if (v12(a1, a2))
  {
    sub_1D9328444();
    MEMORY[0x1DA72E570](0xD000000000000032, 0x80000001D93360D0);
    v13 = v12(a1, a2);
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v14)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v15, v16);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
  }

  MEMORY[0x1DA72E570](0, 0xE000000000000000);

  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD00000000000002ALL, 0x80000001D9335FC0);
  (*(a2 + 64))(a1, a2);
  v17 = sub_1D9327F94();
  MEMORY[0x1DA72E570](v17);

  MEMORY[0x1DA72E570](0x7265646E6572202CLL, 0xEF3D656D65686353);
  v18 = (*(a2 + 208))(a1, a2);
  v19 = [v18 description];
  v20 = sub_1D9327F84();
  v22 = v21;

  MEMORY[0x1DA72E570](v20, v22);

  MEMORY[0x1DA72E570](0xD000000000000015, 0x80000001D9335FF0);
  v23 = (*(a2 + 16))(a1, a2);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 description];

    v26 = sub_1D9327F84();
    v28 = v27;
  }

  else
  {
    v28 = 0xE300000000000000;
    v26 = 7104878;
  }

  MEMORY[0x1DA72E570](v26, v28);

  MEMORY[0x1DA72E570](44, 0xE100000000000000);
  v29 = *(a2 + 88);
  v30 = v29(a1, a2);
  v31 = 0xE000000000000000;
  if (v30)
  {

    sub_1D9328444();

    result = v29(a1, a2);
    if (!result)
    {
      __break(1u);
      goto LABEL_74;
    }

    v33 = result;
    v34 = [result description];

    v35 = sub_1D9327F84();
    v37 = v36;

    MEMORY[0x1DA72E570](v35, v37);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v30 = 0x61726150746E6974;
    v31 = 0xEF3D73726574656DLL;
  }

  MEMORY[0x1DA72E570](v30, v31);

  v38 = *(a2 + 112);
  v39 = v38(a1, a2);
  v40 = 0xE000000000000000;
  if (v39)
  {

    sub_1D9328444();

    result = v38(a1, a2);
    if (result)
    {
      v41 = result;
      v42 = [result description];

      v43 = sub_1D9327F84();
      v45 = v44;

      MEMORY[0x1DA72E570](v43, v45);

      MEMORY[0x1DA72E570](8236, 0xE200000000000000);
      v39 = 0xD000000000000015;
      v40 = 0x80000001D93360B0;
      goto LABEL_27;
    }

LABEL_74:
    __break(1u);
    return result;
  }

LABEL_27:
  MEMORY[0x1DA72E570](v39, v40);

  v46 = *(a2 + 304);
  v47 = 0xE000000000000000;
  if (v46(a1, a2))
  {
    sub_1D9328444();

    v48 = v46(a1, a2);
    v49 = (v48 & 1) == 0;
    if (v48)
    {
      v50 = 1702195828;
    }

    else
    {
      v50 = 0x65736C6166;
    }

    if (v49)
    {
      v51 = 0xE500000000000000;
    }

    else
    {
      v51 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v50, v51);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v52 = 0xD000000000000010;
    v47 = 0x80000001D9336090;
  }

  else
  {
    v52 = 0;
  }

  MEMORY[0x1DA72E570](v52, v47);

  v53 = *(a2 + 280);
  v54 = 0xE000000000000000;
  if (v53(a1, a2))
  {
    sub_1D9328444();

    v55 = v53(a1, a2);
    v56 = (v55 & 1) == 0;
    if (v55)
    {
      v57 = 1702195828;
    }

    else
    {
      v57 = 0x65736C6166;
    }

    if (v56)
    {
      v58 = 0xE500000000000000;
    }

    else
    {
      v58 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v57, v58);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v59 = 0xD000000000000014;
    v54 = 0x80000001D9336070;
  }

  else
  {
    v59 = 0;
  }

  MEMORY[0x1DA72E570](v59, v54);

  v60 = *(a2 + 256);
  v61 = 0xE000000000000000;
  if (v60(a1, a2))
  {
    sub_1D9328444();

    v62 = v60(a1, a2);
    v63 = (v62 & 1) == 0;
    if (v62)
    {
      v64 = 1702195828;
    }

    else
    {
      v64 = 0x65736C6166;
    }

    if (v63)
    {
      v65 = 0xE500000000000000;
    }

    else
    {
      v65 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v64, v65);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v66 = 0xD000000000000016;
    v61 = 0x80000001D9336050;
  }

  else
  {
    v66 = 0;
  }

  MEMORY[0x1DA72E570](v66, v61);

  v67 = *(a2 + 136);
  v68 = 0xE000000000000000;
  if (v67(a1, a2))
  {
    sub_1D9328444();

    v69 = v67(a1, a2);
    v70 = (v69 & 1) == 0;
    if (v69)
    {
      v71 = 1702195828;
    }

    else
    {
      v71 = 0x65736C6166;
    }

    if (v70)
    {
      v72 = 0xE500000000000000;
    }

    else
    {
      v72 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v71, v72);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v73 = 0xD000000000000011;
    v68 = 0x80000001D9336030;
  }

  else
  {
    v73 = 0;
  }

  MEMORY[0x1DA72E570](v73, v68);

  v74 = *(a2 + 40);
  v75 = 0xE000000000000000;
  if (v74(a1, a2))
  {
    sub_1D9328444();

    v76 = v74(a1, a2);
    v77 = (v76 & 1) == 0;
    if (v76)
    {
      v78 = 1702195828;
    }

    else
    {
      v78 = 0x65736C6166;
    }

    if (v77)
    {
      v79 = 0xE500000000000000;
    }

    else
    {
      v79 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v78, v79);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v80 = 0xD00000000000001DLL;
    v75 = 0x80000001D9336010;
  }

  else
  {
    v80 = 0;
  }

  MEMORY[0x1DA72E570](v80, v75);

  MEMORY[0x1DA72E570](538976288, 0xE400000000000000);

  MEMORY[0x1DA72E570](0x69786F727022202CLL, 0xED00003D7974696DLL);
  (*(a2 + 328))(a1, a2);
  v81 = NSStringFromCHSWidgetProximity();
  v82 = sub_1D9327F84();
  v84 = v83;

  MEMORY[0x1DA72E570](v82, v84);

  MEMORY[0x1DA72E570](15906, 0xE200000000000000);
  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id WidgetInstanceConfiguration.displayProperties.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t type metadata accessor for WidgetInstanceConfiguration()
{
  result = qword_1ECAFC458;
  if (!qword_1ECAFC458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D92C2BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetInstanceConfiguration();
  v5 = v4[6];
  sub_1D92C2CC8(a1, a2 + v5);
  sub_1D92C2CC8(a2 + v5, a2 + v4[7]);
  v6 = a2 + v4[8];

  return sub_1D92C2CC8(a2 + v5, v6);
}

uint64_t WidgetInstanceConfiguration.preferredColorScheme.setter(uint64_t a1)
{
  v3 = type metadata accessor for WidgetInstanceConfiguration();
  v4 = v3[6];
  sub_1D92C3C20(a1, v1 + v4, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92C2CC8(v1 + v4, v1 + v3[7]);
  v5 = v1 + v3[8];

  return sub_1D92C2CC8(v1 + v4, v5);
}

uint64_t sub_1D92C2CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*WidgetInstanceConfiguration.preferredColorScheme.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = type metadata accessor for WidgetInstanceConfiguration();
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 24);
  return sub_1D92C2D8C;
}

void *WidgetInstanceConfiguration.tintParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration() + 36));
  v2 = v1;
  return v1;
}

void WidgetInstanceConfiguration.tintParameters.setter(void *a1)
{
  v3 = type metadata accessor for WidgetInstanceConfiguration();
  v4 = v3[9];

  *(v1 + v4) = a1;
  if ((*(v1 + v3[14]) & 1) == 0)
  {
    v5 = v3[15];
    v6 = *(v1 + v5);
    [v6 mutableCopy];
    sub_1D93283A4();
    swift_unknownObjectRelease();
    sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
    swift_dynamicCast();
    if (a1)
    {
      v7 = [a1 effectiveRenderingMode];
    }

    else
    {
      v7 = 0;
    }

    [v8 setRenderingMode_];

    *(v1 + v5) = v8;
  }
}

id WidgetInstanceConfiguration.renderScheme.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration() + 60));

  return v1;
}

void (*WidgetInstanceConfiguration.tintParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = type metadata accessor for WidgetInstanceConfiguration();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 + 36);
  return sub_1D92C312C;
}

void sub_1D92C312C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    if ((*(v4 + *(v3 + 56)) & 1) == 0)
    {
      v5 = *(v2 + 56);
      v6 = *(v3 + 60);
      v7 = *(v4 + v6);
      [v7 mutableCopy];
      sub_1D93283A4();
      swift_unknownObjectRelease();
      sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
      swift_dynamicCast();
      v8 = *(v2 + 32);
      v9 = *(v4 + v5);
      if (v9)
      {
        v10 = [v9 effectiveRenderingMode];
      }

      else
      {
        v10 = 0;
      }

      [v8 setRenderingMode_];

      *(v4 + v6) = v8;
    }
  }

  free(v2);
}

void *WidgetInstanceConfiguration.inlineTextParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration() + 40));
  v2 = v1;
  return v1;
}

void WidgetInstanceConfiguration.inlineTextParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetInstanceConfiguration() + 40);

  *(v1 + v3) = a1;
}

uint64_t WidgetInstanceConfiguration.showsWidgetLabel.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.prefersUnredactedContentInLowLuminanceEnvironment.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.supportsLowLuminance.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration();
  *(v1 + *(result + 52)) = a1;
  return result;
}

void sub_1D92C34B8(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for WidgetInstanceConfiguration();
  objc_storeStrong((a2 + *(v4 + 60)), v3);
  *(a2 + *(v4 + 56)) = 1;
}

void WidgetInstanceConfiguration.renderScheme.setter(uint64_t a1)
{
  v3 = type metadata accessor for WidgetInstanceConfiguration();
  v4 = *(v3 + 60);

  *(v1 + v4) = a1;
  *(v1 + *(v3 + 56)) = 1;
}

uint64_t (*WidgetInstanceConfiguration.renderScheme.modify(uint64_t *a1))()
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
  *(v3 + 8) = v1;
  v5 = type metadata accessor for WidgetInstanceConfiguration();
  *(v4 + 16) = v5;
  v6 = *(v5 + 60);
  *(v4 + 32) = v6;
  v7 = *(v1 + v6);
  *(v4 + 24) = v7;
  *v4 = v7;
  v8 = v7;
  return sub_1D92C35F4;
}

id WidgetInstanceConfiguration.backgroundViewPolicy.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration() + 60));

  return [v1 backgroundViewPolicy];
}

void sub_1D92C3634(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for WidgetInstanceConfiguration() + 60);
  v5 = *(a2 + v4);
  [v5 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  [v6 setBackgroundViewPolicy_];

  *(a2 + v4) = v6;
}

void WidgetInstanceConfiguration.backgroundViewPolicy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetInstanceConfiguration() + 60);
  v4 = *(v1 + v3);
  [v4 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  [v5 setBackgroundViewPolicy_];

  *(v1 + v3) = v5;
}

void (*WidgetInstanceConfiguration.backgroundViewPolicy.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(type metadata accessor for WidgetInstanceConfiguration() + 60);
  *(v4 + 64) = v5;
  v6 = *(v1 + v5);
  *(v4 + 56) = v6;
  *(v4 + 32) = [v6 backgroundViewPolicy];
  return sub_1D92C3858;
}

void sub_1D92C3858(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  [v3 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  v4 = *(v1 + 40);
  [v4 setBackgroundViewPolicy_];

  *(*(v1 + 48) + *(v1 + 64)) = v4;

  free(v1);
}

uint64_t WidgetInstanceConfiguration.isInteractionDisabled.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.areAnimationsPaused.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.isContentPaused.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.proximity.setter(uint64_t a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t sub_1D92C3C20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t WidgetInstanceConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = type metadata accessor for WidgetInstanceConfiguration();
  v3 = v2[6];
  v4 = sub_1D9326D04();
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[7], 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  v6 = v2[15];
  *(a1 + v6) = [objc_allocWithZone(MEMORY[0x1E6994420]) initWithRenderingMode_];
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 0;
  v7 = v2[20];
  v8 = sub_1D9327874();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id sub_1D92C3E60()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1D92C3F38(uint64_t a1, int *a2)
{
  v4 = a2[6];
  sub_1D92C3C20(a1, v2 + v4, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92C2CC8(v2 + v4, v2 + a2[7]);
  v5 = v2 + a2[8];

  return sub_1D92C2CC8(v2 + v4, v5);
}

uint64_t (*sub_1D92C3FA8(uint64_t a1, uint64_t a2))()
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = *(a2 + 24);
  return sub_1D92C4C5C;
}

uint64_t sub_1D92C3FD4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(result + 16);
    v5 = *result;
    v4 = *(result + 8);
    sub_1D92C2CC8(*result + v3, *result + *(v4 + 28));
    v6 = v5 + *(v4 + 32);

    return sub_1D92C2CC8(v5 + v3, v6);
  }

  return result;
}

void *sub_1D92C4034(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

uint64_t (*sub_1D92C4064(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = WidgetInstanceConfiguration.tintParameters.modify(v2);
  return sub_1D92C40D4;
}

void *sub_1D92C40D8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

void sub_1D92C4104(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
}

uint64_t (*sub_1D92C413C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*sub_1D92C4178(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t (*sub_1D92C41B4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t (*sub_1D92C41F0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

void sub_1D92C4220(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 60);

  *(v2 + v5) = a1;
  *(v2 + *(a2 + 56)) = 1;
}

uint64_t (*sub_1D92C4268(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 8) = v2;
  *(v5 + 16) = a2;
  v6 = *(a2 + 60);
  *(v5 + 32) = v6;
  v7 = *(v2 + v6);
  *(v5 + 24) = v7;
  *v5 = v7;
  v8 = v7;
  return sub_1D92C4C60;
}

void sub_1D92C42F8(void ***a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v8 = v6;

    *&v7[v3] = v8;
    v7[v4[14]] = 1;
  }

  else
  {

    *&v7[v3] = v6;
    v7[v4[14]] = 1;
  }

  free(v2);
}

void sub_1D92C439C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = *(v2 + v4);
  [v5 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  [v6 setBackgroundViewPolicy_];

  *(v2 + v4) = v6;
}

uint64_t (*sub_1D92C4458(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = WidgetInstanceConfiguration.backgroundViewPolicy.modify(v2);
  return sub_1D92C4C64;
}

void sub_1D92C44C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1D92C4528(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t (*sub_1D92C4564(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t (*sub_1D92C45A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 72);
  return result;
}

uint64_t (*sub_1D92C45DC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 76);
  return result;
}

unint64_t sub_1D92C4600(uint64_t a1)
{
  result = sub_1D92C4628();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D92C4628()
{
  result = qword_1ECAFC450;
  if (!qword_1ECAFC450)
  {
    type metadata accessor for WidgetInstanceConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC450);
  }

  return result;
}

void sub_1D92C49F4()
{
  sub_1D92C4C04(319, &qword_1ECAFC468, &qword_1ECAFC470, 0x1E69943A0);
  if (v0 <= 0x3F)
  {
    sub_1D92C4BB0(319, &qword_1ECAFC478, MEMORY[0x1E697DBD0]);
    if (v1 <= 0x3F)
    {
      sub_1D92C4C04(319, &qword_1ECAFC480, &qword_1EDE3B250, 0x1E6994428);
      if (v2 <= 0x3F)
      {
        sub_1D92C4C04(319, &qword_1ECAFC488, &qword_1ECAFC490, 0x1E69942B8);
        if (v3 <= 0x3F)
        {
          sub_1D9296448(319, &qword_1ECAFC498, 0x1E6994420);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CHSWidgetProximity(319);
            if (v5 <= 0x3F)
            {
              sub_1D92C4BB0(319, &qword_1ECAFC4A0, MEMORY[0x1E6993E88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D92C4BB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D92C4C04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1D9296448(255, a3, a4);
    v5 = sub_1D9328374();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D92C4CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id LaunchRequest.widget.getter()
{
  v1 = *(v0 + *(type metadata accessor for LaunchRequest(0) + 20));

  return v1;
}

void LaunchRequest.widget.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LaunchRequest(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t LaunchRequest.init(launchType:widget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D92C4E60(a1, a3);
  result = type metadata accessor for LaunchRequest(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D92C4E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LaunchRequest.dataForRemoteLaunchRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteWidgetLaunchRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LaunchType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D92C5138(v1, v9, type metadata accessor for LaunchType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D92C51F8(v9, type metadata accessor for LaunchType);
    }
  }

  else
  {
    v15 = sub_1D9326814();
    (*(*(v15 - 8) + 32))(v13, v9, v15);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D92C5138(v13, v5, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType);
  v16 = *(v1 + *(type metadata accessor for LaunchRequest(0) + 20));
  *&v5[*(v2 + 20)] = v16;
  sub_1D92C51A0();
  v17 = v16;
  v18 = sub_1D9327F04();
  sub_1D92C51F8(v5, type metadata accessor for RemoteWidgetLaunchRequest);
  sub_1D92C51F8(v13, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType);
  return v18;
}

uint64_t sub_1D92C5138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D92C51A0()
{
  result = qword_1ECAFC4A8;
  if (!qword_1ECAFC4A8)
  {
    type metadata accessor for RemoteWidgetLaunchRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC4A8);
  }

  return result;
}

uint64_t sub_1D92C51F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LaunchType.bsAction()(BSAction_optional *__return_ptr retstr)
{
  v2 = v1;
  v35[8] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9326814();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v35[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35[-1] - v9;
  v11 = type metadata accessor for LaunchType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v35[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D92C5138(v2, v14, type metadata accessor for LaunchType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *v14;
      v35[0] = 0;
      v19 = CHUISSerializeNSUserActivity(v18, v35);
      v20 = v35[0];
      if (v19)
      {
        v21 = v19;
        v22 = v35[0];
        v23 = sub_1D9326824();
        v25 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4B0, &qword_1D932CB50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D932CB30;
        *(inited + 32) = 7;
        v27 = inited + 32;
        *(inited + 40) = v23;
        *(inited + 48) = v25;
        v28 = sub_1D92C5DD0(inited);
        swift_setDeallocating();
        sub_1D92C5EDC(v23, v25);
        sub_1D92C5F30(v27);
        sub_1D92C561C(v28);

        v29 = objc_allocWithZone(MEMORY[0x1E69DC630]);
        v30 = sub_1D9327EE4();

        [v29 initWithSettings_];

        sub_1D92C5F98(v23, v25);
      }

      else
      {
        if (v35[0])
        {
          swift_willThrow();
          v20;
        }
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v10, v14, v3);
    v31 = objc_allocWithZone(MEMORY[0x1E69DCD00]);
    v32 = sub_1D93267E4();
    [v31 initWithURL_];

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    (*(v4 + 32))(v8, v14, v3);
    v16 = objc_allocWithZone(MEMORY[0x1E69DCD00]);
    v17 = sub_1D93267E4();
    [v16 initWithURL_];

    (*(v4 + 8))(v8, v3);
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D92C561C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4D0, &qword_1D932CBC0);
    v2 = sub_1D9328574();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    v15 = (*(a1 + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    sub_1D92C5EDC(*v15, v17);
    swift_dynamicCast();
    *&v34[0] = v16;
    *(&v34[0] + 1) = v17;
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1D92C6364(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1D92C6364(v33, v34);
    v18 = *(v2 + 40);
    result = sub_1D9328404();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
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
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_1D92C6364(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static LaunchType.test_serialize(activity:)(void *a1)
{
  v1 = CHUISSerializeNSUserActivity(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D9326824();

  return v3;
}

unint64_t sub_1D92C5938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4D0, &qword_1D932CBC0);
    v3 = sub_1D9328574();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D92973DC(v4, v13, &qword_1ECAFC4E8, &qword_1D932CBD8);
      result = sub_1D931D52C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D92C6364(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _s16ChronoUIServices13LaunchRequestV12userActivity3forSo06NSUserF0CSo9CHSWidgetC_tFZ_0(void *a1)
{
  v2 = [a1 intent];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 _className];
      if (!v6)
      {
        sub_1D9327F84();
        v6 = sub_1D9327F74();
      }

      v7 = [objc_allocWithZone(MEMORY[0x1E69636A8]) initWithActivityType_];

      [v7 _setAppIntent_];
      goto LABEL_14;
    }
  }

  v8 = [a1 intent];
  if (v8)
  {
    v3 = v8;
    v9 = [v8 _className];
    if (!v9)
    {
      sub_1D9327F84();
      v9 = sub_1D9327F74();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69636A8]) initWithActivityType_];

    v10 = [objc_allocWithZone(MEMORY[0x1E696E8B8]) initWithIntent:v3 response:0];
    [v7 _setInteraction_donate_];
  }

  else
  {
    v3 = [a1 kind];
    if (!v3)
    {
      sub_1D9327F84();
      v3 = sub_1D9327F74();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69636A8]) initWithActivityType_];
  }

LABEL_14:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4E0, &qword_1D932CBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D932CB40;
  v12 = v7;
  v24 = sub_1D9327A14();
  v26 = v13;
  v14 = MEMORY[0x1E69E6158];
  sub_1D9328424();
  v15 = [a1 kind];
  v16 = sub_1D9327F84();
  v18 = v17;

  *(inited + 96) = v14;
  *(inited + 72) = v16;
  *(inited + 80) = v18;
  v25 = sub_1D9327A24();
  v27 = v19;
  sub_1D9328424();
  [a1 family];
  v20 = sub_1D9328264();
  *(inited + 168) = v14;
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  sub_1D92C5938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4E8, &qword_1D932CBD8);
  swift_arrayDestroy();
  v22 = sub_1D9327EE4();

  [v12 setUserInfo_];

  return v12;
}

unint64_t sub_1D92C5DD0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4D8, &qword_1D932CBC8);
  v3 = sub_1D9328574();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_1D931D570(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_1D92C5EDC(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_1D931D570(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D92C5EDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D92C5F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4B8, &qword_1D932CB58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92C5F98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D92C603C()
{
  result = sub_1D9326814();
  if (v1 <= 0x3F)
  {
    result = sub_1D9296448(319, &qword_1EDE3B258, 0x1E69636A8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D92C60E8()
{
  result = type metadata accessor for LaunchType(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D9296448(319, &qword_1EDE3B220, 0x1E6994370);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D92C617C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C0, &qword_1D932CBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C8, &qword_1D932CBB8);
    v8 = sub_1D9328574();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D92973DC(v10, v6, &qword_1ECAFC4C0, &qword_1D932CBB0);
      result = sub_1D9293100(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D9327774();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1D92C6364(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D92C63BC(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*sub_1D92C63CC(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1D92993CC();
  return sub_1D92C6414;
}

uint64_t sub_1D92C6414(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_1D92C6424()
{
  BSDispatchQueueAssertMain();
  v1 = *(v0 + 32);
}

uint64_t sub_1D92C6450()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v2 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v3 = *(v1 + v2);

  v4 = sub_1D93276C4();

  if (v4)
  {
    v5 = sub_1D93277C4();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D92C64E0@<X0>(uint64_t a1@<X8>)
{
  BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  return sub_1D92973DC(v1 + v3, a1, &qword_1ECAFC4F0, &qword_1D932CC18);
}

uint64_t sub_1D92C654C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  BSDispatchQueueAssertMain();
  v4 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 1);
  v5 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
  v6 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 16);
  v8 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 24);
  v7 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 32);
  *a2 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration);
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_1D92C65B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  v8 = *a2;
  v10[0] = v2;
  v10[1] = v3;
  v11 = v4;
  v12 = v5;
  v13 = v7;
  v14 = v6;

  return sub_1D92C667C(v10);
}

uint64_t sub_1D92C6614@<X0>(uint64_t a1@<X8>)
{
  BSDispatchQueueAssertMain();
  v3 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 1);
  v4 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
  v5 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 16);
  v7 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 24);
  v6 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration);
  *(a1 + 1) = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
}

uint64_t sub_1D92C667C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  BSDispatchQueueAssertMain();
  v8 = v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration;
  v9 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration);
  v10 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 1);
  v11 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
  v15 = *(v8 + 16);
  v12 = *(v8 + 32);
  v14 = *(v8 + 24);
  *v8 = v2;
  *(v8 + 1) = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v6;

  v21[0] = v9;
  v21[1] = v10;
  v22 = v11;
  v23 = v15;
  v24 = v14;
  v25 = v12;
  v16[0] = v2;
  v16[1] = v3;
  v17 = v4;
  v18 = v5;
  v19 = v7;
  v20 = v6;
  sub_1D92C7F9C(v21, v16);
}

void (*sub_1D92C677C(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  BSDispatchQueueAssertMain();
  v5 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration;
  *(v4 + 48) = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration;
  v6 = v1 + v5;
  v7 = *(v6 + 1);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v11 = *(v6 + 24);
  v10 = *(v6 + 32);
  *v4 = *v6;
  *(v4 + 1) = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v11;
  *(v4 + 32) = v10;

  return sub_1D92C6830;
}

void sub_1D92C6830(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 1);
  v6 = (*a1)[16];
  v8 = *(*a1 + 3);
  v7 = *(*a1 + 4);
  v9 = *(*a1 + 5) + *(*a1 + 6);
  if (a2)
  {
    v10 = *(*a1 + 4);

    BSDispatchQueueAssertMain();
    v20 = *(v9 + 1);
    v22 = *v9;
    v18 = *(v9 + 8);
    v16 = *(v9 + 16);
    v11 = *(v9 + 32);
    v14 = *(v9 + 24);
    *v9 = v3;
    *(v9 + 1) = v4;
    *(v9 + 8) = v5;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;

    v24 = v22;
    v25 = v20;
    v26 = v18;
    v27 = v16;
    v28 = v14;
    v29 = v11;
    v30 = v3;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v8;
    v35 = v7;
    sub_1D92C7F9C(&v24, &v30);

    v12 = *(v2 + 4);
  }

  else
  {
    BSDispatchQueueAssertMain();
    v21 = *(v9 + 1);
    v23 = *v9;
    v19 = *(v9 + 8);
    v17 = *(v9 + 16);
    v13 = *(v9 + 32);
    v15 = *(v9 + 24);
    *v9 = v3;
    *(v9 + 1) = v4;
    *(v9 + 8) = v5;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;

    v24 = v23;
    v25 = v21;
    v26 = v19;
    v27 = v17;
    v28 = v15;
    v29 = v13;
    v30 = v3;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v8;
    v35 = v7;
    sub_1D92C7F9C(&v24, &v30);
  }

  free(v2);
}

uint64_t sub_1D92C69EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v2 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D92C6A40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29[-v4];
  v5 = sub_1D9326E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29[-v11];
  v13 = sub_1D9327034();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v19 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration) != 1)
  {
    goto LABEL_6;
  }

  v30 = *(v18 + v19);
  sub_1D92C6E14(v17);
  sub_1D9326EE4();
  (*(v14 + 8))(v17, v13);
  sub_1D9326E14();
  sub_1D92C96F0(&qword_1EDE3BE20, MEMORY[0x1E697EA58]);
  v21 = sub_1D93283B4();
  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v12, v5);
  v20 = v30;
  if (v21)
  {
    BSDispatchQueueAssertMain();
    v23 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
    swift_beginAccess();
    v24 = v31;
    sub_1D92973DC(v1 + v23, v31, &qword_1ECAFC4F0, &qword_1D932CC18);
    v25 = sub_1D9327B44();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_1D92933A0(v24, &qword_1ECAFC4F0, &qword_1D932CC18);
      if ((v30 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1D9327B04();
      (*(v26 + 8))(v24, v25);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      v27 = sub_1D9327AE4();
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      if ((v30 & 1) == 0)
      {
        return v27 & 1;
      }
    }
  }

  else
  {
LABEL_6:
    if (!v20)
    {
LABEL_8:
      v27 = 0;
      return v27 & 1;
    }
  }

  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1D92C6E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = sub_1D9326D04();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9326E24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  swift_beginAccess();
  v12 = sub_1D9327034();
  (*(*(v12 - 8) + 16))(a1, v1 + v11, v12);
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC570, &qword_1D932CF38);
    v13 = *(v9 + 72);
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D932CB30;
    sub_1D9326E14();
    v20 = v15;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1D92C96F0(&qword_1EDE3BE20, MEMORY[0x1E697EA58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC568, &qword_1D932CF30);
  sub_1D9290D60(&qword_1EDE3BC60, &qword_1ECAFC568, &qword_1D932CF30);
  sub_1D93283C4();
  sub_1D9326EF4();
  v16 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  swift_beginAccess();
  (*(v4 + 16))(v7, v2 + v16, v19);
  return sub_1D9326E84();
}

uint64_t sub_1D92C7104()
{
  v0 = sub_1D9326A44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    BSDispatchQueueAssertMain();
    (*(v1 + 104))(v4, *MEMORY[0x1E6994040], v0);
    v7 = sub_1D9326A54();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked);
    *(v6 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked) = v7 & 1;
    if ((v7 & 1) != v8)
    {
      sub_1D92C80B8(0x617453206B636F4CLL, 0xEA00000000006574);
    }
  }

  return result;
}

uint64_t sub_1D92C7270()
{
  v0 = sub_1D93279E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v60 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D9327A04();
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9327034();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v51 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v64 = &v51 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v56 = v1;
    v57 = v0;
    BSDispatchQueueAssertMain();
    v65 = v11;
    v66 = v19;
    v24 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
    swift_beginAccess();
    v25 = *(v7 + 16);
    v25(v21, v23 + v24, v6);
    v26 = *(v23 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
    v63 = v21;
    v27 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
    swift_beginAccess();
    v28 = *(v26 + v27);

    sub_1D9327684();

    __swift_project_boxed_opaque_existential_1(v68, v68[3]);
    v29 = v63;
    sub_1D9327884();
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v30 = v64;
    v25(v64, v66, v6);
    swift_beginAccess();
    v31 = v23 + v24;
    v32 = v66;
    (*(v7 + 40))(v31, v30, v6);
    swift_endAccess();
    sub_1D92C7C70();
    v62 = v14;
    v25(v14, v29, v6);
    v54 = v25;
    v25(v65, v32, v6);

    v33 = sub_1D9326BC4();
    v34 = sub_1D9328234();

    v55 = v34;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v7;
      v36 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v68[0] = v53;
      *v36 = 136446466;
      v52 = v33;
      v37 = *(v23 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier);
      v38 = *(v23 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier + 8);

      v39 = sub_1D9293524(v37, v38, v68);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      v54(v30, v62, v6);
      v40 = v58;
      sub_1D93279F4();
      sub_1D93279A4();
      v41 = v60;
      sub_1D93279B4();
      v42 = v65;
      v43 = sub_1D9327994();

      (*(v56 + 8))(v41, v57);
      (*(v59 + 8))(v40, v61);
      v67 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC560, &qword_1D932CF28);
      sub_1D9290D60(&qword_1EDE3BC50, &qword_1ECAFC560, &qword_1D932CF28);
      v44 = sub_1D9327F34();
      v46 = v45;

      v47 = *(v35 + 8);
      v47(v42, v6);
      v47(v62, v6);
      v32 = v66;
      v48 = sub_1D9293524(v44, v46, v68);
      v29 = v63;

      *(v36 + 14) = v48;
      v49 = v52;
      _os_log_impl(&dword_1D928E000, v52, v55, "[%{public}s] environment changed: %{public}s", v36, 0x16u);
      v50 = v53;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v50, -1, -1);
      MEMORY[0x1DA72F920](v36, -1, -1);
    }

    else
    {

      v47 = *(v7 + 8);
      v47(v65, v6);
      v47(v62, v6);
    }

    sub_1D92C80B8(0x69766E452077654ELL, 0xEF746E656D6E6F72);

    v47(v32, v6);
    return (v47)(v29, v6);
  }

  return result;
}

uint64_t sub_1D92C79A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BSDispatchQueueAssertMain();
    sub_1D92C80B8(0x2065766968637241, 0xEF6465676E616863);
  }

  return result;
}

uint64_t sub_1D92C7A24()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__subscriptions;
  swift_beginAccess();
  v20 = v0;
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + v1);
    }

    swift_unknownObjectRetain();
    sub_1D93283E4();
    sub_1D9326C24();
    sub_1D92C96F0(&qword_1ECAFC520, MEMORY[0x1E695BF10]);
    result = sub_1D93281E4();
    v6 = v22;
    v5 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_1D92C9738();

      v19 = *(v20 + v1);
      *(v20 + v1) = MEMORY[0x1E69E7CD0];
    }

    while (1)
    {
      sub_1D9326C14();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_1D93283F4())
      {
        sub_1D9326C24();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D92C7C70()
{
  v1 = sub_1D9327034();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D9326D04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28[-v18];
  BSDispatchQueueAssertMain();
  BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 16) & 1) == 0)
  {
    v20 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
    if (v20 == 1)
    {
      v21 = MEMORY[0x1E697DBB8];
      goto LABEL_7;
    }

    if (v20 == 2)
    {
      v21 = MEMORY[0x1E697DBA8];
LABEL_7:
      (*(v7 + 104))(v14, *v21, v6);
      v25 = *(v7 + 32);
      v25(v17, v14, v6);
      v25(v19, v17, v6);
      v25(v11, v19, v6);
      v26 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
      swift_beginAccess();
      (*(v7 + 40))(v0 + v26, v11, v6);
      return swift_endAccess();
    }
  }

  v22 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v22, v1);
  v23 = v0;
  sub_1D9326E74();
  (*(v2 + 8))(v5, v1);
  v24 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  swift_beginAccess();
  (*(v7 + 40))(v23 + v24, v11, v6);
  return swift_endAccess();
}

uint64_t sub_1D92C7F9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0xD000000000000014;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  result = BSDispatchQueueAssertMain();
  v10 = 0x80000001D9336240;
  if (v5)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:

      sub_1D92C7C70();
      v10 = 0x80000001D9336260;
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_3;
    }
  }

  if (((v3 ^ v6) & 1) == 0)
  {
    return result;
  }

  v2 = 0xD00000000000001CLL;
LABEL_10:
  v12 = v10;
  MEMORY[0x1DA72E570](0x6465676E61686320, 0xE800000000000000);
  sub_1D92C80B8(v2, v12);
}

uint64_t sub_1D92C80B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v78 = sub_1D9327B44();
  v77 = *(v78 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D9327034();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v71 - v19;
  BSDispatchQueueAssertMain();
  v21 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logger;

  v79 = v21;
  v22 = sub_1D9326BC4();
  v23 = sub_1D9328234();

  v24 = os_log_type_enabled(v22, v23);
  v75 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v82[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_1D9293524(*(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier), *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier + 8), v82);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1D9293524(a1, a2, v82);
    _os_log_impl(&dword_1D928E000, v22, v23, "[%{public}s] Evaluating cached control template for reason: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v26, -1, -1);
    MEMORY[0x1DA72F920](v25, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F8, &qword_1D932CCE8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D932CBF0;
  *(v27 + 32) = swift_getKeyPath();
  *(v27 + 40) = swift_getKeyPath();
  *(v27 + 48) = swift_getKeyPath();
  *(v27 + 56) = swift_getKeyPath();
  *(v27 + 64) = swift_getKeyPath();
  *(v27 + 72) = swift_getKeyPath();
  *(v27 + 80) = swift_getKeyPath();
  *(v27 + 88) = swift_getKeyPath();
  *(v27 + 96) = swift_getKeyPath();
  *(v27 + 104) = swift_getKeyPath();
  v28 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry;
  v29 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v30 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v31 = *(v29 + v30);

  v32 = sub_1D93276C4();

  if (v32)
  {
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(v82, v83);
    sub_1D92C6E14(v11);
    sub_1D9327AD4();
    (*(v8 + 8))(v11, v76);

    v33 = v77;
    v34 = v78;
    (*(v77 + 56))(v20, 0, 1, v78);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  else
  {

    v33 = v77;
    v34 = v78;
    (*(v77 + 56))(v20, 1, 1, v78);
  }

  v35 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92C962C(v20, v3 + v35);
  swift_endAccess();
  v36 = *(v3 + v28);
  v37 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v38 = *(v36 + v37);

  v39 = sub_1D93276C4();

  if (v39)
  {
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(v82, v83);
    v39 = sub_1D9327AC4();
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  v40 = *(v3 + 32);
  *(v3 + 32) = v39;

  swift_retain_n();
  v41 = sub_1D9326BC4();
  v42 = sub_1D9328234();
  if (!os_log_type_enabled(v41, v42))
  {

    goto LABEL_25;
  }

  LODWORD(v76) = v42;
  v79 = v41;
  v43 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v81 = v72;
  *v43 = 136447491;
  *(v43 + 4) = sub_1D9293524(*(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier), *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier + 8), &v81);
  *(v43 + 12) = 2082;
  v44 = v74;
  sub_1D92973DC(v3 + v35, v74, &qword_1ECAFC4F0, &qword_1D932CC18);
  v45 = *(v33 + 48);
  v46 = v45(v44, 1, v34);
  sub_1D92933A0(v44, &qword_1ECAFC4F0, &qword_1D932CC18);
  if (v46 == 1)
  {
    v47 = 28494;
  }

  else
  {
    v47 = 7562585;
  }

  if (v46 == 1)
  {
    v48 = 0xE200000000000000;
  }

  else
  {
    v48 = 0xE300000000000000;
  }

  v49 = sub_1D9293524(v47, v48, &v81);

  *(v43 + 14) = v49;
  *(v43 + 22) = 1026;
  v50 = *(v3 + v28);
  v51 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  LODWORD(v50) = *(v50 + v51);
  v52 = v78;

  *(v43 + 24) = v50;

  *(v43 + 28) = 1026;
  LOBYTE(v50) = sub_1D92C6A40();

  *(v43 + 30) = v50 & 1;

  *(v43 + 34) = 1026;
  v53 = v75;
  sub_1D92973DC(v3 + v35, v75, &qword_1ECAFC4F0, &qword_1D932CC18);
  if (v45(v53, 1, v52))
  {
    sub_1D92933A0(v53, &qword_1ECAFC4F0, &qword_1D932CC18);

LABEL_20:
    v56 = 0;
    goto LABEL_21;
  }

  v54 = v77;
  v55 = v73;
  (*(v77 + 16))(v73, v53, v52);
  sub_1D92933A0(v53, &qword_1ECAFC4F0, &qword_1D932CC18);
  sub_1D9327B04();
  (*(v54 + 8))(v55, v52);
  __swift_project_boxed_opaque_existential_1(v82, v83);
  LOBYTE(v55) = sub_1D9327AF4();
  __swift_destroy_boxed_opaque_existential_1Tm(v82);

  if ((v55 & 1) == 0)
  {
    goto LABEL_20;
  }

  v56 = 1;
LABEL_21:
  *(v43 + 36) = v56;

  *(v43 + 40) = 2081;
  v57 = *(v3 + v28);
  v58 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v59 = *(v57 + v58);

  v60 = sub_1D93276C4();

  if (v60)
  {
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(v82, v83);
    sub_1D9327AC4();
    v61 = sub_1D9326A24();

    v80 = v61;
    sub_1D92C969C();
    v62 = sub_1D9328394();
    v64 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  else
  {
    v64 = 0xE300000000000000;
    v62 = 7104878;
  }

  v65 = v76;
  v66 = sub_1D9293524(v62, v64, &v81);

  *(v43 + 42) = v66;
  v67 = v79;
  _os_log_impl(&dword_1D928E000, v79, v65, "[%{public}s] Found template? %{public}s, isDataProtected: %{BOOL,public}d, isRedacted? %{BOOL,public}d, isDisabled: %{BOOL,public}d, current state: %{private}s", v43, 0x32u);
  v68 = v72;
  swift_arrayDestroy();
  MEMORY[0x1DA72F920](v68, -1, -1);
  MEMORY[0x1DA72F920](v43, -1, -1);

LABEL_25:
  v69 = *(v3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10);
  sub_1D9326C54();
}

uint64_t sub_1D92C8EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC518, &qword_1D932CEE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D92973DC(a1, &v6 - v4, &qword_1ECAFC518, &qword_1D932CEE8);
  return sub_1D9326ED4();
}

uint64_t sub_1D92C8F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}
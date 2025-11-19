uint64_t sub_1AB27C45C()
{
  v120 = v0;
  v1 = (v0 + 776);
  sub_1AB28DBE8(*(v0 + 1744), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1888);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  *&v117 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001AB506430;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1472);
  *(v0 + 1280) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1256));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 1256, v0 + 1064, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 792) = 0u;
  sub_1AB017CC4(v0 + 1064, v0 + 776, &unk_1EB437E60);
  *(v0 + 808) = 0;
  v10 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v117 + 16) + 1, 1, v117);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 792);
  v13[64] = *(v0 + 808);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  *&v117 = v10;
  sub_1AB014AC0(v0 + 1256, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  v17 = *(v0 + 1816);
  v18 = *(v0 + 1696);
  v19 = *(v0 + 1688);
  v20 = *(v18 + 48);
  *(v0 + 1896) = v20;
  *(v0 + 1904) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v114 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v111 = v21;
  *(v0 + 649) = v21 & 1;
  v23 = *(v0 + 1792);
  sub_1AB01494C(*(v0 + 1624) + 40, v0 + 536);
  sub_1AB014A58(v17, v23, &qword_1EB437E40);
  if (v114(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1736);
    sub_1AB28E968(*(v0 + 1792), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 560);
    v27 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v26);
    (*(v27 + 8))(&v117, v25, v26, v27);
    v24 = v117;
    sub_1AB28DBE8(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 696);
  v29 = *(v0 + 1816);
  v30 = *(v0 + 1784);
  v31 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EB435770;
  sub_1AB4622E4();
  v32 = *(v0 + 600);
  v112 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v32);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AB4D4720;
  *&v117 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v34._countAndFlagsBits = 0x7341646568636163;
  v34._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  sub_1AB014A58(v29, v30, &qword_1EB437E40);
  v35 = v114(v30, 1, v31);
  v36 = *(v0 + 1784);
  if (v35 == 1)
  {
    sub_1AB014AC0(*(v0 + 1784), &qword_1EB437E40);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    v37 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1AB28E968(v36, v37, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1032, v0 + 936, &unk_1EB437E60);
  *v28 = 0u;
  *(v0 + 712) = 0u;
  sub_1AB017CC4(v0 + 936, v0 + 696, &unk_1EB437E60);
  *(v0 + 728) = 0;
  v38 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
  }

  v41 = (v0 + 968);
  *(v38 + 2) = v40 + 1;
  v42 = &v38[40 * v40];
  v43 = *v28;
  v44 = *(v0 + 712);
  v42[64] = *(v0 + 728);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  *&v117 = v38;
  sub_1AB014AC0(v0 + 1032, &unk_1EB437E60);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v46;
  sub_1AB014A58(v0 + 968, v0 + 1000, &unk_1EB437E60);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1AB017CC4(v0 + 1000, v0 + 656, &unk_1EB437E60);
  *(v0 + 688) = 0;
  v47 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1AB0168A8(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1AB0168A8((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1632);
  *(v47 + 2) = v49 + 1;
  v51 = &v47[40 * v49];
  v52 = *(v0 + 656);
  v53 = *(v0 + 672);
  v51[64] = *(v0 + 688);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  *&v117 = v47;
  sub_1AB014AC0(v0 + 968, &unk_1EB437E60);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v33 + 32) = v117;
  Logger.info(_:)(v33, v32, v112);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  v55 = *(v50 + 32);
  LOBYTE(v117) = v55;
  v56 = sub_1AB05D148();
  if (v24 != 4 && (v56 & 1) != 0)
  {
    v57 = *(v0 + 1816);
    v58 = *(v0 + 1776);
    v59 = *(v0 + 1688);
    v60 = swift_allocBox();
    v62 = v61;
    sub_1AB014A58(v57, v58, &qword_1EB437E40);
    v63 = v114(v58, 1, v59);
    v64 = *(v0 + 1776);
    if (v63 == 1)
    {
      sub_1AB014AC0(v64, &qword_1EB437E40);
      swift_deallocBox();
    }

    else
    {
      sub_1AB28E968(v64, v62, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v111 & 1) == 0)
      {
        sub_1AB4622E4();
        v91 = *(v0 + 480);
        v116 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 456), v91);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1AB4D4720;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001AB506580;
        *(v93 + 48) = 0u;
        *(v93 + 32) = 0u;
        sub_1AB017CC4(v0 + 1192, v93 + 32, &unk_1EB437E60);
        *(v93 + 64) = 0;
        *(v92 + 32) = v93;
        Logger.info(_:)(v92, v91, v116);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
        if (v24 - 1 < 2)
        {
          LOBYTE(v117) = v55;
          if (sub_1AB39D43C())
          {
            v94 = *(v0 + 1680);
            v95 = *(v0 + 1672);
            v96 = *(v0 + 1664);
            v97 = *(v0 + 1656);
            v98 = *(v0 + 1648);
            v115 = *(v0 + 1640);
            v99 = *(v0 + 1632);
            v100 = *(v0 + 1624);
            *(v62 + *(*(v0 + 1688) + 40)) = 1;
            v101 = sub_1AB460BE4();
            (*(*(v101 - 8) + 56))(v94, 1, 1, v101);
            v102 = *(v99 + 16);
            v117 = *v99;
            v118 = v102;
            v119 = *(v99 + 32);
            sub_1AB28E900(v98, v95, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1AB014A58(v100, v0 + 96, &qword_1EB4394A8);
            v103 = (*(v97 + 80) + 73) & ~*(v97 + 80);
            v104 = (v96 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
            v105 = swift_allocObject();
            *(v105 + 16) = 0;
            *(v105 + 24) = 0;
            *(v105 + 32) = v115;
            v106 = v118;
            *(v105 + 40) = v117;
            *(v105 + 56) = v106;
            *(v105 + 72) = v119;
            sub_1AB28E968(v95, v105 + v103, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v105 + v104) = v60;
            v107 = (v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8));
            v108 = *(v0 + 160);
            v107[3] = *(v0 + 144);
            v107[4] = v108;
            v109 = *(v0 + 128);
            v107[1] = *(v0 + 112);
            v107[2] = v109;
            *v107 = *(v0 + 96);

            sub_1AB28DB8C(v99, v0 + 896);

            sub_1AB3B2A60(0, 0, v94, &unk_1AB4E36A8, v105);
          }
        }

        v110 = *(v0 + 1616);
        swift_beginAccess();
        sub_1AB28E900(v62, v110, type metadata accessor for JetPackAsset);

        sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

        v78 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v117) = v55;
  if (sub_1AB39D43C())
  {
    if (v24 == 3)
    {
      (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
    }

    else
    {
      sub_1AB014A58(*(v0 + 1816), *(v0 + 1768), &qword_1EB437E40);
    }

    v66 = *(v0 + 1632);
    sub_1AB014A58(*(v0 + 1624), v0 + 16, &qword_1EB4394A8);
    v67 = *(v66 + 32);
    v68 = *(v66 + 16);
    *(v0 + 736) = *v66;
    *(v0 + 752) = v68;
    *(v0 + 768) = v67;
    sub_1AB01494C(v0 + 16, v0 + 176);
    sub_1AB01494C(v0 + 56, v0 + 216);
    sub_1AB460CC4();
    v69 = (v0 + 856);
    v70 = *(v0 + 1768);
    v71 = *(v0 + 1760);
    v72 = *(v0 + 1688);
    sub_1AB4622E4();
    v73 = *(v0 + 400);
    v113 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v73);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1AB4D4720;
    *&v117 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v75._countAndFlagsBits = 0xD000000000000032;
    v75._object = 0x80000001AB506510;
    LogMessage.StringInterpolation.appendLiteral(_:)(v75);
    sub_1AB014A58(v70, v71, &qword_1EB437E40);
    v76 = v114(v71, 1, v72);
    v77 = *(v0 + 1760);
    if (v76 == 1)
    {
      sub_1AB014AC0(*(v0 + 1760), &qword_1EB437E40);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = *(v0 + 1688);
      v80 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
      sub_1AB28E968(v77, v80, type metadata accessor for JetPackAsset);
    }

    sub_1AB014A58(v0 + 1288, v0 + 1320, &unk_1EB437E60);
    *v69 = 0u;
    *(v0 + 872) = 0u;
    sub_1AB017CC4(v0 + 1320, v0 + 856, &unk_1EB437E60);
    *(v0 + 888) = 0;
    v81 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1AB0168A8(0, *(v81 + 2) + 1, 1, v81);
    }

    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1AB0168A8((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[40 * v83];
    v85 = *v69;
    v86 = *(v0 + 872);
    v84[64] = *(v0 + 888);
    *(v84 + 2) = v85;
    *(v84 + 3) = v86;
    *&v117 = v81;
    sub_1AB014AC0(v0 + 1288, &unk_1EB437E60);
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v87);
    *(v74 + 32) = v117;
    Logger.info(_:)(v74, v73, v113);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
    v88 = swift_task_alloc();
    *(v0 + 1928) = v88;
    *v88 = v0;
    v88[1] = sub_1AB27D9F8;
    v89 = *(v0 + 1768);
    v90 = *(v0 + 1720);

    return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v90, v0 + 736, v89);
  }

  sub_1AB28D17C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

  v78 = *(v0 + 8);
LABEL_43:

  return v78();
}

uint64_t sub_1AB27D9F8()
{
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v2 = sub_1AB27DE48;
  }

  else
  {
    v2 = sub_1AB27DB0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB27DB0C()
{
  v1 = v0[216];
  v2 = v0[211];
  sub_1AB28E968(v0[215], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v8 = v0[25];
    v9 = v0[26];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 22, v8);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[243] = v10;
    *v10 = v0;
    v10[1] = sub_1AB27E50C;
    v11 = v0[216];
    v12 = v0[214];

    return v13(v12, v11, v8, v9);
  }

  else
  {
    v5 = v0[221];
    sub_1AB28E968(v0[216], v0[202], type metadata accessor for JetPackAsset);
    sub_1AB014AC0((v0 + 22), &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    sub_1AB014AC0(v5, &qword_1EB437E40);
    sub_1AB014AC0(v0[227], &qword_1EB437E40);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AB27DE48()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1896);
  v3 = *(v0 + 1816);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1688);
  sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1AB014A58(v3, v4, &qword_1EB437E40);
  v31 = v1;
  if (v2(v4, 1, v5) == 1)
  {
    sub_1AB014AC0(*(v0 + 1752), &qword_1EB437E40);
LABEL_12:
    v27 = *(v0 + 1768);
    swift_willThrow();
    sub_1AB014AC0(v27, &qword_1EB437E40);
    sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

    v26 = *(v0 + 8);
    goto LABEL_13;
  }

  v6 = *(v0 + 650);
  sub_1AB28E968(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
  if (v6 == 4 || *(v0 + 650) || *(v0 + 649) != 1)
  {
    sub_1AB28DBE8(*(v0 + 1704), type metadata accessor for JetPackAsset);
    goto LABEL_12;
  }

  sub_1AB4622E4();
  v7 = *(v0 + 520);
  v8 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v7);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  v32 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001AB506460;
  v10._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 1416);
  v12 = *(v0 + 1424);
  *(v0 + 1120) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v11, v12);
  sub_1AB014A58(v0 + 1096, v0 + 1160, &unk_1EB437E60);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1AB017CC4(v0 + 1160, v0 + 816, &unk_1EB437E60);
  *(v0 + 848) = 0;
  v14 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = *(v0 + 1768);
  v29 = *(v0 + 1616);
  v30 = *(v0 + 1704);
  *(v14 + 2) = v16 + 1;
  v18 = &v14[40 * v16];
  v19 = *(v0 + 816);
  v20 = *(v0 + 832);
  v18[64] = *(v0 + 848);
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  sub_1AB014AC0(v0 + 1096, &unk_1EB437E60);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  *(v9 + 32) = v14;
  Logger.error(_:)(v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
  sub_1AB4622E4();
  v22 = *(v0 + 440);
  v23 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 416), v22);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AB4D4720;
  *(v0 + 1248) = MEMORY[0x1E69E6158];
  *(v0 + 1224) = 0xD000000000000075;
  *(v0 + 1232) = 0x80000001AB506490;
  *(v25 + 48) = 0u;
  *(v25 + 32) = 0u;
  sub_1AB017CC4(v0 + 1224, v25 + 32, &unk_1EB437E60);
  *(v25 + 64) = 0;
  *(v24 + 32) = v25;
  Logger.warning(_:)(v24, v22, v23);

  sub_1AB014AC0(v17, &qword_1EB437E40);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
  sub_1AB28E968(v30, v29, type metadata accessor for JetPackAsset);
  sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

  v26 = *(v0 + 8);
LABEL_13:

  return v26();
}

uint64_t sub_1AB27E50C()
{
  v2 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v3 = sub_1AB27E814;
  }

  else
  {
    sub_1AB28DBE8(*(v2 + 1712), type metadata accessor for JetPackAsset);
    v3 = sub_1AB27E63C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB27E63C()
{
  v1 = v0[221];
  sub_1AB28E968(v0[216], v0[202], type metadata accessor for JetPackAsset);
  sub_1AB014AC0((v0 + 22), &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  sub_1AB014AC0(v1, &qword_1EB437E40);
  sub_1AB014AC0(v0[227], &qword_1EB437E40);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB27E814()
{
  sub_1AB4622E4();
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v1);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB506550;
  v4._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1448);
  *(v0 + 1376) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1352));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1AB014A58(v0 + 1352, v0 + 1384, &unk_1EB437E60);
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  sub_1AB017CC4(v0 + 1384, v0 + 616, &unk_1EB437E60);
  *(v0 + 648) = 0;
  v8 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 1952);
  *(v8 + 2) = v10 + 1;
  v12 = &v8[40 * v10];
  v13 = *(v0 + 616);
  v14 = *(v0 + 632);
  v12[64] = *(v0 + 648);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1AB014AC0(v0 + 1352, &unk_1EB437E60);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 32) = v8;
  Logger.error(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  v16 = *(v0 + 1768);
  sub_1AB28E968(*(v0 + 1728), *(v0 + 1616), type metadata accessor for JetPackAsset);
  sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1AB014AC0(v16, &qword_1EB437E40);
  sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AB27EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[140] = a7;
  v7[139] = a6;
  v7[138] = a5;
  v7[137] = a4;
  v7[136] = a3;
  v7[135] = a2;
  v7[134] = a1;
  v8 = *(a6 - 8);
  v7[141] = v8;
  v7[142] = *(v8 + 64);
  v7[143] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[144] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[145] = v10;
  v7[146] = *(v10 + 64);
  v7[147] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v7[148] = swift_task_alloc();
  v11 = type metadata accessor for JetPackAsset(0);
  v7[149] = v11;
  v7[150] = *(v11 - 8);
  v7[151] = swift_task_alloc();
  v7[152] = swift_task_alloc();
  v7[153] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v7[154] = swift_task_alloc();
  v7[155] = swift_task_alloc();
  v7[156] = swift_task_alloc();
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();
  v7[159] = swift_task_alloc();
  v7[160] = swift_task_alloc();
  v7[161] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB27EE7C, 0, 0);
}

uint64_t sub_1AB27EE7C()
{
  v1 = v0[161];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[144];
  v5 = v0[135];
  v6 = *(v2 + 56);
  v0[162] = v6;
  v0[163] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[164] = AssociatedConformanceWitness;
  v10 = *(AssociatedConformanceWitness + 16);
  v0[165] = v10;
  v0[166] = (AssociatedConformanceWitness + 16) & 0xFFFFFFFFFFFFLL | 0x2A86000000000000;
  v11 = v10(v4, AssociatedConformanceWitness);
  v13 = v12;
  v0[167] = v12;
  v17 = (*(v8 + 16) + **(v8 + 16));
  v14 = swift_task_alloc();
  v0[168] = v14;
  *v14 = v0;
  v14[1] = sub_1AB27F068;
  v15 = v0[160];

  return v17(v15, v11, v13, v7, v8);
}

uint64_t sub_1AB27F068()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_1AB281350;
  }

  else
  {

    v2 = sub_1AB27F184;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB27F184()
{
  v116 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);
  sub_1AB017CC4(*(v0 + 1280), v1, &qword_1EB437E40);
  sub_1AB014A58(v1, v2, &qword_1EB437E40);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1272);
  if (v5 == 1)
  {
    sub_1AB014AC0(v6, &qword_1EB437E40);
    goto LABEL_3;
  }

  sub_1AB28E968(v6, *(v0 + 1224), type metadata accessor for JetPackAsset);
  if (qword_1ED4D0B80 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1352);
  v13 = qword_1ED4D3EB0;
  *(v0 + 1040) = (*(v0 + 1320))(*(v0 + 1152), *(v0 + 1312));
  *(v0 + 1048) = v14;
  v15 = *(v13 + 16);
  *(swift_task_alloc() + 16) = v0 + 1040;
  os_unfair_lock_lock((v15 + 24));
  sub_1AB28EE48((v15 + 16), v115);
  os_unfair_lock_unlock((v15 + 24));
  if (!v12)
  {
    v58 = v115[0];

    if ((v58 & 1) == 0)
    {
      sub_1AB28DBE8(*(v0 + 1224), type metadata accessor for JetPackAsset);
LABEL_3:
      v7 = *(v0 + 1288);
      v8 = *(v0 + 1200);
      v9 = *(v0 + 1192);
      v10 = *(v8 + 48);
      *(v0 + 1376) = v10;
      *(v0 + 1384) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v109 = v10;
      if (v10(v7, 1, v9))
      {
        v11 = 0;
      }

      else
      {
        v16 = v7 + *(v9 + 20);
        v11 = *(v16 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
      }

      v102 = v11;
      *(v0 + 489) = v11 & 1;
      v17 = *(v0 + 1264);
      sub_1AB01494C(*(v0 + 1080) + 40, v0 + 296);
      sub_1AB014A58(v7, v17, &qword_1EB437E40);
      if (v109(v17, 1, v9) == 1)
      {
        v18 = 4;
      }

      else
      {
        v19 = *(v0 + 1216);
        sub_1AB28E968(*(v0 + 1264), v19, type metadata accessor for JetPackAsset);
        v20 = *(v0 + 320);
        v21 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v20);
        (*(v21 + 8))(v115, v19, v20, v21);
        v18 = LOBYTE(v115[0]);
        sub_1AB28DBE8(v19, type metadata accessor for JetPackAsset);
      }

      *(v0 + 490) = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 1288);
      v23 = *(v0 + 1256);
      v24 = *(v0 + 1192);
      *(v0 + 1392) = qword_1EB435770;
      sub_1AB4622E4();
      v105 = *(v0 + 368);
      v107 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v107);
      *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      v115[0] = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v26._countAndFlagsBits = 0x7341646568636163;
      v26._object = 0xEC0000003D746573;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      sub_1AB014A58(v22, v23, &qword_1EB437E40);
      v27 = v109(v23, 1, v24);
      v28 = *(v0 + 1256);
      if (v27 == 1)
      {
        sub_1AB014AC0(*(v0 + 1256), &qword_1EB437E40);
        *(v0 + 840) = 0u;
        *(v0 + 856) = 0u;
      }

      else
      {
        *(v0 + 864) = *(v0 + 1192);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
        sub_1AB28E968(v28, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
      }

      sub_1AB014A58(v0 + 840, v0 + 776, &unk_1EB437E60);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      sub_1AB017CC4(v0 + 776, v0 + 496, &unk_1EB437E60);
      *(v0 + 528) = 0;
      v30 = v115[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      v33 = (v0 + 712);
      *(v30 + 2) = v32 + 1;
      v34 = &v30[40 * v32];
      v35 = *(v0 + 496);
      v36 = *(v0 + 512);
      v34[64] = *(v0 + 528);
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v115[0] = v30;
      sub_1AB014AC0(v0 + 840, &unk_1EB437E60);
      v37._countAndFlagsBits = 0x3D73757461747320;
      v37._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      if (v18 == 4)
      {
        v38 = 0;
        *v33 = 0;
        *(v0 + 720) = 0;
        *(v0 + 728) = 0;
      }

      else
      {
        *v33 = v18;
        v38 = &type metadata for JetPackAssetCacheStatus;
      }

      *(v0 + 736) = v38;
      sub_1AB014A58(v0 + 712, v0 + 648, &unk_1EB437E60);
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      sub_1AB017CC4(v0 + 648, v0 + 576, &unk_1EB437E60);
      *(v0 + 608) = 0;
      v39 = v115[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1AB0168A8(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v39);
      }

      v42 = *(v0 + 1312);
      v43 = *(v0 + 1152);
      *(v39 + 2) = v41 + 1;
      v44 = &v39[40 * v41];
      v45 = *(v0 + 576);
      v46 = *(v0 + 592);
      v44[64] = *(v0 + 608);
      *(v44 + 2) = v45;
      *(v44 + 3) = v46;
      v115[0] = v39;
      sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      *(v25 + 32) = v115[0];
      Logger.info(_:)(v25, v107, v105);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
      v48 = *(v42 + 24);
      v48(v115, v43, v42);
      v49 = sub_1AB05D148();
      if (v18 != 4 && (v49 & 1) != 0)
      {
        v50 = *(v0 + 1288);
        v51 = *(v0 + 1248);
        v52 = *(v0 + 1192);
        v53 = swift_allocBox();
        v55 = v54;
        sub_1AB014A58(v50, v51, &qword_1EB437E40);
        v56 = v109(v51, 1, v52);
        v57 = *(v0 + 1248);
        if (v56 == 1)
        {
          sub_1AB014AC0(v57, &qword_1EB437E40);
          swift_deallocBox();
        }

        else
        {
          sub_1AB28E968(v57, v55, type metadata accessor for JetPackAsset);
          v70 = v18 - 1;
          if (v18 <= 1 && (v102 & 1) == 0)
          {
            sub_1AB4622E4();
            v80 = *(v0 + 400);
            v113 = *(v0 + 408);
            __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v80);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_1AB4D4720;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_1AB4D4720;
            *(v0 + 896) = MEMORY[0x1E69E6158];
            *(v0 + 872) = 0xD000000000000012;
            *(v0 + 880) = 0x80000001AB506580;
            *(v82 + 48) = 0u;
            *(v82 + 32) = 0u;
            sub_1AB017CC4(v0 + 872, v82 + 32, &unk_1EB437E60);
            *(v82 + 64) = 0;
            *(v81 + 32) = v82;
            Logger.info(_:)(v81, v80, v113);

            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
            if (v70 <= 1)
            {
              v48(v115, *(v0 + 1152), *(v0 + 1312));
              if (sub_1AB39D43C())
              {
                v83 = *(v0 + 1184);
                v84 = *(v0 + 1176);
                v85 = *(v0 + 1160);
                v86 = *(v0 + 1152);
                v87 = *(v0 + 1144);
                v101 = v87;
                v103 = *(v0 + 1136);
                v104 = *(v0 + 1168);
                v111 = *(v0 + 1128);
                v106 = *(v0 + 1096);
                v108 = v83;
                v100 = *(v0 + 1088);
                v98 = *(v0 + 1104);
                v99 = *(v0 + 1080);
                v88 = *(*(v0 + 1192) + 40);
                v89 = sub_1AB460BE4();
                v114 = *(v0 + 1112);
                *(v55 + v88) = 1;
                (*(*(v89 - 8) + 56))(v83, 1, 1, v89);
                (*(v85 + 16))(v84, v100, v86);
                (*(v111 + 16))(v87, v98);
                sub_1AB014A58(v99, v0 + 96, &qword_1EB4394A8);
                v90 = (*(v85 + 80) + 56) & ~*(v85 + 80);
                v91 = (v104 + *(v111 + 80) + v90) & ~*(v111 + 80);
                v92 = (v103 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
                v93 = swift_allocObject();
                *(v93 + 16) = 0;
                *(v93 + 24) = 0;
                *(v93 + 32) = v114;
                *(v93 + 48) = v106;
                (*(v85 + 32))(v93 + v90, v84, v86);
                (*(v111 + 32))(v93 + v91, v101, v114);
                *(v93 + v92) = v53;
                v94 = (v93 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8));
                v95 = *(v0 + 160);
                v94[3] = *(v0 + 144);
                v94[4] = v95;
                v96 = *(v0 + 128);
                v94[1] = *(v0 + 112);
                v94[2] = v96;
                *v94 = *(v0 + 96);

                sub_1AB3B2A60(0, 0, v108, &unk_1AB4E3740, v93);
              }
            }

            v97 = *(v0 + 1072);
            swift_beginAccess();
            sub_1AB28E900(v55, v97, type metadata accessor for JetPackAsset);

            sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

            v72 = *(v0 + 8);
LABEL_46:

            v72();
            return;
          }
        }
      }

      v48(v115, *(v0 + 1152), *(v0 + 1312));
      if (sub_1AB39D43C())
      {
        if (v18 == 3)
        {
          (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
        }

        else
        {
          sub_1AB014A58(*(v0 + 1288), *(v0 + 1240), &qword_1EB437E40);
        }

        sub_1AB014A58(*(v0 + 1080), v0 + 16, &qword_1EB4394A8);
        v73 = swift_task_alloc();
        *(v0 + 1408) = v73;
        *v73 = v0;
        v73[1] = sub_1AB2810C8;
        v74 = *(v0 + 1240);
        v75 = *(v0 + 1120);
        v76 = *(v0 + 1112);
        v77 = *(v0 + 1104);
        v78 = *(v0 + 1088);
        v79 = *(v0 + 1072);

        sub_1AB285FA4(v79, v78, v77, v74, v0 + 16, v0 + 56, v76, v75);
        return;
      }

      sub_1AB28D17C();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();
      sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

      v72 = *(v0 + 8);
      goto LABEL_46;
    }

    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    v110 = *(v0 + 1296);
    v59 = *(v0 + 1288);
    v60 = *(v0 + 1192);
    v61 = *(v0 + 1080);
    sub_1AB4622E4();
    v62 = *(v0 + 280);
    v63 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1AB4D4720;
    *(v0 + 640) = MEMORY[0x1E69E6158];
    *(v0 + 616) = 0xD000000000000054;
    *(v0 + 624) = 0x80000001AB5065A0;
    *(v65 + 48) = 0u;
    *(v65 + 32) = 0u;
    sub_1AB017CC4(v0 + 616, v65 + 32, &unk_1EB437E60);
    *(v65 + 64) = 0;
    *(v64 + 32) = v65;
    Logger.error(_:)(v64, v62, v63);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
    sub_1AB014AC0(v59, &qword_1EB437E40);
    v110(v59, 1, 1, v60);
    v66 = v61[3];
    v67 = v61[4];
    __swift_project_boxed_opaque_existential_1Tm(v61, v66);
    v112 = (*(v67 + 24) + **(v67 + 24));
    v68 = swift_task_alloc();
    *(v0 + 1360) = v68;
    *v68 = v0;
    v68[1] = sub_1AB2802B0;
    v69 = *(v0 + 1224);

    v112(v69, v66, v67);
  }
}

uint64_t sub_1AB2802B0()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_1AB282294;
  }

  else
  {
    v2 = sub_1AB2803C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB2803C4()
{
  v93 = v0;
  sub_1AB28DBE8(*(v0 + 1224), type metadata accessor for JetPackAsset);
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v2 + 48);
  *(v0 + 1376) = v4;
  *(v0 + 1384) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v88 = v4;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v81 = v5;
  *(v0 + 489) = v5 & 1;
  v7 = *(v0 + 1264);
  sub_1AB01494C(*(v0 + 1080) + 40, v0 + 296);
  sub_1AB014A58(v1, v7, &qword_1EB437E40);
  if (v88(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1216);
    sub_1AB28E968(*(v0 + 1264), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 320);
    v11 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v10);
    (*(v11 + 8))(v92, v9, v10, v11);
    v8 = LOBYTE(v92[0]);
    sub_1AB28DBE8(v9, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1288);
  v13 = *(v0 + 1256);
  v14 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EB435770;
  sub_1AB4622E4();
  v84 = *(v0 + 368);
  v86 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v86);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AB4D4720;
  v92[0] = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0x7341646568636163;
  v16._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  sub_1AB014A58(v12, v13, &qword_1EB437E40);
  v17 = v88(v13, 1, v14);
  v18 = *(v0 + 1256);
  if (v17 == 1)
  {
    sub_1AB014AC0(*(v0 + 1256), &qword_1EB437E40);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1AB28E968(v18, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 840, v0 + 776, &unk_1EB437E60);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1AB017CC4(v0 + 776, v0 + 496, &unk_1EB437E60);
  *(v0 + 528) = 0;
  v20 = v92[0];
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

  v23 = (v0 + 712);
  *(v20 + 2) = v22 + 1;
  v24 = &v20[40 * v22];
  v25 = *(v0 + 496);
  v26 = *(v0 + 512);
  v24[64] = *(v0 + 528);
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v92[0] = v20;
  sub_1AB014AC0(v0 + 840, &unk_1EB437E60);
  v27._countAndFlagsBits = 0x3D73757461747320;
  v27._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  if (v8 == 4)
  {
    v28 = 0;
    *v23 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v23 = v8;
    v28 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v28;
  sub_1AB014A58(v0 + 712, v0 + 648, &unk_1EB437E60);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1AB017CC4(v0 + 648, v0 + 576, &unk_1EB437E60);
  *(v0 + 608) = 0;
  v29 = v92[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
  }

  v32 = *(v0 + 1312);
  v33 = *(v0 + 1152);
  *(v29 + 2) = v31 + 1;
  v34 = &v29[40 * v31];
  v35 = *(v0 + 576);
  v36 = *(v0 + 592);
  v34[64] = *(v0 + 608);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  v92[0] = v29;
  sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v15 + 32) = v92[0];
  Logger.info(_:)(v15, v86, v84);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  v38 = *(v32 + 24);
  v38(v92, v33, v32);
  v39 = sub_1AB05D148();
  if (v8 != 4 && (v39 & 1) != 0)
  {
    v40 = *(v0 + 1288);
    v41 = *(v0 + 1248);
    v42 = *(v0 + 1192);
    v43 = swift_allocBox();
    v45 = v44;
    sub_1AB014A58(v40, v41, &qword_1EB437E40);
    v46 = v88(v41, 1, v42);
    v47 = *(v0 + 1248);
    if (v46 == 1)
    {
      sub_1AB014AC0(v47, &qword_1EB437E40);
      swift_deallocBox();
    }

    else
    {
      sub_1AB28E968(v47, v45, type metadata accessor for JetPackAsset);
      v48 = v8 - 1;
      if (v8 <= 1 && (v81 & 1) == 0)
      {
        sub_1AB4622E4();
        v59 = *(v0 + 400);
        v90 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v59);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1AB4D4720;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001AB506580;
        *(v61 + 48) = 0u;
        *(v61 + 32) = 0u;
        sub_1AB017CC4(v0 + 872, v61 + 32, &unk_1EB437E60);
        *(v61 + 64) = 0;
        *(v60 + 32) = v61;
        Logger.info(_:)(v60, v59, v90);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
        if (v48 <= 1)
        {
          v38(v92, *(v0 + 1152), *(v0 + 1312));
          if (sub_1AB39D43C())
          {
            v62 = *(v0 + 1184);
            v63 = *(v0 + 1176);
            v64 = *(v0 + 1160);
            v65 = *(v0 + 1152);
            v66 = *(v0 + 1144);
            v80 = v66;
            v82 = *(v0 + 1136);
            v83 = *(v0 + 1168);
            v87 = v62;
            v89 = *(v0 + 1128);
            v85 = *(v0 + 1096);
            v79 = *(v0 + 1088);
            v77 = *(v0 + 1104);
            v78 = *(v0 + 1080);
            v67 = *(*(v0 + 1192) + 40);
            v68 = sub_1AB460BE4();
            v91 = *(v0 + 1112);
            *(v45 + v67) = 1;
            (*(*(v68 - 8) + 56))(v62, 1, 1, v68);
            (*(v64 + 16))(v63, v79, v65);
            (*(v89 + 16))(v66, v77);
            sub_1AB014A58(v78, v0 + 96, &qword_1EB4394A8);
            v69 = (*(v64 + 80) + 56) & ~*(v64 + 80);
            v70 = (v83 + *(v89 + 80) + v69) & ~*(v89 + 80);
            v71 = (v82 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
            v72 = swift_allocObject();
            *(v72 + 16) = 0;
            *(v72 + 24) = 0;
            *(v72 + 32) = v91;
            *(v72 + 48) = v85;
            (*(v64 + 32))(v72 + v69, v63, v65);
            (*(v89 + 32))(v72 + v70, v80, v91);
            *(v72 + v71) = v43;
            v73 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
            v74 = *(v0 + 160);
            v73[3] = *(v0 + 144);
            v73[4] = v74;
            v75 = *(v0 + 128);
            v73[1] = *(v0 + 112);
            v73[2] = v75;
            *v73 = *(v0 + 96);

            sub_1AB3B2A60(0, 0, v87, &unk_1AB4E3740, v72);
          }
        }

        v76 = *(v0 + 1072);
        swift_beginAccess();
        sub_1AB28E900(v45, v76, type metadata accessor for JetPackAsset);

        sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

        v50 = *(v0 + 8);
        goto LABEL_34;
      }
    }
  }

  v38(v92, *(v0 + 1152), *(v0 + 1312));
  if (sub_1AB39D43C())
  {
    if (v8 == 3)
    {
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1AB014A58(*(v0 + 1288), *(v0 + 1240), &qword_1EB437E40);
    }

    sub_1AB014A58(*(v0 + 1080), v0 + 16, &qword_1EB4394A8);
    v52 = swift_task_alloc();
    *(v0 + 1408) = v52;
    *v52 = v0;
    v52[1] = sub_1AB2810C8;
    v53 = *(v0 + 1240);
    v54 = *(v0 + 1120);
    v55 = *(v0 + 1112);
    v56 = *(v0 + 1104);
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1072);

    return sub_1AB285FA4(v58, v57, v56, v53, v0 + 16, v0 + 56, v55, v54);
  }

  sub_1AB28D17C();
  swift_allocError();
  *v49 = 0;
  swift_willThrow();
  sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

  v50 = *(v0 + 8);
LABEL_34:

  return v50();
}

uint64_t sub_1AB2810C8()
{
  v2 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {
    v3 = sub_1AB2831EC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v3 = sub_1AB2811EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB2811EC()
{
  sub_1AB014AC0(v0[155], &qword_1EB437E40);
  sub_1AB014AC0(v0[161], &qword_1EB437E40);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB281350()
{
  v109 = v0;
  v1 = (v0 + 456);

  v2 = *(v0 + 1352);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v108[0] = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001AB506430;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1024);
  *(v0 + 928) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 904));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 904, v0 + 936, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 472) = 0u;
  sub_1AB017CC4(v0 + 936, v0 + 456, &unk_1EB437E60);
  *(v0 + 488) = 0;
  v10 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v108[0] + 2) + 1, 1, v108[0]);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 472);
  v13[64] = *(v0 + 488);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v108[0] = v10;
  sub_1AB014AC0(v0 + 904, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1200);
  v19 = *(v0 + 1192);
  v20 = *(v18 + 48);
  *(v0 + 1376) = v20;
  *(v0 + 1384) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v105 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v96 = v21;
  *(v0 + 489) = v21 & 1;
  v23 = *(v0 + 1264);
  sub_1AB01494C(*(v0 + 1080) + 40, v0 + 296);
  sub_1AB014A58(v17, v23, &qword_1EB437E40);
  if (v105(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1216);
    sub_1AB28E968(*(v0 + 1264), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 320);
    v27 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v26);
    (*(v27 + 8))(v108, v25, v26, v27);
    v24 = LOBYTE(v108[0]);
    sub_1AB28DBE8(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1256);
  v30 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EB435770;
  sub_1AB4622E4();
  v99 = *(v0 + 368);
  v101 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v101);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AB4D4720;
  v108[0] = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1AB014A58(v28, v29, &qword_1EB437E40);
  v33 = v105(v29, 1, v30);
  v34 = *(v0 + 1256);
  if (v33 == 1)
  {
    sub_1AB014AC0(*(v0 + 1256), &qword_1EB437E40);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    v35 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1AB28E968(v34, v35, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 840, v0 + 776, &unk_1EB437E60);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1AB017CC4(v0 + 776, v0 + 496, &unk_1EB437E60);
  *(v0 + 528) = 0;
  v36 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = (v0 + 712);
  *(v36 + 2) = v38 + 1;
  v40 = &v36[40 * v38];
  v41 = *(v0 + 496);
  v42 = *(v0 + 512);
  v40[64] = *(v0 + 528);
  *(v40 + 2) = v41;
  *(v40 + 3) = v42;
  v108[0] = v36;
  sub_1AB014AC0(v0 + 840, &unk_1EB437E60);
  v43._countAndFlagsBits = 0x3D73757461747320;
  v43._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  if (v24 == 4)
  {
    v44 = 0;
    *v39 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v39 = v24;
    v44 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v44;
  sub_1AB014A58(v0 + 712, v0 + 648, &unk_1EB437E60);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1AB017CC4(v0 + 648, v0 + 576, &unk_1EB437E60);
  *(v0 + 608) = 0;
  v45 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1AB0168A8(0, *(v45 + 2) + 1, 1, v45);
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_1AB0168A8((v46 > 1), v47 + 1, 1, v45);
  }

  v48 = *(v0 + 1312);
  v49 = *(v0 + 1152);
  *(v45 + 2) = v47 + 1;
  v50 = &v45[40 * v47];
  v51 = *(v0 + 576);
  v52 = *(v0 + 592);
  v50[64] = *(v0 + 608);
  *(v50 + 2) = v51;
  *(v50 + 3) = v52;
  v108[0] = v45;
  sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  *(v31 + 32) = v108[0];
  Logger.info(_:)(v31, v101, v99);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  v54 = *(v48 + 24);
  v54(v108, v49, v48);
  v55 = sub_1AB05D148();
  if (v24 != 4 && (v55 & 1) != 0)
  {
    v56 = *(v0 + 1288);
    v57 = *(v0 + 1248);
    v58 = *(v0 + 1192);
    v59 = swift_allocBox();
    v61 = v60;
    sub_1AB014A58(v56, v57, &qword_1EB437E40);
    v62 = v105(v57, 1, v58);
    v63 = *(v0 + 1248);
    if (v62 == 1)
    {
      sub_1AB014AC0(v63, &qword_1EB437E40);
      swift_deallocBox();
    }

    else
    {
      sub_1AB28E968(v63, v61, type metadata accessor for JetPackAsset);
      v64 = v24 - 1;
      if (v24 <= 1 && (v96 & 1) == 0)
      {
        sub_1AB4622E4();
        v75 = *(v0 + 400);
        v106 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v75);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1AB4D4720;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001AB506580;
        *(v77 + 48) = 0u;
        *(v77 + 32) = 0u;
        sub_1AB017CC4(v0 + 872, v77 + 32, &unk_1EB437E60);
        *(v77 + 64) = 0;
        *(v76 + 32) = v77;
        Logger.info(_:)(v76, v75, v106);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
        if (v64 <= 1)
        {
          v54(v108, *(v0 + 1152), *(v0 + 1312));
          if (sub_1AB39D43C())
          {
            v78 = *(v0 + 1184);
            v79 = *(v0 + 1176);
            v100 = *(v0 + 1168);
            v102 = v78;
            v80 = *(v0 + 1160);
            v81 = *(v0 + 1152);
            v82 = *(v0 + 1144);
            v97 = v82;
            v98 = *(v0 + 1136);
            v103 = *(v0 + 1096);
            v104 = *(v0 + 1128);
            v95 = *(v0 + 1088);
            v93 = *(v0 + 1104);
            v94 = *(v0 + 1080);
            v83 = *(*(v0 + 1192) + 40);
            v84 = sub_1AB460BE4();
            v107 = *(v0 + 1112);
            *(v61 + v83) = 1;
            (*(*(v84 - 8) + 56))(v78, 1, 1, v84);
            (*(v80 + 16))(v79, v95, v81);
            (*(v104 + 16))(v82, v93);
            sub_1AB014A58(v94, v0 + 96, &qword_1EB4394A8);
            v85 = (*(v80 + 80) + 56) & ~*(v80 + 80);
            v86 = (v100 + *(v104 + 80) + v85) & ~*(v104 + 80);
            v87 = (v98 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
            v88 = swift_allocObject();
            *(v88 + 16) = 0;
            *(v88 + 24) = 0;
            *(v88 + 32) = v107;
            *(v88 + 48) = v103;
            (*(v80 + 32))(v88 + v85, v79, v81);
            (*(v104 + 32))(v88 + v86, v97, v107);
            *(v88 + v87) = v59;
            v89 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
            v90 = *(v0 + 160);
            v89[3] = *(v0 + 144);
            v89[4] = v90;
            v91 = *(v0 + 128);
            v89[1] = *(v0 + 112);
            v89[2] = v91;
            *v89 = *(v0 + 96);

            sub_1AB3B2A60(0, 0, v102, &unk_1AB4E3740, v88);
          }
        }

        v92 = *(v0 + 1072);
        swift_beginAccess();
        sub_1AB28E900(v61, v92, type metadata accessor for JetPackAsset);

        sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

        v66 = *(v0 + 8);
        goto LABEL_40;
      }
    }
  }

  v54(v108, *(v0 + 1152), *(v0 + 1312));
  if (sub_1AB39D43C())
  {
    if (v24 == 3)
    {
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1AB014A58(*(v0 + 1288), *(v0 + 1240), &qword_1EB437E40);
    }

    sub_1AB014A58(*(v0 + 1080), v0 + 16, &qword_1EB4394A8);
    v68 = swift_task_alloc();
    *(v0 + 1408) = v68;
    *v68 = v0;
    v68[1] = sub_1AB2810C8;
    v69 = *(v0 + 1240);
    v70 = *(v0 + 1120);
    v71 = *(v0 + 1112);
    v72 = *(v0 + 1104);
    v73 = *(v0 + 1088);
    v74 = *(v0 + 1072);

    return sub_1AB285FA4(v74, v73, v72, v69, v0 + 16, v0 + 56, v71, v70);
  }

  sub_1AB28D17C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

  v66 = *(v0 + 8);
LABEL_40:

  return v66();
}

uint64_t sub_1AB282294()
{
  v109 = v0;
  v1 = (v0 + 456);
  sub_1AB28DBE8(*(v0 + 1224), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1368);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v108[0] = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001AB506430;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1024);
  *(v0 + 928) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 904));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 904, v0 + 936, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 472) = 0u;
  sub_1AB017CC4(v0 + 936, v0 + 456, &unk_1EB437E60);
  *(v0 + 488) = 0;
  v10 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v108[0] + 2) + 1, 1, v108[0]);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 472);
  v13[64] = *(v0 + 488);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v108[0] = v10;
  sub_1AB014AC0(v0 + 904, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1200);
  v19 = *(v0 + 1192);
  v20 = *(v18 + 48);
  *(v0 + 1376) = v20;
  *(v0 + 1384) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v105 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v96 = v21;
  *(v0 + 489) = v21 & 1;
  v23 = *(v0 + 1264);
  sub_1AB01494C(*(v0 + 1080) + 40, v0 + 296);
  sub_1AB014A58(v17, v23, &qword_1EB437E40);
  if (v105(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1216);
    sub_1AB28E968(*(v0 + 1264), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 320);
    v27 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v26);
    (*(v27 + 8))(v108, v25, v26, v27);
    v24 = LOBYTE(v108[0]);
    sub_1AB28DBE8(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1256);
  v30 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EB435770;
  sub_1AB4622E4();
  v99 = *(v0 + 368);
  v101 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v101);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AB4D4720;
  v108[0] = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1AB014A58(v28, v29, &qword_1EB437E40);
  v33 = v105(v29, 1, v30);
  v34 = *(v0 + 1256);
  if (v33 == 1)
  {
    sub_1AB014AC0(*(v0 + 1256), &qword_1EB437E40);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    v35 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1AB28E968(v34, v35, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 840, v0 + 776, &unk_1EB437E60);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1AB017CC4(v0 + 776, v0 + 496, &unk_1EB437E60);
  *(v0 + 528) = 0;
  v36 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = (v0 + 712);
  *(v36 + 2) = v38 + 1;
  v40 = &v36[40 * v38];
  v41 = *(v0 + 496);
  v42 = *(v0 + 512);
  v40[64] = *(v0 + 528);
  *(v40 + 2) = v41;
  *(v40 + 3) = v42;
  v108[0] = v36;
  sub_1AB014AC0(v0 + 840, &unk_1EB437E60);
  v43._countAndFlagsBits = 0x3D73757461747320;
  v43._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  if (v24 == 4)
  {
    v44 = 0;
    *v39 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v39 = v24;
    v44 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v44;
  sub_1AB014A58(v0 + 712, v0 + 648, &unk_1EB437E60);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1AB017CC4(v0 + 648, v0 + 576, &unk_1EB437E60);
  *(v0 + 608) = 0;
  v45 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1AB0168A8(0, *(v45 + 2) + 1, 1, v45);
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_1AB0168A8((v46 > 1), v47 + 1, 1, v45);
  }

  v48 = *(v0 + 1312);
  v49 = *(v0 + 1152);
  *(v45 + 2) = v47 + 1;
  v50 = &v45[40 * v47];
  v51 = *(v0 + 576);
  v52 = *(v0 + 592);
  v50[64] = *(v0 + 608);
  *(v50 + 2) = v51;
  *(v50 + 3) = v52;
  v108[0] = v45;
  sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  *(v31 + 32) = v108[0];
  Logger.info(_:)(v31, v101, v99);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  v54 = *(v48 + 24);
  v54(v108, v49, v48);
  v55 = sub_1AB05D148();
  if (v24 != 4 && (v55 & 1) != 0)
  {
    v56 = *(v0 + 1288);
    v57 = *(v0 + 1248);
    v58 = *(v0 + 1192);
    v59 = swift_allocBox();
    v61 = v60;
    sub_1AB014A58(v56, v57, &qword_1EB437E40);
    v62 = v105(v57, 1, v58);
    v63 = *(v0 + 1248);
    if (v62 == 1)
    {
      sub_1AB014AC0(v63, &qword_1EB437E40);
      swift_deallocBox();
    }

    else
    {
      sub_1AB28E968(v63, v61, type metadata accessor for JetPackAsset);
      v64 = v24 - 1;
      if (v24 <= 1 && (v96 & 1) == 0)
      {
        sub_1AB4622E4();
        v75 = *(v0 + 400);
        v106 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v75);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1AB4D4720;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001AB506580;
        *(v77 + 48) = 0u;
        *(v77 + 32) = 0u;
        sub_1AB017CC4(v0 + 872, v77 + 32, &unk_1EB437E60);
        *(v77 + 64) = 0;
        *(v76 + 32) = v77;
        Logger.info(_:)(v76, v75, v106);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
        if (v64 <= 1)
        {
          v54(v108, *(v0 + 1152), *(v0 + 1312));
          if (sub_1AB39D43C())
          {
            v78 = *(v0 + 1184);
            v79 = *(v0 + 1176);
            v100 = *(v0 + 1168);
            v102 = v78;
            v80 = *(v0 + 1160);
            v81 = *(v0 + 1152);
            v82 = *(v0 + 1144);
            v97 = v82;
            v98 = *(v0 + 1136);
            v103 = *(v0 + 1096);
            v104 = *(v0 + 1128);
            v95 = *(v0 + 1088);
            v93 = *(v0 + 1104);
            v94 = *(v0 + 1080);
            v83 = *(*(v0 + 1192) + 40);
            v84 = sub_1AB460BE4();
            v107 = *(v0 + 1112);
            *(v61 + v83) = 1;
            (*(*(v84 - 8) + 56))(v78, 1, 1, v84);
            (*(v80 + 16))(v79, v95, v81);
            (*(v104 + 16))(v82, v93);
            sub_1AB014A58(v94, v0 + 96, &qword_1EB4394A8);
            v85 = (*(v80 + 80) + 56) & ~*(v80 + 80);
            v86 = (v100 + *(v104 + 80) + v85) & ~*(v104 + 80);
            v87 = (v98 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
            v88 = swift_allocObject();
            *(v88 + 16) = 0;
            *(v88 + 24) = 0;
            *(v88 + 32) = v107;
            *(v88 + 48) = v103;
            (*(v80 + 32))(v88 + v85, v79, v81);
            (*(v104 + 32))(v88 + v86, v97, v107);
            *(v88 + v87) = v59;
            v89 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
            v90 = *(v0 + 160);
            v89[3] = *(v0 + 144);
            v89[4] = v90;
            v91 = *(v0 + 128);
            v89[1] = *(v0 + 112);
            v89[2] = v91;
            *v89 = *(v0 + 96);

            sub_1AB3B2A60(0, 0, v102, &unk_1AB4E3740, v88);
          }
        }

        v92 = *(v0 + 1072);
        swift_beginAccess();
        sub_1AB28E900(v61, v92, type metadata accessor for JetPackAsset);

        sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

        v66 = *(v0 + 8);
        goto LABEL_40;
      }
    }
  }

  v54(v108, *(v0 + 1152), *(v0 + 1312));
  if (sub_1AB39D43C())
  {
    if (v24 == 3)
    {
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1AB014A58(*(v0 + 1288), *(v0 + 1240), &qword_1EB437E40);
    }

    sub_1AB014A58(*(v0 + 1080), v0 + 16, &qword_1EB4394A8);
    v68 = swift_task_alloc();
    *(v0 + 1408) = v68;
    *v68 = v0;
    v68[1] = sub_1AB2810C8;
    v69 = *(v0 + 1240);
    v70 = *(v0 + 1120);
    v71 = *(v0 + 1112);
    v72 = *(v0 + 1104);
    v73 = *(v0 + 1088);
    v74 = *(v0 + 1072);

    return sub_1AB285FA4(v74, v73, v72, v69, v0 + 16, v0 + 56, v71, v70);
  }

  sub_1AB28D17C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

  v66 = *(v0 + 8);
LABEL_40:

  return v66();
}

uint64_t sub_1AB2831EC()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1288);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1AB014A58(v2, v3, &qword_1EB437E40);
  if (v1(v3, 1, v4) == 1)
  {
    sub_1AB014AC0(*(v0 + 1232), &qword_1EB437E40);
LABEL_11:
    v25 = *(v0 + 1240);
    swift_willThrow();
    sub_1AB014AC0(v25, &qword_1EB437E40);
    sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

    v24 = *(v0 + 8);
    goto LABEL_12;
  }

  v5 = *(v0 + 490);
  sub_1AB28E968(*(v0 + 1232), *(v0 + 1208), type metadata accessor for JetPackAsset);
  if (v5 || *(v0 + 489) != 1)
  {
    sub_1AB28DBE8(*(v0 + 1208), type metadata accessor for JetPackAsset);
    goto LABEL_11;
  }

  sub_1AB4622E4();
  v6 = *(v0 + 240);
  v30 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  v31 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v8._object = 0x80000001AB506460;
  v8._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 968);
  v10 = *(v0 + 976);
  *(v0 + 704) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
  sub_1AB014A58(v0 + 680, v0 + 744, &unk_1EB437E60);
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  sub_1AB017CC4(v0 + 744, v0 + 536, &unk_1EB437E60);
  *(v0 + 568) = 0;
  v12 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
  }

  v15 = *(v0 + 1416);
  v29 = *(v0 + 1208);
  v27 = *(v0 + 1240);
  v28 = *(v0 + 1072);
  *(v12 + 2) = v14 + 1;
  v16 = &v12[40 * v14];
  v17 = *(v0 + 536);
  v18 = *(v0 + 552);
  v16[64] = *(v0 + 568);
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  sub_1AB014AC0(v0 + 680, &unk_1EB437E60);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v7 + 32) = v12;
  Logger.error(_:)(v7, v6, v30);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  sub_1AB4622E4();
  v21 = *(v0 + 440);
  v20 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 416), v21);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AB4D4720;
  *(v0 + 832) = MEMORY[0x1E69E6158];
  *(v0 + 808) = 0xD000000000000075;
  *(v0 + 816) = 0x80000001AB506490;
  *(v23 + 48) = 0u;
  *(v23 + 32) = 0u;
  sub_1AB017CC4(v0 + 808, v23 + 32, &unk_1EB437E60);
  *(v23 + 64) = 0;
  *(v22 + 32) = v23;
  Logger.warning(_:)(v22, v21, v20);

  sub_1AB014AC0(v27, &qword_1EB437E40);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
  sub_1AB28E968(v29, v28, type metadata accessor for JetPackAsset);
  sub_1AB014AC0(*(v0 + 1288), &qword_1EB437E40);

  v24 = *(v0 + 8);
LABEL_12:

  return v24();
}

uint64_t sub_1AB283844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = a8;
  v8[80] = a6;
  v8[79] = a5;
  v9 = type metadata accessor for JetPackAsset(0);
  v8[82] = v9;
  v8[83] = *(v9 - 8);
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1AB283978, 0, 0);
}

uint64_t sub_1AB283978()
{
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 664);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  *(v0 + 720) = qword_1EB435770;
  sub_1AB4622E4();
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v4);
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  *(v0 + 440) = MEMORY[0x1E69E6158];
  *(v0 + 416) = 0xD000000000000020;
  *(v0 + 424) = 0x80000001AB506600;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1AB017CC4(v0 + 416, v7 + 32, &unk_1EB437E60);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  swift_beginAccess();
  sub_1AB28E900(v1, v2, type metadata accessor for JetPackAsset);
  (*(v3 + 56))(v2, 0, 1, v31);
  sub_1AB014A58(v32, v0 + 16, &qword_1EB4394A8);
  sub_1AB01494C(v0 + 16, v0 + 96);
  sub_1AB01494C(v0 + 56, v0 + 136);
  sub_1AB460CC4();
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  sub_1AB4622E4();
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v12);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AB4D4720;
  v33 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v15._countAndFlagsBits = 0xD000000000000032;
  v15._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  sub_1AB014A58(v8, v9, &qword_1EB437E40);
  v16 = (*(v10 + 48))(v9, 1, v11);
  v17 = *(v0 + 696);
  if (v16 == 1)
  {
    sub_1AB014AC0(*(v0 + 696), &qword_1EB437E40);
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
  }

  else
  {
    *(v0 + 472) = *(v0 + 656);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
    sub_1AB28E968(v17, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 448, v0 + 480, &unk_1EB437E60);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1AB017CC4(v0 + 480, v0 + 336, &unk_1EB437E60);
  *(v0 + 368) = 0;
  v19 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 336);
  v24 = *(v0 + 352);
  v22[64] = *(v0 + 368);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1AB014AC0(v0 + 448, &unk_1EB437E60);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 32) = v19;
  Logger.info(_:)(v14, v12, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  *(v0 + 280) = &type metadata for SystemDateProvider;
  *(v0 + 288) = &protocol witness table for SystemDateProvider;
  v26 = swift_task_alloc();
  *(v0 + 736) = v26;
  *v26 = v0;
  v26[1] = sub_1AB283F30;
  v27 = *(v0 + 704);
  v28 = *(v0 + 680);
  v29 = *(v0 + 632);

  return sub_1AB1B16FC(v28, v29, v27, v0 + 256);
}

uint64_t sub_1AB283F30()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_1AB2842AC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 256);
    v3 = sub_1AB28404C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB28404C()
{
  v1 = v0[86];
  v2 = v0[82];
  sub_1AB28E968(v0[85], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v7 = v0[15];
    v8 = v0[16];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v7);
    v12 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    v0[94] = v9;
    *v9 = v0;
    v9[1] = sub_1AB28439C;
    v10 = v0[86];
    v11 = v0[84];

    return v12(v11, v10, v7, v8);
  }

  else
  {
    sub_1AB014AC0(v0[88], &qword_1EB437E40);
    sub_1AB28DBE8(v0[86], type metadata accessor for JetPackAsset);
    sub_1AB014AC0((v0 + 12), &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1AB2842AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_1AB014AC0(*(v0 + 704), &qword_1EB437E40);
  sub_1AB014AC0(v0 + 96, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28439C()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1AB2845D0;
  }

  else
  {
    sub_1AB28DBE8(*(v2 + 672), type metadata accessor for JetPackAsset);
    v3 = sub_1AB2844CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB2844CC()
{
  sub_1AB014AC0(v0[88], &qword_1EB437E40);
  sub_1AB28DBE8(v0[86], type metadata accessor for JetPackAsset);
  sub_1AB014AC0((v0 + 12), &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB2845D0()
{
  sub_1AB4622E4();
  v1 = *(v0 + 320);
  v18 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v3._object = 0x80000001AB506550;
  v3._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 600);
  v5 = *(v0 + 608);
  *(v0 + 536) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 512));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1AB014A58(v0 + 512, v0 + 544, &unk_1EB437E60);
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  sub_1AB017CC4(v0 + 544, v0 + 376, &unk_1EB437E60);
  *(v0 + 408) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 760);
  v11 = *(v0 + 704);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 376);
  v14 = *(v0 + 392);
  v12[64] = *(v0 + 408);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1AB014AC0(v0 + 512, &unk_1EB437E60);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v2 + 32) = v7;
  Logger.error(_:)(v2, v1, v18);

  sub_1AB014AC0(v11, &qword_1EB437E40);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  sub_1AB28DBE8(*(v0 + 688), type metadata accessor for JetPackAsset);
  sub_1AB014AC0(v0 + 96, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1AB2848E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = a8;
  v8[80] = a6;
  v8[79] = a5;
  v9 = type metadata accessor for JetPackAsset(0);
  v8[82] = v9;
  v8[83] = *(v9 - 8);
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1AB284A1C, 0, 0);
}

uint64_t sub_1AB284A1C()
{
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = *(v0 + 664);
  v31 = *(v0 + 704);
  v32 = *(v0 + 656);
  v34 = *(v0 + 648);
  v3 = *(v0 + 632);
  *(v0 + 720) = qword_1EB435770;
  sub_1AB4622E4();
  v4 = *(v0 + 200);
  v30 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v4);
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  *(v0 + 440) = MEMORY[0x1E69E6158];
  *(v0 + 416) = 0xD000000000000020;
  *(v0 + 424) = 0x80000001AB506600;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_1AB017CC4(v0 + 416, v6 + 32, &unk_1EB437E60);
  *(v6 + 64) = 0;
  *(v5 + 32) = v6;
  Logger.info(_:)(v5, v4, v30);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  swift_beginAccess();
  sub_1AB28E900(v1, v31, type metadata accessor for JetPackAsset);
  (*(v2 + 56))(v31, 0, 1, v32);
  sub_1AB014A58(v34, v0 + 16, &qword_1EB4394A8);
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  *(v0 + 296) = *v3;
  *(v0 + 312) = v8;
  *(v0 + 328) = v7;
  sub_1AB01494C(v0 + 16, v0 + 96);
  sub_1AB01494C(v0 + 56, v0 + 136);
  sub_1AB460CC4();
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  sub_1AB4622E4();
  v13 = *(v0 + 240);
  v33 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v13);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AB4D4720;
  v35 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v15._countAndFlagsBits = 0xD000000000000032;
  v15._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  sub_1AB014A58(v9, v10, &qword_1EB437E40);
  v16 = (*(v11 + 48))(v10, 1, v12);
  v17 = *(v0 + 696);
  if (v16 == 1)
  {
    sub_1AB014AC0(*(v0 + 696), &qword_1EB437E40);
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
  }

  else
  {
    *(v0 + 472) = *(v0 + 656);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
    sub_1AB28E968(v17, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 448, v0 + 480, &unk_1EB437E60);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1AB017CC4(v0 + 480, v0 + 336, &unk_1EB437E60);
  *(v0 + 368) = 0;
  v19 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 336);
  v24 = *(v0 + 352);
  v22[64] = *(v0 + 368);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1AB014AC0(v0 + 448, &unk_1EB437E60);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 32) = v19;
  Logger.info(_:)(v14, v13, v33);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  v26 = swift_task_alloc();
  *(v0 + 736) = v26;
  *v26 = v0;
  v26[1] = sub_1AB284FEC;
  v27 = *(v0 + 704);
  v28 = *(v0 + 680);

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v28, v0 + 296, v27);
}

uint64_t sub_1AB284FEC()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_1AB285364;
  }

  else
  {
    v2 = sub_1AB285100;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB285100()
{
  v1 = v0[86];
  v2 = v0[82];
  sub_1AB28E968(v0[85], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v8 = v0[15];
    v9 = v0[16];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v8);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[94] = v10;
    *v10 = v0;
    v10[1] = sub_1AB28544C;
    v11 = v0[86];
    v12 = v0[84];

    return v13(v12, v11, v8, v9);
  }

  else
  {
    v5 = v0[88];
    sub_1AB28DBE8(v0[86], type metadata accessor for JetPackAsset);
    sub_1AB014AC0(v5, &qword_1EB437E40);
    sub_1AB014AC0((v0 + 12), &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AB285364()
{
  sub_1AB014AC0(*(v0 + 704), &qword_1EB437E40);
  sub_1AB014AC0(v0 + 96, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28544C()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1AB285684;
  }

  else
  {
    sub_1AB28DBE8(*(v2 + 672), type metadata accessor for JetPackAsset);
    v3 = sub_1AB28557C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB28557C()
{
  v1 = v0[88];
  sub_1AB28DBE8(v0[86], type metadata accessor for JetPackAsset);
  sub_1AB014AC0(v1, &qword_1EB437E40);
  sub_1AB014AC0((v0 + 12), &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB285684()
{
  sub_1AB4622E4();
  v1 = *(v0 + 280);
  v19 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v20 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v3._object = 0x80000001AB506550;
  v3._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 600);
  v5 = *(v0 + 608);
  *(v0 + 536) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 512));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1AB014A58(v0 + 512, v0 + 544, &unk_1EB437E60);
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  sub_1AB017CC4(v0 + 544, v0 + 376, &unk_1EB437E60);
  *(v0 + 408) = 0;
  v7 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 760);
  v11 = *(v0 + 704);
  v12 = *(v0 + 688);
  *(v7 + 2) = v9 + 1;
  v13 = &v7[40 * v9];
  v14 = *(v0 + 376);
  v15 = *(v0 + 392);
  v13[64] = *(v0 + 408);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB014AC0(v0 + 512, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v2 + 32) = v7;
  Logger.error(_:)(v2, v1, v19);

  sub_1AB28DBE8(v12, type metadata accessor for JetPackAsset);
  sub_1AB014AC0(v11, &qword_1EB437E40);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_1AB014AC0(v0 + 96, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AB2859A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = v12;
  v8[29] = v13;
  v8[26] = a6;
  v8[27] = a8;
  v8[24] = a4;
  v8[25] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v8[30] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1AB285AB8, 0, 0);
}

uint64_t sub_1AB285AB8()
{
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[30];
  v17 = v0[31];
  v18 = v0[27];
  sub_1AB4622E4();
  v4 = v0[15];
  v5 = v0[16];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1AB4D4720;
  v0[20] = v8;
  v0[17] = 0xD000000000000020;
  v0[18] = 0x80000001AB506600;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1AB017CC4((v0 + 17), v7 + 32, &unk_1EB437E60);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  swift_beginAccess();
  sub_1AB28E900(v1, v3, type metadata accessor for JetPackAsset);
  (*(v2 + 56))(v3, 0, 1, v17);
  sub_1AB014A58(v18, (v0 + 2), &qword_1EB4394A8);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1AB285D3C;
  v10 = v0[33];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[26];

  return sub_1AB285FA4(v10, v14, v15, v11, (v0 + 2), (v0 + 7), v13, v12);
}

uint64_t sub_1AB285D3C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  *(*v1 + 288) = v0;

  sub_1AB014AC0(v3, &qword_1EB437E40);
  if (v0)
  {
    v4 = sub_1AB285F20;
  }

  else
  {
    sub_1AB28DBE8(*(v2 + 264), type metadata accessor for JetPackAsset);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v4 = sub_1AB285EB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB285EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB285F20()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB285FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[56] = a7;
  v8[57] = a8;
  v8[54] = a3;
  v8[55] = a4;
  v8[52] = a1;
  v8[53] = a2;
  v11 = type metadata accessor for JetPackAsset(0);
  v8[58] = v11;
  v8[59] = *(v11 - 8);
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v8[63] = swift_task_alloc();
  sub_1AB01494C(a5, (v8 + 2));
  sub_1AB01494C(a6, (v8 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1AB2860E4, 0, 0);
}

uint64_t sub_1AB2860E4()
{
  sub_1AB460CC4();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 440);
  *(v0 + 512) = qword_1EB435770;
  sub_1AB4622E4();
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v5);
  *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  v28 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v8._object = 0x80000001AB506510;
  v8._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  sub_1AB014A58(v4, v1, &qword_1EB437E40);
  v9 = (*(v3 + 48))(v1, 1, v2);
  v10 = *(v0 + 504);
  if (v9 == 1)
  {
    sub_1AB014AC0(*(v0 + 504), &qword_1EB437E40);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
  }

  else
  {
    *(v0 + 280) = *(v0 + 464);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_1AB28E968(v10, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1AB017CC4(v0 + 288, v0 + 176, &unk_1EB437E60);
  *(v0 + 208) = 0;
  v12 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
  }

  v27 = *(v0 + 456);
  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = *(v0 + 176);
  v17 = *(v0 + 192);
  v15[64] = *(v0 + 208);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v7 + 32) = v12;
  Logger.info(_:)(v7, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  v26 = (*(v27 + 24) + **(v27 + 24));
  v19 = swift_task_alloc();
  *(v0 + 528) = v19;
  *v19 = v0;
  v19[1] = sub_1AB286530;
  v20 = *(v0 + 488);
  v21 = *(v0 + 448);
  v22 = *(v0 + 456);
  v23 = *(v0 + 440);
  v24 = *(v0 + 424);

  return v26(v20, v24, v23, v21, v22);
}

uint64_t sub_1AB286530()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_1AB286A5C;
  }

  else
  {
    v2 = sub_1AB286644;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB286644()
{
  v1 = v0[62];
  v2 = v0[58];
  sub_1AB28E968(v0[61], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v7);
    v12 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    v0[68] = v9;
    *v9 = v0;
    v9[1] = sub_1AB286868;
    v10 = v0[62];
    v11 = v0[60];

    return v12(v11, v10, v7, v8);
  }

  else
  {
    sub_1AB28E968(v0[62], v0[52], type metadata accessor for JetPackAsset);
    sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1AB286868()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_1AB286B08;
  }

  else
  {
    sub_1AB28DBE8(*(v2 + 480), type metadata accessor for JetPackAsset);
    v3 = sub_1AB286998;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB286998()
{
  sub_1AB28E968(v0[62], v0[52], type metadata accessor for JetPackAsset);
  sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB286A5C()
{
  sub_1AB014AC0(v0 + 16, &qword_1EB4394A8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB286B08()
{
  sub_1AB4622E4();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v1);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v18 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB506550;
  v4._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 384);
  v6 = *(v0 + 392);
  *(v0 + 344) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 320));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1AB014A58(v0 + 320, v0 + 352, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB017CC4(v0 + 352, v0 + 216, &unk_1EB437E60);
  *(v0 + 248) = 0;
  v8 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 552);
  *(v8 + 2) = v10 + 1;
  v12 = &v8[40 * v10];
  v13 = *(v0 + 216);
  v14 = *(v0 + 232);
  v12[64] = *(v0 + 248);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1AB014AC0(v0 + 320, &unk_1EB437E60);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 32) = v8;
  Logger.error(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  sub_1AB28E968(*(v0 + 496), *(v0 + 416), type metadata accessor for JetPackAsset);
  sub_1AB014AC0(v0 + 16, &qword_1EB4394A8);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1AB286E04()
{
  sub_1AB02CC14(*(v0 + 328) + 24, v0 + 96);
  if (!*(v0 + 120))
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    sub_1AB064948(v0 + 96);
    goto LABEL_10;
  }

  v1 = *(v0 + 160);
  *(v0 + 64) = *(v0 + 144);
  *(v0 + 80) = v1;
  v2 = *(v0 + 128);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v2;
  *(v0 + 16) = *(v0 + 96);
  if (!*(v0 + 40))
  {
LABEL_10:
    sub_1AB014AC0(v0 + 16, &qword_1EB4394B0);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    goto LABEL_11;
  }

  sub_1AB0149B0((v0 + 16), v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  if (*(v0 + 240))
  {
    sub_1AB0149B0((v0 + 216), v0 + 176);
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    *(v0 + 320) = MEMORY[0x1E69E6158];
    *(v0 + 296) = 0xD000000000000015;
    *(v0 + 304) = 0x80000001AB5062D0;
    *(v6 + 48) = 0u;
    *(v6 + 32) = 0u;
    sub_1AB017CC4(v0 + 296, v6 + 32, &unk_1EB437E60);
    *(v6 + 64) = 0;
    *(v5 + 32) = v6;
    Logger.info(_:)(v5, v4, v3);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v7);
    v12 = (*(v8 + 32) + **(v8 + 32));
    v9 = swift_task_alloc();
    *(v0 + 336) = v9;
    *v9 = v0;
    v9[1] = sub_1AB287160;

    return v12(v7, v8);
  }

LABEL_11:
  sub_1AB014AC0(v0 + 216, &qword_1EB4394B8);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1AB287160()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1AB2872D8;
  }

  else
  {
    v2 = sub_1AB287274;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB287274()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2872D8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t JetPackAssetSession.performMaintenance()()
{
  v1[126] = v0;
  v2 = type metadata accessor for JetPackAsset(0);
  v1[127] = v2;
  v1[128] = *(v2 - 8);
  v1[129] = swift_task_alloc();
  v3 = sub_1AB45FF84();
  v1[130] = v3;
  v1[131] = *(v3 - 8);
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB287464, 0, 0);
}

uint64_t sub_1AB287464()
{
  sub_1AB02CC14(*(v0 + 1008) + 24, v0 + 96);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 160);
    *(v0 + 64) = *(v0 + 144);
    *(v0 + 80) = v1;
    v2 = *(v0 + 128);
    *(v0 + 32) = *(v0 + 112);
    *(v0 + 48) = v2;
    *(v0 + 16) = *(v0 + 96);
    if (*(v0 + 40))
    {
      v3 = *(v0 + 64);
      *(v0 + 208) = *(v0 + 48);
      *(v0 + 224) = v3;
      *(v0 + 240) = *(v0 + 80);
      v4 = *(v0 + 32);
      *(v0 + 176) = *(v0 + 16);
      *(v0 + 192) = v4;
      if (qword_1ED4D06C0 != -1)
      {
        swift_once();
      }

      v5 = sub_1AB45FFC4();
      __swift_project_value_buffer(v5, qword_1ED4D06C8);
      sub_1AB45FFA4();
      sub_1AB45FF54();
      v6 = sub_1AB45FFA4();
      v7 = sub_1AB461234();
      if (sub_1AB461314())
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v6, v7, v9, "Perform Maintenance", "", v8, 2u);
        MEMORY[0x1AC59F020](v8, -1, -1);
      }

      v10 = *(v0 + 1064);
      v11 = *(v0 + 1056);
      v12 = *(v0 + 1048);
      v13 = *(v0 + 1040);

      (*(v12 + 16))(v11, v10, v13);
      sub_1AB460014();
      swift_allocObject();
      *(v0 + 1072) = sub_1AB460004();
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v14);
      v19 = (*(v15 + 40) + **(v15 + 40));
      v16 = swift_task_alloc();
      *(v0 + 1080) = v16;
      *v16 = v0;
      v16[1] = sub_1AB287794;

      return v19(v14, v15);
    }
  }

  else
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    sub_1AB064948(v0 + 96);
  }

  sub_1AB014AC0(v0 + 16, &qword_1EB4394B0);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1AB287794(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {
    v4 = sub_1AB2888A0;
  }

  else
  {
    v4 = sub_1AB2878AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB2878AC()
{
  v56 = v0;
  v1 = *(*(v0 + 1088) + 16);
  *(v0 + 1104) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 456);
    v4 = (v0 + 536);
    v5 = (v0 + 1000);
    v6 = *(v0 + 1024);
    *(v0 + 372) = *(v6 + 80);
    *(v0 + 1112) = *(v6 + 72);
    while (1)
    {
      *(v0 + 1120) = v2;
      v7 = *(v0 + 1032);
      sub_1AB28E900(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v2, v7, type metadata accessor for JetPackAsset);
      v8 = *(v0 + 240);
      v9 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v8);
      (*(v9 + 8))(&v55, v7, v8, v9);
      v10 = v55;
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EB435770;
      sub_1AB4622E4();
      v52 = *(v0 + 288);
      v53 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v53);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AB4D4720;
      *(v0 + 1000) = sub_1AB0168A8(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001AB5062F0;
      v12._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      *(v0 + 832) = v10;
      sub_1AB014A58(v0 + 832, v0 + 736, &unk_1EB437E60);
      *v3 = 0u;
      *(v0 + 472) = 0u;
      sub_1AB017CC4(v0 + 736, v0 + 456, &unk_1EB437E60);
      *(v0 + 488) = 0;
      v13 = *(v0 + 1000);
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

      v16 = *(v0 + 1032);
      v17 = *(v0 + 1016);
      *(v13 + 2) = v15 + 1;
      v18 = &v13[40 * v15];
      v19 = *v3;
      v20 = *(v0 + 472);
      v18[64] = *(v0 + 488);
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      *(v0 + 1000) = v13;
      sub_1AB014AC0(v0 + 832, &unk_1EB437E60);
      v21._countAndFlagsBits = 0x654B656863616320;
      v21._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v22 = (v16 + *(v17 + 28));
      v23 = *v22;
      *(v0 + 1144) = *v22;
      v24 = v22[1];
      *(v0 + 1152) = v24;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v23;
      *(v0 + 680) = v24;
      sub_1AB014A58(v0 + 672, v0 + 640, &unk_1EB437E60);
      *v4 = 0u;
      *(v0 + 552) = 0u;

      sub_1AB017CC4(v0 + 640, v0 + 536, &unk_1EB437E60);
      *(v0 + 568) = 0;
      v25 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        *v5 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      v28 = *(v0 + 1032);
      v29 = *(v0 + 1016);
      *(v25 + 2) = v27 + 1;
      v30 = &v25[40 * v27];
      v31 = *v4;
      v32 = *(v0 + 552);
      v30[64] = *(v0 + 568);
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      *(v0 + 1000) = v25;
      sub_1AB014AC0(v0 + 672, &unk_1EB437E60);
      v33._countAndFlagsBits = 0x4449656863616320;
      v33._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v34 = v28 + *(v29 + 24);
      v35 = *v34;
      *(v0 + 412) = *v34;
      LOBYTE(v34) = *(v34 + 4);
      *(v0 + 369) = v34;
      if (v34)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v35;
      }

      sub_1AB014A58(v0 + 608, v0 + 576, &unk_1EB437E60);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1AB017CC4(v0 + 576, v0 + 336, &unk_1EB437E60);
      *(v0 + 368) = 0;
      v36 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = *(v0 + 336);
      v41 = *(v0 + 352);
      v39[64] = *(v0 + 368);
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      *v5 = v36;
      sub_1AB014AC0(v0 + 608, &unk_1EB437E60);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v11 + 32) = *v5;
      Logger.info(_:)(v11, v53, v52);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
      if (v10 == 3)
      {
        break;
      }

      sub_1AB28DBE8(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v2 = *(v0 + 1120) + 1;
      if (v2 == *(v0 + 1104))
      {
        goto LABEL_26;
      }
    }

    v43 = *(v0 + 200);
    v44 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v43);
    v54 = (*(v44 + 24) + **(v44 + 24));
    v45 = swift_task_alloc();
    *(v0 + 1160) = v45;
    *v45 = v0;
    v45[1] = sub_1AB288018;
    v46 = *(v0 + 1032);

    return v54(v46, v43, v44);
  }

  else
  {
LABEL_26:

    v48 = *(v0 + 1064);
    v49 = *(v0 + 1048);
    v50 = *(v0 + 1040);
    sub_1AB28D1D0(*(v0 + 1072), "Perform Maintenance");

    (*(v49 + 8))(v48, v50);
    sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_1AB288018()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_1AB288984;
  }

  else
  {
    v2 = sub_1AB28812C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB28812C()
{
  v54 = v0;
  sub_1AB28DBE8(*(v0 + 1032), type metadata accessor for JetPackAsset);
  v1 = *(v0 + 1120) + 1;
  if (v1 == *(v0 + 1104))
  {
LABEL_2:

    v2 = *(v0 + 1064);
    v3 = *(v0 + 1048);
    v4 = *(v0 + 1040);
    sub_1AB28D1D0(*(v0 + 1072), "Perform Maintenance");

    (*(v3 + 8))(v2, v4);
    sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = (v0 + 456);
    v8 = (v0 + 536);
    v9 = (v0 + 1000);
    while (1)
    {
      *(v0 + 1120) = v1;
      v10 = *(v0 + 1032);
      sub_1AB28E900(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v1, v10, type metadata accessor for JetPackAsset);
      v11 = *(v0 + 240);
      v12 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v11);
      (*(v12 + 8))(&v53, v10, v11, v12);
      v13 = v53;
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EB435770;
      sub_1AB4622E4();
      v50 = *(v0 + 288);
      v51 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v51);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AB4D4720;
      *(v0 + 1000) = sub_1AB0168A8(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v15._object = 0x80000001AB5062F0;
      v15._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      *(v0 + 832) = v13;
      sub_1AB014A58(v0 + 832, v0 + 736, &unk_1EB437E60);
      *v7 = 0u;
      *(v0 + 472) = 0u;
      sub_1AB017CC4(v0 + 736, v0 + 456, &unk_1EB437E60);
      *(v0 + 488) = 0;
      v16 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
      }

      v19 = *(v0 + 1032);
      v20 = *(v0 + 1016);
      *(v16 + 2) = v18 + 1;
      v21 = &v16[40 * v18];
      v22 = *v7;
      v23 = *(v0 + 472);
      v21[64] = *(v0 + 488);
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      *(v0 + 1000) = v16;
      sub_1AB014AC0(v0 + 832, &unk_1EB437E60);
      v24._countAndFlagsBits = 0x654B656863616320;
      v24._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v25 = (v19 + *(v20 + 28));
      v26 = *v25;
      *(v0 + 1144) = *v25;
      v27 = v25[1];
      *(v0 + 1152) = v27;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v26;
      *(v0 + 680) = v27;
      sub_1AB014A58(v0 + 672, v0 + 640, &unk_1EB437E60);
      *v8 = 0u;
      *(v0 + 552) = 0u;

      sub_1AB017CC4(v0 + 640, v0 + 536, &unk_1EB437E60);
      *(v0 + 568) = 0;
      v28 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        *v9 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      v31 = *(v0 + 1032);
      v32 = *(v0 + 1016);
      *(v28 + 2) = v30 + 1;
      v33 = &v28[40 * v30];
      v34 = *v8;
      v35 = *(v0 + 552);
      v33[64] = *(v0 + 568);
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      *(v0 + 1000) = v28;
      sub_1AB014AC0(v0 + 672, &unk_1EB437E60);
      v36._countAndFlagsBits = 0x4449656863616320;
      v36._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      v37 = v31 + *(v32 + 24);
      v38 = *v37;
      *(v0 + 412) = *v37;
      LOBYTE(v37) = *(v37 + 4);
      *(v0 + 369) = v37;
      if (v37)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v38;
      }

      sub_1AB014A58(v0 + 608, v0 + 576, &unk_1EB437E60);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1AB017CC4(v0 + 576, v0 + 336, &unk_1EB437E60);
      *(v0 + 368) = 0;
      v39 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1AB0168A8(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[40 * v41];
      v43 = *(v0 + 336);
      v44 = *(v0 + 352);
      v42[64] = *(v0 + 368);
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      *v9 = v39;
      sub_1AB014AC0(v0 + 608, &unk_1EB437E60);
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      *(v14 + 32) = *v9;
      Logger.info(_:)(v14, v51, v50);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
      if (v13 == 3)
      {
        break;
      }

      sub_1AB28DBE8(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v1 = *(v0 + 1120) + 1;
      if (v1 == *(v0 + 1104))
      {
        goto LABEL_2;
      }
    }

    v46 = *(v0 + 200);
    v47 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v46);
    v52 = (*(v47 + 24) + **(v47 + 24));
    v48 = swift_task_alloc();
    *(v0 + 1160) = v48;
    *v48 = v0;
    v48[1] = sub_1AB288018;
    v49 = *(v0 + 1032);

    return v52(v49, v46, v47);
  }
}

uint64_t sub_1AB2888A0()
{
  v1 = v0[133];
  v2 = v0[131];
  v3 = v0[130];
  sub_1AB28D1D0(v0[134], "Perform Maintenance");

  (*(v2 + 8))(v1, v3);
  sub_1AB014AC0((v0 + 22), &qword_1EB4394A8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB288984()
{
  v90 = v0;
  sub_1AB4622E4();
  v84 = *(v0 + 328);
  v86 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v86);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AB4D4720;
  *(v0 + 984) = sub_1AB0168A8(0, 56, 0, MEMORY[0x1E69E7CC0]);
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x80000001AB506310;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = *(v0 + 960);
  v4 = *(v0 + 968);
  *(v0 + 728) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 704));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1AB014A58(v0 + 704, v0 + 768, &unk_1EB437E60);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1AB017CC4(v0 + 768, v0 + 496, &unk_1EB437E60);
  *(v0 + 528) = 0;
  v6 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB0168A8(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v0 + 1152);
  v10 = *(v0 + 1144);
  *(v6 + 2) = v8 + 1;
  v11 = &v6[40 * v8];
  v12 = *(v0 + 496);
  v13 = *(v0 + 512);
  v11[64] = *(v0 + 528);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  *(v0 + 984) = v6;
  sub_1AB014AC0(v0 + 704, &unk_1EB437E60);
  v14._countAndFlagsBits = 0x654B656863616320;
  v14._object = 0xEA00000000003D79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 824) = MEMORY[0x1E69E6158];
  *(v0 + 800) = v10;
  *(v0 + 808) = v9;
  sub_1AB014A58(v0 + 800, v0 + 864, &unk_1EB437E60);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;

  sub_1AB017CC4(v0 + 864, v0 + 416, &unk_1EB437E60);
  *(v0 + 448) = 0;
  v15 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
    *(v0 + 984) = v15;
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = (v0 + 376);
  v19 = *(v0 + 369);
  *(v15 + 2) = v17 + 1;
  v20 = &v15[40 * v17];
  v21 = *(v0 + 416);
  v22 = *(v0 + 432);
  v20[64] = *(v0 + 448);
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  *(v0 + 984) = v15;
  sub_1AB014AC0(v0 + 800, &unk_1EB437E60);
  v23._countAndFlagsBits = 0x4449656863616320;
  v23._object = 0xE90000000000003DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  if (v19)
  {
    *(v0 + 896) = 0u;
    *(v0 + 912) = 0u;
  }

  else
  {
    v24 = *(v0 + 412);
    *(v0 + 920) = MEMORY[0x1E69E72F0];
    *(v0 + 896) = v24;
  }

  sub_1AB014A58(v0 + 896, v0 + 928, &unk_1EB437E60);
  *v18 = 0u;
  *(v0 + 392) = 0u;
  sub_1AB017CC4(v0 + 928, v0 + 376, &unk_1EB437E60);
  *(v0 + 408) = 0;
  v25 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
  }

  v28 = *(v0 + 1168);
  v29 = *(v0 + 1032);
  *(v25 + 2) = v27 + 1;
  v30 = &v25[40 * v27];
  v31 = *v18;
  v32 = *(v0 + 392);
  v30[64] = *(v0 + 408);
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  *(v0 + 984) = v25;
  sub_1AB014AC0(v0 + 896, &unk_1EB437E60);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  *(v1 + 32) = *(v0 + 984);
  Logger.error(_:)(v1, v86, v84);

  sub_1AB28DBE8(v29, type metadata accessor for JetPackAsset);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  v34 = *(v0 + 1120) + 1;
  if (v34 == *(v0 + 1104))
  {
LABEL_17:

    v35 = *(v0 + 1064);
    v36 = *(v0 + 1048);
    v37 = *(v0 + 1040);
    sub_1AB28D1D0(*(v0 + 1072), "Perform Maintenance");

    (*(v36 + 8))(v35, v37);
    sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v40 = (v0 + 456);
    v41 = (v0 + 536);
    v42 = (v0 + 1000);
    while (1)
    {
      *(v0 + 1120) = v34;
      v43 = *(v0 + 1032);
      sub_1AB28E900(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v34, v43, type metadata accessor for JetPackAsset);
      v44 = *(v0 + 240);
      v45 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v44);
      (*(v45 + 8))(&v89, v43, v44, v45);
      v46 = v89;
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EB435770;
      sub_1AB4622E4();
      v83 = *(v0 + 288);
      v85 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v85);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1AB4D4720;
      *(v0 + 1000) = sub_1AB0168A8(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v48._object = 0x80000001AB5062F0;
      v48._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      v87 = v46;
      *(v0 + 832) = v46;
      sub_1AB014A58(v0 + 832, v0 + 736, &unk_1EB437E60);
      *v40 = 0u;
      *(v0 + 472) = 0u;
      sub_1AB017CC4(v0 + 736, v0 + 456, &unk_1EB437E60);
      *(v0 + 488) = 0;
      v49 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1AB0168A8(0, *(v49 + 2) + 1, 1, v49);
      }

      v51 = *(v49 + 2);
      v50 = *(v49 + 3);
      if (v51 >= v50 >> 1)
      {
        v49 = sub_1AB0168A8((v50 > 1), v51 + 1, 1, v49);
      }

      v52 = *(v0 + 1032);
      v53 = *(v0 + 1016);
      *(v49 + 2) = v51 + 1;
      v54 = &v49[40 * v51];
      v55 = *v40;
      v56 = *(v0 + 472);
      v54[64] = *(v0 + 488);
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
      *(v0 + 1000) = v49;
      sub_1AB014AC0(v0 + 832, &unk_1EB437E60);
      v57._countAndFlagsBits = 0x654B656863616320;
      v57._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      v58 = (v52 + *(v53 + 28));
      v59 = *v58;
      *(v0 + 1144) = *v58;
      v60 = v58[1];
      *(v0 + 1152) = v60;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v59;
      *(v0 + 680) = v60;
      sub_1AB014A58(v0 + 672, v0 + 640, &unk_1EB437E60);
      *v41 = 0u;
      *(v0 + 552) = 0u;

      sub_1AB017CC4(v0 + 640, v0 + 536, &unk_1EB437E60);
      *(v0 + 568) = 0;
      v61 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1AB0168A8(0, *(v61 + 2) + 1, 1, v61);
        *v42 = v61;
      }

      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      if (v63 >= v62 >> 1)
      {
        v61 = sub_1AB0168A8((v62 > 1), v63 + 1, 1, v61);
      }

      v64 = *(v0 + 1032);
      v65 = *(v0 + 1016);
      *(v61 + 2) = v63 + 1;
      v66 = &v61[40 * v63];
      v67 = *v41;
      v68 = *(v0 + 552);
      v66[64] = *(v0 + 568);
      *(v66 + 2) = v67;
      *(v66 + 3) = v68;
      *(v0 + 1000) = v61;
      sub_1AB014AC0(v0 + 672, &unk_1EB437E60);
      v69._countAndFlagsBits = 0x4449656863616320;
      v69._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v69);
      v70 = v64 + *(v65 + 24);
      v71 = *v70;
      *(v0 + 412) = *v70;
      LOBYTE(v70) = *(v70 + 4);
      *(v0 + 369) = v70;
      if (v70)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v71;
      }

      sub_1AB014A58(v0 + 608, v0 + 576, &unk_1EB437E60);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1AB017CC4(v0 + 576, v0 + 336, &unk_1EB437E60);
      *(v0 + 368) = 0;
      v72 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1AB0168A8(0, *(v72 + 2) + 1, 1, v72);
      }

      v74 = *(v72 + 2);
      v73 = *(v72 + 3);
      if (v74 >= v73 >> 1)
      {
        v72 = sub_1AB0168A8((v73 > 1), v74 + 1, 1, v72);
      }

      *(v72 + 2) = v74 + 1;
      v75 = &v72[40 * v74];
      v76 = *(v0 + 336);
      v77 = *(v0 + 352);
      v75[64] = *(v0 + 368);
      *(v75 + 2) = v76;
      *(v75 + 3) = v77;
      *v42 = v72;
      sub_1AB014AC0(v0 + 608, &unk_1EB437E60);
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v78);
      *(v47 + 32) = *v42;
      Logger.info(_:)(v47, v85, v83);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
      if (v87 == 3)
      {
        break;
      }

      sub_1AB28DBE8(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v34 = *(v0 + 1120) + 1;
      if (v34 == *(v0 + 1104))
      {
        goto LABEL_17;
      }
    }

    v79 = *(v0 + 200);
    v80 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v79);
    v88 = (*(v80 + 24) + **(v80 + 24));
    v81 = swift_task_alloc();
    *(v0 + 1160) = v81;
    *v81 = v0;
    v81[1] = sub_1AB288018;
    v82 = *(v0 + 1032);

    return v88(v82, v79, v80);
  }
}

uint64_t sub_1AB289540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-v9 - 8];
  v11 = *(a2 + 16);
  v38 = *a2;
  v39 = v11;
  v40 = *(a2 + 32);
  sub_1AB28DB8C(a2, v37);
  sub_1AB28DDB4();
  sub_1AB461564();
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_1AB02B1D8(v41), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    sub_1AB02B2E4(v41);
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v16 = v42;
    v17 = v43;
    __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    v44 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001AB506410;
    v19._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v36[3] = &type metadata for SilverBulletJetPackAssetRequest;
    v20 = swift_allocObject();
    v36[0] = v20;
    v21 = *(a2 + 16);
    *(v20 + 16) = *a2;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(a2 + 32);
    sub_1AB014A58(v36, v35, &unk_1EB437E60);
    v38 = 0u;
    v39 = 0u;
    sub_1AB28DB8C(a2, v37);
    sub_1AB017CC4(v35, &v38, &unk_1EB437E60);
    v40 = 0;
    v22 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
      v44 = v22;
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v38;
    v27 = v39;
    v25[64] = v40;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v44 = v22;
    sub_1AB014AC0(v36, &unk_1EB437E60);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v18 + 32) = v44;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    sub_1AB02B2E4(v41);
    v29 = sub_1AB460BE4();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a3;
    v30[5] = a4;

    v15 = sub_1AB3B2D0C(0, 0, v10, &unk_1AB4E3670, v30);
    v31 = *(a2 + 16);
    v38 = *a2;
    v39 = v31;
    v40 = *(a2 + 32);
    sub_1AB28DB8C(a2, v41);
    sub_1AB461564();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = *a1;
    sub_1AB02B338(v15, v41, isUniquelyReferenced_nonNull_native);
    sub_1AB02B2E4(v41);
    *a1 = v38;
  }

  return v15;
}

uint64_t sub_1AB2899A0()
{
  v0[55] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[56] = v1;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[57] = qword_1EB4359A0;
  v0[52] = v1;
  v2 = swift_task_alloc();
  v0[58] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394B8);
  *v2 = v0;
  v2[1] = sub_1AB289AF8;

  return MEMORY[0x1EEE6DE98](v0 + 37, v0 + 52, &unk_1AB4E36F8, v1, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB289AF8()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1AB289DE0;
  }

  else
  {

    v2 = sub_1AB289C14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB289C14()
{
  if (*(v0 + 320))
  {
    sub_1AB0149B0((v0 + 296), v0 + 256);
LABEL_3:
    v1 = static BaseObjectGraph.current.getter();
    *(v0 + 480) = v1;
    *(v0 + 424) = v1;
    v2 = swift_task_alloc();
    *(v0 + 488) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439530);
    *v2 = v0;
    v2[1] = sub_1AB289E44;

    return MEMORY[0x1EEE6DE98](v0 + 96, v0 + 424, &unk_1AB4E3700, v1, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
  }

  v3 = *(v0 + 472);
  v4 = type metadata accessor for JetPackAssetDiskCache(0);
  v5 = JetPackAssetDiskCache.__allocating_init()();
  if (!v3)
  {
    *(v0 + 280) = v4;
    *(v0 + 288) = &protocol witness table for JetPackAssetDiskCache;
    *(v0 + 256) = v5;
    if (*(v0 + 320))
    {
      sub_1AB014AC0(v0 + 296, &qword_1EB4394B8);
    }

    goto LABEL_3;
  }

  if (*(v0 + 320))
  {
    sub_1AB014AC0(v0 + 296, &qword_1EB4394B8);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1AB289DE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB289E44()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1AB28A080;
  }

  else
  {

    v2 = sub_1AB289F60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB289F60()
{
  if (*(v0 + 120) == 1)
  {
    sub_1AB01494C(v0 + 256, v0 + 336);
    *(v0 + 400) = &type metadata for JetPackAssetStandardCachePolicy;
    *(v0 + 408) = &protocol witness table for JetPackAssetStandardCachePolicy;
    sub_1AB0149B0((v0 + 336), v0 + 16);
    sub_1AB0149B0((v0 + 376), v0 + 56);
    if (*(v0 + 120) != 1)
    {
      sub_1AB014AC0(v0 + 96, &qword_1EB439530);
    }
  }

  else
  {
    v1 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 160);
    v2 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v2;
  }

  v3 = *(v0 + 432);
  sub_1AB0261D0(v0 + 16, v0 + 176);
  type metadata accessor for JetPackAssetSession();
  v4 = swift_allocObject();
  JetPackAssetSession.init(configuration:)(v0 + 176);
  sub_1AB026354(v0 + 16);
  *v3 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1AB28A080()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28A0EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for SilverBulletJetPackAssetFetcher();
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB28A180, 0, 0);
}

uint64_t sub_1AB28A180()
{
  v0[7] = type metadata accessor for BaseObjectGraph();
  v0[8] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1AB28A23C;

  return sub_1AB2686B8();
}

uint64_t sub_1AB28A23C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1AB28A464;
  }

  else
  {
    v4 = sub_1AB28A350;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB28A350()
{
  if (v0[10])
  {

    v0[12] = static BaseObjectGraph.current.getter();
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1AB28A4D0;

    return sub_1AB091780((v0 + 2));
  }

  else
  {
    sub_1AB146740();
    return sub_1AB461884();
  }
}

uint64_t sub_1AB28A464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28A4D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1AB28AB5C;
  }

  else
  {

    v2 = sub_1AB28A5EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB28A5EC()
{
  v0[15] = v0[2];
  v0[16] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1AB28A6A4;

  return sub_1AB268558();
}

uint64_t sub_1AB28A6A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1AB28ABD4;
  }

  else
  {

    v4 = sub_1AB28A7C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB28A7C0()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];
  }

  else
  {
    v2 = [objc_opt_self() ams:0 configurationWithProcessInfo:v0[15] bag:?];
  }

  v0[20] = v2;
  v3 = v0[15];
  v4 = v0[6];
  v5 = v4 + *(v0[5] + 20);
  v6 = type metadata accessor for URLJetPackAssetFetcher();
  v7 = *(v6 + 24);
  v8 = sub_1AB45F764();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = v3;
  *(v9 + 32) = 1;
  *&v5[*(v6 + 28)] = v9;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = v2;
  *v4 = v3;
  v11 = v1;
  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_1AB28A9B0;
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];

  return sub_1AB26F694(v14, v15, v13);
}

uint64_t sub_1AB28A9B0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1AB28AC54;
  }

  else
  {
    v2 = sub_1AB28AAC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB28AAC4()
{
  v1 = *(v0 + 48);

  sub_1AB28DBE8(v1, type metadata accessor for SilverBulletJetPackAssetFetcher);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB28AB5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28ABD4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28AC54()
{
  v1 = *(v0 + 48);

  sub_1AB28DBE8(v1, type metadata accessor for SilverBulletJetPackAssetFetcher);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB28AD28(uint64_t a1)
{
  v1[103] = a1;
  type metadata accessor for DiskJetPackResourceBundle();
  v1[104] = swift_task_alloc();
  v1[105] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437860);
  v1[106] = swift_task_alloc();
  v2 = sub_1AB45F764();
  v1[107] = v2;
  v3 = *(v2 - 8);
  v1[108] = v3;
  v1[109] = *(v3 + 64);
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v1[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB28AE90, 0, 0);
}

uint64_t sub_1AB28AE90()
{
  v0[113] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[114] = v1;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[115] = qword_1EB4359A0;
  v0[101] = v1;
  v2 = swift_task_alloc();
  v0[116] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394E0);
  *v2 = v0;
  v2[1] = sub_1AB28AFE8;

  return MEMORY[0x1EEE6DE98](v0 + 47, v0 + 101, &unk_1AB4E35A8, v1, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB28AFE8()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_1AB28B208;
  }

  else
  {

    v2 = sub_1AB28B104;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB28B104()
{
  if (*(v0 + 416) == 1)
  {
    *(v0 + 360) = &type metadata for JetPackManagedKeyProvider;
    *(v0 + 368) = &protocol witness table for JetPackManagedKeyProvider;
    *(v0 + 320) = xmmword_1AB4E32F0;
  }

  else
  {
    v2 = *(v0 + 392);
    *(v0 + 320) = *(v0 + 376);
    *(v0 + 336) = v2;
    *(v0 + 352) = *(v0 + 408);
    *(v0 + 368) = *(v0 + 424);
  }

  *(v0 + 944) = static BaseObjectGraph.current.getter();
  v3 = swift_task_alloc();
  *(v0 + 952) = v3;
  *v3 = v0;
  v3[1] = sub_1AB28B2B4;
  v4 = *(v0 + 896);

  return sub_1AB267F74(v4);
}

uint64_t sub_1AB28B208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28B2B4()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_1AB28BD08;
  }

  else
  {
    v2 = sub_1AB28B3E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB28B3E8()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v21 = *(v0 + 872);
  v22 = *(v0 + 848);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  sub_1AB45F6C4();
  *(v0 + 512) = &type metadata for SyncTaskScheduler;
  *(v0 + 520) = &protocol witness table for SyncTaskScheduler;
  *(v0 + 816) = static BaseObjectGraph.current.getter();

  swift_task_localValuePush();
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v8);
  (*(v9 + 8))(v8, v9);
  sub_1AB01494C(v1, v0 + 528);
  (*(v4 + 16))(v3, v2, v5);
  sub_1AB03FFF8(v0 + 320, v0 + 432);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1AB0149B0((v0 + 528), v11 + 16);
  (*(v4 + 32))(v11 + v10, v3, v5);
  *(v11 + v10 + v21) = 1;
  v12 = v11 + ((v10 + v21) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 56) = *(v0 + 480);
  v13 = *(v0 + 448);
  *(v12 + 40) = *(v0 + 464);
  v14 = *(v0 + 432);
  *(v12 + 24) = v13;
  *(v12 + 8) = v14;
  *v22 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394E8);
  v15 = swift_allocObject();
  *(v0 + 968) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v15[2] = v16;
  sub_1AB040054(v22, v15 + *(*v15 + 96));
  v17 = swift_allocObject();
  *(v0 + 80) = sub_1AB04D65C;
  v17[2] = sub_1AB04D66C;
  v17[3] = v11;
  v17[4] = v15;
  *(v0 + 88) = v17;
  *(v0 + 96) = sub_1AB28DAE0;
  *(v0 + 104) = v15;
  sub_1AB01494C(v0 + 488, v0 + 112);
  *(v0 + 152) = 0;
  swift_retain_n();

  sub_1AB017894(v0 + 80);

  sub_1AB014AC0(v0 + 80, &unk_1EB437870);
  sub_1AB01494C(v1, v0 + 608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394F0);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0((v0 + 648), v0 + 568);
    sub_1AB01494C(v0 + 568, v0 + 688);
    v18 = swift_allocObject();
    sub_1AB0149B0((v0 + 688), v18 + 16);
    sub_1AB01494C(v0 + 568, v0 + 728);
    v19 = swift_allocObject();
    sub_1AB0149B0((v0 + 728), v19 + 16);
    *(v0 + 240) = sub_1AB04F7C8;
    *(v0 + 792) = &type metadata for SyncTaskScheduler;
    *(v0 + 800) = &protocol witness table for SyncTaskScheduler;
    *(v0 + 248) = v18;
    *(v0 + 256) = sub_1AB28DAE8;
    *(v0 + 264) = v19;
    sub_1AB01494C(v0 + 768, v0 + 272);
    *(v0 + 312) = 0;

    sub_1AB03EBC4(v0 + 240);

    sub_1AB014AC0(v0 + 240, &unk_1EB4398C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 568);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 768);
  }

  else
  {
    *(v0 + 680) = 0;
    *(v0 + 648) = 0u;
    *(v0 + 664) = 0u;
    sub_1AB014AC0(v0 + 648, &qword_1EB4394F8);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1AB28B910, 0, 0);
}

uint64_t sub_1AB28B910()
{
  v1 = v0 + 2;
  v2 = v0[104];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB28B9DC;
  v0[20] = swift_continuation_init();
  v3 = (v0 + 20);
  *(v3 + 72) = 1;
  sub_1AB03EBC4(v3);
  sub_1AB014AC0(v3, &unk_1EB4398C0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB28B9DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 976) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB28BC10;
  }

  else
  {
    v4 = *(v1 + 832);
    v5 = *(v1 + 824);

    sub_1AB28E968(v4, v5, type metadata accessor for DiskJetPackResourceBundle);
    v3 = sub_1AB28BB28;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB28BB28()
{
  v1 = v0[112];
  (*(v0[108] + 8))(v0[111], v0[107]);
  sub_1AB28DBE8(v1, type metadata accessor for JetPackAsset);
  sub_1AB1999C8((v0 + 40));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB28BC10()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[107];

  (*(v3 + 8))(v2, v4);
  sub_1AB28DBE8(v1, type metadata accessor for JetPackAsset);
  sub_1AB1999C8((v0 + 40));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AB28BD08()
{
  sub_1AB1999C8(v0 + 320);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28BDF0(__int128 *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 32);
  v16 = *a1;
  v17 = v8;
  v18 = v9;
  LOBYTE(v19) = v10;
  sub_1AB28D460(&v16);
  *&v16 = a2(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a5;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  v19 = v11;
  *(&v16 + 1) = v12;
  v14 = sub_1AB0300F4(&v16);

  sub_1AB01667C(&v16);
  return v14;
}

uint64_t sub_1AB28BEE4(uint64_t a1)
{
  *(v1 + 136) = a1;
  type metadata accessor for JetPackAsset(0);
  *(v1 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB28BF74, 0, 0);
}

uint64_t sub_1AB28BF74()
{
  v0[19] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[20] = v1;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[16] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394D8);
  *v2 = v0;
  v2[1] = sub_1AB28C0D4;

  return MEMORY[0x1EEE6DE98](v0 + 9, v0 + 16, &unk_1AB4E3578, v1, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB28C0D4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1AB28C2F4;
  }

  else
  {

    v2 = sub_1AB28C1F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB28C1F0()
{
  if (*(v0 + 112) == 1)
  {
    *(v0 + 56) = &type metadata for JetPackManagedKeyProvider;
    *(v0 + 64) = &protocol witness table for JetPackManagedKeyProvider;
    *(v0 + 16) = xmmword_1AB4E32F0;
  }

  else
  {
    v2 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
  }

  *(v0 + 184) = static BaseObjectGraph.current.getter();
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_1AB28C360;
  v4 = *(v0 + 144);

  return sub_1AB267F74(v4);
}

uint64_t sub_1AB28C2F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28C360()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB28C6A0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_1AB28C500;
    v4 = v2[17];
    v5 = v2[18];

    return InMemoryJetPackLoader.bundle(from:)(v4, v5);
  }
}

uint64_t sub_1AB28C500()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1AB28C70C;
  }

  else
  {
    v2 = sub_1AB28C614;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB28C614()
{
  sub_1AB28DBE8(*(v0 + 144), type metadata accessor for JetPackAsset);
  sub_1AB199974(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28C6A0()
{
  sub_1AB199974(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28C70C()
{
  sub_1AB28DBE8(*(v0 + 144), type metadata accessor for JetPackAsset);
  sub_1AB199974(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t JetPackAssetSession.deinit()
{

  sub_1AB026354(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
  return v0;
}

uint64_t sub_1AB28C7CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB28C7EC, 0, 0);
}

uint64_t sub_1AB28C7EC()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1AB09129C;

  return sub_1AB0411BC(v1);
}

uint64_t sub_1AB28C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  *(v5 + 48) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1AB28C8D4, 0, 0);
}

uint64_t sub_1AB28C8D4()
{
  sub_1AB460CC4();
  v1 = *(v0 + 64);
  v2 = v1[3];
  v3 = v1[4];
  v9 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 16;
  *(v4 + 32) = v9;
  v10 = (*(v3 + 64) + **(v3 + 64));
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = type metadata accessor for JetPackAsset(0);
  *v5 = v0;
  v5[1] = sub_1AB28CAAC;
  v7 = *(v0 + 56);

  return v10(v7, &unk_1AB4E3690, v4, v6, v2, v3);
}

uint64_t sub_1AB28CAAC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB28CBE8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB28CBE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB28CC4C()
{
  sub_1AB28DDB4();

  sub_1AB461564();
  return sub_1AB05E924(0, v1);
}

uint64_t sub_1AB28CCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(a3 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = sub_1AB05E830;

  return sub_1AB277D6C(a1, a2, v5 + 16, a4, a5);
}

uint64_t sub_1AB28CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v16;
  *(v8 + 48) = *(a5 + 32);
  v17 = swift_task_alloc();
  *(v8 + 56) = v17;
  *v17 = v8;
  v17[1] = sub_1AB28EE44;

  return sub_1AB2848E8(a1, a2, a3, a4, v8 + 16, a6, a7, a8);
}

uint64_t sub_1AB28CE98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB28CEB8, 0, 0);
}

uint64_t sub_1AB28CEB8()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1AB09129C;

  return sub_1AB32BEB8(v1);
}

uint64_t sub_1AB28CF64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB28CF84, 0, 0);
}

uint64_t sub_1AB28CF84()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1AB28D030;

  return sub_1AB32C4F4(v1);
}

uint64_t sub_1AB28D030(uint64_t a1)
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
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AB0913E8, 0, 0);
  }
}

unint64_t sub_1AB28D17C()
{
  result = qword_1EB433418;
  if (!qword_1EB433418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433418);
  }

  return result;
}

uint64_t sub_1AB28D1D0(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1AB45FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45FF84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED4D06C0 != -1)
  {
    swift_once();
  }

  v10 = sub_1AB45FFC4();
  __swift_project_value_buffer(v10, qword_1ED4D06C8);
  v11 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v12 = sub_1AB461224();
  if (sub_1AB461314())
  {

    sub_1AB460024();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1AC59F020](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AB28D460(uint64_t a1)
{
  v2 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v2;
  v21 = *(a1 + 32);
  v19[0] = type metadata accessor for JetPackAssetSession();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439500);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = &unk_1AB4E35E8;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v19[4] = v3;
  v19[1] = v4;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v18[0] = type metadata accessor for JetPackAsset(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439508);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = &unk_1AB4E3600;
  *(v9 + 32) = v6;
  *(v9 + 40) = 0;
  v18[4] = v8;
  v18[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  sub_1AB016620(v19, inited + 32);
  sub_1AB28DB8C(v20, v17);
  v12 = sub_1AB014B20();
  v17[0] = MEMORY[0x1AC59B670](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v12);
  sub_1AB014B88(inited);
  swift_setDeallocating();
  sub_1AB01667C(inited + 32);
  v13 = v17[0];
  type metadata accessor for BaseObjectGraph();
  v14 = swift_initStackObject();
  v14[3] = 0;
  v14[4] = 0xE000000000000000;
  v14[2] = v13;

  v15 = sub_1AB0300F4(v18);

  swift_setDeallocating();

  sub_1AB01667C(v18);
  sub_1AB01667C(v19);
  return v15;
}

uint64_t sub_1AB28D6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AB28D734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AB28D7BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB28D80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1AB28D86C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AB28D8B8()
{
  result = qword_1EB4394D0;
  if (!qword_1EB4394D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4394D0);
  }

  return result;
}

uint64_t sub_1AB28D90C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB341140(a1, v1);
}

uint64_t sub_1AB28D9A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB340F98(a1, v1);
}

uint64_t sub_1AB28DA44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB34106C(a1, v1);
}

uint64_t sub_1AB28DAF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB28A0EC(a1, v1 + 16);
}

uint64_t sub_1AB28DBE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB28DC48(uint64_t a1)
{
  v4 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = *(v1 + 136);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027460;

  return sub_1AB28C898(a1, v1 + 16, v1 + 96, v6, v1 + v5);
}

uint64_t sub_1AB28DD48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v6 + 16);
  v10[0] = *v6;
  v10[1] = v8;
  v11 = *(v6 + 32);
  result = sub_1AB289540(a1, v10, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1AB28DDB4()
{
  result = qword_1EB439510;
  if (!qword_1EB439510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439510);
  }

  return result;
}

uint64_t sub_1AB28DE08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AB027554;

  return sub_1AB28CCD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1AB28DF30(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v6 = (*(v5 + 80) + 73) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1AB027554;

  return sub_1AB28CDA4(a1, v9, v10, v11, (v1 + 5), v1 + v6, v12, v1 + v8);
}

uint64_t sub_1AB28E088(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB28CE98(a1, v1);
}

uint64_t sub_1AB28E138(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB28CF64(a1, v1);
}

uint64_t sub_1AB28E1E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB340EC4(a1, v1);
}

uint64_t sub_1AB28E284(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB340DF0(a1, v1);
}

uint64_t sub_1AB28E320(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v11 = *(v1 + v9);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1AB027554;

  return sub_1AB26FF90(a1, v1 + 32, v1 + v8, v11, v1 + v10, v6, v5);
}

uint64_t sub_1AB28E4A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027554;

  return sub_1AB27EBEC(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1AB28E574(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[3];
  v15 = v1[2];
  v11 = v1[6];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1AB027554;

  return sub_1AB2859A0(a1, v15, v10, v11, v1 + v6, v1 + v7, v12, v1 + v9);
}

uint64_t objectdestroy_62Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1AB28E780()
{
  result = qword_1EB439538;
  if (!qword_1EB439538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439538);
  }

  return result;
}

uint64_t sub_1AB28E7D4(uint64_t a1)
{
  v4 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB26EFE4(a1, v6, v1 + v5);
}

uint64_t sub_1AB28E8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB28E900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB28E968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB28E9D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1AB027554;

  return sub_1AB26FBFC(a1, v1 + 16, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1AB28EB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AB027554;

  return sub_1AB270334(a1, v4, v5, v7, v6);
}

uint64_t sub_1AB28EBEC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1AB027554;

  return sub_1AB283844(a1, v12, v13, v14, v1 + v6, v1 + v9, v15, v1 + v11);
}

uint64_t sub_1AB28ED90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB28C7CC(a1, v1);
}

uint64_t sub_1AB28EE9C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v50 = sub_1AB45FF04();
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - v10;
  v11 = MEMORY[0x1E69E7CC8];
  v13 = a1 + 64;
  v12 = *(a1 + 64);
  v14 = 1 << *(a1 + 32);
  v63 = MEMORY[0x1E69E7CC8];
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v49 = (v9 + 56);
  v42 = v9;
  v47 = (v9 + 32);

  v19 = 0;
  v43 = a1;
  v44 = v6;
  if (!v16)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v19 << 6);
      sub_1AB02B4BC(*(a1 + 48) + 40 * v22, v60);
      sub_1AB0165C4(*(a1 + 56) + 32 * v22, v61 + 8);
      v57 = v61[0];
      v58 = v61[1];
      v59 = v62;
      v55 = v60[0];
      v56 = v60[1];
      sub_1AB45FE44();
      if (!v2)
      {
        break;
      }

      (*v49)(v6, 1, 1, v50);
      sub_1AB014AC0(&v55, &qword_1EB438C58);
      result = sub_1AB014AC0(v6, &unk_1EB4395D0);
      v2 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    v46 = 0;
    v23 = v50;
    (*v49)(v6, 0, 1, v50);
    v24 = *v47;
    v25 = v6;
    v26 = v45;
    (*v47)(v45, v25, v23);
    v53[0] = v57;
    v53[1] = v58;
    v54 = v59;
    v52 = v56;
    v51 = v55;
    v24(v48, v26, v23);
    v27 = v24;
    v28 = *(v11 + 16);
    if (*(v11 + 24) <= v28)
    {
      sub_1AB1D3D20(v28 + 1, 1);
    }

    v11 = v63;
    result = sub_1AB461524();
    v29 = v11 + 64;
    v30 = -1 << *(v11 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    v6 = v44;
    v2 = v46;
    if (((-1 << v31) & ~*(v11 + 64 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v29 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v11 + 64 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = *(v11 + 48) + 40 * v33;
    v39 = v51;
    v40 = v52;
    *(v38 + 32) = *&v53[0];
    *v38 = v39;
    *(v38 + 16) = v40;
    v27((*(v11 + 56) + *(v42 + 72) * v33), v48, v50);
    ++*(v11 + 16);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v53 + 8);
    a1 = v43;
  }

  while (v16);
LABEL_7:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return v11;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t Bag.init(from:profile:profileVersion:processInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1AB01494C(a1, v21);
  v14 = type metadata accessor for AMSKitAMSBag();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag____lazy_storage___amsBag] = 0;
  sub_1AB01494C(v21, &v15[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag]);
  v16 = &v15[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_profile];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v15[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_profileVersion];
  *v17 = a4;
  *(v17 + 1) = a5;
  *&v15[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_processInfo] = a6;
  v20.receiver = v15;
  v20.super_class = v14;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
  *a7 = v18;
  return result;
}

uint64_t sub_1AB28F620(uint64_t a1)
{
  v2 = sub_1AB45FF04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((a1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag), *(a1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag + 24));
  sub_1AB460544();
  v6 = sub_1AB45FDD4();

  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AB461754();
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v14[1] = v6;
    v15 = v9;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    do
    {
      v15(v5, v10, v2);
      sub_1AB094B50();
      (*(v8 - 8))(v5, v2);
      sub_1AB461724();
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439590);
  v12 = sub_1AB460934();

  return v12;
}

id sub_1AB28F838(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag + 24));
  sub_1AB460544();
  v3 = sub_1AB45FDB4();

  if (v3 == 2)
  {
    return sub_1AB093B98(a1, 1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (!v4)
  {
    return sub_1AB093B98(a1, 1);
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 promiseWithResult_];
  v9 = [objc_opt_self() bagValueWithKey:a1 valueType:1 valuePromise:v8];

  return v9;
}

id sub_1AB28F960(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag + 24));
  sub_1AB460544();
  v3 = sub_1AB45FDE4();
  v5 = v4;

  if (v5)
  {
    return sub_1AB093B98(a1, 2);
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if (!v6)
  {
    return sub_1AB093B98(a1, 2);
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 promiseWithResult_];
  v11 = [objc_opt_self() bagValueWithKey:a1 valueType:2 valuePromise:v10];

  return v11;
}

id sub_1AB28FA90(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag + 24));
  sub_1AB460544();
  v3 = sub_1AB45FE14();
  v5 = v4;

  if (v5)
  {
    return sub_1AB093B98(a1, 3);
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (!v6)
  {
    return sub_1AB093B98(a1, 3);
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 promiseWithResult_];
  v11 = [objc_opt_self() bagValueWithKey:a1 valueType:3 valuePromise:v10];

  return v11;
}

id sub_1AB28FC14(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag + 24));
  sub_1AB460544();
  sub_1AB45FDF4();
  v4 = v3;

  if (!v4)
  {
    return sub_1AB093B98(a1, 4);
  }

  v5 = sub_1AB460514();

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 promiseWithResult_];
  v9 = [objc_opt_self() bagValueWithKey:a1 valueType:4 valuePromise:v8];

  return v9;
}

id sub_1AB28FD2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag + 24));
  sub_1AB460544();
  sub_1AB45FE34();

  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1AB014AC0(v5, &unk_1EB4395B0);
    return sub_1AB093B98(a1, 5);
  }

  else
  {
    v9 = sub_1AB45F654();
    (*(v7 + 8))(v5, v6);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 promiseWithResult_];
    v13 = [objc_opt_self() bagValueWithKey:a1 valueType:5 valuePromise:v12];

    return v13;
  }
}

id sub_1AB28FF6C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag + 24));
  sub_1AB460544();
  v3 = sub_1AB45FE04();

  if (!v3)
  {
    return sub_1AB093B98(a1, 6);
  }

  sub_1AB0948E4(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439590);
  v4 = sub_1AB4602D4();

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 promiseWithResult_];
  v8 = [objc_opt_self() bagValueWithKey:a1 valueType:6 valuePromise:v7];

  return v8;
}

uint64_t sub_1AB2900C4()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id sub_1AB290170(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_1AB093B98(v6, a4);

  return v7;
}

uint64_t sub_1AB2901D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F9B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = [*v1 expirationDate];
  if (v11)
  {
    v12 = v11;
    sub_1AB45F984();

    v13 = *(v4 + 32);
    v13(v10, v6, v3);
    (*(v4 + 56))(v10, 0, 1, v3);
    return (v13)(a1, v10, v3);
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v3);
    sub_1AB45F8E4();
    result = (*(v4 + 48))(v10, 1, v3);
    if (result != 1)
    {
      return sub_1AB014AC0(v10, &qword_1EB4395E0);
    }
  }

  return result;
}

void *sub_1AB2903C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v22 - v2;
  v4 = sub_1AB45FF04();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = sub_1AB460514();
  v9 = [v7 arrayForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D8);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = sub_1AB3E0724;
  v10[4] = 0;
  v11 = sub_1AB0A332C(v10);

  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v22[1] = v11;
    v13 = v11 + 32;
    v14 = (v25 + 56);
    v15 = (v25 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    v23 = (v25 + 32);
    v24 = v6;
    do
    {
      sub_1AB0165C4(v13, v26);
      sub_1AB45FE44();
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      (*v14)(v3, 0, 1, v4);
      v17 = *v15;
      (*v15)(v6, v3, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1AB2B12E8(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_1AB2B12E8(v18 > 1, v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      v20 = v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
      v15 = v23;
      v6 = v24;
      v17(v20, v24, v4);
      v13 += 32;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

unint64_t sub_1AB290700()
{
  v1 = *v0;
  v2 = sub_1AB460514();
  v3 = [v1 dictionaryForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1AB098790;
  v4[4] = 0;
  v5 = sub_1AB0A332C(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1AB28EE9C(v5);

  v7 = sub_1AB23AB98(v6);

  return v7;
}

uint64_t sub_1AB290810()
{
  v1 = *v0;
  v2 = sub_1AB460514();
  v3 = [v1 BOOLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438580);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1AB07D3BC;
  v4[4] = 0;
  v5 = sub_1AB0A2BD4(v4);

  return v5;
}

uint64_t sub_1AB2908B0()
{
  v1 = *v0;
  v2 = sub_1AB460514();
  v3 = [v1 doubleForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1AB07DCEC;
  v4[4] = 0;
  v5 = sub_1AB163D2C();

  return v5;
}

uint64_t sub_1AB29095C()
{
  v1 = *v0;
  v2 = sub_1AB460514();
  v3 = [v1 integerForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4386C0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1AB0D08A8;
  v4[4] = 0;
  v5 = sub_1AB163D2C();

  return v5;
}

uint64_t sub_1AB290A08()
{
  v1 = *v0;
  v2 = sub_1AB460514();
  v3 = [v1 stringForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395C0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1AB08A8AC;
  v4[4] = 0;
  v5 = sub_1AB0B77A4(v4);

  return v5;
}

uint64_t sub_1AB290AB4()
{
  v1 = *v0;
  v2 = sub_1AB460514();
  v3 = [v1 URLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1AB098298;
  v4[4] = 0;
  sub_1AB0A367C(v4);
}

unint64_t sub_1AB290B64()
{
  result = qword_1EB434430;
  if (!qword_1EB434430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB434430);
  }

  return result;
}

uint64_t sub_1AB290BC0(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v7[3] = type metadata accessor for JSPackageIndex();
  v7[4] = &protocol witness table for JSPackageIndex;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  sub_1AB2922B4(a1, boxed_opaque_existential_0);
  v5 = a2(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t IndexJSLoader.init(url:bag:urlSession:urlEncoder:process:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v99 = a3;
  v111 = a6;
  v110 = sub_1AB4605C4();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v105 = v10;
  v106 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v89 - v12;
  v114 = sub_1AB4601C4();
  v101 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v100 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - v15;
  v17 = sub_1AB45F764();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v109 = a5;
  if (a4)
  {
    v22 = a4;
    swift_unknownObjectRelease();
    v107 = v22;
    v95 = v22;
  }

  else
  {
    *&v115 = v21;
    v95 = sub_1AB291F04(a1, &v115, a5);
    swift_unknownObjectRelease();
    v107 = 0;
  }

  v23 = *(v18 + 16);
  v112 = v23;
  v23(v20, a1, v17);
  v23(v16, v20, v17);
  v98 = (v18 + 16);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = *(v18 + 8);
  v102 = v18 + 8;
  v103 = v26;
  v26(v20, v17);
  v24[2] = v25;
  sub_1AB017FB8(v16, v24 + *(*v24 + 96), &unk_1EB4377C0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658);
  swift_allocObject();
  v27 = sub_1AB03356C();
  type metadata accessor for JSRemoteIndexFetcher();
  v28 = swift_allocObject();
  v29 = a1;
  v113 = a1;
  v30 = v28;
  v31 = v99;
  v32 = v95;
  *(v28 + 16) = v99;
  *(v28 + 24) = v32;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 4;
  *(v28 + 56) = 1;
  *(v28 + 64) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1AB29207C;
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA8);
  v34 = v17;
  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E8);
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = sub_1AB292084;
  v36[4] = v33;
  v92 = v34;
  v112(v20, v29, v34);
  v97 = sub_1AB2920B4();
  v91 = v31;
  v90 = v32;
  sub_1AB461564();
  v95 = sub_1AB015664();
  LODWORD(v99) = *MEMORY[0x1E69E7F98];
  v37 = v101;
  v94 = *(v101 + 104);
  v38 = v100;
  v39 = v114;
  v94(v100);
  v40 = sub_1AB461164();
  v101 = *(v37 + 8);
  (v101)(v38, v39);
  v93 = type metadata accessor for PersistentPipelineBackoff();
  v41 = swift_allocObject();
  v42 = v116;
  *(v41 + 16) = v115;
  *(v41 + 32) = v42;
  *(v41 + 48) = v117;
  *(v41 + 56) = sub_1AB292378;
  *(v41 + 64) = 0;
  v43 = swift_allocObject();
  v43[2] = v41;
  v43[3] = &off_1F201B9B8;
  v43[4] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395F0);
  v44 = swift_allocObject();
  *(v44 + 16) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395F8);
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = sub_1AB29210C;
  v45[4] = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v47 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439600);
  v49 = swift_allocObject();
  *(v49 + 16) = v45;
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = sub_1AB29211C;
  v50[4] = v48;
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  swift_allocObject();
  v52 = sub_1AB03356C();
  type metadata accessor for JSRemoteScriptFetcher();
  v53 = swift_allocObject();
  v54 = v91;
  v55 = v90;
  *(v53 + 16) = v91;
  *(v53 + 24) = v55;
  *(v53 + 32) = xmmword_1AB4D41A0;
  *(v53 + 48) = 4;
  *(v53 + 56) = 1;
  *(v53 + 64) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1AB29214C;
  *(v56 + 24) = v53;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1AB292154;
  *(v57 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439608);
  v58 = swift_allocObject();
  *(v58 + 16) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439610);
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = sub_1AB29215C;
  v59[4] = v57;
  v60 = v92;
  v112(v20, v113, v92);
  v112 = v54;
  v98 = v55;
  v61 = v51;

  sub_1AB461564();
  v62 = v114;
  (v94)(v38, v99, v114);
  v63 = sub_1AB461164();
  (v101)(v38, v62);
  v64 = swift_allocObject();
  v65 = v116;
  *(v64 + 16) = v115;
  *(v64 + 32) = v65;
  *(v64 + 48) = v117;
  *(v64 + 56) = sub_1AB292378;
  *(v64 + 64) = 0;
  v66 = swift_allocObject();
  v66[2] = v64;
  v66[3] = &off_1F201B9B8;
  v66[4] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439618);
  v67 = swift_allocObject();
  *(v67 + 16) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439620);
  v68 = swift_allocObject();
  v68[2] = v67;
  v68[3] = sub_1AB29218C;
  v68[4] = v66;
  v69 = v104;
  sub_1AB460594();
  v71 = v108 + 32;
  v70 = *(v108 + 32);
  v72 = v106;
  v73 = v110;
  v70(v106, v69, v110);
  v74 = (*(v71 + 48) + 16) & ~*(v71 + 48);
  v75 = swift_allocObject();
  v70((v75 + v74), v72, v73);
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1AB29219C;
  *(v76 + 24) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439628);
  v77 = swift_allocObject();
  *(v77 + 16) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439630);
  v78 = swift_allocObject();
  v78[2] = v77;
  v78[3] = sub_1AB29220C;
  v78[4] = v76;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1AB1A9F18;
  *(v79 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439638);
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439640);
  v81 = swift_allocObject();
  v81[2] = v80;
  v81[3] = sub_1AB1A9F9C;
  v81[4] = v79;
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  v83 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];

  v103(v113, v60);
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439648);
  v85 = swift_allocObject();
  *(v85 + 16) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439650);
  v86 = swift_allocObject();
  v86[2] = v85;
  v86[3] = sub_1AB29223C;
  v86[4] = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439658);
  result = swift_allocObject();
  *(result + 16) = v86;
  v88 = v111;
  *v111 = v61;
  v88[1] = result;
  return result;
}

void *sub_1AB2918CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v15 = &type metadata for SyncTaskScheduler;
  v16 = &protocol witness table for SyncTaskScheduler;
  *(v11 - v5) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439660);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v7[2] = v8;
  sub_1AB017FB8(v6, v7 + *(*v7 + 96), &unk_1EB437810);
  sub_1AB01494C(v14, v13);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  sub_1AB0149B0(v13, (v9 + 5));
  v11[0] = sub_1AB292360;
  v11[1] = v9;
  v11[2] = sub_1AB292370;
  v11[3] = v7;
  sub_1AB01494C(v14, v12);
  v12[40] = 0;
  swift_retain_n();

  sub_1AB194D18(v11);

  sub_1AB014AC0(v11, &unk_1EB439840);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v7;
}

uint64_t sub_1AB291AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = (*(**a1 + 88))();
  v8 = a4(a2, a3, v7);

  return v8;
}

uint64_t sub_1AB291B74(uint64_t a1, uint64_t a2)
{
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437530);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB29227C;
  v9[1] = v7;
  v9[2] = sub_1AB292294;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB198248(v9);

  sub_1AB014AC0(v9, &unk_1EB4377D0);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB291CF0(uint64_t a1, uint64_t a2)
{
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437670);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB29229C;
  v9[1] = v7;
  v9[2] = sub_1AB2922AC;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB197F6C(v9);

  sub_1AB014AC0(v9, &qword_1EB439E10);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB291E6C(uint64_t *a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *a1;
  [a2 lock];
  v8 = a4(a3 + 16, v7);
  [a2 unlock];
  return v8;
}

id sub_1AB291F04(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  [v4 setIncludeClientVersions_];
  [v4 setAnisetteType_];
  [v4 setMescalType_];
  [v4 setAccount_];
  [v4 setRequestEncoding_];
  [v4 setDialogOptions_];
  [v4 setClientInfo_];
  [v4 setDisableResponseDecoding_];
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v5 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v5[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v5 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      return v4;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    return v4;
  }

  if (sub_1AB45F5C4())
  {
    [v4 setUrlKnownToBeTrusted_];
  }

  return v4;
}

unint64_t sub_1AB2920B4()
{
  result = qword_1ED4D1AF0;
  if (!qword_1ED4D1AF0)
  {
    sub_1AB45F764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1AF0);
  }

  return result;
}

uint64_t sub_1AB29219C(__int128 *a1)
{
  v3 = *(sub_1AB4605C4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1AB2D10AC(a1, v4);
}

uint64_t sub_1AB2922B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageIndex();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_35Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB29237C@<X0>(void (*a1)(timespec *__return_ptr, uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v2 = sub_1AB45F9B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for MonotonicTimeReference();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v38);
  v17 = &v16[*(v14 + 28)];
  *v17 = v38;
  v18 = *(v3 + 16);
  v19 = v18(v12, v16, v2);
  v20 = v39;
  v36(&v38, v19);
  if (v20)
  {
    (*(v3 + 8))(v12, v2);
    return sub_1AB044D4C(v16);
  }

  else
  {
    v31 = v3;
    v32 = v18;
    v36 = 0;
    v39 = v12;
    v22 = v2;
    v23 = v33;
    sub_1AB014B78(&v38, v35);
    static MonotonicTime.now.getter(&v38);
    v24 = v38;
    tv_sec = v17->tv_sec;
    tv_nsec = v17->tv_nsec;
    v38.tv_sec = tv_sec;
    v38.tv_nsec = tv_nsec;
    v37 = v24;
    sub_1AB044C10(&v38, &v37);
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v27 = v9;
    sub_1AB45F934();
    v28 = v39;
    v29 = v32;
    v32(v23, v39, v22);
    v29(v34, v27, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A0);
    sub_1AB45F224();
    v30 = *(v31 + 8);
    v30(v27, v22);
    v30(v28, v22);
    return sub_1AB044D4C(v16);
  }
}

uint64_t DependencyDictionary.MergeStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

JetEngine::DependencyDictionary __swiftcall DependencyDictionary.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  v5 = sub_1AB014B20();
  *v3 = MEMORY[0x1AC59B670](v4, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v5);
  sub_1AB014B88(a1._rawValue);
}

uint64_t DependencyDictionary.add<A>(distinctDependenciesFrom:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v30 - v11;
  (*(v6 + 16))(v8, a1, a2, v10);
  sub_1AB4607F4();
  swift_getAssociatedConformanceWitness();
  sub_1AB4613F4();
  if (!v37)
  {
    return (*(v30 + 8))(v12, AssociatedTypeWitness);
  }

  while (1)
  {
    v35[0] = v37;
    v35[1] = v38;
    v36 = v39;
    v13 = v37;
    sub_1AB0165C4(v35 + 8, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v3;
    v15 = v31;
    *v3 = 0x8000000000000000;
    v17 = sub_1AB016558(v13);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v15[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v31;
        if ((v16 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1AB01A034();
        v24 = v31;
        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1AB01A340(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_1AB016558(v13);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_20;
      }

      v17 = v22;
      v24 = v31;
      if ((v21 & 1) == 0)
      {
LABEL_15:
        v24[(v17 >> 6) + 8] |= 1 << v17;
        *(v24[6] + 8 * v17) = v13;
        sub_1AB014B78(v32, (v24[7] + 32 * v17));
        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_19;
        }

        v24[2] = v28;
        v33 = 0u;
        v34 = 0u;
        *v3 = v24;
        goto LABEL_3;
      }
    }

    sub_1AB014B78((v24[7] + 32 * v17), &v33);
    sub_1AB014B78(v32, (v24[7] + 32 * v17));
    v25 = *(&v34 + 1);
    *v3 = v24;
    if (v25)
    {
      sub_1AB014AC0(&v33, &unk_1EB437E60);
      sub_1AB405670("JetEngine/DependencyDictionary.swift", 36, 2, 340);
      sub_1AB01667C(v35);
      goto LABEL_4;
    }

LABEL_3:
    sub_1AB01667C(v35);
    sub_1AB014AC0(&v33, &unk_1EB437E60);
LABEL_4:
    sub_1AB4613F4();
    if (!v37)
    {
      return (*(v30 + 8))(v12, AssociatedTypeWitness);
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

void *DependencyDictionary.types.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1AB1AFE78(v2, 0);
  v4 = sub_1AB1AF5B8(&v6, v3 + 4, v2, v1);

  sub_1AB0309A4();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AB292C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v3;
  if (!*(v10 + 16) || (v11 = sub_1AB016558(v7), (v12 & 1) == 0))
  {
    memset(v17, 0, sizeof(v17));
    goto LABEL_9;
  }

  sub_1AB0165C4(*(v10 + 56) + 32 * v11, v17);
  sub_1AB014A58(v17, v16, &unk_1EB437E60);
  type metadata accessor for DependencyCell();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for ThrowingDependencyCell();
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        v13 = 2;
        goto LABEL_6;
      }

      if (swift_dynamicCast())
      {
        *a3 = 0;
        (*(v6 + 8))(v9, a2);
        goto LABEL_7;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v16);
LABEL_9:
      *a3 = 3;
      return sub_1AB014AC0(v17, &unk_1EB437E60);
    }
  }

  v13 = 1;
LABEL_6:
  *a3 = v13;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return sub_1AB014AC0(v17, &unk_1EB437E60);
}

char *DependencyDictionary.types<A>(compatibleWith:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v10 = *(*v2 + 64);
  v9 = *v2 + 64;
  v8 = v10;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v36 = (v4 + 8);

  v16 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    if (!v13)
    {
      break;
    }

    v19 = v16;
LABEL_15:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v19 << 6);
    v23 = *(*(v7 + 48) + 8 * v22);
    sub_1AB0165C4(*(v7 + 56) + 32 * v22, v38);
    *&v39 = v23;
    sub_1AB014B78(v38, (&v39 + 8));
    v16 = v19;
LABEL_16:
    v42[0] = v39;
    v42[1] = v40;
    v43 = v41;
    v24 = v39;
    if (!v39)
    {

      return v37;
    }

    sub_1AB014B78((v42 + 8), &v39);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB2AFAE8(0, *(v37 + 2) + 1, 1, v37);
      }

      v30 = *(v37 + 2);
      v29 = *(v37 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v35 = v30 + 1;
        v33 = sub_1AB2AFAE8((v29 > 1), v30 + 1, 1, v37);
        v31 = v35;
        v37 = v33;
      }

      v32 = v37;
      *(v37 + 2) = v31;
      *&v32[8 * v30 + 32] = v24;
      (*v36)(v6, a2);
    }

    else
    {
      type metadata accessor for DependencyCell();
      if (swift_dynamicCast() || (type metadata accessor for ThrowingDependencyCell(), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1AB2AFAE8(0, *(v37 + 2) + 1, 1, v37);
        }

        v26 = *(v37 + 2);
        v25 = *(v37 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v35 = v26 + 1;
          v28 = sub_1AB2AFAE8((v25 > 1), v26 + 1, 1, v37);
          v27 = v35;
          v37 = v28;
        }

        v17 = v37;
        *(v37 + 2) = v27;
        *&v17[8 * v26 + 32] = v24;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  }

  if (v14 <= v16 + 1)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = v14;
  }

  v16 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      v13 = 0;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      goto LABEL_16;
    }

    v13 = *(v9 + 8 * v19);
    ++v18;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v10 = *(*v2 + 64);
  v9 = *v2 + 64;
  v8 = v10;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v36 = (v4 + 8);

  v16 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    if (!v13)
    {
      break;
    }

    v19 = v16;
LABEL_15:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v19 << 6);
    v23 = *(*(v7 + 48) + 8 * v22);
    sub_1AB0165C4(*(v7 + 56) + 32 * v22, v38);
    *&v39 = v23;
    sub_1AB014B78(v38, (&v39 + 8));
    v16 = v19;
LABEL_16:
    v42[0] = v39;
    v42[1] = v40;
    v43 = v41;
    v24 = v39;
    if (!v39)
    {

      return v37;
    }

    sub_1AB014B78((v42 + 8), &v39);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB2AFAE8(0, *(v37 + 2) + 1, 1, v37);
      }

      v30 = *(v37 + 2);
      v29 = *(v37 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v35 = v30 + 1;
        v33 = sub_1AB2AFAE8((v29 > 1), v30 + 1, 1, v37);
        v31 = v35;
        v37 = v33;
      }

      v32 = v37;
      *(v37 + 2) = v31;
      *&v32[8 * v30 + 32] = v24;
      (*v36)(v6, a2);
    }

    else
    {
      type metadata accessor for DependencyCell();
      if (swift_dynamicCast() || (type metadata accessor for ThrowingDependencyCell(), swift_dynamicCast()) || (type metadata accessor for DependencyPromise(), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1AB2AFAE8(0, *(v37 + 2) + 1, 1, v37);
        }

        v26 = *(v37 + 2);
        v25 = *(v37 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v35 = v26 + 1;
          v28 = sub_1AB2AFAE8((v25 > 1), v26 + 1, 1, v37);
          v27 = v35;
          v37 = v28;
        }

        v17 = v37;
        *(v37 + 2) = v27;
        *&v17[8 * v26 + 32] = v24;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  }

  if (v14 <= v16 + 1)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = v14;
  }

  v16 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      v13 = 0;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      goto LABEL_16;
    }

    v13 = *(v9 + 8 * v19);
    ++v18;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB293558()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A8);
  sub_1AB29828C();
  v0 = sub_1AB460814();

  return v0;
}

uint64_t sub_1AB2935F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB0165C4(a1, &v7);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_1AB293694()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  type metadata accessor for ThrowingDependencyCell();
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
  return 0;
}

uint64_t sub_1AB293790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(v11 + 16) && (v12 = sub_1AB016558(a1), (v13 & 1) != 0))
  {
    sub_1AB0165C4(*(v11 + 56) + 32 * v12, v22);
    sub_1AB014B78(v22, &v23);
    sub_1AB0165C4(&v23, v22);
    if (swift_dynamicCast())
    {
      (*(v8 + 32))(a3, v10, a2);
LABEL_10:
      (*(v8 + 56))(a3, 0, 1, a2);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v23);
    }

    type metadata accessor for DependencyCell();
    if (swift_dynamicCast())
    {
      sub_1AB031D8C();

      goto LABEL_10;
    }

    type metadata accessor for ThrowingDependencyCell();
    if (swift_dynamicCast())
    {
      sub_1AB442FA0();
      if (!v4)
      {
        (*(v8 + 56))(a3, 0, 1, a2);
      }

      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    v17 = swift_dynamicCast();
    if (v17)
    {
      v20 = v21;
      MEMORY[0x1EEE9AC00](v17);
      *(&v20 - 4) = a2;
      *(&v20 - 24) = v20;
      v19 = a1;
      requirementFailure(_:file:line:)(sub_1AB298250, (&v20 - 3), "JetEngine/DependencyDictionary.swift", 36, 2, 280);
      swift_unknownObjectRelease();
      (*(v8 + 56))(a3, 1, 1, a2);
      goto LABEL_11;
    }

    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm(&v23, v24);
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v18 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v18);

    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = sub_1AB01D56C(a1, a2);
    if (v14)
    {
      return sub_1AB293B94(v11, v14, v15, a3);
    }

    else
    {
      return (*(v8 + 56))(a3, 1, 1, a2);
    }
  }

  return result;
}

uint64_t sub_1AB293B94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v21 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AB461354();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v19 - v9);
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v22 = a1;
  if ((sub_1AB01D3AC(AssociatedTypeWitness, AssociatedTypeWitness) & 1) == 0)
  {
    goto LABEL_4;
  }

  v22 = a1;
  DependencyDictionary.subscript.getter(AssociatedTypeWitness, AssociatedTypeWitness, v10);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v20 + 8))(v10, v8);
LABEL_4:
    v15 = swift_getAssociatedTypeWitness();
    return (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  }

  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v17 = v21;
  (*(a3 + 24))(v14, a2, a3);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v18 = swift_getAssociatedTypeWitness();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_1AB293E68()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  swift_getObjectType();
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
  return 0;
}

uint64_t sub_1AB293F50()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB293FCC()
{

  v1 = *(v0 + 8);

  return v1();
}

void DependencyDictionary.add(distinctDependency:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1AB0165C4((a1 + 1), v3);
  sub_1AB03022C(v3, v1, &v4);
  v2 = v5;
  sub_1AB014AC0(&v4, &unk_1EB437E60);
  if (v2)
  {
    sub_1AB405670("JetEngine/DependencyDictionary.swift", 36, 2, 340);
  }
}

BOOL DependencyDictionary.replace(dependency:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1AB0165C4((a1 + 1), v4);
  sub_1AB03022C(v4, v1, &v5);
  v2 = v6 != 0;
  sub_1AB014AC0(&v5, &unk_1EB437E60);
  return v2;
}

uint64_t DependencyDictionary.replace<A>(dependencies:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v30 - v11;
  (*(v6 + 16))(v8, a1, a2, v10);
  sub_1AB4607F4();
  swift_getAssociatedConformanceWitness();
  sub_1AB4613F4();
  if (!v36)
  {
    return (*(v30 + 8))(v12, AssociatedTypeWitness);
  }

  while (1)
  {
    v34[0] = v36;
    v34[1] = v37;
    v35 = v38;
    v14 = v36;
    sub_1AB0165C4(v34 + 8, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v3;
    v16 = v31;
    *v3 = 0x8000000000000000;
    v17 = sub_1AB016558(v14);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      sub_1AB01A340(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1AB016558(v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v25 = v31;
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v28 = v17;
    sub_1AB01A034();
    v17 = v28;
    v25 = v31;
    if (v23)
    {
LABEL_3:
      v13 = 32 * v17;
      sub_1AB014B78((v25[7] + 32 * v17), v33);
      sub_1AB014B78(v32, (v25[7] + v13));
      goto LABEL_4;
    }

LABEL_11:
    v25[(v17 >> 6) + 8] |= 1 << v17;
    *(v25[6] + 8 * v17) = v14;
    sub_1AB014B78(v32, (v25[7] + 32 * v17));
    v26 = v25[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v25[2] = v27;
    memset(v33, 0, sizeof(v33));
LABEL_4:
    *v3 = v25;
    sub_1AB01667C(v34);
    sub_1AB014AC0(v33, &unk_1EB437E60);
    sub_1AB4613F4();
    if (!v36)
    {
      return (*(v30 + 8))(v12, AssociatedTypeWitness);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DependencyDictionary.merge(with:preferring:)(JetEngine::DependencyDictionary with, JetEngine::DependencyDictionary::MergeStrategy preferring)
{
  v3 = *with.contents._rawValue;
  v4 = *preferring;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  *v2 = 0x8000000000000000;
  if (v4)
  {
    sub_1AB030578(v3, sub_1AB030994, 0, isUniquelyReferenced_nonNull_native, &v7);
  }

  else
  {
    sub_1AB297C24(v3, sub_1AB030994, 0, isUniquelyReferenced_nonNull_native, &v7);
  }

  v6 = v7;

  *v2 = v6;
}

uint64_t DependencyDictionary.remove<A>(dependenciesFor:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v21 - v12;
  (*(v6 + 16))(v8, a1, a2, v11);
  sub_1AB4607F4();
  swift_getAssociatedConformanceWitness();
  sub_1AB4613F4();
  for (i = *&v23[0]; *&v23[0]; i = *&v23[0])
  {
    v15 = sub_1AB016558(i);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v22 = *v3;
      *v3 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AB01A034();
        v19 = v22;
      }

      sub_1AB014B78((*(v19 + 56) + 32 * v17), v23);
      sub_1AB0951B0(v17, v19);

      *v3 = v19;
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    sub_1AB014AC0(v23, &unk_1EB437E60);
    sub_1AB4613F4();
  }

  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_1AB294808()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AB26FF2C;
  }

  else
  {

    v2 = sub_1AB294924;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB294924()
{
  if (*(v0 + 24))
  {
    swift_willThrow();
  }

  else
  {
    **(v0 + 40) = *(v0 + 16);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2949B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A0);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB294A58, 0, 0);
}

uint64_t sub_1AB294A58()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  sub_1AB01494C(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1AB29237C(sub_1AB2982F0, v1);

  *v4 = v3;
  sub_1AB014B78(v1, (v4 + 8));
  v5 = *(v2 + 28);
  v6 = *(type metadata accessor for _ResolvedDependency() + 24);
  v7 = sub_1AB45F244();
  (*(*(v7 - 8) + 32))(v4 + v6, &v1[v5], v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1AB294BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A0);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for _ResolvedDependency();
  v5[13] = swift_task_alloc();
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB294CC0, 0, 0);
}

uint64_t sub_1AB294CC0()
{
  v1 = v0[11];
  sub_1AB01494C(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1AB29237C(sub_1AB298308, v1);
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v13 = v0[7];

  *v3 = v7;
  sub_1AB014B78(v5, (v3 + 8));
  v8 = *(v6 + 28);
  v9 = *(v4 + 24);
  v10 = sub_1AB45F244();
  (*(*(v10 - 8) + 32))(v3 + v9, &v5[v8], v10);
  sub_1AB0637F8(v3, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  swift_storeEnumTagMultiPayload();
  sub_1AB017FB8(v2, v13, &qword_1EB439678);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1AB294E88()
{
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[6];
  __swift_deallocate_boxed_opaque_existential_2((v0 + 2));
  (*(v5 + 8))(v3, v4);
  sub_1AB044D4C(v2);
  *v6 = v1;
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB294FAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a1;
  v6 = sub_1AB45F9B4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MonotonicTimeReference();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A0);
  v4[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[19] = v7;
  v4[20] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1AB295114, 0, 0);
}

uint64_t sub_1AB295114()
{
  v17 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v16);
  v7 = *(v2 + 20);
  *(v0 + 200) = v7;
  *(v1 + v7) = v16;
  v8 = *(v5 + 16);
  *(v0 + 168) = v8;
  *(v0 + 176) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v1, v4);
  ObjectType = swift_getObjectType();
  v10 = *(v6 + 24);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v15 = (v10 + *v10);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_1AB2952D4;
  v13 = *(v0 + 64);

  return v15(boxed_opaque_existential_0, ObjectType, v13);
}

uint64_t sub_1AB2952D4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1AB295684;
  }

  else
  {
    v2 = sub_1AB2953E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB2953E8()
{
  v24 = v0;
  v1 = (*(v0 + 128) + *(v0 + 200));
  sub_1AB014B78((v0 + 16), *(v0 + 144));
  static MonotonicTime.now.getter(&v23);
  v2 = v1[1];
  v22[0] = *v1;
  v22[1] = v2;
  sub_1AB044C10(v22, &v23);
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 168);
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v15 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v21 = *(v0 + 88);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v18 = *(v0 + 48);
  v8 = *(v0 + 104);
  sub_1AB45F934();
  v3(v5, v4, v7);
  v3(v21, v8, v7);
  sub_1AB45F224();
  v9 = *(v6 + 8);
  v9(v8, v7);
  v9(v4, v7);
  sub_1AB044D4C(v15);
  sub_1AB017FB8(v17, v19, &qword_1EB4396A0);
  swift_unknownObjectRelease();
  *v18 = v20;
  sub_1AB014B78(v19, (v18 + 8));
  v10 = *(v16 + 28);
  v11 = *(type metadata accessor for _ResolvedDependency() + 24);
  v12 = sub_1AB45F244();
  (*(*(v12 - 8) + 32))(v18 + v11, &v19[v10], v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1AB295684()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  __swift_deallocate_boxed_opaque_existential_2((v0 + 2));
  (*(v3 + 8))(v2, v4);
  sub_1AB044D4C(v1);
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AB295784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[81] = a4;
  v4[80] = a3;
  v4[79] = a2;
  v4[78] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439670);
  v4[82] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v4[83] = v5;
  v4[84] = *(v5 - 8);
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439680);
  v4[93] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439688);
  v4[94] = v6;
  v4[95] = *(v6 - 8);
  v4[96] = swift_task_alloc();
  v7 = sub_1AB45FF84();
  v4[97] = v7;
  v4[98] = *(v7 - 8);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB295A1C, 0, 0);
}

uint64_t sub_1AB295A1C()
{
  if (qword_1EB434BA8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1AB45FFC4();
    __swift_project_value_buffer(v1, qword_1EB46C230);
    sub_1AB45FFA4();
    sub_1AB45FF54();

    v2 = sub_1AB45FFA4();
    v3 = sub_1AB461234();
    if (sub_1AB461314())
    {
      v4 = *(v0 + 640);
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v4 + 16);

      v6 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v6, "ResolveDependencies", "count=%ld, copy=false", v5, 0xCu);
      MEMORY[0x1AC59F020](v5, -1, -1);
    }

    else
    {
    }

    v7 = (v0 + 600);

    v8 = *(v0 + 648);
    v9 = *(v0 + 640);
    (*(*(v0 + 784) + 16))(*(v0 + 792), *(v0 + 800), *(v0 + 776));
    sub_1AB460014();
    swift_allocObject();
    *(v0 + 808) = sub_1AB460004();
    v10 = v8 + 64;
    v11 = -1 << *(v8 + 32);
    v12 = -v11 < 64 ? ~(-1 << -v11) : -1;
    v13 = v12 & *(v8 + 64);
    v14 = (63 - v11) >> 6;
    v15 = v9 + 56;

    v16 = 0;
    v73 = v8;
    v72 = v9;
    v76 = v8 + 64;
    if (v13)
    {
      break;
    }

LABEL_12:
    if (v14 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v13 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v16 = v19;
        *(v0 + 56) = 0u;
        goto LABEL_21;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v17 = v16;
LABEL_20:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v21 = v20 | (v17 << 6);
    v22 = *(*(v8 + 48) + 8 * v21);
    sub_1AB0165C4(*(v8 + 56) + 32 * v21, v0 + 336);
    *(v0 + 56) = v22;
    sub_1AB014B78((v0 + 336), (v0 + 64));
LABEL_21:
    v23 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v23;
    *(v0 + 48) = *(v0 + 88);
    v24 = *(v0 + 16);
    if (!v24)
    {
      break;
    }

    sub_1AB014B78((v0 + 24), (v0 + 368));
    if (*(v9 + 16) && (sub_1AB4620A4(), MEMORY[0x1AC59D3F0](v24), v25 = sub_1AB462104(), v26 = -1 << *(v9 + 32), v27 = v25 & ~v26, ((*(v15 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v28 = ~v26;
      while (*(*(v9 + 48) + 8 * v27) != v24)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v15 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_1AB0165C4(v0 + 368, v0 + 400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439690);
      if (swift_dynamicCast())
      {
        v29 = *(v0 + 736);
        v70 = *(v0 + 728);
        sub_1AB0149B0((v0 + 96), v0 + 256);
        v30 = sub_1AB460BE4();
        v31 = *(v30 - 8);
        (*(v31 + 56))(v29, 1, 1, v30);
        sub_1AB01494C(v0 + 256, v0 + 296);
        v32 = swift_allocObject();
        v32[2] = 0;
        v33 = v32 + 2;
        v32[3] = 0;
        v32[4] = v24;
        sub_1AB0149B0((v0 + 296), (v32 + 5));
        sub_1AB014A58(v29, v70, &qword_1EB4384A0);
        v34 = (*(v31 + 48))(v70, 1, v30);
        v35 = *(v0 + 728);
        if (v34 == 1)
        {
          sub_1AB014AC0(*(v0 + 728), &qword_1EB4384A0);
        }

        else
        {
          sub_1AB460BD4();
          (*(v31 + 8))(v35, v30);
        }

        if (*v33)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v42 = sub_1AB460AE4();
          v44 = v43;
          swift_unknownObjectRelease();
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        v51 = **(v0 + 632);

        if (v44 | v42)
        {
          v52 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v42;
          *(v0 + 520) = v44;
        }

        else
        {
          v52 = 0;
        }

        v9 = v72;
        v53 = *(v0 + 736);
        *(v0 + 576) = 1;
        *(v0 + 584) = v52;
        *(v0 + 592) = v51;
        swift_task_create();

        sub_1AB014AC0(v53, &qword_1EB4384A0);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 368);
        v8 = v73;
        v7 = (v0 + 600);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439698);
        if (swift_dynamicCast())
        {
          v36 = *(v0 + 720);
          v74 = *(v0 + 712);
          sub_1AB0149B0((v0 + 136), v0 + 176);
          v37 = sub_1AB460BE4();
          v38 = *(v37 - 8);
          (*(v38 + 56))(v36, 1, 1, v37);
          sub_1AB01494C(v0 + 176, v0 + 216);
          v39 = swift_allocObject();
          v39[2] = 0;
          v39[3] = 0;
          v39[4] = v24;
          sub_1AB0149B0((v0 + 216), (v39 + 5));
          sub_1AB014A58(v36, v74, &qword_1EB4384A0);
          v40 = (*(v38 + 48))(v74, 1, v37);
          v41 = *(v0 + 712);
          if (v40 == 1)
          {
            sub_1AB014AC0(*(v0 + 712), &qword_1EB4384A0);
          }

          else
          {
            sub_1AB460BD4();
            (*(v38 + 8))(v41, v37);
          }

          if (v39[2])
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v54 = sub_1AB460AE4();
            v56 = v55;
            swift_unknownObjectRelease();
          }

          else
          {
            v54 = 0;
            v56 = 0;
          }

          v57 = **(v0 + 632);

          if (v56 | v54)
          {
            v58 = v0 + 464;
            *(v0 + 464) = 0;
            *(v0 + 472) = 0;
            *(v0 + 480) = v54;
            *(v0 + 488) = v56;
          }

          else
          {
            v58 = 0;
          }

          v59 = *(v0 + 720);
          *(v0 + 552) = 1;
          *(v0 + 560) = v58;
          *(v0 + 568) = v57;
          swift_task_create();

          sub_1AB014AC0(v59, &qword_1EB4384A0);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 368);
          v8 = v73;
          v7 = (v0 + 600);
          v9 = v72;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
          if (swift_dynamicCast())
          {
            v45 = *(v0 + 704);
            v71 = *(v0 + 696);
            v46 = sub_1AB460BE4();
            v47 = *(v46 - 8);
            v75 = *v7;
            (*(v47 + 56))(v45, 1, 1, v46);
            v48 = swift_allocObject();
            *(v48 + 16) = 0;
            *(v48 + 24) = 0;
            *(v48 + 32) = v24;
            *(v48 + 40) = v75;
            sub_1AB014A58(v45, v71, &qword_1EB4384A0);
            v49 = v47;
            LODWORD(v47) = (*(v47 + 48))(v71, 1, v46);
            swift_unknownObjectRetain();
            v50 = *(v0 + 696);
            if (v47 == 1)
            {
              sub_1AB014AC0(*(v0 + 696), &qword_1EB4384A0);
            }

            else
            {
              sub_1AB460BD4();
              (*(v49 + 8))(v50, v46);
            }

            if (*(v48 + 16))
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              v60 = sub_1AB460AE4();
              v62 = v61;
              swift_unknownObjectRelease();
            }

            else
            {
              v60 = 0;
              v62 = 0;
            }

            v63 = **(v0 + 632);

            if (v62 | v60)
            {
              v64 = v0 + 432;
              *(v0 + 432) = 0;
              *(v0 + 440) = 0;
              *(v0 + 448) = v60;
              *(v0 + 456) = v62;
            }

            else
            {
              v64 = 0;
            }

            v9 = v72;
            v10 = v76;
            v65 = *(v0 + 704);
            *(v0 + 528) = 1;
            *(v0 + 536) = v64;
            *(v0 + 544) = v63;
            swift_task_create();

            swift_unknownObjectRelease();

            sub_1AB014AC0(v65, &qword_1EB4384A0);
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 368);
            v8 = v73;
            v7 = (v0 + 600);
            goto LABEL_56;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 368);
        }
      }

      v10 = v76;
LABEL_56:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 368);
      v10 = v76;
      if (!v13)
      {
        goto LABEL_12;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  sub_1AB460D04();
  *(v0 + 816) = MEMORY[0x1E69E7CC0];
  v66 = swift_task_alloc();
  *(v0 + 824) = v66;
  *v66 = v0;
  v66[1] = sub_1AB296604;
  v67 = *(v0 + 752);
  v68 = *(v0 + 744);

  return MEMORY[0x1EEE6DAD8](v68, 0, 0, v67, v0 + 616);
}

uint64_t sub_1AB296604()
{

  if (v0)
  {

    v1 = sub_1AB296B7C;
  }

  else
  {
    v1 = sub_1AB29671C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AB29671C()
{
  v1 = v0[93];
  if ((*(v0[84] + 48))(v1, 1, v0[83]) == 1)
  {
    v2 = v0[102];
    (*(v0[95] + 8))(v0[96], v0[94]);
    v3 = *(v2 + 16);
    if (v3 == 1)
    {
      v21 = *(v0[102] + 32);
      v22 = v21;

      v4 = v21;
    }

    else
    {
      if (!v3)
      {

        v5 = 0;
LABEL_20:
        v26 = v0[101];
        v27 = v0[100];
        v28 = v0[98];
        v29 = v0[97];
        v30 = v0[80];
        v31 = v0[78];
        *v31 = v4;
        *(v31 + 8) = v5;
        sub_1AB296D08(v26, v30);

        (*(v28 + 8))(v27, v29);

        v32 = v0[1];

        return v32();
      }

      sub_1AB1BA4A4();
      v4 = swift_allocError();
      v24 = v23;
      if (!*(v2 + 16))
      {
        v25 = v4;
        sub_1AB40BED8("JetEngine/CompoundError.swift", 0x1DuLL, 2, 0x15uLL);
        v4 = v25;
      }

      *v24 = v0[102];
    }

    v5 = 1;
    goto LABEL_20;
  }

  v6 = v0[86];
  v7 = v0[85];
  sub_1AB017FB8(v1, v6, &qword_1EB439678);
  sub_1AB014A58(v6, v7, &qword_1EB439678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v0[85];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v0[102];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1AB2B0EE8(0, v10[2] + 1, 1, v0[102]);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB2B0EE8((v11 > 1), v12 + 1, 1, v10);
    }

    sub_1AB014AC0(v0[86], &qword_1EB439678);
    v10[2] = v12 + 1;
    v10[v12 + 4] = v8;
    v13 = 1;
  }

  else
  {
    v14 = v0[85];
    v15 = v0[82];
    sub_1AB014AC0(v0[86], &qword_1EB439678);
    sub_1AB0637F8(v14, v15);
    v13 = 0;
    v10 = v0[102];
  }

  v16 = v0[82];
  v17 = type metadata accessor for _ResolvedDependency();
  (*(*(v17 - 8) + 56))(v16, v13, 1, v17);
  sub_1AB014AC0(v16, &qword_1EB439670);
  v0[102] = v10;
  v18 = swift_task_alloc();
  v0[103] = v18;
  *v18 = v0;
  v18[1] = sub_1AB296604;
  v19 = v0[94];
  v20 = v0[93];

  return MEMORY[0x1EEE6DAD8](v20, 0, 0, v19, v0 + 77);
}

uint64_t sub_1AB296B7C()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[80];
  (*(v0[95] + 8))(v0[96], v0[94]);
  sub_1AB296D08(v1, v5);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB296D08(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AB45FFD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1AB45FF84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v11 = sub_1AB45FFC4();
  __swift_project_value_buffer(v11, qword_1EB46C230);

  v12 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v19 = sub_1AB461224();
  if (sub_1AB461314())
  {

    sub_1AB460024();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = 0;
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "count=%ld, copy=false";
      v13 = 1;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v13;
    *(v15 + 2) = 2048;
    *(v15 + 4) = *(a2 + 16);

    v16 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v12, v19, v16, "ResolveDependencies", v14, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AB296FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A0);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB297080, 0, 0);
}

uint64_t sub_1AB297080()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  sub_1AB01494C(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1AB29237C(sub_1AB298218, v1);

  *v4 = v3;
  sub_1AB014B78(v1, (v4 + 8));
  v5 = *(v2 + 28);
  v6 = *(type metadata accessor for _ResolvedDependency() + 24);
  v7 = sub_1AB45F244();
  (*(*(v7 - 8) + 32))(v4 + v6, &v1[v5], v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1AB2971D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A0);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for _ResolvedDependency();
  v5[13] = swift_task_alloc();
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2972E8, 0, 0);
}

uint64_t sub_1AB2972E8()
{
  v1 = v0[11];
  sub_1AB01494C(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1AB29237C(sub_1AB298234, v1);
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v13 = v0[7];

  *v3 = v7;
  sub_1AB014B78(v5, (v3 + 8));
  v8 = *(v6 + 28);
  v9 = *(v4 + 24);
  v10 = sub_1AB45F244();
  (*(*(v10 - 8) + 32))(v3 + v9, &v5[v8], v10);
  sub_1AB0637F8(v3, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  swift_storeEnumTagMultiPayload();
  sub_1AB017FB8(v2, v13, &qword_1EB439678);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1AB2974B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v6[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB297554, 0, 0);
}

uint64_t sub_1AB297554()
{
  v0[2] = v0[4];
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1AB297604;
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  return sub_1AB294FAC(v2, v0 + 2, v3, v4);
}

uint64_t sub_1AB297604()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AB2977AC;
  }

  else
  {
    v2 = sub_1AB297718;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB297718()
{
  v1 = v0[8];
  v2 = v0[3];
  swift_storeEnumTagMultiPayload();
  sub_1AB017FB8(v1, v2, &qword_1EB439678);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AB2977AC()
{
  **(v0 + 24) = *(v0 + 80);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB297828()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AB2979CC;
  }

  else
  {
    v2 = sub_1AB29793C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB29793C()
{
  v5 = v0;
  v1 = *(v0 + 64);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    if (!*(v0 + 40))
    {
      goto LABEL_6;
    }

    v4 = 0;
    StartUpPerformanceEvent.record(checkpoint:)(&v4);
  }

LABEL_6:
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB2979CC()
{
  v5 = v0;
  v1 = *(v0 + 64);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    if (!*(v0 + 40))
    {
      goto LABEL_6;
    }

    v4 = 0;
    StartUpPerformanceEvent.record(checkpoint:)(&v4);
  }

LABEL_6:
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB297ACC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = *(v4 + 16);
  a2[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a2);
  return v5(v3, v4);
}

uint64_t sub_1AB297B6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = *(v5 + 16);
  a2[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a2);
  result = v6(v4, v5);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a2);
  }

  return result;
}

unint64_t sub_1AB297C24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1AB030848(&v43);
  v12 = v43;
  if (!v43)
  {
    goto LABEL_25;
  }

  sub_1AB014B78(v44, v42);
  v13 = *a5;
  result = sub_1AB016558(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1AB01A340(v19, a4 & 1);
    result = sub_1AB016558(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1AB461FC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1AB01A034();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    sub_1AB0165C4(*(*a5 + 56) + 32 * result, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm(v24 + v23);
    sub_1AB014B78(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_1AB014B78(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_1AB030848(&v43);
    v12 = v43;
    if (v43)
    {
      v20 = 1;
      do
      {
        sub_1AB014B78(v44, v42);
        v32 = *a5;
        result = sub_1AB016558(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_1AB01A340(v36, 1);
          result = sub_1AB016558(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          sub_1AB0165C4(*(*a5 + 56) + 32 * result, v41);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm(v31 + v30);
          sub_1AB014B78(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1AB014B78(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1AB030848(&v43);
        v12 = v43;
      }

      while (v43);
    }

LABEL_25:
    sub_1AB0309A4();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1AB297F2C()
{
  result = qword_1EB439668;
  if (!qword_1EB439668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439668);
  }

  return result;
}

uint64_t sub_1AB297F90(uint64_t a1)
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

  return sub_1AB2974B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB298058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027460;

  return sub_1AB2971D8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB298158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB296FDC(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_1AB29828C()
{
  result = qword_1EB4396B0;
  if (!qword_1EB4396B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4396A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4396B0);
  }

  return result;
}

uint64_t static PipelinePhase<>.urlForResource(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AB2988D0;
  *(v8 + 24) = v7;
  *a2 = sub_1AB2988F8;
  a2[1] = v8;

  return sub_1AB298904(v3, v4);
}

uint64_t sub_1AB2983D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v37 - v13;
  v40 = *a1;
  if (qword_1ED4D1D90 != -1)
  {
    swift_once();
  }

  v42 = qword_1ED4D1D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v15 = swift_allocObject();
  v38 = xmmword_1AB4D4720;
  *(v15 + 16) = xmmword_1AB4D4720;
  v48 = sub_1AB0168A8(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v16._object = 0x80000001AB5069E0;
  v16._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v47[3] = &type metadata for JetpackBundle.Resource;
  v17 = swift_allocObject();
  v47[0] = v17;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  sub_1AB01522C(v47, v43);
  v44 = 0u;
  v45 = 0u;
  sub_1AB298904(a2, a3);
  sub_1AB0169C4(v43, &v44);
  v46 = 0;
  v18 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = a5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
    v48 = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[40 * v21];
  v23 = v44;
  v24 = v45;
  v22[64] = v46;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v48 = v18;
  sub_1AB014AC0(v47, &unk_1EB437E60);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v15 + 32) = v48;
  v26 = sub_1AB461094();
  if (os_log_type_enabled(v42, v26))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v27 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v27 + 5);
    v37[1] = v6;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v29 = swift_allocObject();
    *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v44 = v15;
    *(&v44 + 1) = sub_1AB01A8D8;
    *&v45 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v30 = sub_1AB460484();
    v32 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v33 = swift_allocObject();
    *(v33 + 16) = v38;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1AB016854();
    *(v33 + 32) = v30;
    *(v33 + 40) = v32;
    sub_1AB45FF14();
  }

  else
  {
  }

  v47[0] = v40;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  *&v45 = a4;
  *(&v45 + 1) = v41;
  JetpackBundle.url(forOptionalResource:)(&v44, v14);
  v34 = sub_1AB45F764();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v14, 1, v34) != 1)
  {
    return (*(v35 + 32))(v39, v14, v34);
  }

  sub_1AB014AC0(v14, &unk_1EB4395B0);
  sub_1AB29894C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1AB298904(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1AB29894C()
{
  result = qword_1EB4326A8[0];
  if (!qword_1EB4326A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4326A8);
  }

  return result;
}

uint64_t JSResponse.requestRoute.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t JSResponse.requestDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JSResponse() + 20);
  v4 = sub_1AB45F244();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JSResponse.incidents.getter()
{
  type metadata accessor for JSResponse();
}

uint64_t JSResponse.networkPerformance.getter()
{
  type metadata accessor for JSResponse();
}

void sub_1AB298AC8()
{
  sub_1AB45F244();
  if (v0 <= 0x3F)
  {
    sub_1AB0C7EA4(319, qword_1ED4D17D0, &type metadata for JSONObject, type metadata accessor for CoarselyTimed);
    if (v1 <= 0x3F)
    {
      sub_1AB0C7EA4(319, &qword_1EB435638, &type metadata for JSIncident, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1AB0C7EA4(319, &qword_1EB435630, &type metadata for JSNetworkPerformanceMetrics, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AB298BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7 - 8];
  (*(v5 + 16))(&v17[-v7 - 8], a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = sub_1AB015664();

  v12 = sub_1AB461124();
  v20[3] = v11;
  v20[4] = &protocol witness table for OS_dispatch_queue;
  v20[0] = v12;
  sub_1AB01494C(v20, v17);
  v18 = sub_1AB299D30;
  v19 = v10;
  sub_1AB299488(v17, &v21);
  sub_1AB014AC0(v17, &qword_1EB4396F8);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v13 = v21;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v13;
  return sub_1AB460C04();
}

uint64_t MetricsEmitter.Event.fieldName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsEmitter.Event.operationId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 MetricsEmitter.Event.eventTime.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

void sub_1AB298E50(uint64_t *a1@<X8>)
{
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
      goto LABEL_23;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_23;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  v4 = sub_1AB026D00(0xD00000000000001BLL, 0x80000001AB506A00);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D9850;
    if (qword_1ED4D0030 != -1)
    {
      swift_once();
    }

    *(v5 + 32) = sub_1AB461614();
    *(v5 + 40) = v6;
    if (qword_1ED4CFFE8 != -1)
    {
      swift_once();
    }

    *(v5 + 48) = sub_1AB461614();
    *(v5 + 56) = v7;
    if (qword_1ED4CFFE0 != -1)
    {
      swift_once();
    }

    *(v5 + 64) = sub_1AB461614();
    *(v5 + 72) = v8;
    if (qword_1ED4CFFD0 != -1)
    {
      swift_once();
    }

    *(v5 + 80) = sub_1AB461614();
    *(v5 + 88) = v9;
    goto LABEL_24;
  }

  v10 = sub_1AB17B494(0xD000000000000019, 0x80000001AB506A20);
  if (!v10)
  {
LABEL_23:
    v5 = 1;
    goto LABEL_24;
  }

  v5 = v10;
  v12[0] = 1819042084;
  v12[1] = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v10);
  v11[2] = v12;
  if (sub_1AB0A1064(sub_1AB021538, v11, v5))
  {

    v5 = 0;
  }

LABEL_24:
  *a1 = v5;
}